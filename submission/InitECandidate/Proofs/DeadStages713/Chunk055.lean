import InitECandidate.Proofs.DeadStages713.Chunk054
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input14080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14079 input12912)).val
theorem input14080_def : input14080 = (.seq input14079 input12912) := by
  unfold input14080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14079 output12912)).val
theorem output14080_def : output14080 = (.seq output14079 output12912) := by
  unfold output14080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14080_skip : Flapjack.WordAlloc.isSkip output14080 = false := by
  rw [output14080_def]
  conv => lhs; cbv
  try rfl
theorem node14080_eq : Flapjack.WordAlloc.removeDeadStructural input14080 value5 value1 value2 = (output14080, value6896, value1) := by
  rw [input14080_def, output14080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12912_eq]
  try dsimp only
  rw [node14079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14080 input12909)).val
theorem input14081_def : input14081 = (.seq input14080 input12909) := by
  unfold input14081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14080 output12909)).val
theorem output14081_def : output14081 = (.seq output14080 output12909) := by
  unfold output14081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14081_skip : Flapjack.WordAlloc.isSkip output14081 = false := by
  rw [output14081_def]
  conv => lhs; cbv
  try rfl
theorem node14081_eq : Flapjack.WordAlloc.removeDeadStructural input14081 value6454 value1 value2 = (output14081, value6896, value1) := by
  rw [input14081_def, output14081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12909_eq]
  try dsimp only
  rw [node14080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14081 input12900)).val
theorem input14082_def : input14082 = (.seq input14081 input12900) := by
  unfold input14082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14081)).val
theorem output14082_def : output14082 = (output14081) := by
  unfold output14082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14082_skip : Flapjack.WordAlloc.isSkip output14082 = false := by
  rw [output14082_def]
  conv => lhs; cbv
  try rfl
theorem node14082_eq : Flapjack.WordAlloc.removeDeadStructural input14082 value6454 value1 value2 = (output14082, value6896, value1) := by
  rw [input14082_def, output14082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12900_eq]
  try dsimp only
  rw [node14081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14082 input12899)).val
theorem input14083_def : input14083 = (.seq input14082 input12899) := by
  unfold input14083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14082 output12899)).val
theorem output14083_def : output14083 = (.seq output14082 output12899) := by
  unfold output14083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14083_skip : Flapjack.WordAlloc.isSkip output14083 = false := by
  rw [output14083_def]
  conv => lhs; cbv
  try rfl
theorem node14083_eq : Flapjack.WordAlloc.removeDeadStructural input14083 value6453 value1 value2 = (output14083, value6896, value1) := by
  rw [input14083_def, output14083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12899_eq]
  try dsimp only
  rw [node14082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14083 input12898)).val
theorem input14084_def : input14084 = (.seq input14083 input12898) := by
  unfold input14084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14083 output12898)).val
theorem output14084_def : output14084 = (.seq output14083 output12898) := by
  unfold output14084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14084_skip : Flapjack.WordAlloc.isSkip output14084 = false := by
  rw [output14084_def]
  conv => lhs; cbv
  try rfl
theorem node14084_eq : Flapjack.WordAlloc.removeDeadStructural input14084 value5 value1 value2 = (output14084, value6896, value1) := by
  rw [input14084_def, output14084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12898_eq]
  try dsimp only
  rw [node14083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14084 input12895)).val
theorem input14085_def : input14085 = (.seq input14084 input12895) := by
  unfold input14085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14084 output12895)).val
theorem output14085_def : output14085 = (.seq output14084 output12895) := by
  unfold output14085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14085_skip : Flapjack.WordAlloc.isSkip output14085 = false := by
  rw [output14085_def]
  conv => lhs; cbv
  try rfl
theorem node14085_eq : Flapjack.WordAlloc.removeDeadStructural input14085 value6447 value1 value2 = (output14085, value6896, value1) := by
  rw [input14085_def, output14085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12895_eq]
  try dsimp only
  rw [node14084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14085 input12886)).val
theorem input14086_def : input14086 = (.seq input14085 input12886) := by
  unfold input14086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14085)).val
theorem output14086_def : output14086 = (output14085) := by
  unfold output14086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14086_skip : Flapjack.WordAlloc.isSkip output14086 = false := by
  rw [output14086_def]
  conv => lhs; cbv
  try rfl
theorem node14086_eq : Flapjack.WordAlloc.removeDeadStructural input14086 value6447 value1 value2 = (output14086, value6896, value1) := by
  rw [input14086_def, output14086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12886_eq]
  try dsimp only
  rw [node14085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14086 input12885)).val
theorem input14087_def : input14087 = (.seq input14086 input12885) := by
  unfold input14087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14086 output12885)).val
theorem output14087_def : output14087 = (.seq output14086 output12885) := by
  unfold output14087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14087_skip : Flapjack.WordAlloc.isSkip output14087 = false := by
  rw [output14087_def]
  conv => lhs; cbv
  try rfl
theorem node14087_eq : Flapjack.WordAlloc.removeDeadStructural input14087 value6446 value1 value2 = (output14087, value6896, value1) := by
  rw [input14087_def, output14087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12885_eq]
  try dsimp only
  rw [node14086_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14087 input12884)).val
theorem input14088_def : input14088 = (.seq input14087 input12884) := by
  unfold input14088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14087 output12884)).val
theorem output14088_def : output14088 = (.seq output14087 output12884) := by
  unfold output14088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14088_skip : Flapjack.WordAlloc.isSkip output14088 = false := by
  rw [output14088_def]
  conv => lhs; cbv
  try rfl
theorem node14088_eq : Flapjack.WordAlloc.removeDeadStructural input14088 value5 value1 value2 = (output14088, value6896, value1) := by
  rw [input14088_def, output14088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12884_eq]
  try dsimp only
  rw [node14087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14088 input12881)).val
theorem input14089_def : input14089 = (.seq input14088 input12881) := by
  unfold input14089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14088 output12881)).val
theorem output14089_def : output14089 = (.seq output14088 output12881) := by
  unfold output14089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14089_skip : Flapjack.WordAlloc.isSkip output14089 = false := by
  rw [output14089_def]
  conv => lhs; cbv
  try rfl
theorem node14089_eq : Flapjack.WordAlloc.removeDeadStructural input14089 value6440 value1 value2 = (output14089, value6896, value1) := by
  rw [input14089_def, output14089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12881_eq]
  try dsimp only
  rw [node14088_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14089 input12872)).val
theorem input14090_def : input14090 = (.seq input14089 input12872) := by
  unfold input14090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14089)).val
theorem output14090_def : output14090 = (output14089) := by
  unfold output14090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14090_skip : Flapjack.WordAlloc.isSkip output14090 = false := by
  rw [output14090_def]
  conv => lhs; cbv
  try rfl
theorem node14090_eq : Flapjack.WordAlloc.removeDeadStructural input14090 value6440 value1 value2 = (output14090, value6896, value1) := by
  rw [input14090_def, output14090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12872_eq]
  try dsimp only
  rw [node14089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14090 input12871)).val
theorem input14091_def : input14091 = (.seq input14090 input12871) := by
  unfold input14091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14090 output12871)).val
theorem output14091_def : output14091 = (.seq output14090 output12871) := by
  unfold output14091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14091_skip : Flapjack.WordAlloc.isSkip output14091 = false := by
  rw [output14091_def]
  conv => lhs; cbv
  try rfl
theorem node14091_eq : Flapjack.WordAlloc.removeDeadStructural input14091 value6439 value1 value2 = (output14091, value6896, value1) := by
  rw [input14091_def, output14091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12871_eq]
  try dsimp only
  rw [node14090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14091 input12870)).val
theorem input14092_def : input14092 = (.seq input14091 input12870) := by
  unfold input14092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14091 output12870)).val
theorem output14092_def : output14092 = (.seq output14091 output12870) := by
  unfold output14092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14092_skip : Flapjack.WordAlloc.isSkip output14092 = false := by
  rw [output14092_def]
  conv => lhs; cbv
  try rfl
theorem node14092_eq : Flapjack.WordAlloc.removeDeadStructural input14092 value5 value1 value2 = (output14092, value6896, value1) := by
  rw [input14092_def, output14092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12870_eq]
  try dsimp only
  rw [node14091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14092 input12867)).val
theorem input14093_def : input14093 = (.seq input14092 input12867) := by
  unfold input14093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14092 output12867)).val
theorem output14093_def : output14093 = (.seq output14092 output12867) := by
  unfold output14093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14093_skip : Flapjack.WordAlloc.isSkip output14093 = false := by
  rw [output14093_def]
  conv => lhs; cbv
  try rfl
theorem node14093_eq : Flapjack.WordAlloc.removeDeadStructural input14093 value6433 value1 value2 = (output14093, value6896, value1) := by
  rw [input14093_def, output14093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12867_eq]
  try dsimp only
  rw [node14092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14093 input12858)).val
theorem input14094_def : input14094 = (.seq input14093 input12858) := by
  unfold input14094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14093)).val
theorem output14094_def : output14094 = (output14093) := by
  unfold output14094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14094_skip : Flapjack.WordAlloc.isSkip output14094 = false := by
  rw [output14094_def]
  conv => lhs; cbv
  try rfl
theorem node14094_eq : Flapjack.WordAlloc.removeDeadStructural input14094 value6433 value1 value2 = (output14094, value6896, value1) := by
  rw [input14094_def, output14094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12858_eq]
  try dsimp only
  rw [node14093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14094 input12857)).val
theorem input14095_def : input14095 = (.seq input14094 input12857) := by
  unfold input14095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14094 output12857)).val
theorem output14095_def : output14095 = (.seq output14094 output12857) := by
  unfold output14095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14095_skip : Flapjack.WordAlloc.isSkip output14095 = false := by
  rw [output14095_def]
  conv => lhs; cbv
  try rfl
theorem node14095_eq : Flapjack.WordAlloc.removeDeadStructural input14095 value6432 value1 value2 = (output14095, value6896, value1) := by
  rw [input14095_def, output14095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12857_eq]
  try dsimp only
  rw [node14094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14095 input12856)).val
theorem input14096_def : input14096 = (.seq input14095 input12856) := by
  unfold input14096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14095 output12856)).val
theorem output14096_def : output14096 = (.seq output14095 output12856) := by
  unfold output14096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14096_skip : Flapjack.WordAlloc.isSkip output14096 = false := by
  rw [output14096_def]
  conv => lhs; cbv
  try rfl
theorem node14096_eq : Flapjack.WordAlloc.removeDeadStructural input14096 value5 value1 value2 = (output14096, value6896, value1) := by
  rw [input14096_def, output14096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12856_eq]
  try dsimp only
  rw [node14095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14096 input12853)).val
theorem input14097_def : input14097 = (.seq input14096 input12853) := by
  unfold input14097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14096 output12853)).val
theorem output14097_def : output14097 = (.seq output14096 output12853) := by
  unfold output14097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14097_skip : Flapjack.WordAlloc.isSkip output14097 = false := by
  rw [output14097_def]
  conv => lhs; cbv
  try rfl
theorem node14097_eq : Flapjack.WordAlloc.removeDeadStructural input14097 value6426 value1 value2 = (output14097, value6896, value1) := by
  rw [input14097_def, output14097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12853_eq]
  try dsimp only
  rw [node14096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14097 input12844)).val
theorem input14098_def : input14098 = (.seq input14097 input12844) := by
  unfold input14098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14097)).val
theorem output14098_def : output14098 = (output14097) := by
  unfold output14098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14098_skip : Flapjack.WordAlloc.isSkip output14098 = false := by
  rw [output14098_def]
  conv => lhs; cbv
  try rfl
theorem node14098_eq : Flapjack.WordAlloc.removeDeadStructural input14098 value6426 value1 value2 = (output14098, value6896, value1) := by
  rw [input14098_def, output14098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12844_eq]
  try dsimp only
  rw [node14097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14098 input12843)).val
theorem input14099_def : input14099 = (.seq input14098 input12843) := by
  unfold input14099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14098 output12843)).val
theorem output14099_def : output14099 = (.seq output14098 output12843) := by
  unfold output14099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14099_skip : Flapjack.WordAlloc.isSkip output14099 = false := by
  rw [output14099_def]
  conv => lhs; cbv
  try rfl
theorem node14099_eq : Flapjack.WordAlloc.removeDeadStructural input14099 value6425 value1 value2 = (output14099, value6896, value1) := by
  rw [input14099_def, output14099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12843_eq]
  try dsimp only
  rw [node14098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14099 input12842)).val
theorem input14100_def : input14100 = (.seq input14099 input12842) := by
  unfold input14100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14099 output12842)).val
theorem output14100_def : output14100 = (.seq output14099 output12842) := by
  unfold output14100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14100_skip : Flapjack.WordAlloc.isSkip output14100 = false := by
  rw [output14100_def]
  conv => lhs; cbv
  try rfl
theorem node14100_eq : Flapjack.WordAlloc.removeDeadStructural input14100 value5 value1 value2 = (output14100, value6896, value1) := by
  rw [input14100_def, output14100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12842_eq]
  try dsimp only
  rw [node14099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14100 input12839)).val
theorem input14101_def : input14101 = (.seq input14100 input12839) := by
  unfold input14101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14100 output12839)).val
theorem output14101_def : output14101 = (.seq output14100 output12839) := by
  unfold output14101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14101_skip : Flapjack.WordAlloc.isSkip output14101 = false := by
  rw [output14101_def]
  conv => lhs; cbv
  try rfl
theorem node14101_eq : Flapjack.WordAlloc.removeDeadStructural input14101 value6419 value1 value2 = (output14101, value6896, value1) := by
  rw [input14101_def, output14101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12839_eq]
  try dsimp only
  rw [node14100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14101 input12830)).val
theorem input14102_def : input14102 = (.seq input14101 input12830) := by
  unfold input14102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14101)).val
theorem output14102_def : output14102 = (output14101) := by
  unfold output14102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14102_skip : Flapjack.WordAlloc.isSkip output14102 = false := by
  rw [output14102_def]
  conv => lhs; cbv
  try rfl
theorem node14102_eq : Flapjack.WordAlloc.removeDeadStructural input14102 value6419 value1 value2 = (output14102, value6896, value1) := by
  rw [input14102_def, output14102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12830_eq]
  try dsimp only
  rw [node14101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14102 input12829)).val
theorem input14103_def : input14103 = (.seq input14102 input12829) := by
  unfold input14103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14102 output12829)).val
theorem output14103_def : output14103 = (.seq output14102 output12829) := by
  unfold output14103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14103_skip : Flapjack.WordAlloc.isSkip output14103 = false := by
  rw [output14103_def]
  conv => lhs; cbv
  try rfl
theorem node14103_eq : Flapjack.WordAlloc.removeDeadStructural input14103 value6418 value1 value2 = (output14103, value6896, value1) := by
  rw [input14103_def, output14103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12829_eq]
  try dsimp only
  rw [node14102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14103 input12828)).val
theorem input14104_def : input14104 = (.seq input14103 input12828) := by
  unfold input14104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14103 output12828)).val
theorem output14104_def : output14104 = (.seq output14103 output12828) := by
  unfold output14104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14104_skip : Flapjack.WordAlloc.isSkip output14104 = false := by
  rw [output14104_def]
  conv => lhs; cbv
  try rfl
theorem node14104_eq : Flapjack.WordAlloc.removeDeadStructural input14104 value5 value1 value2 = (output14104, value6896, value1) := by
  rw [input14104_def, output14104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12828_eq]
  try dsimp only
  rw [node14103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14104 input12825)).val
theorem input14105_def : input14105 = (.seq input14104 input12825) := by
  unfold input14105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14104 output12825)).val
theorem output14105_def : output14105 = (.seq output14104 output12825) := by
  unfold output14105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14105_skip : Flapjack.WordAlloc.isSkip output14105 = false := by
  rw [output14105_def]
  conv => lhs; cbv
  try rfl
theorem node14105_eq : Flapjack.WordAlloc.removeDeadStructural input14105 value6412 value1 value2 = (output14105, value6896, value1) := by
  rw [input14105_def, output14105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12825_eq]
  try dsimp only
  rw [node14104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14105 input12816)).val
theorem input14106_def : input14106 = (.seq input14105 input12816) := by
  unfold input14106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14105)).val
theorem output14106_def : output14106 = (output14105) := by
  unfold output14106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14106_skip : Flapjack.WordAlloc.isSkip output14106 = false := by
  rw [output14106_def]
  conv => lhs; cbv
  try rfl
theorem node14106_eq : Flapjack.WordAlloc.removeDeadStructural input14106 value6412 value1 value2 = (output14106, value6896, value1) := by
  rw [input14106_def, output14106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12816_eq]
  try dsimp only
  rw [node14105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14106 input12815)).val
theorem input14107_def : input14107 = (.seq input14106 input12815) := by
  unfold input14107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14106 output12815)).val
theorem output14107_def : output14107 = (.seq output14106 output12815) := by
  unfold output14107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14107_skip : Flapjack.WordAlloc.isSkip output14107 = false := by
  rw [output14107_def]
  conv => lhs; cbv
  try rfl
theorem node14107_eq : Flapjack.WordAlloc.removeDeadStructural input14107 value6411 value1 value2 = (output14107, value6896, value1) := by
  rw [input14107_def, output14107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12815_eq]
  try dsimp only
  rw [node14106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14107 input12814)).val
theorem input14108_def : input14108 = (.seq input14107 input12814) := by
  unfold input14108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14107 output12814)).val
theorem output14108_def : output14108 = (.seq output14107 output12814) := by
  unfold output14108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14108_skip : Flapjack.WordAlloc.isSkip output14108 = false := by
  rw [output14108_def]
  conv => lhs; cbv
  try rfl
theorem node14108_eq : Flapjack.WordAlloc.removeDeadStructural input14108 value5 value1 value2 = (output14108, value6896, value1) := by
  rw [input14108_def, output14108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12814_eq]
  try dsimp only
  rw [node14107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14108 input12811)).val
theorem input14109_def : input14109 = (.seq input14108 input12811) := by
  unfold input14109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14108 output12811)).val
theorem output14109_def : output14109 = (.seq output14108 output12811) := by
  unfold output14109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14109_skip : Flapjack.WordAlloc.isSkip output14109 = false := by
  rw [output14109_def]
  conv => lhs; cbv
  try rfl
theorem node14109_eq : Flapjack.WordAlloc.removeDeadStructural input14109 value6405 value1 value2 = (output14109, value6896, value1) := by
  rw [input14109_def, output14109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12811_eq]
  try dsimp only
  rw [node14108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14109 input12802)).val
theorem input14110_def : input14110 = (.seq input14109 input12802) := by
  unfold input14110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14109)).val
theorem output14110_def : output14110 = (output14109) := by
  unfold output14110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14110_skip : Flapjack.WordAlloc.isSkip output14110 = false := by
  rw [output14110_def]
  conv => lhs; cbv
  try rfl
theorem node14110_eq : Flapjack.WordAlloc.removeDeadStructural input14110 value6405 value1 value2 = (output14110, value6896, value1) := by
  rw [input14110_def, output14110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12802_eq]
  try dsimp only
  rw [node14109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14110 input12801)).val
theorem input14111_def : input14111 = (.seq input14110 input12801) := by
  unfold input14111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14110 output12801)).val
theorem output14111_def : output14111 = (.seq output14110 output12801) := by
  unfold output14111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14111_skip : Flapjack.WordAlloc.isSkip output14111 = false := by
  rw [output14111_def]
  conv => lhs; cbv
  try rfl
theorem node14111_eq : Flapjack.WordAlloc.removeDeadStructural input14111 value6404 value1 value2 = (output14111, value6896, value1) := by
  rw [input14111_def, output14111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12801_eq]
  try dsimp only
  rw [node14110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14111 input12800)).val
theorem input14112_def : input14112 = (.seq input14111 input12800) := by
  unfold input14112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14111 output12800)).val
theorem output14112_def : output14112 = (.seq output14111 output12800) := by
  unfold output14112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14112_skip : Flapjack.WordAlloc.isSkip output14112 = false := by
  rw [output14112_def]
  conv => lhs; cbv
  try rfl
theorem node14112_eq : Flapjack.WordAlloc.removeDeadStructural input14112 value5 value1 value2 = (output14112, value6896, value1) := by
  rw [input14112_def, output14112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12800_eq]
  try dsimp only
  rw [node14111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14112 input12797)).val
theorem input14113_def : input14113 = (.seq input14112 input12797) := by
  unfold input14113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14112 output12797)).val
theorem output14113_def : output14113 = (.seq output14112 output12797) := by
  unfold output14113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14113_skip : Flapjack.WordAlloc.isSkip output14113 = false := by
  rw [output14113_def]
  conv => lhs; cbv
  try rfl
theorem node14113_eq : Flapjack.WordAlloc.removeDeadStructural input14113 value6398 value1 value2 = (output14113, value6896, value1) := by
  rw [input14113_def, output14113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12797_eq]
  try dsimp only
  rw [node14112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14113 input12788)).val
theorem input14114_def : input14114 = (.seq input14113 input12788) := by
  unfold input14114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14113)).val
theorem output14114_def : output14114 = (output14113) := by
  unfold output14114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14114_skip : Flapjack.WordAlloc.isSkip output14114 = false := by
  rw [output14114_def]
  conv => lhs; cbv
  try rfl
theorem node14114_eq : Flapjack.WordAlloc.removeDeadStructural input14114 value6398 value1 value2 = (output14114, value6896, value1) := by
  rw [input14114_def, output14114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12788_eq]
  try dsimp only
  rw [node14113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14114 input12787)).val
theorem input14115_def : input14115 = (.seq input14114 input12787) := by
  unfold input14115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14114 output12787)).val
theorem output14115_def : output14115 = (.seq output14114 output12787) := by
  unfold output14115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14115_skip : Flapjack.WordAlloc.isSkip output14115 = false := by
  rw [output14115_def]
  conv => lhs; cbv
  try rfl
theorem node14115_eq : Flapjack.WordAlloc.removeDeadStructural input14115 value6397 value1 value2 = (output14115, value6896, value1) := by
  rw [input14115_def, output14115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12787_eq]
  try dsimp only
  rw [node14114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14115 input12786)).val
theorem input14116_def : input14116 = (.seq input14115 input12786) := by
  unfold input14116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14115 output12786)).val
theorem output14116_def : output14116 = (.seq output14115 output12786) := by
  unfold output14116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14116_skip : Flapjack.WordAlloc.isSkip output14116 = false := by
  rw [output14116_def]
  conv => lhs; cbv
  try rfl
theorem node14116_eq : Flapjack.WordAlloc.removeDeadStructural input14116 value5 value1 value2 = (output14116, value6896, value1) := by
  rw [input14116_def, output14116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12786_eq]
  try dsimp only
  rw [node14115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14116 input12783)).val
theorem input14117_def : input14117 = (.seq input14116 input12783) := by
  unfold input14117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14116 output12783)).val
theorem output14117_def : output14117 = (.seq output14116 output12783) := by
  unfold output14117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14117_skip : Flapjack.WordAlloc.isSkip output14117 = false := by
  rw [output14117_def]
  conv => lhs; cbv
  try rfl
theorem node14117_eq : Flapjack.WordAlloc.removeDeadStructural input14117 value6391 value1 value2 = (output14117, value6896, value1) := by
  rw [input14117_def, output14117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12783_eq]
  try dsimp only
  rw [node14116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14117 input12774)).val
theorem input14118_def : input14118 = (.seq input14117 input12774) := by
  unfold input14118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14117)).val
theorem output14118_def : output14118 = (output14117) := by
  unfold output14118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14118_skip : Flapjack.WordAlloc.isSkip output14118 = false := by
  rw [output14118_def]
  conv => lhs; cbv
  try rfl
theorem node14118_eq : Flapjack.WordAlloc.removeDeadStructural input14118 value6391 value1 value2 = (output14118, value6896, value1) := by
  rw [input14118_def, output14118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12774_eq]
  try dsimp only
  rw [node14117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14118 input12773)).val
theorem input14119_def : input14119 = (.seq input14118 input12773) := by
  unfold input14119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14118 output12773)).val
theorem output14119_def : output14119 = (.seq output14118 output12773) := by
  unfold output14119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14119_skip : Flapjack.WordAlloc.isSkip output14119 = false := by
  rw [output14119_def]
  conv => lhs; cbv
  try rfl
theorem node14119_eq : Flapjack.WordAlloc.removeDeadStructural input14119 value6390 value1 value2 = (output14119, value6896, value1) := by
  rw [input14119_def, output14119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12773_eq]
  try dsimp only
  rw [node14118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14119 input12772)).val
theorem input14120_def : input14120 = (.seq input14119 input12772) := by
  unfold input14120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14119 output12772)).val
theorem output14120_def : output14120 = (.seq output14119 output12772) := by
  unfold output14120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14120_skip : Flapjack.WordAlloc.isSkip output14120 = false := by
  rw [output14120_def]
  conv => lhs; cbv
  try rfl
theorem node14120_eq : Flapjack.WordAlloc.removeDeadStructural input14120 value5 value1 value2 = (output14120, value6896, value1) := by
  rw [input14120_def, output14120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12772_eq]
  try dsimp only
  rw [node14119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14120 input12769)).val
theorem input14121_def : input14121 = (.seq input14120 input12769) := by
  unfold input14121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14120 output12769)).val
theorem output14121_def : output14121 = (.seq output14120 output12769) := by
  unfold output14121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14121_skip : Flapjack.WordAlloc.isSkip output14121 = false := by
  rw [output14121_def]
  conv => lhs; cbv
  try rfl
theorem node14121_eq : Flapjack.WordAlloc.removeDeadStructural input14121 value6384 value1 value2 = (output14121, value6896, value1) := by
  rw [input14121_def, output14121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12769_eq]
  try dsimp only
  rw [node14120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14121 input12760)).val
theorem input14122_def : input14122 = (.seq input14121 input12760) := by
  unfold input14122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14121)).val
theorem output14122_def : output14122 = (output14121) := by
  unfold output14122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14122_skip : Flapjack.WordAlloc.isSkip output14122 = false := by
  rw [output14122_def]
  conv => lhs; cbv
  try rfl
theorem node14122_eq : Flapjack.WordAlloc.removeDeadStructural input14122 value6384 value1 value2 = (output14122, value6896, value1) := by
  rw [input14122_def, output14122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12760_eq]
  try dsimp only
  rw [node14121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14122 input12759)).val
theorem input14123_def : input14123 = (.seq input14122 input12759) := by
  unfold input14123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14122 output12759)).val
theorem output14123_def : output14123 = (.seq output14122 output12759) := by
  unfold output14123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14123_skip : Flapjack.WordAlloc.isSkip output14123 = false := by
  rw [output14123_def]
  conv => lhs; cbv
  try rfl
theorem node14123_eq : Flapjack.WordAlloc.removeDeadStructural input14123 value6383 value1 value2 = (output14123, value6896, value1) := by
  rw [input14123_def, output14123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12759_eq]
  try dsimp only
  rw [node14122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14123 input12758)).val
theorem input14124_def : input14124 = (.seq input14123 input12758) := by
  unfold input14124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14123 output12758)).val
theorem output14124_def : output14124 = (.seq output14123 output12758) := by
  unfold output14124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14124_skip : Flapjack.WordAlloc.isSkip output14124 = false := by
  rw [output14124_def]
  conv => lhs; cbv
  try rfl
theorem node14124_eq : Flapjack.WordAlloc.removeDeadStructural input14124 value5 value1 value2 = (output14124, value6896, value1) := by
  rw [input14124_def, output14124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12758_eq]
  try dsimp only
  rw [node14123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14124 input12755)).val
theorem input14125_def : input14125 = (.seq input14124 input12755) := by
  unfold input14125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14124 output12755)).val
theorem output14125_def : output14125 = (.seq output14124 output12755) := by
  unfold output14125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14125_skip : Flapjack.WordAlloc.isSkip output14125 = false := by
  rw [output14125_def]
  conv => lhs; cbv
  try rfl
theorem node14125_eq : Flapjack.WordAlloc.removeDeadStructural input14125 value6377 value1 value2 = (output14125, value6896, value1) := by
  rw [input14125_def, output14125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12755_eq]
  try dsimp only
  rw [node14124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14125 input12746)).val
theorem input14126_def : input14126 = (.seq input14125 input12746) := by
  unfold input14126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14125)).val
theorem output14126_def : output14126 = (output14125) := by
  unfold output14126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14126_skip : Flapjack.WordAlloc.isSkip output14126 = false := by
  rw [output14126_def]
  conv => lhs; cbv
  try rfl
theorem node14126_eq : Flapjack.WordAlloc.removeDeadStructural input14126 value6377 value1 value2 = (output14126, value6896, value1) := by
  rw [input14126_def, output14126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12746_eq]
  try dsimp only
  rw [node14125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14126 input12745)).val
theorem input14127_def : input14127 = (.seq input14126 input12745) := by
  unfold input14127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14126 output12745)).val
theorem output14127_def : output14127 = (.seq output14126 output12745) := by
  unfold output14127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14127_skip : Flapjack.WordAlloc.isSkip output14127 = false := by
  rw [output14127_def]
  conv => lhs; cbv
  try rfl
theorem node14127_eq : Flapjack.WordAlloc.removeDeadStructural input14127 value6376 value1 value2 = (output14127, value6896, value1) := by
  rw [input14127_def, output14127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12745_eq]
  try dsimp only
  rw [node14126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14127 input12744)).val
theorem input14128_def : input14128 = (.seq input14127 input12744) := by
  unfold input14128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14127 output12744)).val
theorem output14128_def : output14128 = (.seq output14127 output12744) := by
  unfold output14128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14128_skip : Flapjack.WordAlloc.isSkip output14128 = false := by
  rw [output14128_def]
  conv => lhs; cbv
  try rfl
theorem node14128_eq : Flapjack.WordAlloc.removeDeadStructural input14128 value5 value1 value2 = (output14128, value6896, value1) := by
  rw [input14128_def, output14128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12744_eq]
  try dsimp only
  rw [node14127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14128 input12741)).val
theorem input14129_def : input14129 = (.seq input14128 input12741) := by
  unfold input14129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14128 output12741)).val
theorem output14129_def : output14129 = (.seq output14128 output12741) := by
  unfold output14129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14129_skip : Flapjack.WordAlloc.isSkip output14129 = false := by
  rw [output14129_def]
  conv => lhs; cbv
  try rfl
theorem node14129_eq : Flapjack.WordAlloc.removeDeadStructural input14129 value6370 value1 value2 = (output14129, value6896, value1) := by
  rw [input14129_def, output14129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12741_eq]
  try dsimp only
  rw [node14128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14129 input12732)).val
theorem input14130_def : input14130 = (.seq input14129 input12732) := by
  unfold input14130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14129)).val
theorem output14130_def : output14130 = (output14129) := by
  unfold output14130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14130_skip : Flapjack.WordAlloc.isSkip output14130 = false := by
  rw [output14130_def]
  conv => lhs; cbv
  try rfl
theorem node14130_eq : Flapjack.WordAlloc.removeDeadStructural input14130 value6370 value1 value2 = (output14130, value6896, value1) := by
  rw [input14130_def, output14130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12732_eq]
  try dsimp only
  rw [node14129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14130 input12731)).val
theorem input14131_def : input14131 = (.seq input14130 input12731) := by
  unfold input14131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14130 output12731)).val
theorem output14131_def : output14131 = (.seq output14130 output12731) := by
  unfold output14131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14131_skip : Flapjack.WordAlloc.isSkip output14131 = false := by
  rw [output14131_def]
  conv => lhs; cbv
  try rfl
theorem node14131_eq : Flapjack.WordAlloc.removeDeadStructural input14131 value6369 value1 value2 = (output14131, value6896, value1) := by
  rw [input14131_def, output14131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12731_eq]
  try dsimp only
  rw [node14130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14131 input12730)).val
theorem input14132_def : input14132 = (.seq input14131 input12730) := by
  unfold input14132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14131 output12730)).val
theorem output14132_def : output14132 = (.seq output14131 output12730) := by
  unfold output14132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14132_skip : Flapjack.WordAlloc.isSkip output14132 = false := by
  rw [output14132_def]
  conv => lhs; cbv
  try rfl
theorem node14132_eq : Flapjack.WordAlloc.removeDeadStructural input14132 value5 value1 value2 = (output14132, value6896, value1) := by
  rw [input14132_def, output14132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12730_eq]
  try dsimp only
  rw [node14131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14132 input12727)).val
theorem input14133_def : input14133 = (.seq input14132 input12727) := by
  unfold input14133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14132 output12727)).val
theorem output14133_def : output14133 = (.seq output14132 output12727) := by
  unfold output14133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14133_skip : Flapjack.WordAlloc.isSkip output14133 = false := by
  rw [output14133_def]
  conv => lhs; cbv
  try rfl
theorem node14133_eq : Flapjack.WordAlloc.removeDeadStructural input14133 value6363 value1 value2 = (output14133, value6896, value1) := by
  rw [input14133_def, output14133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12727_eq]
  try dsimp only
  rw [node14132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14133 input12718)).val
theorem input14134_def : input14134 = (.seq input14133 input12718) := by
  unfold input14134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14133)).val
theorem output14134_def : output14134 = (output14133) := by
  unfold output14134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14134_skip : Flapjack.WordAlloc.isSkip output14134 = false := by
  rw [output14134_def]
  conv => lhs; cbv
  try rfl
theorem node14134_eq : Flapjack.WordAlloc.removeDeadStructural input14134 value6363 value1 value2 = (output14134, value6896, value1) := by
  rw [input14134_def, output14134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12718_eq]
  try dsimp only
  rw [node14133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14134 input12717)).val
theorem input14135_def : input14135 = (.seq input14134 input12717) := by
  unfold input14135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14134 output12717)).val
theorem output14135_def : output14135 = (.seq output14134 output12717) := by
  unfold output14135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14135_skip : Flapjack.WordAlloc.isSkip output14135 = false := by
  rw [output14135_def]
  conv => lhs; cbv
  try rfl
theorem node14135_eq : Flapjack.WordAlloc.removeDeadStructural input14135 value6362 value1 value2 = (output14135, value6896, value1) := by
  rw [input14135_def, output14135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12717_eq]
  try dsimp only
  rw [node14134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14135 input12716)).val
theorem input14136_def : input14136 = (.seq input14135 input12716) := by
  unfold input14136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14135 output12716)).val
theorem output14136_def : output14136 = (.seq output14135 output12716) := by
  unfold output14136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14136_skip : Flapjack.WordAlloc.isSkip output14136 = false := by
  rw [output14136_def]
  conv => lhs; cbv
  try rfl
theorem node14136_eq : Flapjack.WordAlloc.removeDeadStructural input14136 value5 value1 value2 = (output14136, value6896, value1) := by
  rw [input14136_def, output14136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12716_eq]
  try dsimp only
  rw [node14135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14136 input12713)).val
theorem input14137_def : input14137 = (.seq input14136 input12713) := by
  unfold input14137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14136 output12713)).val
theorem output14137_def : output14137 = (.seq output14136 output12713) := by
  unfold output14137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14137_skip : Flapjack.WordAlloc.isSkip output14137 = false := by
  rw [output14137_def]
  conv => lhs; cbv
  try rfl
theorem node14137_eq : Flapjack.WordAlloc.removeDeadStructural input14137 value6356 value1 value2 = (output14137, value6896, value1) := by
  rw [input14137_def, output14137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12713_eq]
  try dsimp only
  rw [node14136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14137 input12704)).val
theorem input14138_def : input14138 = (.seq input14137 input12704) := by
  unfold input14138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14137)).val
theorem output14138_def : output14138 = (output14137) := by
  unfold output14138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14138_skip : Flapjack.WordAlloc.isSkip output14138 = false := by
  rw [output14138_def]
  conv => lhs; cbv
  try rfl
theorem node14138_eq : Flapjack.WordAlloc.removeDeadStructural input14138 value6356 value1 value2 = (output14138, value6896, value1) := by
  rw [input14138_def, output14138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12704_eq]
  try dsimp only
  rw [node14137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14138 input12703)).val
theorem input14139_def : input14139 = (.seq input14138 input12703) := by
  unfold input14139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14138 output12703)).val
theorem output14139_def : output14139 = (.seq output14138 output12703) := by
  unfold output14139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14139_skip : Flapjack.WordAlloc.isSkip output14139 = false := by
  rw [output14139_def]
  conv => lhs; cbv
  try rfl
theorem node14139_eq : Flapjack.WordAlloc.removeDeadStructural input14139 value6355 value1 value2 = (output14139, value6896, value1) := by
  rw [input14139_def, output14139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12703_eq]
  try dsimp only
  rw [node14138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14139 input12702)).val
theorem input14140_def : input14140 = (.seq input14139 input12702) := by
  unfold input14140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14139 output12702)).val
theorem output14140_def : output14140 = (.seq output14139 output12702) := by
  unfold output14140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14140_skip : Flapjack.WordAlloc.isSkip output14140 = false := by
  rw [output14140_def]
  conv => lhs; cbv
  try rfl
theorem node14140_eq : Flapjack.WordAlloc.removeDeadStructural input14140 value5 value1 value2 = (output14140, value6896, value1) := by
  rw [input14140_def, output14140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12702_eq]
  try dsimp only
  rw [node14139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14140 input12699)).val
theorem input14141_def : input14141 = (.seq input14140 input12699) := by
  unfold input14141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14140 output12699)).val
theorem output14141_def : output14141 = (.seq output14140 output12699) := by
  unfold output14141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14141_skip : Flapjack.WordAlloc.isSkip output14141 = false := by
  rw [output14141_def]
  conv => lhs; cbv
  try rfl
theorem node14141_eq : Flapjack.WordAlloc.removeDeadStructural input14141 value6349 value1 value2 = (output14141, value6896, value1) := by
  rw [input14141_def, output14141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12699_eq]
  try dsimp only
  rw [node14140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14141 input12690)).val
theorem input14142_def : input14142 = (.seq input14141 input12690) := by
  unfold input14142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14141)).val
theorem output14142_def : output14142 = (output14141) := by
  unfold output14142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14142_skip : Flapjack.WordAlloc.isSkip output14142 = false := by
  rw [output14142_def]
  conv => lhs; cbv
  try rfl
theorem node14142_eq : Flapjack.WordAlloc.removeDeadStructural input14142 value6349 value1 value2 = (output14142, value6896, value1) := by
  rw [input14142_def, output14142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12690_eq]
  try dsimp only
  rw [node14141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14142 input12689)).val
theorem input14143_def : input14143 = (.seq input14142 input12689) := by
  unfold input14143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14142 output12689)).val
theorem output14143_def : output14143 = (.seq output14142 output12689) := by
  unfold output14143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14143_skip : Flapjack.WordAlloc.isSkip output14143 = false := by
  rw [output14143_def]
  conv => lhs; cbv
  try rfl
theorem node14143_eq : Flapjack.WordAlloc.removeDeadStructural input14143 value6348 value1 value2 = (output14143, value6896, value1) := by
  rw [input14143_def, output14143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12689_eq]
  try dsimp only
  rw [node14142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14143 input12688)).val
theorem input14144_def : input14144 = (.seq input14143 input12688) := by
  unfold input14144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14143 output12688)).val
theorem output14144_def : output14144 = (.seq output14143 output12688) := by
  unfold output14144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14144_skip : Flapjack.WordAlloc.isSkip output14144 = false := by
  rw [output14144_def]
  conv => lhs; cbv
  try rfl
theorem node14144_eq : Flapjack.WordAlloc.removeDeadStructural input14144 value5 value1 value2 = (output14144, value6896, value1) := by
  rw [input14144_def, output14144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12688_eq]
  try dsimp only
  rw [node14143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14144 input12685)).val
theorem input14145_def : input14145 = (.seq input14144 input12685) := by
  unfold input14145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14144 output12685)).val
theorem output14145_def : output14145 = (.seq output14144 output12685) := by
  unfold output14145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14145_skip : Flapjack.WordAlloc.isSkip output14145 = false := by
  rw [output14145_def]
  conv => lhs; cbv
  try rfl
theorem node14145_eq : Flapjack.WordAlloc.removeDeadStructural input14145 value6342 value1 value2 = (output14145, value6896, value1) := by
  rw [input14145_def, output14145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12685_eq]
  try dsimp only
  rw [node14144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14145 input12676)).val
theorem input14146_def : input14146 = (.seq input14145 input12676) := by
  unfold input14146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14145)).val
theorem output14146_def : output14146 = (output14145) := by
  unfold output14146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14146_skip : Flapjack.WordAlloc.isSkip output14146 = false := by
  rw [output14146_def]
  conv => lhs; cbv
  try rfl
theorem node14146_eq : Flapjack.WordAlloc.removeDeadStructural input14146 value6342 value1 value2 = (output14146, value6896, value1) := by
  rw [input14146_def, output14146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12676_eq]
  try dsimp only
  rw [node14145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14146 input12675)).val
theorem input14147_def : input14147 = (.seq input14146 input12675) := by
  unfold input14147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14146 output12675)).val
theorem output14147_def : output14147 = (.seq output14146 output12675) := by
  unfold output14147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14147_skip : Flapjack.WordAlloc.isSkip output14147 = false := by
  rw [output14147_def]
  conv => lhs; cbv
  try rfl
theorem node14147_eq : Flapjack.WordAlloc.removeDeadStructural input14147 value6341 value1 value2 = (output14147, value6896, value1) := by
  rw [input14147_def, output14147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12675_eq]
  try dsimp only
  rw [node14146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14147 input12674)).val
theorem input14148_def : input14148 = (.seq input14147 input12674) := by
  unfold input14148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14147 output12674)).val
theorem output14148_def : output14148 = (.seq output14147 output12674) := by
  unfold output14148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14148_skip : Flapjack.WordAlloc.isSkip output14148 = false := by
  rw [output14148_def]
  conv => lhs; cbv
  try rfl
theorem node14148_eq : Flapjack.WordAlloc.removeDeadStructural input14148 value5 value1 value2 = (output14148, value6896, value1) := by
  rw [input14148_def, output14148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12674_eq]
  try dsimp only
  rw [node14147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14148 input12671)).val
theorem input14149_def : input14149 = (.seq input14148 input12671) := by
  unfold input14149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14148 output12671)).val
theorem output14149_def : output14149 = (.seq output14148 output12671) := by
  unfold output14149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14149_skip : Flapjack.WordAlloc.isSkip output14149 = false := by
  rw [output14149_def]
  conv => lhs; cbv
  try rfl
theorem node14149_eq : Flapjack.WordAlloc.removeDeadStructural input14149 value6335 value1 value2 = (output14149, value6896, value1) := by
  rw [input14149_def, output14149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12671_eq]
  try dsimp only
  rw [node14148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14149 input12662)).val
theorem input14150_def : input14150 = (.seq input14149 input12662) := by
  unfold input14150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14149)).val
theorem output14150_def : output14150 = (output14149) := by
  unfold output14150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14150_skip : Flapjack.WordAlloc.isSkip output14150 = false := by
  rw [output14150_def]
  conv => lhs; cbv
  try rfl
theorem node14150_eq : Flapjack.WordAlloc.removeDeadStructural input14150 value6335 value1 value2 = (output14150, value6896, value1) := by
  rw [input14150_def, output14150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12662_eq]
  try dsimp only
  rw [node14149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14150 input12661)).val
theorem input14151_def : input14151 = (.seq input14150 input12661) := by
  unfold input14151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14150 output12661)).val
theorem output14151_def : output14151 = (.seq output14150 output12661) := by
  unfold output14151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14151_skip : Flapjack.WordAlloc.isSkip output14151 = false := by
  rw [output14151_def]
  conv => lhs; cbv
  try rfl
theorem node14151_eq : Flapjack.WordAlloc.removeDeadStructural input14151 value6334 value1 value2 = (output14151, value6896, value1) := by
  rw [input14151_def, output14151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12661_eq]
  try dsimp only
  rw [node14150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14151 input12660)).val
theorem input14152_def : input14152 = (.seq input14151 input12660) := by
  unfold input14152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14151 output12660)).val
theorem output14152_def : output14152 = (.seq output14151 output12660) := by
  unfold output14152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14152_skip : Flapjack.WordAlloc.isSkip output14152 = false := by
  rw [output14152_def]
  conv => lhs; cbv
  try rfl
theorem node14152_eq : Flapjack.WordAlloc.removeDeadStructural input14152 value5 value1 value2 = (output14152, value6896, value1) := by
  rw [input14152_def, output14152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12660_eq]
  try dsimp only
  rw [node14151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14152 input12657)).val
theorem input14153_def : input14153 = (.seq input14152 input12657) := by
  unfold input14153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14152 output12657)).val
theorem output14153_def : output14153 = (.seq output14152 output12657) := by
  unfold output14153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14153_skip : Flapjack.WordAlloc.isSkip output14153 = false := by
  rw [output14153_def]
  conv => lhs; cbv
  try rfl
theorem node14153_eq : Flapjack.WordAlloc.removeDeadStructural input14153 value6328 value1 value2 = (output14153, value6896, value1) := by
  rw [input14153_def, output14153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12657_eq]
  try dsimp only
  rw [node14152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14153 input12648)).val
theorem input14154_def : input14154 = (.seq input14153 input12648) := by
  unfold input14154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14153)).val
theorem output14154_def : output14154 = (output14153) := by
  unfold output14154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14154_skip : Flapjack.WordAlloc.isSkip output14154 = false := by
  rw [output14154_def]
  conv => lhs; cbv
  try rfl
theorem node14154_eq : Flapjack.WordAlloc.removeDeadStructural input14154 value6328 value1 value2 = (output14154, value6896, value1) := by
  rw [input14154_def, output14154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12648_eq]
  try dsimp only
  rw [node14153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14154 input12647)).val
theorem input14155_def : input14155 = (.seq input14154 input12647) := by
  unfold input14155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14154 output12647)).val
theorem output14155_def : output14155 = (.seq output14154 output12647) := by
  unfold output14155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14155_skip : Flapjack.WordAlloc.isSkip output14155 = false := by
  rw [output14155_def]
  conv => lhs; cbv
  try rfl
theorem node14155_eq : Flapjack.WordAlloc.removeDeadStructural input14155 value6327 value1 value2 = (output14155, value6896, value1) := by
  rw [input14155_def, output14155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12647_eq]
  try dsimp only
  rw [node14154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14155 input12646)).val
theorem input14156_def : input14156 = (.seq input14155 input12646) := by
  unfold input14156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14155 output12646)).val
theorem output14156_def : output14156 = (.seq output14155 output12646) := by
  unfold output14156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14156_skip : Flapjack.WordAlloc.isSkip output14156 = false := by
  rw [output14156_def]
  conv => lhs; cbv
  try rfl
theorem node14156_eq : Flapjack.WordAlloc.removeDeadStructural input14156 value5 value1 value2 = (output14156, value6896, value1) := by
  rw [input14156_def, output14156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12646_eq]
  try dsimp only
  rw [node14155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14156 input12643)).val
theorem input14157_def : input14157 = (.seq input14156 input12643) := by
  unfold input14157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14156 output12643)).val
theorem output14157_def : output14157 = (.seq output14156 output12643) := by
  unfold output14157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14157_skip : Flapjack.WordAlloc.isSkip output14157 = false := by
  rw [output14157_def]
  conv => lhs; cbv
  try rfl
theorem node14157_eq : Flapjack.WordAlloc.removeDeadStructural input14157 value6321 value1 value2 = (output14157, value6896, value1) := by
  rw [input14157_def, output14157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12643_eq]
  try dsimp only
  rw [node14156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14157 input12634)).val
theorem input14158_def : input14158 = (.seq input14157 input12634) := by
  unfold input14158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14157)).val
theorem output14158_def : output14158 = (output14157) := by
  unfold output14158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14158_skip : Flapjack.WordAlloc.isSkip output14158 = false := by
  rw [output14158_def]
  conv => lhs; cbv
  try rfl
theorem node14158_eq : Flapjack.WordAlloc.removeDeadStructural input14158 value6321 value1 value2 = (output14158, value6896, value1) := by
  rw [input14158_def, output14158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12634_eq]
  try dsimp only
  rw [node14157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14158 input12633)).val
theorem input14159_def : input14159 = (.seq input14158 input12633) := by
  unfold input14159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14158 output12633)).val
theorem output14159_def : output14159 = (.seq output14158 output12633) := by
  unfold output14159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14159_skip : Flapjack.WordAlloc.isSkip output14159 = false := by
  rw [output14159_def]
  conv => lhs; cbv
  try rfl
theorem node14159_eq : Flapjack.WordAlloc.removeDeadStructural input14159 value6320 value1 value2 = (output14159, value6896, value1) := by
  rw [input14159_def, output14159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12633_eq]
  try dsimp only
  rw [node14158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14159 input12632)).val
theorem input14160_def : input14160 = (.seq input14159 input12632) := by
  unfold input14160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14159 output12632)).val
theorem output14160_def : output14160 = (.seq output14159 output12632) := by
  unfold output14160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14160_skip : Flapjack.WordAlloc.isSkip output14160 = false := by
  rw [output14160_def]
  conv => lhs; cbv
  try rfl
theorem node14160_eq : Flapjack.WordAlloc.removeDeadStructural input14160 value5 value1 value2 = (output14160, value6896, value1) := by
  rw [input14160_def, output14160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12632_eq]
  try dsimp only
  rw [node14159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14160 input12629)).val
theorem input14161_def : input14161 = (.seq input14160 input12629) := by
  unfold input14161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14160 output12629)).val
theorem output14161_def : output14161 = (.seq output14160 output12629) := by
  unfold output14161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14161_skip : Flapjack.WordAlloc.isSkip output14161 = false := by
  rw [output14161_def]
  conv => lhs; cbv
  try rfl
theorem node14161_eq : Flapjack.WordAlloc.removeDeadStructural input14161 value6314 value1 value2 = (output14161, value6896, value1) := by
  rw [input14161_def, output14161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12629_eq]
  try dsimp only
  rw [node14160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14161 input12620)).val
theorem input14162_def : input14162 = (.seq input14161 input12620) := by
  unfold input14162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14161)).val
theorem output14162_def : output14162 = (output14161) := by
  unfold output14162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14162_skip : Flapjack.WordAlloc.isSkip output14162 = false := by
  rw [output14162_def]
  conv => lhs; cbv
  try rfl
theorem node14162_eq : Flapjack.WordAlloc.removeDeadStructural input14162 value6314 value1 value2 = (output14162, value6896, value1) := by
  rw [input14162_def, output14162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12620_eq]
  try dsimp only
  rw [node14161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14162 input12619)).val
theorem input14163_def : input14163 = (.seq input14162 input12619) := by
  unfold input14163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14162 output12619)).val
theorem output14163_def : output14163 = (.seq output14162 output12619) := by
  unfold output14163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14163_skip : Flapjack.WordAlloc.isSkip output14163 = false := by
  rw [output14163_def]
  conv => lhs; cbv
  try rfl
theorem node14163_eq : Flapjack.WordAlloc.removeDeadStructural input14163 value6313 value1 value2 = (output14163, value6896, value1) := by
  rw [input14163_def, output14163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12619_eq]
  try dsimp only
  rw [node14162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14163 input12618)).val
theorem input14164_def : input14164 = (.seq input14163 input12618) := by
  unfold input14164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14163 output12618)).val
theorem output14164_def : output14164 = (.seq output14163 output12618) := by
  unfold output14164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14164_skip : Flapjack.WordAlloc.isSkip output14164 = false := by
  rw [output14164_def]
  conv => lhs; cbv
  try rfl
theorem node14164_eq : Flapjack.WordAlloc.removeDeadStructural input14164 value5 value1 value2 = (output14164, value6896, value1) := by
  rw [input14164_def, output14164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12618_eq]
  try dsimp only
  rw [node14163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14164 input12615)).val
theorem input14165_def : input14165 = (.seq input14164 input12615) := by
  unfold input14165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14164 output12615)).val
theorem output14165_def : output14165 = (.seq output14164 output12615) := by
  unfold output14165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14165_skip : Flapjack.WordAlloc.isSkip output14165 = false := by
  rw [output14165_def]
  conv => lhs; cbv
  try rfl
theorem node14165_eq : Flapjack.WordAlloc.removeDeadStructural input14165 value6307 value1 value2 = (output14165, value6896, value1) := by
  rw [input14165_def, output14165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12615_eq]
  try dsimp only
  rw [node14164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14165 input12606)).val
theorem input14166_def : input14166 = (.seq input14165 input12606) := by
  unfold input14166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14165)).val
theorem output14166_def : output14166 = (output14165) := by
  unfold output14166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14166_skip : Flapjack.WordAlloc.isSkip output14166 = false := by
  rw [output14166_def]
  conv => lhs; cbv
  try rfl
theorem node14166_eq : Flapjack.WordAlloc.removeDeadStructural input14166 value6307 value1 value2 = (output14166, value6896, value1) := by
  rw [input14166_def, output14166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12606_eq]
  try dsimp only
  rw [node14165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14166 input12605)).val
theorem input14167_def : input14167 = (.seq input14166 input12605) := by
  unfold input14167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14166 output12605)).val
theorem output14167_def : output14167 = (.seq output14166 output12605) := by
  unfold output14167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14167_skip : Flapjack.WordAlloc.isSkip output14167 = false := by
  rw [output14167_def]
  conv => lhs; cbv
  try rfl
theorem node14167_eq : Flapjack.WordAlloc.removeDeadStructural input14167 value6306 value1 value2 = (output14167, value6896, value1) := by
  rw [input14167_def, output14167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12605_eq]
  try dsimp only
  rw [node14166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14167 input12604)).val
theorem input14168_def : input14168 = (.seq input14167 input12604) := by
  unfold input14168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14167 output12604)).val
theorem output14168_def : output14168 = (.seq output14167 output12604) := by
  unfold output14168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14168_skip : Flapjack.WordAlloc.isSkip output14168 = false := by
  rw [output14168_def]
  conv => lhs; cbv
  try rfl
theorem node14168_eq : Flapjack.WordAlloc.removeDeadStructural input14168 value5 value1 value2 = (output14168, value6896, value1) := by
  rw [input14168_def, output14168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12604_eq]
  try dsimp only
  rw [node14167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14168 input12601)).val
theorem input14169_def : input14169 = (.seq input14168 input12601) := by
  unfold input14169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14168 output12601)).val
theorem output14169_def : output14169 = (.seq output14168 output12601) := by
  unfold output14169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14169_skip : Flapjack.WordAlloc.isSkip output14169 = false := by
  rw [output14169_def]
  conv => lhs; cbv
  try rfl
theorem node14169_eq : Flapjack.WordAlloc.removeDeadStructural input14169 value6300 value1 value2 = (output14169, value6896, value1) := by
  rw [input14169_def, output14169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12601_eq]
  try dsimp only
  rw [node14168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14169 input12592)).val
theorem input14170_def : input14170 = (.seq input14169 input12592) := by
  unfold input14170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14169)).val
theorem output14170_def : output14170 = (output14169) := by
  unfold output14170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14170_skip : Flapjack.WordAlloc.isSkip output14170 = false := by
  rw [output14170_def]
  conv => lhs; cbv
  try rfl
theorem node14170_eq : Flapjack.WordAlloc.removeDeadStructural input14170 value6300 value1 value2 = (output14170, value6896, value1) := by
  rw [input14170_def, output14170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12592_eq]
  try dsimp only
  rw [node14169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14170 input12591)).val
theorem input14171_def : input14171 = (.seq input14170 input12591) := by
  unfold input14171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14170 output12591)).val
theorem output14171_def : output14171 = (.seq output14170 output12591) := by
  unfold output14171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14171_skip : Flapjack.WordAlloc.isSkip output14171 = false := by
  rw [output14171_def]
  conv => lhs; cbv
  try rfl
theorem node14171_eq : Flapjack.WordAlloc.removeDeadStructural input14171 value6299 value1 value2 = (output14171, value6896, value1) := by
  rw [input14171_def, output14171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12591_eq]
  try dsimp only
  rw [node14170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14171 input12590)).val
theorem input14172_def : input14172 = (.seq input14171 input12590) := by
  unfold input14172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14171 output12590)).val
theorem output14172_def : output14172 = (.seq output14171 output12590) := by
  unfold output14172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14172_skip : Flapjack.WordAlloc.isSkip output14172 = false := by
  rw [output14172_def]
  conv => lhs; cbv
  try rfl
theorem node14172_eq : Flapjack.WordAlloc.removeDeadStructural input14172 value5 value1 value2 = (output14172, value6896, value1) := by
  rw [input14172_def, output14172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12590_eq]
  try dsimp only
  rw [node14171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14172 input12587)).val
theorem input14173_def : input14173 = (.seq input14172 input12587) := by
  unfold input14173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14172 output12587)).val
theorem output14173_def : output14173 = (.seq output14172 output12587) := by
  unfold output14173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14173_skip : Flapjack.WordAlloc.isSkip output14173 = false := by
  rw [output14173_def]
  conv => lhs; cbv
  try rfl
theorem node14173_eq : Flapjack.WordAlloc.removeDeadStructural input14173 value6293 value1 value2 = (output14173, value6896, value1) := by
  rw [input14173_def, output14173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12587_eq]
  try dsimp only
  rw [node14172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14173 input12578)).val
theorem input14174_def : input14174 = (.seq input14173 input12578) := by
  unfold input14174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14173)).val
theorem output14174_def : output14174 = (output14173) := by
  unfold output14174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14174_skip : Flapjack.WordAlloc.isSkip output14174 = false := by
  rw [output14174_def]
  conv => lhs; cbv
  try rfl
theorem node14174_eq : Flapjack.WordAlloc.removeDeadStructural input14174 value6293 value1 value2 = (output14174, value6896, value1) := by
  rw [input14174_def, output14174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12578_eq]
  try dsimp only
  rw [node14173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14174 input12577)).val
theorem input14175_def : input14175 = (.seq input14174 input12577) := by
  unfold input14175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14174 output12577)).val
theorem output14175_def : output14175 = (.seq output14174 output12577) := by
  unfold output14175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14175_skip : Flapjack.WordAlloc.isSkip output14175 = false := by
  rw [output14175_def]
  conv => lhs; cbv
  try rfl
theorem node14175_eq : Flapjack.WordAlloc.removeDeadStructural input14175 value6292 value1 value2 = (output14175, value6896, value1) := by
  rw [input14175_def, output14175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12577_eq]
  try dsimp only
  rw [node14174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14175 input12576)).val
theorem input14176_def : input14176 = (.seq input14175 input12576) := by
  unfold input14176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14175 output12576)).val
theorem output14176_def : output14176 = (.seq output14175 output12576) := by
  unfold output14176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14176_skip : Flapjack.WordAlloc.isSkip output14176 = false := by
  rw [output14176_def]
  conv => lhs; cbv
  try rfl
theorem node14176_eq : Flapjack.WordAlloc.removeDeadStructural input14176 value5 value1 value2 = (output14176, value6896, value1) := by
  rw [input14176_def, output14176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12576_eq]
  try dsimp only
  rw [node14175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14176 input12573)).val
theorem input14177_def : input14177 = (.seq input14176 input12573) := by
  unfold input14177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14176 output12573)).val
theorem output14177_def : output14177 = (.seq output14176 output12573) := by
  unfold output14177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14177_skip : Flapjack.WordAlloc.isSkip output14177 = false := by
  rw [output14177_def]
  conv => lhs; cbv
  try rfl
theorem node14177_eq : Flapjack.WordAlloc.removeDeadStructural input14177 value6286 value1 value2 = (output14177, value6896, value1) := by
  rw [input14177_def, output14177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12573_eq]
  try dsimp only
  rw [node14176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14177 input12564)).val
theorem input14178_def : input14178 = (.seq input14177 input12564) := by
  unfold input14178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14177)).val
theorem output14178_def : output14178 = (output14177) := by
  unfold output14178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14178_skip : Flapjack.WordAlloc.isSkip output14178 = false := by
  rw [output14178_def]
  conv => lhs; cbv
  try rfl
theorem node14178_eq : Flapjack.WordAlloc.removeDeadStructural input14178 value6286 value1 value2 = (output14178, value6896, value1) := by
  rw [input14178_def, output14178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12564_eq]
  try dsimp only
  rw [node14177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14178 input12563)).val
theorem input14179_def : input14179 = (.seq input14178 input12563) := by
  unfold input14179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14178 output12563)).val
theorem output14179_def : output14179 = (.seq output14178 output12563) := by
  unfold output14179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14179_skip : Flapjack.WordAlloc.isSkip output14179 = false := by
  rw [output14179_def]
  conv => lhs; cbv
  try rfl
theorem node14179_eq : Flapjack.WordAlloc.removeDeadStructural input14179 value6285 value1 value2 = (output14179, value6896, value1) := by
  rw [input14179_def, output14179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12563_eq]
  try dsimp only
  rw [node14178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14179 input12562)).val
theorem input14180_def : input14180 = (.seq input14179 input12562) := by
  unfold input14180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14179 output12562)).val
theorem output14180_def : output14180 = (.seq output14179 output12562) := by
  unfold output14180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14180_skip : Flapjack.WordAlloc.isSkip output14180 = false := by
  rw [output14180_def]
  conv => lhs; cbv
  try rfl
theorem node14180_eq : Flapjack.WordAlloc.removeDeadStructural input14180 value5 value1 value2 = (output14180, value6896, value1) := by
  rw [input14180_def, output14180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12562_eq]
  try dsimp only
  rw [node14179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14180 input12559)).val
theorem input14181_def : input14181 = (.seq input14180 input12559) := by
  unfold input14181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14180 output12559)).val
theorem output14181_def : output14181 = (.seq output14180 output12559) := by
  unfold output14181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14181_skip : Flapjack.WordAlloc.isSkip output14181 = false := by
  rw [output14181_def]
  conv => lhs; cbv
  try rfl
theorem node14181_eq : Flapjack.WordAlloc.removeDeadStructural input14181 value6279 value1 value2 = (output14181, value6896, value1) := by
  rw [input14181_def, output14181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12559_eq]
  try dsimp only
  rw [node14180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14181 input12550)).val
theorem input14182_def : input14182 = (.seq input14181 input12550) := by
  unfold input14182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14181)).val
theorem output14182_def : output14182 = (output14181) := by
  unfold output14182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14182_skip : Flapjack.WordAlloc.isSkip output14182 = false := by
  rw [output14182_def]
  conv => lhs; cbv
  try rfl
theorem node14182_eq : Flapjack.WordAlloc.removeDeadStructural input14182 value6279 value1 value2 = (output14182, value6896, value1) := by
  rw [input14182_def, output14182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12550_eq]
  try dsimp only
  rw [node14181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14182 input12549)).val
theorem input14183_def : input14183 = (.seq input14182 input12549) := by
  unfold input14183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14182 output12549)).val
theorem output14183_def : output14183 = (.seq output14182 output12549) := by
  unfold output14183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14183_skip : Flapjack.WordAlloc.isSkip output14183 = false := by
  rw [output14183_def]
  conv => lhs; cbv
  try rfl
theorem node14183_eq : Flapjack.WordAlloc.removeDeadStructural input14183 value6278 value1 value2 = (output14183, value6896, value1) := by
  rw [input14183_def, output14183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12549_eq]
  try dsimp only
  rw [node14182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14183 input12548)).val
theorem input14184_def : input14184 = (.seq input14183 input12548) := by
  unfold input14184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14183 output12548)).val
theorem output14184_def : output14184 = (.seq output14183 output12548) := by
  unfold output14184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14184_skip : Flapjack.WordAlloc.isSkip output14184 = false := by
  rw [output14184_def]
  conv => lhs; cbv
  try rfl
theorem node14184_eq : Flapjack.WordAlloc.removeDeadStructural input14184 value5 value1 value2 = (output14184, value6896, value1) := by
  rw [input14184_def, output14184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12548_eq]
  try dsimp only
  rw [node14183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14184 input12545)).val
theorem input14185_def : input14185 = (.seq input14184 input12545) := by
  unfold input14185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14184 output12545)).val
theorem output14185_def : output14185 = (.seq output14184 output12545) := by
  unfold output14185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14185_skip : Flapjack.WordAlloc.isSkip output14185 = false := by
  rw [output14185_def]
  conv => lhs; cbv
  try rfl
theorem node14185_eq : Flapjack.WordAlloc.removeDeadStructural input14185 value6272 value1 value2 = (output14185, value6896, value1) := by
  rw [input14185_def, output14185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12545_eq]
  try dsimp only
  rw [node14184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14185 input12536)).val
theorem input14186_def : input14186 = (.seq input14185 input12536) := by
  unfold input14186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14185)).val
theorem output14186_def : output14186 = (output14185) := by
  unfold output14186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14186_skip : Flapjack.WordAlloc.isSkip output14186 = false := by
  rw [output14186_def]
  conv => lhs; cbv
  try rfl
theorem node14186_eq : Flapjack.WordAlloc.removeDeadStructural input14186 value6272 value1 value2 = (output14186, value6896, value1) := by
  rw [input14186_def, output14186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12536_eq]
  try dsimp only
  rw [node14185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14186 input12535)).val
theorem input14187_def : input14187 = (.seq input14186 input12535) := by
  unfold input14187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14186 output12535)).val
theorem output14187_def : output14187 = (.seq output14186 output12535) := by
  unfold output14187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14187_skip : Flapjack.WordAlloc.isSkip output14187 = false := by
  rw [output14187_def]
  conv => lhs; cbv
  try rfl
theorem node14187_eq : Flapjack.WordAlloc.removeDeadStructural input14187 value6271 value1 value2 = (output14187, value6896, value1) := by
  rw [input14187_def, output14187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12535_eq]
  try dsimp only
  rw [node14186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14187 input12534)).val
theorem input14188_def : input14188 = (.seq input14187 input12534) := by
  unfold input14188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14187 output12534)).val
theorem output14188_def : output14188 = (.seq output14187 output12534) := by
  unfold output14188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14188_skip : Flapjack.WordAlloc.isSkip output14188 = false := by
  rw [output14188_def]
  conv => lhs; cbv
  try rfl
theorem node14188_eq : Flapjack.WordAlloc.removeDeadStructural input14188 value5 value1 value2 = (output14188, value6896, value1) := by
  rw [input14188_def, output14188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12534_eq]
  try dsimp only
  rw [node14187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14188 input12531)).val
theorem input14189_def : input14189 = (.seq input14188 input12531) := by
  unfold input14189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14188 output12531)).val
theorem output14189_def : output14189 = (.seq output14188 output12531) := by
  unfold output14189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14189_skip : Flapjack.WordAlloc.isSkip output14189 = false := by
  rw [output14189_def]
  conv => lhs; cbv
  try rfl
theorem node14189_eq : Flapjack.WordAlloc.removeDeadStructural input14189 value6265 value1 value2 = (output14189, value6896, value1) := by
  rw [input14189_def, output14189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12531_eq]
  try dsimp only
  rw [node14188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14189 input12522)).val
theorem input14190_def : input14190 = (.seq input14189 input12522) := by
  unfold input14190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14189)).val
theorem output14190_def : output14190 = (output14189) := by
  unfold output14190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14190_skip : Flapjack.WordAlloc.isSkip output14190 = false := by
  rw [output14190_def]
  conv => lhs; cbv
  try rfl
theorem node14190_eq : Flapjack.WordAlloc.removeDeadStructural input14190 value6265 value1 value2 = (output14190, value6896, value1) := by
  rw [input14190_def, output14190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12522_eq]
  try dsimp only
  rw [node14189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14190 input12521)).val
theorem input14191_def : input14191 = (.seq input14190 input12521) := by
  unfold input14191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14190 output12521)).val
theorem output14191_def : output14191 = (.seq output14190 output12521) := by
  unfold output14191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14191_skip : Flapjack.WordAlloc.isSkip output14191 = false := by
  rw [output14191_def]
  conv => lhs; cbv
  try rfl
theorem node14191_eq : Flapjack.WordAlloc.removeDeadStructural input14191 value6264 value1 value2 = (output14191, value6896, value1) := by
  rw [input14191_def, output14191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12521_eq]
  try dsimp only
  rw [node14190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14191 input12520)).val
theorem input14192_def : input14192 = (.seq input14191 input12520) := by
  unfold input14192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14191 output12520)).val
theorem output14192_def : output14192 = (.seq output14191 output12520) := by
  unfold output14192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14192_skip : Flapjack.WordAlloc.isSkip output14192 = false := by
  rw [output14192_def]
  conv => lhs; cbv
  try rfl
theorem node14192_eq : Flapjack.WordAlloc.removeDeadStructural input14192 value5 value1 value2 = (output14192, value6896, value1) := by
  rw [input14192_def, output14192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12520_eq]
  try dsimp only
  rw [node14191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14192 input12517)).val
theorem input14193_def : input14193 = (.seq input14192 input12517) := by
  unfold input14193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14192 output12517)).val
theorem output14193_def : output14193 = (.seq output14192 output12517) := by
  unfold output14193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14193_skip : Flapjack.WordAlloc.isSkip output14193 = false := by
  rw [output14193_def]
  conv => lhs; cbv
  try rfl
theorem node14193_eq : Flapjack.WordAlloc.removeDeadStructural input14193 value6258 value1 value2 = (output14193, value6896, value1) := by
  rw [input14193_def, output14193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12517_eq]
  try dsimp only
  rw [node14192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14193 input12508)).val
theorem input14194_def : input14194 = (.seq input14193 input12508) := by
  unfold input14194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14193)).val
theorem output14194_def : output14194 = (output14193) := by
  unfold output14194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14194_skip : Flapjack.WordAlloc.isSkip output14194 = false := by
  rw [output14194_def]
  conv => lhs; cbv
  try rfl
theorem node14194_eq : Flapjack.WordAlloc.removeDeadStructural input14194 value6258 value1 value2 = (output14194, value6896, value1) := by
  rw [input14194_def, output14194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12508_eq]
  try dsimp only
  rw [node14193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14194 input12507)).val
theorem input14195_def : input14195 = (.seq input14194 input12507) := by
  unfold input14195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14194 output12507)).val
theorem output14195_def : output14195 = (.seq output14194 output12507) := by
  unfold output14195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14195_skip : Flapjack.WordAlloc.isSkip output14195 = false := by
  rw [output14195_def]
  conv => lhs; cbv
  try rfl
theorem node14195_eq : Flapjack.WordAlloc.removeDeadStructural input14195 value6257 value1 value2 = (output14195, value6896, value1) := by
  rw [input14195_def, output14195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12507_eq]
  try dsimp only
  rw [node14194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14195 input12506)).val
theorem input14196_def : input14196 = (.seq input14195 input12506) := by
  unfold input14196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14195 output12506)).val
theorem output14196_def : output14196 = (.seq output14195 output12506) := by
  unfold output14196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14196_skip : Flapjack.WordAlloc.isSkip output14196 = false := by
  rw [output14196_def]
  conv => lhs; cbv
  try rfl
theorem node14196_eq : Flapjack.WordAlloc.removeDeadStructural input14196 value5 value1 value2 = (output14196, value6896, value1) := by
  rw [input14196_def, output14196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12506_eq]
  try dsimp only
  rw [node14195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14196 input12503)).val
theorem input14197_def : input14197 = (.seq input14196 input12503) := by
  unfold input14197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14196 output12503)).val
theorem output14197_def : output14197 = (.seq output14196 output12503) := by
  unfold output14197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14197_skip : Flapjack.WordAlloc.isSkip output14197 = false := by
  rw [output14197_def]
  conv => lhs; cbv
  try rfl
theorem node14197_eq : Flapjack.WordAlloc.removeDeadStructural input14197 value6251 value1 value2 = (output14197, value6896, value1) := by
  rw [input14197_def, output14197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12503_eq]
  try dsimp only
  rw [node14196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14197 input12494)).val
theorem input14198_def : input14198 = (.seq input14197 input12494) := by
  unfold input14198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14197)).val
theorem output14198_def : output14198 = (output14197) := by
  unfold output14198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14198_skip : Flapjack.WordAlloc.isSkip output14198 = false := by
  rw [output14198_def]
  conv => lhs; cbv
  try rfl
theorem node14198_eq : Flapjack.WordAlloc.removeDeadStructural input14198 value6251 value1 value2 = (output14198, value6896, value1) := by
  rw [input14198_def, output14198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12494_eq]
  try dsimp only
  rw [node14197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14198 input12493)).val
theorem input14199_def : input14199 = (.seq input14198 input12493) := by
  unfold input14199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14198 output12493)).val
theorem output14199_def : output14199 = (.seq output14198 output12493) := by
  unfold output14199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14199_skip : Flapjack.WordAlloc.isSkip output14199 = false := by
  rw [output14199_def]
  conv => lhs; cbv
  try rfl
theorem node14199_eq : Flapjack.WordAlloc.removeDeadStructural input14199 value6250 value1 value2 = (output14199, value6896, value1) := by
  rw [input14199_def, output14199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12493_eq]
  try dsimp only
  rw [node14198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14199 input12492)).val
theorem input14200_def : input14200 = (.seq input14199 input12492) := by
  unfold input14200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14199 output12492)).val
theorem output14200_def : output14200 = (.seq output14199 output12492) := by
  unfold output14200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14200_skip : Flapjack.WordAlloc.isSkip output14200 = false := by
  rw [output14200_def]
  conv => lhs; cbv
  try rfl
theorem node14200_eq : Flapjack.WordAlloc.removeDeadStructural input14200 value5 value1 value2 = (output14200, value6896, value1) := by
  rw [input14200_def, output14200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12492_eq]
  try dsimp only
  rw [node14199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14200 input12489)).val
theorem input14201_def : input14201 = (.seq input14200 input12489) := by
  unfold input14201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14200 output12489)).val
theorem output14201_def : output14201 = (.seq output14200 output12489) := by
  unfold output14201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14201_skip : Flapjack.WordAlloc.isSkip output14201 = false := by
  rw [output14201_def]
  conv => lhs; cbv
  try rfl
theorem node14201_eq : Flapjack.WordAlloc.removeDeadStructural input14201 value6244 value1 value2 = (output14201, value6896, value1) := by
  rw [input14201_def, output14201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12489_eq]
  try dsimp only
  rw [node14200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14201 input12480)).val
theorem input14202_def : input14202 = (.seq input14201 input12480) := by
  unfold input14202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14201)).val
theorem output14202_def : output14202 = (output14201) := by
  unfold output14202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14202_skip : Flapjack.WordAlloc.isSkip output14202 = false := by
  rw [output14202_def]
  conv => lhs; cbv
  try rfl
theorem node14202_eq : Flapjack.WordAlloc.removeDeadStructural input14202 value6244 value1 value2 = (output14202, value6896, value1) := by
  rw [input14202_def, output14202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12480_eq]
  try dsimp only
  rw [node14201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14202 input12479)).val
theorem input14203_def : input14203 = (.seq input14202 input12479) := by
  unfold input14203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14202 output12479)).val
theorem output14203_def : output14203 = (.seq output14202 output12479) := by
  unfold output14203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14203_skip : Flapjack.WordAlloc.isSkip output14203 = false := by
  rw [output14203_def]
  conv => lhs; cbv
  try rfl
theorem node14203_eq : Flapjack.WordAlloc.removeDeadStructural input14203 value6243 value1 value2 = (output14203, value6896, value1) := by
  rw [input14203_def, output14203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12479_eq]
  try dsimp only
  rw [node14202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14203 input12478)).val
theorem input14204_def : input14204 = (.seq input14203 input12478) := by
  unfold input14204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14203 output12478)).val
theorem output14204_def : output14204 = (.seq output14203 output12478) := by
  unfold output14204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14204_skip : Flapjack.WordAlloc.isSkip output14204 = false := by
  rw [output14204_def]
  conv => lhs; cbv
  try rfl
theorem node14204_eq : Flapjack.WordAlloc.removeDeadStructural input14204 value5 value1 value2 = (output14204, value6896, value1) := by
  rw [input14204_def, output14204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12478_eq]
  try dsimp only
  rw [node14203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14204 input12475)).val
theorem input14205_def : input14205 = (.seq input14204 input12475) := by
  unfold input14205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14204 output12475)).val
theorem output14205_def : output14205 = (.seq output14204 output12475) := by
  unfold output14205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14205_skip : Flapjack.WordAlloc.isSkip output14205 = false := by
  rw [output14205_def]
  conv => lhs; cbv
  try rfl
theorem node14205_eq : Flapjack.WordAlloc.removeDeadStructural input14205 value6237 value1 value2 = (output14205, value6896, value1) := by
  rw [input14205_def, output14205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12475_eq]
  try dsimp only
  rw [node14204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14205 input12466)).val
theorem input14206_def : input14206 = (.seq input14205 input12466) := by
  unfold input14206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14205)).val
theorem output14206_def : output14206 = (output14205) := by
  unfold output14206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14206_skip : Flapjack.WordAlloc.isSkip output14206 = false := by
  rw [output14206_def]
  conv => lhs; cbv
  try rfl
theorem node14206_eq : Flapjack.WordAlloc.removeDeadStructural input14206 value6237 value1 value2 = (output14206, value6896, value1) := by
  rw [input14206_def, output14206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12466_eq]
  try dsimp only
  rw [node14205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14206 input12465)).val
theorem input14207_def : input14207 = (.seq input14206 input12465) := by
  unfold input14207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14206 output12465)).val
theorem output14207_def : output14207 = (.seq output14206 output12465) := by
  unfold output14207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14207_skip : Flapjack.WordAlloc.isSkip output14207 = false := by
  rw [output14207_def]
  conv => lhs; cbv
  try rfl
theorem node14207_eq : Flapjack.WordAlloc.removeDeadStructural input14207 value6236 value1 value2 = (output14207, value6896, value1) := by
  rw [input14207_def, output14207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12465_eq]
  try dsimp only
  rw [node14206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14207 input12464)).val
theorem input14208_def : input14208 = (.seq input14207 input12464) := by
  unfold input14208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14207 output12464)).val
theorem output14208_def : output14208 = (.seq output14207 output12464) := by
  unfold output14208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14208_skip : Flapjack.WordAlloc.isSkip output14208 = false := by
  rw [output14208_def]
  conv => lhs; cbv
  try rfl
theorem node14208_eq : Flapjack.WordAlloc.removeDeadStructural input14208 value5 value1 value2 = (output14208, value6896, value1) := by
  rw [input14208_def, output14208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12464_eq]
  try dsimp only
  rw [node14207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14208 input12461)).val
theorem input14209_def : input14209 = (.seq input14208 input12461) := by
  unfold input14209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14208 output12461)).val
theorem output14209_def : output14209 = (.seq output14208 output12461) := by
  unfold output14209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14209_skip : Flapjack.WordAlloc.isSkip output14209 = false := by
  rw [output14209_def]
  conv => lhs; cbv
  try rfl
theorem node14209_eq : Flapjack.WordAlloc.removeDeadStructural input14209 value6230 value1 value2 = (output14209, value6896, value1) := by
  rw [input14209_def, output14209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12461_eq]
  try dsimp only
  rw [node14208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14209 input12452)).val
theorem input14210_def : input14210 = (.seq input14209 input12452) := by
  unfold input14210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14209)).val
theorem output14210_def : output14210 = (output14209) := by
  unfold output14210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14210_skip : Flapjack.WordAlloc.isSkip output14210 = false := by
  rw [output14210_def]
  conv => lhs; cbv
  try rfl
theorem node14210_eq : Flapjack.WordAlloc.removeDeadStructural input14210 value6230 value1 value2 = (output14210, value6896, value1) := by
  rw [input14210_def, output14210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12452_eq]
  try dsimp only
  rw [node14209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14210 input12451)).val
theorem input14211_def : input14211 = (.seq input14210 input12451) := by
  unfold input14211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14210 output12451)).val
theorem output14211_def : output14211 = (.seq output14210 output12451) := by
  unfold output14211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14211_skip : Flapjack.WordAlloc.isSkip output14211 = false := by
  rw [output14211_def]
  conv => lhs; cbv
  try rfl
theorem node14211_eq : Flapjack.WordAlloc.removeDeadStructural input14211 value6229 value1 value2 = (output14211, value6896, value1) := by
  rw [input14211_def, output14211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12451_eq]
  try dsimp only
  rw [node14210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14211 input12450)).val
theorem input14212_def : input14212 = (.seq input14211 input12450) := by
  unfold input14212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14211 output12450)).val
theorem output14212_def : output14212 = (.seq output14211 output12450) := by
  unfold output14212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14212_skip : Flapjack.WordAlloc.isSkip output14212 = false := by
  rw [output14212_def]
  conv => lhs; cbv
  try rfl
theorem node14212_eq : Flapjack.WordAlloc.removeDeadStructural input14212 value5 value1 value2 = (output14212, value6896, value1) := by
  rw [input14212_def, output14212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12450_eq]
  try dsimp only
  rw [node14211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14212 input12447)).val
theorem input14213_def : input14213 = (.seq input14212 input12447) := by
  unfold input14213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14212 output12447)).val
theorem output14213_def : output14213 = (.seq output14212 output12447) := by
  unfold output14213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14213_skip : Flapjack.WordAlloc.isSkip output14213 = false := by
  rw [output14213_def]
  conv => lhs; cbv
  try rfl
theorem node14213_eq : Flapjack.WordAlloc.removeDeadStructural input14213 value6223 value1 value2 = (output14213, value6896, value1) := by
  rw [input14213_def, output14213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12447_eq]
  try dsimp only
  rw [node14212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14213 input12438)).val
theorem input14214_def : input14214 = (.seq input14213 input12438) := by
  unfold input14214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14213)).val
theorem output14214_def : output14214 = (output14213) := by
  unfold output14214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14214_skip : Flapjack.WordAlloc.isSkip output14214 = false := by
  rw [output14214_def]
  conv => lhs; cbv
  try rfl
theorem node14214_eq : Flapjack.WordAlloc.removeDeadStructural input14214 value6223 value1 value2 = (output14214, value6896, value1) := by
  rw [input14214_def, output14214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12438_eq]
  try dsimp only
  rw [node14213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14214 input12437)).val
theorem input14215_def : input14215 = (.seq input14214 input12437) := by
  unfold input14215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14214 output12437)).val
theorem output14215_def : output14215 = (.seq output14214 output12437) := by
  unfold output14215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14215_skip : Flapjack.WordAlloc.isSkip output14215 = false := by
  rw [output14215_def]
  conv => lhs; cbv
  try rfl
theorem node14215_eq : Flapjack.WordAlloc.removeDeadStructural input14215 value6222 value1 value2 = (output14215, value6896, value1) := by
  rw [input14215_def, output14215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12437_eq]
  try dsimp only
  rw [node14214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14215 input12436)).val
theorem input14216_def : input14216 = (.seq input14215 input12436) := by
  unfold input14216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14215 output12436)).val
theorem output14216_def : output14216 = (.seq output14215 output12436) := by
  unfold output14216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14216_skip : Flapjack.WordAlloc.isSkip output14216 = false := by
  rw [output14216_def]
  conv => lhs; cbv
  try rfl
theorem node14216_eq : Flapjack.WordAlloc.removeDeadStructural input14216 value5 value1 value2 = (output14216, value6896, value1) := by
  rw [input14216_def, output14216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12436_eq]
  try dsimp only
  rw [node14215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14216 input12433)).val
theorem input14217_def : input14217 = (.seq input14216 input12433) := by
  unfold input14217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14216 output12433)).val
theorem output14217_def : output14217 = (.seq output14216 output12433) := by
  unfold output14217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14217_skip : Flapjack.WordAlloc.isSkip output14217 = false := by
  rw [output14217_def]
  conv => lhs; cbv
  try rfl
theorem node14217_eq : Flapjack.WordAlloc.removeDeadStructural input14217 value6216 value1 value2 = (output14217, value6896, value1) := by
  rw [input14217_def, output14217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12433_eq]
  try dsimp only
  rw [node14216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14217 input12424)).val
theorem input14218_def : input14218 = (.seq input14217 input12424) := by
  unfold input14218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14217)).val
theorem output14218_def : output14218 = (output14217) := by
  unfold output14218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14218_skip : Flapjack.WordAlloc.isSkip output14218 = false := by
  rw [output14218_def]
  conv => lhs; cbv
  try rfl
theorem node14218_eq : Flapjack.WordAlloc.removeDeadStructural input14218 value6216 value1 value2 = (output14218, value6896, value1) := by
  rw [input14218_def, output14218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12424_eq]
  try dsimp only
  rw [node14217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14218 input12423)).val
theorem input14219_def : input14219 = (.seq input14218 input12423) := by
  unfold input14219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14218 output12423)).val
theorem output14219_def : output14219 = (.seq output14218 output12423) := by
  unfold output14219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14219_skip : Flapjack.WordAlloc.isSkip output14219 = false := by
  rw [output14219_def]
  conv => lhs; cbv
  try rfl
theorem node14219_eq : Flapjack.WordAlloc.removeDeadStructural input14219 value6215 value1 value2 = (output14219, value6896, value1) := by
  rw [input14219_def, output14219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12423_eq]
  try dsimp only
  rw [node14218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14219 input12422)).val
theorem input14220_def : input14220 = (.seq input14219 input12422) := by
  unfold input14220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14219 output12422)).val
theorem output14220_def : output14220 = (.seq output14219 output12422) := by
  unfold output14220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14220_skip : Flapjack.WordAlloc.isSkip output14220 = false := by
  rw [output14220_def]
  conv => lhs; cbv
  try rfl
theorem node14220_eq : Flapjack.WordAlloc.removeDeadStructural input14220 value5 value1 value2 = (output14220, value6896, value1) := by
  rw [input14220_def, output14220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12422_eq]
  try dsimp only
  rw [node14219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14220 input12419)).val
theorem input14221_def : input14221 = (.seq input14220 input12419) := by
  unfold input14221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14220 output12419)).val
theorem output14221_def : output14221 = (.seq output14220 output12419) := by
  unfold output14221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14221_skip : Flapjack.WordAlloc.isSkip output14221 = false := by
  rw [output14221_def]
  conv => lhs; cbv
  try rfl
theorem node14221_eq : Flapjack.WordAlloc.removeDeadStructural input14221 value6209 value1 value2 = (output14221, value6896, value1) := by
  rw [input14221_def, output14221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12419_eq]
  try dsimp only
  rw [node14220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14221 input12410)).val
theorem input14222_def : input14222 = (.seq input14221 input12410) := by
  unfold input14222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14221)).val
theorem output14222_def : output14222 = (output14221) := by
  unfold output14222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14222_skip : Flapjack.WordAlloc.isSkip output14222 = false := by
  rw [output14222_def]
  conv => lhs; cbv
  try rfl
theorem node14222_eq : Flapjack.WordAlloc.removeDeadStructural input14222 value6209 value1 value2 = (output14222, value6896, value1) := by
  rw [input14222_def, output14222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12410_eq]
  try dsimp only
  rw [node14221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14222 input12409)).val
theorem input14223_def : input14223 = (.seq input14222 input12409) := by
  unfold input14223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14222 output12409)).val
theorem output14223_def : output14223 = (.seq output14222 output12409) := by
  unfold output14223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14223_skip : Flapjack.WordAlloc.isSkip output14223 = false := by
  rw [output14223_def]
  conv => lhs; cbv
  try rfl
theorem node14223_eq : Flapjack.WordAlloc.removeDeadStructural input14223 value6208 value1 value2 = (output14223, value6896, value1) := by
  rw [input14223_def, output14223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12409_eq]
  try dsimp only
  rw [node14222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14223 input12408)).val
theorem input14224_def : input14224 = (.seq input14223 input12408) := by
  unfold input14224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14223 output12408)).val
theorem output14224_def : output14224 = (.seq output14223 output12408) := by
  unfold output14224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14224_skip : Flapjack.WordAlloc.isSkip output14224 = false := by
  rw [output14224_def]
  conv => lhs; cbv
  try rfl
theorem node14224_eq : Flapjack.WordAlloc.removeDeadStructural input14224 value5 value1 value2 = (output14224, value6896, value1) := by
  rw [input14224_def, output14224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12408_eq]
  try dsimp only
  rw [node14223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14224 input12405)).val
theorem input14225_def : input14225 = (.seq input14224 input12405) := by
  unfold input14225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14224 output12405)).val
theorem output14225_def : output14225 = (.seq output14224 output12405) := by
  unfold output14225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14225_skip : Flapjack.WordAlloc.isSkip output14225 = false := by
  rw [output14225_def]
  conv => lhs; cbv
  try rfl
theorem node14225_eq : Flapjack.WordAlloc.removeDeadStructural input14225 value6202 value1 value2 = (output14225, value6896, value1) := by
  rw [input14225_def, output14225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12405_eq]
  try dsimp only
  rw [node14224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14225 input12396)).val
theorem input14226_def : input14226 = (.seq input14225 input12396) := by
  unfold input14226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14225)).val
theorem output14226_def : output14226 = (output14225) := by
  unfold output14226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14226_skip : Flapjack.WordAlloc.isSkip output14226 = false := by
  rw [output14226_def]
  conv => lhs; cbv
  try rfl
theorem node14226_eq : Flapjack.WordAlloc.removeDeadStructural input14226 value6202 value1 value2 = (output14226, value6896, value1) := by
  rw [input14226_def, output14226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12396_eq]
  try dsimp only
  rw [node14225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14226 input12395)).val
theorem input14227_def : input14227 = (.seq input14226 input12395) := by
  unfold input14227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14226 output12395)).val
theorem output14227_def : output14227 = (.seq output14226 output12395) := by
  unfold output14227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14227_skip : Flapjack.WordAlloc.isSkip output14227 = false := by
  rw [output14227_def]
  conv => lhs; cbv
  try rfl
theorem node14227_eq : Flapjack.WordAlloc.removeDeadStructural input14227 value6201 value1 value2 = (output14227, value6896, value1) := by
  rw [input14227_def, output14227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12395_eq]
  try dsimp only
  rw [node14226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14227 input12394)).val
theorem input14228_def : input14228 = (.seq input14227 input12394) := by
  unfold input14228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14227 output12394)).val
theorem output14228_def : output14228 = (.seq output14227 output12394) := by
  unfold output14228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14228_skip : Flapjack.WordAlloc.isSkip output14228 = false := by
  rw [output14228_def]
  conv => lhs; cbv
  try rfl
theorem node14228_eq : Flapjack.WordAlloc.removeDeadStructural input14228 value5 value1 value2 = (output14228, value6896, value1) := by
  rw [input14228_def, output14228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12394_eq]
  try dsimp only
  rw [node14227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14228 input12391)).val
theorem input14229_def : input14229 = (.seq input14228 input12391) := by
  unfold input14229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14228 output12391)).val
theorem output14229_def : output14229 = (.seq output14228 output12391) := by
  unfold output14229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14229_skip : Flapjack.WordAlloc.isSkip output14229 = false := by
  rw [output14229_def]
  conv => lhs; cbv
  try rfl
theorem node14229_eq : Flapjack.WordAlloc.removeDeadStructural input14229 value6195 value1 value2 = (output14229, value6896, value1) := by
  rw [input14229_def, output14229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12391_eq]
  try dsimp only
  rw [node14228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14229 input12382)).val
theorem input14230_def : input14230 = (.seq input14229 input12382) := by
  unfold input14230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14229)).val
theorem output14230_def : output14230 = (output14229) := by
  unfold output14230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14230_skip : Flapjack.WordAlloc.isSkip output14230 = false := by
  rw [output14230_def]
  conv => lhs; cbv
  try rfl
theorem node14230_eq : Flapjack.WordAlloc.removeDeadStructural input14230 value6195 value1 value2 = (output14230, value6896, value1) := by
  rw [input14230_def, output14230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12382_eq]
  try dsimp only
  rw [node14229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14230 input12381)).val
theorem input14231_def : input14231 = (.seq input14230 input12381) := by
  unfold input14231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14230 output12381)).val
theorem output14231_def : output14231 = (.seq output14230 output12381) := by
  unfold output14231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14231_skip : Flapjack.WordAlloc.isSkip output14231 = false := by
  rw [output14231_def]
  conv => lhs; cbv
  try rfl
theorem node14231_eq : Flapjack.WordAlloc.removeDeadStructural input14231 value6194 value1 value2 = (output14231, value6896, value1) := by
  rw [input14231_def, output14231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12381_eq]
  try dsimp only
  rw [node14230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14231 input12380)).val
theorem input14232_def : input14232 = (.seq input14231 input12380) := by
  unfold input14232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14231 output12380)).val
theorem output14232_def : output14232 = (.seq output14231 output12380) := by
  unfold output14232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14232_skip : Flapjack.WordAlloc.isSkip output14232 = false := by
  rw [output14232_def]
  conv => lhs; cbv
  try rfl
theorem node14232_eq : Flapjack.WordAlloc.removeDeadStructural input14232 value5 value1 value2 = (output14232, value6896, value1) := by
  rw [input14232_def, output14232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12380_eq]
  try dsimp only
  rw [node14231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14232 input12377)).val
theorem input14233_def : input14233 = (.seq input14232 input12377) := by
  unfold input14233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14232 output12377)).val
theorem output14233_def : output14233 = (.seq output14232 output12377) := by
  unfold output14233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14233_skip : Flapjack.WordAlloc.isSkip output14233 = false := by
  rw [output14233_def]
  conv => lhs; cbv
  try rfl
theorem node14233_eq : Flapjack.WordAlloc.removeDeadStructural input14233 value6188 value1 value2 = (output14233, value6896, value1) := by
  rw [input14233_def, output14233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12377_eq]
  try dsimp only
  rw [node14232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14233 input12368)).val
theorem input14234_def : input14234 = (.seq input14233 input12368) := by
  unfold input14234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14233)).val
theorem output14234_def : output14234 = (output14233) := by
  unfold output14234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14234_skip : Flapjack.WordAlloc.isSkip output14234 = false := by
  rw [output14234_def]
  conv => lhs; cbv
  try rfl
theorem node14234_eq : Flapjack.WordAlloc.removeDeadStructural input14234 value6188 value1 value2 = (output14234, value6896, value1) := by
  rw [input14234_def, output14234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12368_eq]
  try dsimp only
  rw [node14233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14234 input12367)).val
theorem input14235_def : input14235 = (.seq input14234 input12367) := by
  unfold input14235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14234 output12367)).val
theorem output14235_def : output14235 = (.seq output14234 output12367) := by
  unfold output14235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14235_skip : Flapjack.WordAlloc.isSkip output14235 = false := by
  rw [output14235_def]
  conv => lhs; cbv
  try rfl
theorem node14235_eq : Flapjack.WordAlloc.removeDeadStructural input14235 value6187 value1 value2 = (output14235, value6896, value1) := by
  rw [input14235_def, output14235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12367_eq]
  try dsimp only
  rw [node14234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14235 input12366)).val
theorem input14236_def : input14236 = (.seq input14235 input12366) := by
  unfold input14236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14235 output12366)).val
theorem output14236_def : output14236 = (.seq output14235 output12366) := by
  unfold output14236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14236_skip : Flapjack.WordAlloc.isSkip output14236 = false := by
  rw [output14236_def]
  conv => lhs; cbv
  try rfl
theorem node14236_eq : Flapjack.WordAlloc.removeDeadStructural input14236 value5 value1 value2 = (output14236, value6896, value1) := by
  rw [input14236_def, output14236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12366_eq]
  try dsimp only
  rw [node14235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14236 input12363)).val
theorem input14237_def : input14237 = (.seq input14236 input12363) := by
  unfold input14237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14236 output12363)).val
theorem output14237_def : output14237 = (.seq output14236 output12363) := by
  unfold output14237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14237_skip : Flapjack.WordAlloc.isSkip output14237 = false := by
  rw [output14237_def]
  conv => lhs; cbv
  try rfl
theorem node14237_eq : Flapjack.WordAlloc.removeDeadStructural input14237 value6181 value1 value2 = (output14237, value6896, value1) := by
  rw [input14237_def, output14237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12363_eq]
  try dsimp only
  rw [node14236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14237 input12354)).val
theorem input14238_def : input14238 = (.seq input14237 input12354) := by
  unfold input14238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14237)).val
theorem output14238_def : output14238 = (output14237) := by
  unfold output14238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14238_skip : Flapjack.WordAlloc.isSkip output14238 = false := by
  rw [output14238_def]
  conv => lhs; cbv
  try rfl
theorem node14238_eq : Flapjack.WordAlloc.removeDeadStructural input14238 value6181 value1 value2 = (output14238, value6896, value1) := by
  rw [input14238_def, output14238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12354_eq]
  try dsimp only
  rw [node14237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14238 input12353)).val
theorem input14239_def : input14239 = (.seq input14238 input12353) := by
  unfold input14239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14238 output12353)).val
theorem output14239_def : output14239 = (.seq output14238 output12353) := by
  unfold output14239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14239_skip : Flapjack.WordAlloc.isSkip output14239 = false := by
  rw [output14239_def]
  conv => lhs; cbv
  try rfl
theorem node14239_eq : Flapjack.WordAlloc.removeDeadStructural input14239 value6180 value1 value2 = (output14239, value6896, value1) := by
  rw [input14239_def, output14239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12353_eq]
  try dsimp only
  rw [node14238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14239 input12352)).val
theorem input14240_def : input14240 = (.seq input14239 input12352) := by
  unfold input14240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14239 output12352)).val
theorem output14240_def : output14240 = (.seq output14239 output12352) := by
  unfold output14240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14240_skip : Flapjack.WordAlloc.isSkip output14240 = false := by
  rw [output14240_def]
  conv => lhs; cbv
  try rfl
theorem node14240_eq : Flapjack.WordAlloc.removeDeadStructural input14240 value5 value1 value2 = (output14240, value6896, value1) := by
  rw [input14240_def, output14240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12352_eq]
  try dsimp only
  rw [node14239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14240 input12349)).val
theorem input14241_def : input14241 = (.seq input14240 input12349) := by
  unfold input14241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14240 output12349)).val
theorem output14241_def : output14241 = (.seq output14240 output12349) := by
  unfold output14241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14241_skip : Flapjack.WordAlloc.isSkip output14241 = false := by
  rw [output14241_def]
  conv => lhs; cbv
  try rfl
theorem node14241_eq : Flapjack.WordAlloc.removeDeadStructural input14241 value6174 value1 value2 = (output14241, value6896, value1) := by
  rw [input14241_def, output14241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12349_eq]
  try dsimp only
  rw [node14240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14241 input12340)).val
theorem input14242_def : input14242 = (.seq input14241 input12340) := by
  unfold input14242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14241)).val
theorem output14242_def : output14242 = (output14241) := by
  unfold output14242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14242_skip : Flapjack.WordAlloc.isSkip output14242 = false := by
  rw [output14242_def]
  conv => lhs; cbv
  try rfl
theorem node14242_eq : Flapjack.WordAlloc.removeDeadStructural input14242 value6174 value1 value2 = (output14242, value6896, value1) := by
  rw [input14242_def, output14242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12340_eq]
  try dsimp only
  rw [node14241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14242 input12339)).val
theorem input14243_def : input14243 = (.seq input14242 input12339) := by
  unfold input14243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14242 output12339)).val
theorem output14243_def : output14243 = (.seq output14242 output12339) := by
  unfold output14243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14243_skip : Flapjack.WordAlloc.isSkip output14243 = false := by
  rw [output14243_def]
  conv => lhs; cbv
  try rfl
theorem node14243_eq : Flapjack.WordAlloc.removeDeadStructural input14243 value6173 value1 value2 = (output14243, value6896, value1) := by
  rw [input14243_def, output14243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12339_eq]
  try dsimp only
  rw [node14242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14243 input12338)).val
theorem input14244_def : input14244 = (.seq input14243 input12338) := by
  unfold input14244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14243 output12338)).val
theorem output14244_def : output14244 = (.seq output14243 output12338) := by
  unfold output14244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14244_skip : Flapjack.WordAlloc.isSkip output14244 = false := by
  rw [output14244_def]
  conv => lhs; cbv
  try rfl
theorem node14244_eq : Flapjack.WordAlloc.removeDeadStructural input14244 value5 value1 value2 = (output14244, value6896, value1) := by
  rw [input14244_def, output14244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12338_eq]
  try dsimp only
  rw [node14243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14244 input12335)).val
theorem input14245_def : input14245 = (.seq input14244 input12335) := by
  unfold input14245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14244 output12335)).val
theorem output14245_def : output14245 = (.seq output14244 output12335) := by
  unfold output14245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14245_skip : Flapjack.WordAlloc.isSkip output14245 = false := by
  rw [output14245_def]
  conv => lhs; cbv
  try rfl
theorem node14245_eq : Flapjack.WordAlloc.removeDeadStructural input14245 value6167 value1 value2 = (output14245, value6896, value1) := by
  rw [input14245_def, output14245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12335_eq]
  try dsimp only
  rw [node14244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14245 input12326)).val
theorem input14246_def : input14246 = (.seq input14245 input12326) := by
  unfold input14246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14245)).val
theorem output14246_def : output14246 = (output14245) := by
  unfold output14246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14246_skip : Flapjack.WordAlloc.isSkip output14246 = false := by
  rw [output14246_def]
  conv => lhs; cbv
  try rfl
theorem node14246_eq : Flapjack.WordAlloc.removeDeadStructural input14246 value6167 value1 value2 = (output14246, value6896, value1) := by
  rw [input14246_def, output14246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12326_eq]
  try dsimp only
  rw [node14245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14246 input12325)).val
theorem input14247_def : input14247 = (.seq input14246 input12325) := by
  unfold input14247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14246 output12325)).val
theorem output14247_def : output14247 = (.seq output14246 output12325) := by
  unfold output14247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14247_skip : Flapjack.WordAlloc.isSkip output14247 = false := by
  rw [output14247_def]
  conv => lhs; cbv
  try rfl
theorem node14247_eq : Flapjack.WordAlloc.removeDeadStructural input14247 value6166 value1 value2 = (output14247, value6896, value1) := by
  rw [input14247_def, output14247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12325_eq]
  try dsimp only
  rw [node14246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14247 input12324)).val
theorem input14248_def : input14248 = (.seq input14247 input12324) := by
  unfold input14248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14247 output12324)).val
theorem output14248_def : output14248 = (.seq output14247 output12324) := by
  unfold output14248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14248_skip : Flapjack.WordAlloc.isSkip output14248 = false := by
  rw [output14248_def]
  conv => lhs; cbv
  try rfl
theorem node14248_eq : Flapjack.WordAlloc.removeDeadStructural input14248 value5 value1 value2 = (output14248, value6896, value1) := by
  rw [input14248_def, output14248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12324_eq]
  try dsimp only
  rw [node14247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14248 input12321)).val
theorem input14249_def : input14249 = (.seq input14248 input12321) := by
  unfold input14249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14248 output12321)).val
theorem output14249_def : output14249 = (.seq output14248 output12321) := by
  unfold output14249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14249_skip : Flapjack.WordAlloc.isSkip output14249 = false := by
  rw [output14249_def]
  conv => lhs; cbv
  try rfl
theorem node14249_eq : Flapjack.WordAlloc.removeDeadStructural input14249 value6160 value1 value2 = (output14249, value6896, value1) := by
  rw [input14249_def, output14249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12321_eq]
  try dsimp only
  rw [node14248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14249 input12312)).val
theorem input14250_def : input14250 = (.seq input14249 input12312) := by
  unfold input14250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14249)).val
theorem output14250_def : output14250 = (output14249) := by
  unfold output14250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14250_skip : Flapjack.WordAlloc.isSkip output14250 = false := by
  rw [output14250_def]
  conv => lhs; cbv
  try rfl
theorem node14250_eq : Flapjack.WordAlloc.removeDeadStructural input14250 value6160 value1 value2 = (output14250, value6896, value1) := by
  rw [input14250_def, output14250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12312_eq]
  try dsimp only
  rw [node14249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14250 input12311)).val
theorem input14251_def : input14251 = (.seq input14250 input12311) := by
  unfold input14251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14250 output12311)).val
theorem output14251_def : output14251 = (.seq output14250 output12311) := by
  unfold output14251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14251_skip : Flapjack.WordAlloc.isSkip output14251 = false := by
  rw [output14251_def]
  conv => lhs; cbv
  try rfl
theorem node14251_eq : Flapjack.WordAlloc.removeDeadStructural input14251 value6159 value1 value2 = (output14251, value6896, value1) := by
  rw [input14251_def, output14251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12311_eq]
  try dsimp only
  rw [node14250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14251 input12310)).val
theorem input14252_def : input14252 = (.seq input14251 input12310) := by
  unfold input14252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14251 output12310)).val
theorem output14252_def : output14252 = (.seq output14251 output12310) := by
  unfold output14252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14252_skip : Flapjack.WordAlloc.isSkip output14252 = false := by
  rw [output14252_def]
  conv => lhs; cbv
  try rfl
theorem node14252_eq : Flapjack.WordAlloc.removeDeadStructural input14252 value5 value1 value2 = (output14252, value6896, value1) := by
  rw [input14252_def, output14252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12310_eq]
  try dsimp only
  rw [node14251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14252 input12307)).val
theorem input14253_def : input14253 = (.seq input14252 input12307) := by
  unfold input14253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14252 output12307)).val
theorem output14253_def : output14253 = (.seq output14252 output12307) := by
  unfold output14253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14253_skip : Flapjack.WordAlloc.isSkip output14253 = false := by
  rw [output14253_def]
  conv => lhs; cbv
  try rfl
theorem node14253_eq : Flapjack.WordAlloc.removeDeadStructural input14253 value6153 value1 value2 = (output14253, value6896, value1) := by
  rw [input14253_def, output14253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12307_eq]
  try dsimp only
  rw [node14252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14253 input12298)).val
theorem input14254_def : input14254 = (.seq input14253 input12298) := by
  unfold input14254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14253)).val
theorem output14254_def : output14254 = (output14253) := by
  unfold output14254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14254_skip : Flapjack.WordAlloc.isSkip output14254 = false := by
  rw [output14254_def]
  conv => lhs; cbv
  try rfl
theorem node14254_eq : Flapjack.WordAlloc.removeDeadStructural input14254 value6153 value1 value2 = (output14254, value6896, value1) := by
  rw [input14254_def, output14254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12298_eq]
  try dsimp only
  rw [node14253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14254 input12297)).val
theorem input14255_def : input14255 = (.seq input14254 input12297) := by
  unfold input14255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14254 output12297)).val
theorem output14255_def : output14255 = (.seq output14254 output12297) := by
  unfold output14255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14255_skip : Flapjack.WordAlloc.isSkip output14255 = false := by
  rw [output14255_def]
  conv => lhs; cbv
  try rfl
theorem node14255_eq : Flapjack.WordAlloc.removeDeadStructural input14255 value6152 value1 value2 = (output14255, value6896, value1) := by
  rw [input14255_def, output14255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12297_eq]
  try dsimp only
  rw [node14254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14255 input12296)).val
theorem input14256_def : input14256 = (.seq input14255 input12296) := by
  unfold input14256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14255 output12296)).val
theorem output14256_def : output14256 = (.seq output14255 output12296) := by
  unfold output14256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14256_skip : Flapjack.WordAlloc.isSkip output14256 = false := by
  rw [output14256_def]
  conv => lhs; cbv
  try rfl
theorem node14256_eq : Flapjack.WordAlloc.removeDeadStructural input14256 value5 value1 value2 = (output14256, value6896, value1) := by
  rw [input14256_def, output14256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12296_eq]
  try dsimp only
  rw [node14255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14256 input12293)).val
theorem input14257_def : input14257 = (.seq input14256 input12293) := by
  unfold input14257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14256 output12293)).val
theorem output14257_def : output14257 = (.seq output14256 output12293) := by
  unfold output14257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14257_skip : Flapjack.WordAlloc.isSkip output14257 = false := by
  rw [output14257_def]
  conv => lhs; cbv
  try rfl
theorem node14257_eq : Flapjack.WordAlloc.removeDeadStructural input14257 value6146 value1 value2 = (output14257, value6896, value1) := by
  rw [input14257_def, output14257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12293_eq]
  try dsimp only
  rw [node14256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14257 input12284)).val
theorem input14258_def : input14258 = (.seq input14257 input12284) := by
  unfold input14258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14257)).val
theorem output14258_def : output14258 = (output14257) := by
  unfold output14258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14258_skip : Flapjack.WordAlloc.isSkip output14258 = false := by
  rw [output14258_def]
  conv => lhs; cbv
  try rfl
theorem node14258_eq : Flapjack.WordAlloc.removeDeadStructural input14258 value6146 value1 value2 = (output14258, value6896, value1) := by
  rw [input14258_def, output14258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12284_eq]
  try dsimp only
  rw [node14257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14258 input12283)).val
theorem input14259_def : input14259 = (.seq input14258 input12283) := by
  unfold input14259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14258 output12283)).val
theorem output14259_def : output14259 = (.seq output14258 output12283) := by
  unfold output14259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14259_skip : Flapjack.WordAlloc.isSkip output14259 = false := by
  rw [output14259_def]
  conv => lhs; cbv
  try rfl
theorem node14259_eq : Flapjack.WordAlloc.removeDeadStructural input14259 value6145 value1 value2 = (output14259, value6896, value1) := by
  rw [input14259_def, output14259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12283_eq]
  try dsimp only
  rw [node14258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14259 input12282)).val
theorem input14260_def : input14260 = (.seq input14259 input12282) := by
  unfold input14260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14259 output12282)).val
theorem output14260_def : output14260 = (.seq output14259 output12282) := by
  unfold output14260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14260_skip : Flapjack.WordAlloc.isSkip output14260 = false := by
  rw [output14260_def]
  conv => lhs; cbv
  try rfl
theorem node14260_eq : Flapjack.WordAlloc.removeDeadStructural input14260 value5 value1 value2 = (output14260, value6896, value1) := by
  rw [input14260_def, output14260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12282_eq]
  try dsimp only
  rw [node14259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14260 input12279)).val
theorem input14261_def : input14261 = (.seq input14260 input12279) := by
  unfold input14261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14260 output12279)).val
theorem output14261_def : output14261 = (.seq output14260 output12279) := by
  unfold output14261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14261_skip : Flapjack.WordAlloc.isSkip output14261 = false := by
  rw [output14261_def]
  conv => lhs; cbv
  try rfl
theorem node14261_eq : Flapjack.WordAlloc.removeDeadStructural input14261 value6139 value1 value2 = (output14261, value6896, value1) := by
  rw [input14261_def, output14261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12279_eq]
  try dsimp only
  rw [node14260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14261 input12270)).val
theorem input14262_def : input14262 = (.seq input14261 input12270) := by
  unfold input14262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14261)).val
theorem output14262_def : output14262 = (output14261) := by
  unfold output14262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14262_skip : Flapjack.WordAlloc.isSkip output14262 = false := by
  rw [output14262_def]
  conv => lhs; cbv
  try rfl
theorem node14262_eq : Flapjack.WordAlloc.removeDeadStructural input14262 value6139 value1 value2 = (output14262, value6896, value1) := by
  rw [input14262_def, output14262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12270_eq]
  try dsimp only
  rw [node14261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14262 input12269)).val
theorem input14263_def : input14263 = (.seq input14262 input12269) := by
  unfold input14263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14262 output12269)).val
theorem output14263_def : output14263 = (.seq output14262 output12269) := by
  unfold output14263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14263_skip : Flapjack.WordAlloc.isSkip output14263 = false := by
  rw [output14263_def]
  conv => lhs; cbv
  try rfl
theorem node14263_eq : Flapjack.WordAlloc.removeDeadStructural input14263 value6138 value1 value2 = (output14263, value6896, value1) := by
  rw [input14263_def, output14263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12269_eq]
  try dsimp only
  rw [node14262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14263 input12268)).val
theorem input14264_def : input14264 = (.seq input14263 input12268) := by
  unfold input14264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14263 output12268)).val
theorem output14264_def : output14264 = (.seq output14263 output12268) := by
  unfold output14264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14264_skip : Flapjack.WordAlloc.isSkip output14264 = false := by
  rw [output14264_def]
  conv => lhs; cbv
  try rfl
theorem node14264_eq : Flapjack.WordAlloc.removeDeadStructural input14264 value5 value1 value2 = (output14264, value6896, value1) := by
  rw [input14264_def, output14264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12268_eq]
  try dsimp only
  rw [node14263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14264 input12265)).val
theorem input14265_def : input14265 = (.seq input14264 input12265) := by
  unfold input14265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14264 output12265)).val
theorem output14265_def : output14265 = (.seq output14264 output12265) := by
  unfold output14265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14265_skip : Flapjack.WordAlloc.isSkip output14265 = false := by
  rw [output14265_def]
  conv => lhs; cbv
  try rfl
theorem node14265_eq : Flapjack.WordAlloc.removeDeadStructural input14265 value6132 value1 value2 = (output14265, value6896, value1) := by
  rw [input14265_def, output14265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12265_eq]
  try dsimp only
  rw [node14264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14265 input12256)).val
theorem input14266_def : input14266 = (.seq input14265 input12256) := by
  unfold input14266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14265)).val
theorem output14266_def : output14266 = (output14265) := by
  unfold output14266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14266_skip : Flapjack.WordAlloc.isSkip output14266 = false := by
  rw [output14266_def]
  conv => lhs; cbv
  try rfl
theorem node14266_eq : Flapjack.WordAlloc.removeDeadStructural input14266 value6132 value1 value2 = (output14266, value6896, value1) := by
  rw [input14266_def, output14266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12256_eq]
  try dsimp only
  rw [node14265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14266 input12255)).val
theorem input14267_def : input14267 = (.seq input14266 input12255) := by
  unfold input14267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14266 output12255)).val
theorem output14267_def : output14267 = (.seq output14266 output12255) := by
  unfold output14267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14267_skip : Flapjack.WordAlloc.isSkip output14267 = false := by
  rw [output14267_def]
  conv => lhs; cbv
  try rfl
theorem node14267_eq : Flapjack.WordAlloc.removeDeadStructural input14267 value6131 value1 value2 = (output14267, value6896, value1) := by
  rw [input14267_def, output14267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12255_eq]
  try dsimp only
  rw [node14266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14267 input12254)).val
theorem input14268_def : input14268 = (.seq input14267 input12254) := by
  unfold input14268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14267 output12254)).val
theorem output14268_def : output14268 = (.seq output14267 output12254) := by
  unfold output14268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14268_skip : Flapjack.WordAlloc.isSkip output14268 = false := by
  rw [output14268_def]
  conv => lhs; cbv
  try rfl
theorem node14268_eq : Flapjack.WordAlloc.removeDeadStructural input14268 value5 value1 value2 = (output14268, value6896, value1) := by
  rw [input14268_def, output14268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12254_eq]
  try dsimp only
  rw [node14267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14268 input12251)).val
theorem input14269_def : input14269 = (.seq input14268 input12251) := by
  unfold input14269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14268 output12251)).val
theorem output14269_def : output14269 = (.seq output14268 output12251) := by
  unfold output14269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14269_skip : Flapjack.WordAlloc.isSkip output14269 = false := by
  rw [output14269_def]
  conv => lhs; cbv
  try rfl
theorem node14269_eq : Flapjack.WordAlloc.removeDeadStructural input14269 value6125 value1 value2 = (output14269, value6896, value1) := by
  rw [input14269_def, output14269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12251_eq]
  try dsimp only
  rw [node14268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14269 input12242)).val
theorem input14270_def : input14270 = (.seq input14269 input12242) := by
  unfold input14270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14269)).val
theorem output14270_def : output14270 = (output14269) := by
  unfold output14270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14270_skip : Flapjack.WordAlloc.isSkip output14270 = false := by
  rw [output14270_def]
  conv => lhs; cbv
  try rfl
theorem node14270_eq : Flapjack.WordAlloc.removeDeadStructural input14270 value6125 value1 value2 = (output14270, value6896, value1) := by
  rw [input14270_def, output14270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12242_eq]
  try dsimp only
  rw [node14269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14270 input12241)).val
theorem input14271_def : input14271 = (.seq input14270 input12241) := by
  unfold input14271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14270 output12241)).val
theorem output14271_def : output14271 = (.seq output14270 output12241) := by
  unfold output14271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14271_skip : Flapjack.WordAlloc.isSkip output14271 = false := by
  rw [output14271_def]
  conv => lhs; cbv
  try rfl
theorem node14271_eq : Flapjack.WordAlloc.removeDeadStructural input14271 value6124 value1 value2 = (output14271, value6896, value1) := by
  rw [input14271_def, output14271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12241_eq]
  try dsimp only
  rw [node14270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14271 input12240)).val
theorem input14272_def : input14272 = (.seq input14271 input12240) := by
  unfold input14272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14271 output12240)).val
theorem output14272_def : output14272 = (.seq output14271 output12240) := by
  unfold output14272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14272_skip : Flapjack.WordAlloc.isSkip output14272 = false := by
  rw [output14272_def]
  conv => lhs; cbv
  try rfl
theorem node14272_eq : Flapjack.WordAlloc.removeDeadStructural input14272 value5 value1 value2 = (output14272, value6896, value1) := by
  rw [input14272_def, output14272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12240_eq]
  try dsimp only
  rw [node14271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14272 input12237)).val
theorem input14273_def : input14273 = (.seq input14272 input12237) := by
  unfold input14273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14272 output12237)).val
theorem output14273_def : output14273 = (.seq output14272 output12237) := by
  unfold output14273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14273_skip : Flapjack.WordAlloc.isSkip output14273 = false := by
  rw [output14273_def]
  conv => lhs; cbv
  try rfl
theorem node14273_eq : Flapjack.WordAlloc.removeDeadStructural input14273 value6118 value1 value2 = (output14273, value6896, value1) := by
  rw [input14273_def, output14273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12237_eq]
  try dsimp only
  rw [node14272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14273 input12228)).val
theorem input14274_def : input14274 = (.seq input14273 input12228) := by
  unfold input14274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14273)).val
theorem output14274_def : output14274 = (output14273) := by
  unfold output14274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14274_skip : Flapjack.WordAlloc.isSkip output14274 = false := by
  rw [output14274_def]
  conv => lhs; cbv
  try rfl
theorem node14274_eq : Flapjack.WordAlloc.removeDeadStructural input14274 value6118 value1 value2 = (output14274, value6896, value1) := by
  rw [input14274_def, output14274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12228_eq]
  try dsimp only
  rw [node14273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14274 input12227)).val
theorem input14275_def : input14275 = (.seq input14274 input12227) := by
  unfold input14275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14274 output12227)).val
theorem output14275_def : output14275 = (.seq output14274 output12227) := by
  unfold output14275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14275_skip : Flapjack.WordAlloc.isSkip output14275 = false := by
  rw [output14275_def]
  conv => lhs; cbv
  try rfl
theorem node14275_eq : Flapjack.WordAlloc.removeDeadStructural input14275 value6117 value1 value2 = (output14275, value6896, value1) := by
  rw [input14275_def, output14275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12227_eq]
  try dsimp only
  rw [node14274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14275 input12226)).val
theorem input14276_def : input14276 = (.seq input14275 input12226) := by
  unfold input14276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14275 output12226)).val
theorem output14276_def : output14276 = (.seq output14275 output12226) := by
  unfold output14276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14276_skip : Flapjack.WordAlloc.isSkip output14276 = false := by
  rw [output14276_def]
  conv => lhs; cbv
  try rfl
theorem node14276_eq : Flapjack.WordAlloc.removeDeadStructural input14276 value5 value1 value2 = (output14276, value6896, value1) := by
  rw [input14276_def, output14276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12226_eq]
  try dsimp only
  rw [node14275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14276 input12223)).val
theorem input14277_def : input14277 = (.seq input14276 input12223) := by
  unfold input14277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14276 output12223)).val
theorem output14277_def : output14277 = (.seq output14276 output12223) := by
  unfold output14277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14277_skip : Flapjack.WordAlloc.isSkip output14277 = false := by
  rw [output14277_def]
  conv => lhs; cbv
  try rfl
theorem node14277_eq : Flapjack.WordAlloc.removeDeadStructural input14277 value6111 value1 value2 = (output14277, value6896, value1) := by
  rw [input14277_def, output14277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12223_eq]
  try dsimp only
  rw [node14276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14277 input12214)).val
theorem input14278_def : input14278 = (.seq input14277 input12214) := by
  unfold input14278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14277)).val
theorem output14278_def : output14278 = (output14277) := by
  unfold output14278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14278_skip : Flapjack.WordAlloc.isSkip output14278 = false := by
  rw [output14278_def]
  conv => lhs; cbv
  try rfl
theorem node14278_eq : Flapjack.WordAlloc.removeDeadStructural input14278 value6111 value1 value2 = (output14278, value6896, value1) := by
  rw [input14278_def, output14278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12214_eq]
  try dsimp only
  rw [node14277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14278 input12213)).val
theorem input14279_def : input14279 = (.seq input14278 input12213) := by
  unfold input14279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14278 output12213)).val
theorem output14279_def : output14279 = (.seq output14278 output12213) := by
  unfold output14279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14279_skip : Flapjack.WordAlloc.isSkip output14279 = false := by
  rw [output14279_def]
  conv => lhs; cbv
  try rfl
theorem node14279_eq : Flapjack.WordAlloc.removeDeadStructural input14279 value6110 value1 value2 = (output14279, value6896, value1) := by
  rw [input14279_def, output14279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12213_eq]
  try dsimp only
  rw [node14278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14279 input12212)).val
theorem input14280_def : input14280 = (.seq input14279 input12212) := by
  unfold input14280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14279 output12212)).val
theorem output14280_def : output14280 = (.seq output14279 output12212) := by
  unfold output14280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14280_skip : Flapjack.WordAlloc.isSkip output14280 = false := by
  rw [output14280_def]
  conv => lhs; cbv
  try rfl
theorem node14280_eq : Flapjack.WordAlloc.removeDeadStructural input14280 value5 value1 value2 = (output14280, value6896, value1) := by
  rw [input14280_def, output14280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12212_eq]
  try dsimp only
  rw [node14279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14280 input12209)).val
theorem input14281_def : input14281 = (.seq input14280 input12209) := by
  unfold input14281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14280 output12209)).val
theorem output14281_def : output14281 = (.seq output14280 output12209) := by
  unfold output14281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14281_skip : Flapjack.WordAlloc.isSkip output14281 = false := by
  rw [output14281_def]
  conv => lhs; cbv
  try rfl
theorem node14281_eq : Flapjack.WordAlloc.removeDeadStructural input14281 value6104 value1 value2 = (output14281, value6896, value1) := by
  rw [input14281_def, output14281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12209_eq]
  try dsimp only
  rw [node14280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14281 input12200)).val
theorem input14282_def : input14282 = (.seq input14281 input12200) := by
  unfold input14282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14281)).val
theorem output14282_def : output14282 = (output14281) := by
  unfold output14282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14282_skip : Flapjack.WordAlloc.isSkip output14282 = false := by
  rw [output14282_def]
  conv => lhs; cbv
  try rfl
theorem node14282_eq : Flapjack.WordAlloc.removeDeadStructural input14282 value6104 value1 value2 = (output14282, value6896, value1) := by
  rw [input14282_def, output14282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12200_eq]
  try dsimp only
  rw [node14281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14282 input12199)).val
theorem input14283_def : input14283 = (.seq input14282 input12199) := by
  unfold input14283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14282 output12199)).val
theorem output14283_def : output14283 = (.seq output14282 output12199) := by
  unfold output14283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14283_skip : Flapjack.WordAlloc.isSkip output14283 = false := by
  rw [output14283_def]
  conv => lhs; cbv
  try rfl
theorem node14283_eq : Flapjack.WordAlloc.removeDeadStructural input14283 value6103 value1 value2 = (output14283, value6896, value1) := by
  rw [input14283_def, output14283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12199_eq]
  try dsimp only
  rw [node14282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14283 input12198)).val
theorem input14284_def : input14284 = (.seq input14283 input12198) := by
  unfold input14284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14283 output12198)).val
theorem output14284_def : output14284 = (.seq output14283 output12198) := by
  unfold output14284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14284_skip : Flapjack.WordAlloc.isSkip output14284 = false := by
  rw [output14284_def]
  conv => lhs; cbv
  try rfl
theorem node14284_eq : Flapjack.WordAlloc.removeDeadStructural input14284 value5 value1 value2 = (output14284, value6896, value1) := by
  rw [input14284_def, output14284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12198_eq]
  try dsimp only
  rw [node14283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14284 input12195)).val
theorem input14285_def : input14285 = (.seq input14284 input12195) := by
  unfold input14285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14284 output12195)).val
theorem output14285_def : output14285 = (.seq output14284 output12195) := by
  unfold output14285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14285_skip : Flapjack.WordAlloc.isSkip output14285 = false := by
  rw [output14285_def]
  conv => lhs; cbv
  try rfl
theorem node14285_eq : Flapjack.WordAlloc.removeDeadStructural input14285 value6097 value1 value2 = (output14285, value6896, value1) := by
  rw [input14285_def, output14285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12195_eq]
  try dsimp only
  rw [node14284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14285 input12186)).val
theorem input14286_def : input14286 = (.seq input14285 input12186) := by
  unfold input14286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14285)).val
theorem output14286_def : output14286 = (output14285) := by
  unfold output14286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14286_skip : Flapjack.WordAlloc.isSkip output14286 = false := by
  rw [output14286_def]
  conv => lhs; cbv
  try rfl
theorem node14286_eq : Flapjack.WordAlloc.removeDeadStructural input14286 value6097 value1 value2 = (output14286, value6896, value1) := by
  rw [input14286_def, output14286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12186_eq]
  try dsimp only
  rw [node14285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14286 input12185)).val
theorem input14287_def : input14287 = (.seq input14286 input12185) := by
  unfold input14287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14286 output12185)).val
theorem output14287_def : output14287 = (.seq output14286 output12185) := by
  unfold output14287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14287_skip : Flapjack.WordAlloc.isSkip output14287 = false := by
  rw [output14287_def]
  conv => lhs; cbv
  try rfl
theorem node14287_eq : Flapjack.WordAlloc.removeDeadStructural input14287 value6096 value1 value2 = (output14287, value6896, value1) := by
  rw [input14287_def, output14287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12185_eq]
  try dsimp only
  rw [node14286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14287 input12184)).val
theorem input14288_def : input14288 = (.seq input14287 input12184) := by
  unfold input14288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14287 output12184)).val
theorem output14288_def : output14288 = (.seq output14287 output12184) := by
  unfold output14288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14288_skip : Flapjack.WordAlloc.isSkip output14288 = false := by
  rw [output14288_def]
  conv => lhs; cbv
  try rfl
theorem node14288_eq : Flapjack.WordAlloc.removeDeadStructural input14288 value5 value1 value2 = (output14288, value6896, value1) := by
  rw [input14288_def, output14288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12184_eq]
  try dsimp only
  rw [node14287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14288 input12181)).val
theorem input14289_def : input14289 = (.seq input14288 input12181) := by
  unfold input14289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14288 output12181)).val
theorem output14289_def : output14289 = (.seq output14288 output12181) := by
  unfold output14289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14289_skip : Flapjack.WordAlloc.isSkip output14289 = false := by
  rw [output14289_def]
  conv => lhs; cbv
  try rfl
theorem node14289_eq : Flapjack.WordAlloc.removeDeadStructural input14289 value6090 value1 value2 = (output14289, value6896, value1) := by
  rw [input14289_def, output14289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12181_eq]
  try dsimp only
  rw [node14288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14289 input12172)).val
theorem input14290_def : input14290 = (.seq input14289 input12172) := by
  unfold input14290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14289)).val
theorem output14290_def : output14290 = (output14289) := by
  unfold output14290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14290_skip : Flapjack.WordAlloc.isSkip output14290 = false := by
  rw [output14290_def]
  conv => lhs; cbv
  try rfl
theorem node14290_eq : Flapjack.WordAlloc.removeDeadStructural input14290 value6090 value1 value2 = (output14290, value6896, value1) := by
  rw [input14290_def, output14290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12172_eq]
  try dsimp only
  rw [node14289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14290 input12171)).val
theorem input14291_def : input14291 = (.seq input14290 input12171) := by
  unfold input14291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14290 output12171)).val
theorem output14291_def : output14291 = (.seq output14290 output12171) := by
  unfold output14291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14291_skip : Flapjack.WordAlloc.isSkip output14291 = false := by
  rw [output14291_def]
  conv => lhs; cbv
  try rfl
theorem node14291_eq : Flapjack.WordAlloc.removeDeadStructural input14291 value6089 value1 value2 = (output14291, value6896, value1) := by
  rw [input14291_def, output14291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12171_eq]
  try dsimp only
  rw [node14290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14291 input12170)).val
theorem input14292_def : input14292 = (.seq input14291 input12170) := by
  unfold input14292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14291 output12170)).val
theorem output14292_def : output14292 = (.seq output14291 output12170) := by
  unfold output14292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14292_skip : Flapjack.WordAlloc.isSkip output14292 = false := by
  rw [output14292_def]
  conv => lhs; cbv
  try rfl
theorem node14292_eq : Flapjack.WordAlloc.removeDeadStructural input14292 value5 value1 value2 = (output14292, value6896, value1) := by
  rw [input14292_def, output14292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12170_eq]
  try dsimp only
  rw [node14291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14292 input12167)).val
theorem input14293_def : input14293 = (.seq input14292 input12167) := by
  unfold input14293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14292 output12167)).val
theorem output14293_def : output14293 = (.seq output14292 output12167) := by
  unfold output14293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14293_skip : Flapjack.WordAlloc.isSkip output14293 = false := by
  rw [output14293_def]
  conv => lhs; cbv
  try rfl
theorem node14293_eq : Flapjack.WordAlloc.removeDeadStructural input14293 value6083 value1 value2 = (output14293, value6896, value1) := by
  rw [input14293_def, output14293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12167_eq]
  try dsimp only
  rw [node14292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14293 input12158)).val
theorem input14294_def : input14294 = (.seq input14293 input12158) := by
  unfold input14294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14293)).val
theorem output14294_def : output14294 = (output14293) := by
  unfold output14294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14294_skip : Flapjack.WordAlloc.isSkip output14294 = false := by
  rw [output14294_def]
  conv => lhs; cbv
  try rfl
theorem node14294_eq : Flapjack.WordAlloc.removeDeadStructural input14294 value6083 value1 value2 = (output14294, value6896, value1) := by
  rw [input14294_def, output14294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12158_eq]
  try dsimp only
  rw [node14293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14294 input12157)).val
theorem input14295_def : input14295 = (.seq input14294 input12157) := by
  unfold input14295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14294 output12157)).val
theorem output14295_def : output14295 = (.seq output14294 output12157) := by
  unfold output14295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14295_skip : Flapjack.WordAlloc.isSkip output14295 = false := by
  rw [output14295_def]
  conv => lhs; cbv
  try rfl
theorem node14295_eq : Flapjack.WordAlloc.removeDeadStructural input14295 value6082 value1 value2 = (output14295, value6896, value1) := by
  rw [input14295_def, output14295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12157_eq]
  try dsimp only
  rw [node14294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14295 input12156)).val
theorem input14296_def : input14296 = (.seq input14295 input12156) := by
  unfold input14296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14295 output12156)).val
theorem output14296_def : output14296 = (.seq output14295 output12156) := by
  unfold output14296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14296_skip : Flapjack.WordAlloc.isSkip output14296 = false := by
  rw [output14296_def]
  conv => lhs; cbv
  try rfl
theorem node14296_eq : Flapjack.WordAlloc.removeDeadStructural input14296 value5 value1 value2 = (output14296, value6896, value1) := by
  rw [input14296_def, output14296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12156_eq]
  try dsimp only
  rw [node14295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14296 input12153)).val
theorem input14297_def : input14297 = (.seq input14296 input12153) := by
  unfold input14297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14296 output12153)).val
theorem output14297_def : output14297 = (.seq output14296 output12153) := by
  unfold output14297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14297_skip : Flapjack.WordAlloc.isSkip output14297 = false := by
  rw [output14297_def]
  conv => lhs; cbv
  try rfl
theorem node14297_eq : Flapjack.WordAlloc.removeDeadStructural input14297 value6076 value1 value2 = (output14297, value6896, value1) := by
  rw [input14297_def, output14297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12153_eq]
  try dsimp only
  rw [node14296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14297 input12144)).val
theorem input14298_def : input14298 = (.seq input14297 input12144) := by
  unfold input14298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14297)).val
theorem output14298_def : output14298 = (output14297) := by
  unfold output14298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14298_skip : Flapjack.WordAlloc.isSkip output14298 = false := by
  rw [output14298_def]
  conv => lhs; cbv
  try rfl
theorem node14298_eq : Flapjack.WordAlloc.removeDeadStructural input14298 value6076 value1 value2 = (output14298, value6896, value1) := by
  rw [input14298_def, output14298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12144_eq]
  try dsimp only
  rw [node14297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14298 input12143)).val
theorem input14299_def : input14299 = (.seq input14298 input12143) := by
  unfold input14299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14298 output12143)).val
theorem output14299_def : output14299 = (.seq output14298 output12143) := by
  unfold output14299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14299_skip : Flapjack.WordAlloc.isSkip output14299 = false := by
  rw [output14299_def]
  conv => lhs; cbv
  try rfl
theorem node14299_eq : Flapjack.WordAlloc.removeDeadStructural input14299 value6075 value1 value2 = (output14299, value6896, value1) := by
  rw [input14299_def, output14299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12143_eq]
  try dsimp only
  rw [node14298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14299 input12142)).val
theorem input14300_def : input14300 = (.seq input14299 input12142) := by
  unfold input14300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14299 output12142)).val
theorem output14300_def : output14300 = (.seq output14299 output12142) := by
  unfold output14300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14300_skip : Flapjack.WordAlloc.isSkip output14300 = false := by
  rw [output14300_def]
  conv => lhs; cbv
  try rfl
theorem node14300_eq : Flapjack.WordAlloc.removeDeadStructural input14300 value5 value1 value2 = (output14300, value6896, value1) := by
  rw [input14300_def, output14300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12142_eq]
  try dsimp only
  rw [node14299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14300 input12139)).val
theorem input14301_def : input14301 = (.seq input14300 input12139) := by
  unfold input14301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14300 output12139)).val
theorem output14301_def : output14301 = (.seq output14300 output12139) := by
  unfold output14301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14301_skip : Flapjack.WordAlloc.isSkip output14301 = false := by
  rw [output14301_def]
  conv => lhs; cbv
  try rfl
theorem node14301_eq : Flapjack.WordAlloc.removeDeadStructural input14301 value6069 value1 value2 = (output14301, value6896, value1) := by
  rw [input14301_def, output14301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12139_eq]
  try dsimp only
  rw [node14300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14301 input12130)).val
theorem input14302_def : input14302 = (.seq input14301 input12130) := by
  unfold input14302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14301)).val
theorem output14302_def : output14302 = (output14301) := by
  unfold output14302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14302_skip : Flapjack.WordAlloc.isSkip output14302 = false := by
  rw [output14302_def]
  conv => lhs; cbv
  try rfl
theorem node14302_eq : Flapjack.WordAlloc.removeDeadStructural input14302 value6069 value1 value2 = (output14302, value6896, value1) := by
  rw [input14302_def, output14302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12130_eq]
  try dsimp only
  rw [node14301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14302 input12129)).val
theorem input14303_def : input14303 = (.seq input14302 input12129) := by
  unfold input14303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14302 output12129)).val
theorem output14303_def : output14303 = (.seq output14302 output12129) := by
  unfold output14303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14303_skip : Flapjack.WordAlloc.isSkip output14303 = false := by
  rw [output14303_def]
  conv => lhs; cbv
  try rfl
theorem node14303_eq : Flapjack.WordAlloc.removeDeadStructural input14303 value6068 value1 value2 = (output14303, value6896, value1) := by
  rw [input14303_def, output14303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12129_eq]
  try dsimp only
  rw [node14302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14303 input12128)).val
theorem input14304_def : input14304 = (.seq input14303 input12128) := by
  unfold input14304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14303 output12128)).val
theorem output14304_def : output14304 = (.seq output14303 output12128) := by
  unfold output14304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14304_skip : Flapjack.WordAlloc.isSkip output14304 = false := by
  rw [output14304_def]
  conv => lhs; cbv
  try rfl
theorem node14304_eq : Flapjack.WordAlloc.removeDeadStructural input14304 value5 value1 value2 = (output14304, value6896, value1) := by
  rw [input14304_def, output14304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12128_eq]
  try dsimp only
  rw [node14303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14304 input12125)).val
theorem input14305_def : input14305 = (.seq input14304 input12125) := by
  unfold input14305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14304 output12125)).val
theorem output14305_def : output14305 = (.seq output14304 output12125) := by
  unfold output14305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14305_skip : Flapjack.WordAlloc.isSkip output14305 = false := by
  rw [output14305_def]
  conv => lhs; cbv
  try rfl
theorem node14305_eq : Flapjack.WordAlloc.removeDeadStructural input14305 value6062 value1 value2 = (output14305, value6896, value1) := by
  rw [input14305_def, output14305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12125_eq]
  try dsimp only
  rw [node14304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14305 input12116)).val
theorem input14306_def : input14306 = (.seq input14305 input12116) := by
  unfold input14306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14305)).val
theorem output14306_def : output14306 = (output14305) := by
  unfold output14306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14306_skip : Flapjack.WordAlloc.isSkip output14306 = false := by
  rw [output14306_def]
  conv => lhs; cbv
  try rfl
theorem node14306_eq : Flapjack.WordAlloc.removeDeadStructural input14306 value6062 value1 value2 = (output14306, value6896, value1) := by
  rw [input14306_def, output14306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12116_eq]
  try dsimp only
  rw [node14305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14306 input12115)).val
theorem input14307_def : input14307 = (.seq input14306 input12115) := by
  unfold input14307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14306 output12115)).val
theorem output14307_def : output14307 = (.seq output14306 output12115) := by
  unfold output14307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14307_skip : Flapjack.WordAlloc.isSkip output14307 = false := by
  rw [output14307_def]
  conv => lhs; cbv
  try rfl
theorem node14307_eq : Flapjack.WordAlloc.removeDeadStructural input14307 value6061 value1 value2 = (output14307, value6896, value1) := by
  rw [input14307_def, output14307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12115_eq]
  try dsimp only
  rw [node14306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14307 input12114)).val
theorem input14308_def : input14308 = (.seq input14307 input12114) := by
  unfold input14308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14307 output12114)).val
theorem output14308_def : output14308 = (.seq output14307 output12114) := by
  unfold output14308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14308_skip : Flapjack.WordAlloc.isSkip output14308 = false := by
  rw [output14308_def]
  conv => lhs; cbv
  try rfl
theorem node14308_eq : Flapjack.WordAlloc.removeDeadStructural input14308 value5 value1 value2 = (output14308, value6896, value1) := by
  rw [input14308_def, output14308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12114_eq]
  try dsimp only
  rw [node14307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14308 input12111)).val
theorem input14309_def : input14309 = (.seq input14308 input12111) := by
  unfold input14309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14308 output12111)).val
theorem output14309_def : output14309 = (.seq output14308 output12111) := by
  unfold output14309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14309_skip : Flapjack.WordAlloc.isSkip output14309 = false := by
  rw [output14309_def]
  conv => lhs; cbv
  try rfl
theorem node14309_eq : Flapjack.WordAlloc.removeDeadStructural input14309 value6055 value1 value2 = (output14309, value6896, value1) := by
  rw [input14309_def, output14309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12111_eq]
  try dsimp only
  rw [node14308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14309 input12102)).val
theorem input14310_def : input14310 = (.seq input14309 input12102) := by
  unfold input14310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14309)).val
theorem output14310_def : output14310 = (output14309) := by
  unfold output14310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14310_skip : Flapjack.WordAlloc.isSkip output14310 = false := by
  rw [output14310_def]
  conv => lhs; cbv
  try rfl
theorem node14310_eq : Flapjack.WordAlloc.removeDeadStructural input14310 value6055 value1 value2 = (output14310, value6896, value1) := by
  rw [input14310_def, output14310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12102_eq]
  try dsimp only
  rw [node14309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14310 input12101)).val
theorem input14311_def : input14311 = (.seq input14310 input12101) := by
  unfold input14311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14310 output12101)).val
theorem output14311_def : output14311 = (.seq output14310 output12101) := by
  unfold output14311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14311_skip : Flapjack.WordAlloc.isSkip output14311 = false := by
  rw [output14311_def]
  conv => lhs; cbv
  try rfl
theorem node14311_eq : Flapjack.WordAlloc.removeDeadStructural input14311 value6054 value1 value2 = (output14311, value6896, value1) := by
  rw [input14311_def, output14311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12101_eq]
  try dsimp only
  rw [node14310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14311 input12100)).val
theorem input14312_def : input14312 = (.seq input14311 input12100) := by
  unfold input14312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14311 output12100)).val
theorem output14312_def : output14312 = (.seq output14311 output12100) := by
  unfold output14312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14312_skip : Flapjack.WordAlloc.isSkip output14312 = false := by
  rw [output14312_def]
  conv => lhs; cbv
  try rfl
theorem node14312_eq : Flapjack.WordAlloc.removeDeadStructural input14312 value5 value1 value2 = (output14312, value6896, value1) := by
  rw [input14312_def, output14312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12100_eq]
  try dsimp only
  rw [node14311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14312 input12097)).val
theorem input14313_def : input14313 = (.seq input14312 input12097) := by
  unfold input14313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14312 output12097)).val
theorem output14313_def : output14313 = (.seq output14312 output12097) := by
  unfold output14313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14313_skip : Flapjack.WordAlloc.isSkip output14313 = false := by
  rw [output14313_def]
  conv => lhs; cbv
  try rfl
theorem node14313_eq : Flapjack.WordAlloc.removeDeadStructural input14313 value6048 value1 value2 = (output14313, value6896, value1) := by
  rw [input14313_def, output14313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12097_eq]
  try dsimp only
  rw [node14312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14313 input12088)).val
theorem input14314_def : input14314 = (.seq input14313 input12088) := by
  unfold input14314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14313)).val
theorem output14314_def : output14314 = (output14313) := by
  unfold output14314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14314_skip : Flapjack.WordAlloc.isSkip output14314 = false := by
  rw [output14314_def]
  conv => lhs; cbv
  try rfl
theorem node14314_eq : Flapjack.WordAlloc.removeDeadStructural input14314 value6048 value1 value2 = (output14314, value6896, value1) := by
  rw [input14314_def, output14314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12088_eq]
  try dsimp only
  rw [node14313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14314 input12087)).val
theorem input14315_def : input14315 = (.seq input14314 input12087) := by
  unfold input14315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14314 output12087)).val
theorem output14315_def : output14315 = (.seq output14314 output12087) := by
  unfold output14315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14315_skip : Flapjack.WordAlloc.isSkip output14315 = false := by
  rw [output14315_def]
  conv => lhs; cbv
  try rfl
theorem node14315_eq : Flapjack.WordAlloc.removeDeadStructural input14315 value6047 value1 value2 = (output14315, value6896, value1) := by
  rw [input14315_def, output14315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12087_eq]
  try dsimp only
  rw [node14314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14315 input12086)).val
theorem input14316_def : input14316 = (.seq input14315 input12086) := by
  unfold input14316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14315 output12086)).val
theorem output14316_def : output14316 = (.seq output14315 output12086) := by
  unfold output14316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14316_skip : Flapjack.WordAlloc.isSkip output14316 = false := by
  rw [output14316_def]
  conv => lhs; cbv
  try rfl
theorem node14316_eq : Flapjack.WordAlloc.removeDeadStructural input14316 value5 value1 value2 = (output14316, value6896, value1) := by
  rw [input14316_def, output14316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12086_eq]
  try dsimp only
  rw [node14315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14316 input12083)).val
theorem input14317_def : input14317 = (.seq input14316 input12083) := by
  unfold input14317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14316 output12083)).val
theorem output14317_def : output14317 = (.seq output14316 output12083) := by
  unfold output14317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14317_skip : Flapjack.WordAlloc.isSkip output14317 = false := by
  rw [output14317_def]
  conv => lhs; cbv
  try rfl
theorem node14317_eq : Flapjack.WordAlloc.removeDeadStructural input14317 value6041 value1 value2 = (output14317, value6896, value1) := by
  rw [input14317_def, output14317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12083_eq]
  try dsimp only
  rw [node14316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14317 input12074)).val
theorem input14318_def : input14318 = (.seq input14317 input12074) := by
  unfold input14318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14317)).val
theorem output14318_def : output14318 = (output14317) := by
  unfold output14318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14318_skip : Flapjack.WordAlloc.isSkip output14318 = false := by
  rw [output14318_def]
  conv => lhs; cbv
  try rfl
theorem node14318_eq : Flapjack.WordAlloc.removeDeadStructural input14318 value6041 value1 value2 = (output14318, value6896, value1) := by
  rw [input14318_def, output14318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12074_eq]
  try dsimp only
  rw [node14317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14318 input12073)).val
theorem input14319_def : input14319 = (.seq input14318 input12073) := by
  unfold input14319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14318 output12073)).val
theorem output14319_def : output14319 = (.seq output14318 output12073) := by
  unfold output14319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14319_skip : Flapjack.WordAlloc.isSkip output14319 = false := by
  rw [output14319_def]
  conv => lhs; cbv
  try rfl
theorem node14319_eq : Flapjack.WordAlloc.removeDeadStructural input14319 value6040 value1 value2 = (output14319, value6896, value1) := by
  rw [input14319_def, output14319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12073_eq]
  try dsimp only
  rw [node14318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14319 input12072)).val
theorem input14320_def : input14320 = (.seq input14319 input12072) := by
  unfold input14320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14319 output12072)).val
theorem output14320_def : output14320 = (.seq output14319 output12072) := by
  unfold output14320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14320_skip : Flapjack.WordAlloc.isSkip output14320 = false := by
  rw [output14320_def]
  conv => lhs; cbv
  try rfl
theorem node14320_eq : Flapjack.WordAlloc.removeDeadStructural input14320 value5 value1 value2 = (output14320, value6896, value1) := by
  rw [input14320_def, output14320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12072_eq]
  try dsimp only
  rw [node14319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14320 input12069)).val
theorem input14321_def : input14321 = (.seq input14320 input12069) := by
  unfold input14321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14320 output12069)).val
theorem output14321_def : output14321 = (.seq output14320 output12069) := by
  unfold output14321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14321_skip : Flapjack.WordAlloc.isSkip output14321 = false := by
  rw [output14321_def]
  conv => lhs; cbv
  try rfl
theorem node14321_eq : Flapjack.WordAlloc.removeDeadStructural input14321 value6034 value1 value2 = (output14321, value6896, value1) := by
  rw [input14321_def, output14321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12069_eq]
  try dsimp only
  rw [node14320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14321 input12060)).val
theorem input14322_def : input14322 = (.seq input14321 input12060) := by
  unfold input14322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14321)).val
theorem output14322_def : output14322 = (output14321) := by
  unfold output14322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14322_skip : Flapjack.WordAlloc.isSkip output14322 = false := by
  rw [output14322_def]
  conv => lhs; cbv
  try rfl
theorem node14322_eq : Flapjack.WordAlloc.removeDeadStructural input14322 value6034 value1 value2 = (output14322, value6896, value1) := by
  rw [input14322_def, output14322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12060_eq]
  try dsimp only
  rw [node14321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14322 input12059)).val
theorem input14323_def : input14323 = (.seq input14322 input12059) := by
  unfold input14323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14322 output12059)).val
theorem output14323_def : output14323 = (.seq output14322 output12059) := by
  unfold output14323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14323_skip : Flapjack.WordAlloc.isSkip output14323 = false := by
  rw [output14323_def]
  conv => lhs; cbv
  try rfl
theorem node14323_eq : Flapjack.WordAlloc.removeDeadStructural input14323 value6033 value1 value2 = (output14323, value6896, value1) := by
  rw [input14323_def, output14323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12059_eq]
  try dsimp only
  rw [node14322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14323 input12058)).val
theorem input14324_def : input14324 = (.seq input14323 input12058) := by
  unfold input14324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14323 output12058)).val
theorem output14324_def : output14324 = (.seq output14323 output12058) := by
  unfold output14324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14324_skip : Flapjack.WordAlloc.isSkip output14324 = false := by
  rw [output14324_def]
  conv => lhs; cbv
  try rfl
theorem node14324_eq : Flapjack.WordAlloc.removeDeadStructural input14324 value5 value1 value2 = (output14324, value6896, value1) := by
  rw [input14324_def, output14324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12058_eq]
  try dsimp only
  rw [node14323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14324 input12055)).val
theorem input14325_def : input14325 = (.seq input14324 input12055) := by
  unfold input14325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14324 output12055)).val
theorem output14325_def : output14325 = (.seq output14324 output12055) := by
  unfold output14325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14325_skip : Flapjack.WordAlloc.isSkip output14325 = false := by
  rw [output14325_def]
  conv => lhs; cbv
  try rfl
theorem node14325_eq : Flapjack.WordAlloc.removeDeadStructural input14325 value6027 value1 value2 = (output14325, value6896, value1) := by
  rw [input14325_def, output14325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12055_eq]
  try dsimp only
  rw [node14324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14325 input12046)).val
theorem input14326_def : input14326 = (.seq input14325 input12046) := by
  unfold input14326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14325)).val
theorem output14326_def : output14326 = (output14325) := by
  unfold output14326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14326_skip : Flapjack.WordAlloc.isSkip output14326 = false := by
  rw [output14326_def]
  conv => lhs; cbv
  try rfl
theorem node14326_eq : Flapjack.WordAlloc.removeDeadStructural input14326 value6027 value1 value2 = (output14326, value6896, value1) := by
  rw [input14326_def, output14326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12046_eq]
  try dsimp only
  rw [node14325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14326 input12045)).val
theorem input14327_def : input14327 = (.seq input14326 input12045) := by
  unfold input14327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14326 output12045)).val
theorem output14327_def : output14327 = (.seq output14326 output12045) := by
  unfold output14327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14327_skip : Flapjack.WordAlloc.isSkip output14327 = false := by
  rw [output14327_def]
  conv => lhs; cbv
  try rfl
theorem node14327_eq : Flapjack.WordAlloc.removeDeadStructural input14327 value6026 value1 value2 = (output14327, value6896, value1) := by
  rw [input14327_def, output14327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12045_eq]
  try dsimp only
  rw [node14326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14327 input12044)).val
theorem input14328_def : input14328 = (.seq input14327 input12044) := by
  unfold input14328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14327 output12044)).val
theorem output14328_def : output14328 = (.seq output14327 output12044) := by
  unfold output14328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14328_skip : Flapjack.WordAlloc.isSkip output14328 = false := by
  rw [output14328_def]
  conv => lhs; cbv
  try rfl
theorem node14328_eq : Flapjack.WordAlloc.removeDeadStructural input14328 value5 value1 value2 = (output14328, value6896, value1) := by
  rw [input14328_def, output14328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12044_eq]
  try dsimp only
  rw [node14327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14328 input12041)).val
theorem input14329_def : input14329 = (.seq input14328 input12041) := by
  unfold input14329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14328 output12041)).val
theorem output14329_def : output14329 = (.seq output14328 output12041) := by
  unfold output14329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14329_skip : Flapjack.WordAlloc.isSkip output14329 = false := by
  rw [output14329_def]
  conv => lhs; cbv
  try rfl
theorem node14329_eq : Flapjack.WordAlloc.removeDeadStructural input14329 value6020 value1 value2 = (output14329, value6896, value1) := by
  rw [input14329_def, output14329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12041_eq]
  try dsimp only
  rw [node14328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14329 input12032)).val
theorem input14330_def : input14330 = (.seq input14329 input12032) := by
  unfold input14330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14329)).val
theorem output14330_def : output14330 = (output14329) := by
  unfold output14330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14330_skip : Flapjack.WordAlloc.isSkip output14330 = false := by
  rw [output14330_def]
  conv => lhs; cbv
  try rfl
theorem node14330_eq : Flapjack.WordAlloc.removeDeadStructural input14330 value6020 value1 value2 = (output14330, value6896, value1) := by
  rw [input14330_def, output14330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12032_eq]
  try dsimp only
  rw [node14329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14330 input12031)).val
theorem input14331_def : input14331 = (.seq input14330 input12031) := by
  unfold input14331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14330 output12031)).val
theorem output14331_def : output14331 = (.seq output14330 output12031) := by
  unfold output14331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14331_skip : Flapjack.WordAlloc.isSkip output14331 = false := by
  rw [output14331_def]
  conv => lhs; cbv
  try rfl
theorem node14331_eq : Flapjack.WordAlloc.removeDeadStructural input14331 value6019 value1 value2 = (output14331, value6896, value1) := by
  rw [input14331_def, output14331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12031_eq]
  try dsimp only
  rw [node14330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14331 input12030)).val
theorem input14332_def : input14332 = (.seq input14331 input12030) := by
  unfold input14332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14331 output12030)).val
theorem output14332_def : output14332 = (.seq output14331 output12030) := by
  unfold output14332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14332_skip : Flapjack.WordAlloc.isSkip output14332 = false := by
  rw [output14332_def]
  conv => lhs; cbv
  try rfl
theorem node14332_eq : Flapjack.WordAlloc.removeDeadStructural input14332 value5 value1 value2 = (output14332, value6896, value1) := by
  rw [input14332_def, output14332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12030_eq]
  try dsimp only
  rw [node14331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14332 input12027)).val
theorem input14333_def : input14333 = (.seq input14332 input12027) := by
  unfold input14333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14332 output12027)).val
theorem output14333_def : output14333 = (.seq output14332 output12027) := by
  unfold output14333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14333_skip : Flapjack.WordAlloc.isSkip output14333 = false := by
  rw [output14333_def]
  conv => lhs; cbv
  try rfl
theorem node14333_eq : Flapjack.WordAlloc.removeDeadStructural input14333 value6013 value1 value2 = (output14333, value6896, value1) := by
  rw [input14333_def, output14333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12027_eq]
  try dsimp only
  rw [node14332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14333 input12018)).val
theorem input14334_def : input14334 = (.seq input14333 input12018) := by
  unfold input14334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14333)).val
theorem output14334_def : output14334 = (output14333) := by
  unfold output14334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14334_skip : Flapjack.WordAlloc.isSkip output14334 = false := by
  rw [output14334_def]
  conv => lhs; cbv
  try rfl
theorem node14334_eq : Flapjack.WordAlloc.removeDeadStructural input14334 value6013 value1 value2 = (output14334, value6896, value1) := by
  rw [input14334_def, output14334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12018_eq]
  try dsimp only
  rw [node14333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14334 input12017)).val
theorem input14335_def : input14335 = (.seq input14334 input12017) := by
  unfold input14335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14334 output12017)).val
theorem output14335_def : output14335 = (.seq output14334 output12017) := by
  unfold output14335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14335_skip : Flapjack.WordAlloc.isSkip output14335 = false := by
  rw [output14335_def]
  conv => lhs; cbv
  try rfl
theorem node14335_eq : Flapjack.WordAlloc.removeDeadStructural input14335 value6012 value1 value2 = (output14335, value6896, value1) := by
  rw [input14335_def, output14335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12017_eq]
  try dsimp only
  rw [node14334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node14335_eq
end InitECandidate.Proofs.DeadStages713
