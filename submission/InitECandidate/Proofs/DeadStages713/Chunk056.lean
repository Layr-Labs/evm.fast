import InitECandidate.Proofs.DeadStages713.Chunk055
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input14336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14335 input12016)).val
theorem input14336_def : input14336 = (.seq input14335 input12016) := by
  unfold input14336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14335 output12016)).val
theorem output14336_def : output14336 = (.seq output14335 output12016) := by
  unfold output14336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14336_skip : Flapjack.WordAlloc.isSkip output14336 = false := by
  rw [output14336_def]
  conv => lhs; cbv
  try rfl
theorem node14336_eq : Flapjack.WordAlloc.removeDeadStructural input14336 value5 value1 value2 = (output14336, value6896, value1) := by
  rw [input14336_def, output14336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12016_eq]
  try dsimp only
  rw [node14335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14336 input12013)).val
theorem input14337_def : input14337 = (.seq input14336 input12013) := by
  unfold input14337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14336 output12013)).val
theorem output14337_def : output14337 = (.seq output14336 output12013) := by
  unfold output14337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14337_skip : Flapjack.WordAlloc.isSkip output14337 = false := by
  rw [output14337_def]
  conv => lhs; cbv
  try rfl
theorem node14337_eq : Flapjack.WordAlloc.removeDeadStructural input14337 value6006 value1 value2 = (output14337, value6896, value1) := by
  rw [input14337_def, output14337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12013_eq]
  try dsimp only
  rw [node14336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14337 input12004)).val
theorem input14338_def : input14338 = (.seq input14337 input12004) := by
  unfold input14338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14337)).val
theorem output14338_def : output14338 = (output14337) := by
  unfold output14338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14338_skip : Flapjack.WordAlloc.isSkip output14338 = false := by
  rw [output14338_def]
  conv => lhs; cbv
  try rfl
theorem node14338_eq : Flapjack.WordAlloc.removeDeadStructural input14338 value6006 value1 value2 = (output14338, value6896, value1) := by
  rw [input14338_def, output14338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12004_eq]
  try dsimp only
  rw [node14337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14338 input12003)).val
theorem input14339_def : input14339 = (.seq input14338 input12003) := by
  unfold input14339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14338 output12003)).val
theorem output14339_def : output14339 = (.seq output14338 output12003) := by
  unfold output14339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14339_skip : Flapjack.WordAlloc.isSkip output14339 = false := by
  rw [output14339_def]
  conv => lhs; cbv
  try rfl
theorem node14339_eq : Flapjack.WordAlloc.removeDeadStructural input14339 value6005 value1 value2 = (output14339, value6896, value1) := by
  rw [input14339_def, output14339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12003_eq]
  try dsimp only
  rw [node14338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14339 input12002)).val
theorem input14340_def : input14340 = (.seq input14339 input12002) := by
  unfold input14340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14339 output12002)).val
theorem output14340_def : output14340 = (.seq output14339 output12002) := by
  unfold output14340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14340_skip : Flapjack.WordAlloc.isSkip output14340 = false := by
  rw [output14340_def]
  conv => lhs; cbv
  try rfl
theorem node14340_eq : Flapjack.WordAlloc.removeDeadStructural input14340 value5 value1 value2 = (output14340, value6896, value1) := by
  rw [input14340_def, output14340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12002_eq]
  try dsimp only
  rw [node14339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14340 input11999)).val
theorem input14341_def : input14341 = (.seq input14340 input11999) := by
  unfold input14341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14340 output11999)).val
theorem output14341_def : output14341 = (.seq output14340 output11999) := by
  unfold output14341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14341_skip : Flapjack.WordAlloc.isSkip output14341 = false := by
  rw [output14341_def]
  conv => lhs; cbv
  try rfl
theorem node14341_eq : Flapjack.WordAlloc.removeDeadStructural input14341 value5999 value1 value2 = (output14341, value6896, value1) := by
  rw [input14341_def, output14341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11999_eq]
  try dsimp only
  rw [node14340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14341 input11990)).val
theorem input14342_def : input14342 = (.seq input14341 input11990) := by
  unfold input14342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14341)).val
theorem output14342_def : output14342 = (output14341) := by
  unfold output14342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14342_skip : Flapjack.WordAlloc.isSkip output14342 = false := by
  rw [output14342_def]
  conv => lhs; cbv
  try rfl
theorem node14342_eq : Flapjack.WordAlloc.removeDeadStructural input14342 value5999 value1 value2 = (output14342, value6896, value1) := by
  rw [input14342_def, output14342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11990_eq]
  try dsimp only
  rw [node14341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14342 input11989)).val
theorem input14343_def : input14343 = (.seq input14342 input11989) := by
  unfold input14343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14342 output11989)).val
theorem output14343_def : output14343 = (.seq output14342 output11989) := by
  unfold output14343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14343_skip : Flapjack.WordAlloc.isSkip output14343 = false := by
  rw [output14343_def]
  conv => lhs; cbv
  try rfl
theorem node14343_eq : Flapjack.WordAlloc.removeDeadStructural input14343 value5998 value1 value2 = (output14343, value6896, value1) := by
  rw [input14343_def, output14343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11989_eq]
  try dsimp only
  rw [node14342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14343 input11988)).val
theorem input14344_def : input14344 = (.seq input14343 input11988) := by
  unfold input14344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14343 output11988)).val
theorem output14344_def : output14344 = (.seq output14343 output11988) := by
  unfold output14344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14344_skip : Flapjack.WordAlloc.isSkip output14344 = false := by
  rw [output14344_def]
  conv => lhs; cbv
  try rfl
theorem node14344_eq : Flapjack.WordAlloc.removeDeadStructural input14344 value5 value1 value2 = (output14344, value6896, value1) := by
  rw [input14344_def, output14344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11988_eq]
  try dsimp only
  rw [node14343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14344 input11985)).val
theorem input14345_def : input14345 = (.seq input14344 input11985) := by
  unfold input14345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14344 output11985)).val
theorem output14345_def : output14345 = (.seq output14344 output11985) := by
  unfold output14345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14345_skip : Flapjack.WordAlloc.isSkip output14345 = false := by
  rw [output14345_def]
  conv => lhs; cbv
  try rfl
theorem node14345_eq : Flapjack.WordAlloc.removeDeadStructural input14345 value5992 value1 value2 = (output14345, value6896, value1) := by
  rw [input14345_def, output14345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11985_eq]
  try dsimp only
  rw [node14344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14345 input11976)).val
theorem input14346_def : input14346 = (.seq input14345 input11976) := by
  unfold input14346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14345)).val
theorem output14346_def : output14346 = (output14345) := by
  unfold output14346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14346_skip : Flapjack.WordAlloc.isSkip output14346 = false := by
  rw [output14346_def]
  conv => lhs; cbv
  try rfl
theorem node14346_eq : Flapjack.WordAlloc.removeDeadStructural input14346 value5992 value1 value2 = (output14346, value6896, value1) := by
  rw [input14346_def, output14346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11976_eq]
  try dsimp only
  rw [node14345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14346 input11975)).val
theorem input14347_def : input14347 = (.seq input14346 input11975) := by
  unfold input14347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14346 output11975)).val
theorem output14347_def : output14347 = (.seq output14346 output11975) := by
  unfold output14347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14347_skip : Flapjack.WordAlloc.isSkip output14347 = false := by
  rw [output14347_def]
  conv => lhs; cbv
  try rfl
theorem node14347_eq : Flapjack.WordAlloc.removeDeadStructural input14347 value5991 value1 value2 = (output14347, value6896, value1) := by
  rw [input14347_def, output14347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11975_eq]
  try dsimp only
  rw [node14346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14347 input11974)).val
theorem input14348_def : input14348 = (.seq input14347 input11974) := by
  unfold input14348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14347 output11974)).val
theorem output14348_def : output14348 = (.seq output14347 output11974) := by
  unfold output14348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14348_skip : Flapjack.WordAlloc.isSkip output14348 = false := by
  rw [output14348_def]
  conv => lhs; cbv
  try rfl
theorem node14348_eq : Flapjack.WordAlloc.removeDeadStructural input14348 value5 value1 value2 = (output14348, value6896, value1) := by
  rw [input14348_def, output14348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11974_eq]
  try dsimp only
  rw [node14347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14348 input11971)).val
theorem input14349_def : input14349 = (.seq input14348 input11971) := by
  unfold input14349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14348 output11971)).val
theorem output14349_def : output14349 = (.seq output14348 output11971) := by
  unfold output14349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14349_skip : Flapjack.WordAlloc.isSkip output14349 = false := by
  rw [output14349_def]
  conv => lhs; cbv
  try rfl
theorem node14349_eq : Flapjack.WordAlloc.removeDeadStructural input14349 value5985 value1 value2 = (output14349, value6896, value1) := by
  rw [input14349_def, output14349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11971_eq]
  try dsimp only
  rw [node14348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14349 input11962)).val
theorem input14350_def : input14350 = (.seq input14349 input11962) := by
  unfold input14350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14349)).val
theorem output14350_def : output14350 = (output14349) := by
  unfold output14350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14350_skip : Flapjack.WordAlloc.isSkip output14350 = false := by
  rw [output14350_def]
  conv => lhs; cbv
  try rfl
theorem node14350_eq : Flapjack.WordAlloc.removeDeadStructural input14350 value5985 value1 value2 = (output14350, value6896, value1) := by
  rw [input14350_def, output14350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11962_eq]
  try dsimp only
  rw [node14349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14350 input11961)).val
theorem input14351_def : input14351 = (.seq input14350 input11961) := by
  unfold input14351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14350 output11961)).val
theorem output14351_def : output14351 = (.seq output14350 output11961) := by
  unfold output14351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14351_skip : Flapjack.WordAlloc.isSkip output14351 = false := by
  rw [output14351_def]
  conv => lhs; cbv
  try rfl
theorem node14351_eq : Flapjack.WordAlloc.removeDeadStructural input14351 value5984 value1 value2 = (output14351, value6896, value1) := by
  rw [input14351_def, output14351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11961_eq]
  try dsimp only
  rw [node14350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14351 input11960)).val
theorem input14352_def : input14352 = (.seq input14351 input11960) := by
  unfold input14352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14351 output11960)).val
theorem output14352_def : output14352 = (.seq output14351 output11960) := by
  unfold output14352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14352_skip : Flapjack.WordAlloc.isSkip output14352 = false := by
  rw [output14352_def]
  conv => lhs; cbv
  try rfl
theorem node14352_eq : Flapjack.WordAlloc.removeDeadStructural input14352 value5 value1 value2 = (output14352, value6896, value1) := by
  rw [input14352_def, output14352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11960_eq]
  try dsimp only
  rw [node14351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14352 input11957)).val
theorem input14353_def : input14353 = (.seq input14352 input11957) := by
  unfold input14353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14352 output11957)).val
theorem output14353_def : output14353 = (.seq output14352 output11957) := by
  unfold output14353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14353_skip : Flapjack.WordAlloc.isSkip output14353 = false := by
  rw [output14353_def]
  conv => lhs; cbv
  try rfl
theorem node14353_eq : Flapjack.WordAlloc.removeDeadStructural input14353 value5978 value1 value2 = (output14353, value6896, value1) := by
  rw [input14353_def, output14353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11957_eq]
  try dsimp only
  rw [node14352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14353 input11948)).val
theorem input14354_def : input14354 = (.seq input14353 input11948) := by
  unfold input14354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14353)).val
theorem output14354_def : output14354 = (output14353) := by
  unfold output14354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14354_skip : Flapjack.WordAlloc.isSkip output14354 = false := by
  rw [output14354_def]
  conv => lhs; cbv
  try rfl
theorem node14354_eq : Flapjack.WordAlloc.removeDeadStructural input14354 value5978 value1 value2 = (output14354, value6896, value1) := by
  rw [input14354_def, output14354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11948_eq]
  try dsimp only
  rw [node14353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14354 input11947)).val
theorem input14355_def : input14355 = (.seq input14354 input11947) := by
  unfold input14355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14354 output11947)).val
theorem output14355_def : output14355 = (.seq output14354 output11947) := by
  unfold output14355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14355_skip : Flapjack.WordAlloc.isSkip output14355 = false := by
  rw [output14355_def]
  conv => lhs; cbv
  try rfl
theorem node14355_eq : Flapjack.WordAlloc.removeDeadStructural input14355 value5977 value1 value2 = (output14355, value6896, value1) := by
  rw [input14355_def, output14355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11947_eq]
  try dsimp only
  rw [node14354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14355 input11946)).val
theorem input14356_def : input14356 = (.seq input14355 input11946) := by
  unfold input14356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14355 output11946)).val
theorem output14356_def : output14356 = (.seq output14355 output11946) := by
  unfold output14356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14356_skip : Flapjack.WordAlloc.isSkip output14356 = false := by
  rw [output14356_def]
  conv => lhs; cbv
  try rfl
theorem node14356_eq : Flapjack.WordAlloc.removeDeadStructural input14356 value5 value1 value2 = (output14356, value6896, value1) := by
  rw [input14356_def, output14356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11946_eq]
  try dsimp only
  rw [node14355_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14356 input11943)).val
theorem input14357_def : input14357 = (.seq input14356 input11943) := by
  unfold input14357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14356 output11943)).val
theorem output14357_def : output14357 = (.seq output14356 output11943) := by
  unfold output14357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14357_skip : Flapjack.WordAlloc.isSkip output14357 = false := by
  rw [output14357_def]
  conv => lhs; cbv
  try rfl
theorem node14357_eq : Flapjack.WordAlloc.removeDeadStructural input14357 value5971 value1 value2 = (output14357, value6896, value1) := by
  rw [input14357_def, output14357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11943_eq]
  try dsimp only
  rw [node14356_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14357 input11934)).val
theorem input14358_def : input14358 = (.seq input14357 input11934) := by
  unfold input14358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14357)).val
theorem output14358_def : output14358 = (output14357) := by
  unfold output14358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14358_skip : Flapjack.WordAlloc.isSkip output14358 = false := by
  rw [output14358_def]
  conv => lhs; cbv
  try rfl
theorem node14358_eq : Flapjack.WordAlloc.removeDeadStructural input14358 value5971 value1 value2 = (output14358, value6896, value1) := by
  rw [input14358_def, output14358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11934_eq]
  try dsimp only
  rw [node14357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14358 input11933)).val
theorem input14359_def : input14359 = (.seq input14358 input11933) := by
  unfold input14359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14358 output11933)).val
theorem output14359_def : output14359 = (.seq output14358 output11933) := by
  unfold output14359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14359_skip : Flapjack.WordAlloc.isSkip output14359 = false := by
  rw [output14359_def]
  conv => lhs; cbv
  try rfl
theorem node14359_eq : Flapjack.WordAlloc.removeDeadStructural input14359 value5970 value1 value2 = (output14359, value6896, value1) := by
  rw [input14359_def, output14359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11933_eq]
  try dsimp only
  rw [node14358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14359 input11932)).val
theorem input14360_def : input14360 = (.seq input14359 input11932) := by
  unfold input14360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14359 output11932)).val
theorem output14360_def : output14360 = (.seq output14359 output11932) := by
  unfold output14360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14360_skip : Flapjack.WordAlloc.isSkip output14360 = false := by
  rw [output14360_def]
  conv => lhs; cbv
  try rfl
theorem node14360_eq : Flapjack.WordAlloc.removeDeadStructural input14360 value5 value1 value2 = (output14360, value6896, value1) := by
  rw [input14360_def, output14360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11932_eq]
  try dsimp only
  rw [node14359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14360 input11929)).val
theorem input14361_def : input14361 = (.seq input14360 input11929) := by
  unfold input14361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14360 output11929)).val
theorem output14361_def : output14361 = (.seq output14360 output11929) := by
  unfold output14361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14361_skip : Flapjack.WordAlloc.isSkip output14361 = false := by
  rw [output14361_def]
  conv => lhs; cbv
  try rfl
theorem node14361_eq : Flapjack.WordAlloc.removeDeadStructural input14361 value5964 value1 value2 = (output14361, value6896, value1) := by
  rw [input14361_def, output14361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11929_eq]
  try dsimp only
  rw [node14360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14361 input11920)).val
theorem input14362_def : input14362 = (.seq input14361 input11920) := by
  unfold input14362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14361)).val
theorem output14362_def : output14362 = (output14361) := by
  unfold output14362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14362_skip : Flapjack.WordAlloc.isSkip output14362 = false := by
  rw [output14362_def]
  conv => lhs; cbv
  try rfl
theorem node14362_eq : Flapjack.WordAlloc.removeDeadStructural input14362 value5964 value1 value2 = (output14362, value6896, value1) := by
  rw [input14362_def, output14362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11920_eq]
  try dsimp only
  rw [node14361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14362 input11919)).val
theorem input14363_def : input14363 = (.seq input14362 input11919) := by
  unfold input14363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14362 output11919)).val
theorem output14363_def : output14363 = (.seq output14362 output11919) := by
  unfold output14363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14363_skip : Flapjack.WordAlloc.isSkip output14363 = false := by
  rw [output14363_def]
  conv => lhs; cbv
  try rfl
theorem node14363_eq : Flapjack.WordAlloc.removeDeadStructural input14363 value5963 value1 value2 = (output14363, value6896, value1) := by
  rw [input14363_def, output14363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11919_eq]
  try dsimp only
  rw [node14362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14363 input11918)).val
theorem input14364_def : input14364 = (.seq input14363 input11918) := by
  unfold input14364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14363 output11918)).val
theorem output14364_def : output14364 = (.seq output14363 output11918) := by
  unfold output14364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14364_skip : Flapjack.WordAlloc.isSkip output14364 = false := by
  rw [output14364_def]
  conv => lhs; cbv
  try rfl
theorem node14364_eq : Flapjack.WordAlloc.removeDeadStructural input14364 value5 value1 value2 = (output14364, value6896, value1) := by
  rw [input14364_def, output14364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11918_eq]
  try dsimp only
  rw [node14363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14364 input11915)).val
theorem input14365_def : input14365 = (.seq input14364 input11915) := by
  unfold input14365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14364 output11915)).val
theorem output14365_def : output14365 = (.seq output14364 output11915) := by
  unfold output14365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14365_skip : Flapjack.WordAlloc.isSkip output14365 = false := by
  rw [output14365_def]
  conv => lhs; cbv
  try rfl
theorem node14365_eq : Flapjack.WordAlloc.removeDeadStructural input14365 value5957 value1 value2 = (output14365, value6896, value1) := by
  rw [input14365_def, output14365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11915_eq]
  try dsimp only
  rw [node14364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14365 input11906)).val
theorem input14366_def : input14366 = (.seq input14365 input11906) := by
  unfold input14366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14365)).val
theorem output14366_def : output14366 = (output14365) := by
  unfold output14366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14366_skip : Flapjack.WordAlloc.isSkip output14366 = false := by
  rw [output14366_def]
  conv => lhs; cbv
  try rfl
theorem node14366_eq : Flapjack.WordAlloc.removeDeadStructural input14366 value5957 value1 value2 = (output14366, value6896, value1) := by
  rw [input14366_def, output14366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11906_eq]
  try dsimp only
  rw [node14365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14366 input11905)).val
theorem input14367_def : input14367 = (.seq input14366 input11905) := by
  unfold input14367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14366 output11905)).val
theorem output14367_def : output14367 = (.seq output14366 output11905) := by
  unfold output14367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14367_skip : Flapjack.WordAlloc.isSkip output14367 = false := by
  rw [output14367_def]
  conv => lhs; cbv
  try rfl
theorem node14367_eq : Flapjack.WordAlloc.removeDeadStructural input14367 value5956 value1 value2 = (output14367, value6896, value1) := by
  rw [input14367_def, output14367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11905_eq]
  try dsimp only
  rw [node14366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14367 input11904)).val
theorem input14368_def : input14368 = (.seq input14367 input11904) := by
  unfold input14368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14367 output11904)).val
theorem output14368_def : output14368 = (.seq output14367 output11904) := by
  unfold output14368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14368_skip : Flapjack.WordAlloc.isSkip output14368 = false := by
  rw [output14368_def]
  conv => lhs; cbv
  try rfl
theorem node14368_eq : Flapjack.WordAlloc.removeDeadStructural input14368 value5 value1 value2 = (output14368, value6896, value1) := by
  rw [input14368_def, output14368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11904_eq]
  try dsimp only
  rw [node14367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14368 input11901)).val
theorem input14369_def : input14369 = (.seq input14368 input11901) := by
  unfold input14369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14368 output11901)).val
theorem output14369_def : output14369 = (.seq output14368 output11901) := by
  unfold output14369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14369_skip : Flapjack.WordAlloc.isSkip output14369 = false := by
  rw [output14369_def]
  conv => lhs; cbv
  try rfl
theorem node14369_eq : Flapjack.WordAlloc.removeDeadStructural input14369 value5950 value1 value2 = (output14369, value6896, value1) := by
  rw [input14369_def, output14369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11901_eq]
  try dsimp only
  rw [node14368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14369 input11892)).val
theorem input14370_def : input14370 = (.seq input14369 input11892) := by
  unfold input14370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14369)).val
theorem output14370_def : output14370 = (output14369) := by
  unfold output14370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14370_skip : Flapjack.WordAlloc.isSkip output14370 = false := by
  rw [output14370_def]
  conv => lhs; cbv
  try rfl
theorem node14370_eq : Flapjack.WordAlloc.removeDeadStructural input14370 value5950 value1 value2 = (output14370, value6896, value1) := by
  rw [input14370_def, output14370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11892_eq]
  try dsimp only
  rw [node14369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14370 input11891)).val
theorem input14371_def : input14371 = (.seq input14370 input11891) := by
  unfold input14371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14370 output11891)).val
theorem output14371_def : output14371 = (.seq output14370 output11891) := by
  unfold output14371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14371_skip : Flapjack.WordAlloc.isSkip output14371 = false := by
  rw [output14371_def]
  conv => lhs; cbv
  try rfl
theorem node14371_eq : Flapjack.WordAlloc.removeDeadStructural input14371 value5949 value1 value2 = (output14371, value6896, value1) := by
  rw [input14371_def, output14371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11891_eq]
  try dsimp only
  rw [node14370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14371 input11890)).val
theorem input14372_def : input14372 = (.seq input14371 input11890) := by
  unfold input14372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14371 output11890)).val
theorem output14372_def : output14372 = (.seq output14371 output11890) := by
  unfold output14372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14372_skip : Flapjack.WordAlloc.isSkip output14372 = false := by
  rw [output14372_def]
  conv => lhs; cbv
  try rfl
theorem node14372_eq : Flapjack.WordAlloc.removeDeadStructural input14372 value5 value1 value2 = (output14372, value6896, value1) := by
  rw [input14372_def, output14372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11890_eq]
  try dsimp only
  rw [node14371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14372 input11887)).val
theorem input14373_def : input14373 = (.seq input14372 input11887) := by
  unfold input14373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14372 output11887)).val
theorem output14373_def : output14373 = (.seq output14372 output11887) := by
  unfold output14373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14373_skip : Flapjack.WordAlloc.isSkip output14373 = false := by
  rw [output14373_def]
  conv => lhs; cbv
  try rfl
theorem node14373_eq : Flapjack.WordAlloc.removeDeadStructural input14373 value5943 value1 value2 = (output14373, value6896, value1) := by
  rw [input14373_def, output14373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11887_eq]
  try dsimp only
  rw [node14372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14373 input11878)).val
theorem input14374_def : input14374 = (.seq input14373 input11878) := by
  unfold input14374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14373)).val
theorem output14374_def : output14374 = (output14373) := by
  unfold output14374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14374_skip : Flapjack.WordAlloc.isSkip output14374 = false := by
  rw [output14374_def]
  conv => lhs; cbv
  try rfl
theorem node14374_eq : Flapjack.WordAlloc.removeDeadStructural input14374 value5943 value1 value2 = (output14374, value6896, value1) := by
  rw [input14374_def, output14374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11878_eq]
  try dsimp only
  rw [node14373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14374 input11877)).val
theorem input14375_def : input14375 = (.seq input14374 input11877) := by
  unfold input14375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14374 output11877)).val
theorem output14375_def : output14375 = (.seq output14374 output11877) := by
  unfold output14375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14375_skip : Flapjack.WordAlloc.isSkip output14375 = false := by
  rw [output14375_def]
  conv => lhs; cbv
  try rfl
theorem node14375_eq : Flapjack.WordAlloc.removeDeadStructural input14375 value5942 value1 value2 = (output14375, value6896, value1) := by
  rw [input14375_def, output14375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11877_eq]
  try dsimp only
  rw [node14374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14375 input11876)).val
theorem input14376_def : input14376 = (.seq input14375 input11876) := by
  unfold input14376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14375 output11876)).val
theorem output14376_def : output14376 = (.seq output14375 output11876) := by
  unfold output14376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14376_skip : Flapjack.WordAlloc.isSkip output14376 = false := by
  rw [output14376_def]
  conv => lhs; cbv
  try rfl
theorem node14376_eq : Flapjack.WordAlloc.removeDeadStructural input14376 value5 value1 value2 = (output14376, value6896, value1) := by
  rw [input14376_def, output14376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11876_eq]
  try dsimp only
  rw [node14375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14376 input11873)).val
theorem input14377_def : input14377 = (.seq input14376 input11873) := by
  unfold input14377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14376 output11873)).val
theorem output14377_def : output14377 = (.seq output14376 output11873) := by
  unfold output14377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14377_skip : Flapjack.WordAlloc.isSkip output14377 = false := by
  rw [output14377_def]
  conv => lhs; cbv
  try rfl
theorem node14377_eq : Flapjack.WordAlloc.removeDeadStructural input14377 value5936 value1 value2 = (output14377, value6896, value1) := by
  rw [input14377_def, output14377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11873_eq]
  try dsimp only
  rw [node14376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14377 input11864)).val
theorem input14378_def : input14378 = (.seq input14377 input11864) := by
  unfold input14378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14377)).val
theorem output14378_def : output14378 = (output14377) := by
  unfold output14378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14378_skip : Flapjack.WordAlloc.isSkip output14378 = false := by
  rw [output14378_def]
  conv => lhs; cbv
  try rfl
theorem node14378_eq : Flapjack.WordAlloc.removeDeadStructural input14378 value5936 value1 value2 = (output14378, value6896, value1) := by
  rw [input14378_def, output14378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11864_eq]
  try dsimp only
  rw [node14377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14378 input11863)).val
theorem input14379_def : input14379 = (.seq input14378 input11863) := by
  unfold input14379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14378 output11863)).val
theorem output14379_def : output14379 = (.seq output14378 output11863) := by
  unfold output14379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14379_skip : Flapjack.WordAlloc.isSkip output14379 = false := by
  rw [output14379_def]
  conv => lhs; cbv
  try rfl
theorem node14379_eq : Flapjack.WordAlloc.removeDeadStructural input14379 value5935 value1 value2 = (output14379, value6896, value1) := by
  rw [input14379_def, output14379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11863_eq]
  try dsimp only
  rw [node14378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14379 input11862)).val
theorem input14380_def : input14380 = (.seq input14379 input11862) := by
  unfold input14380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14379 output11862)).val
theorem output14380_def : output14380 = (.seq output14379 output11862) := by
  unfold output14380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14380_skip : Flapjack.WordAlloc.isSkip output14380 = false := by
  rw [output14380_def]
  conv => lhs; cbv
  try rfl
theorem node14380_eq : Flapjack.WordAlloc.removeDeadStructural input14380 value5 value1 value2 = (output14380, value6896, value1) := by
  rw [input14380_def, output14380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11862_eq]
  try dsimp only
  rw [node14379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14380 input11859)).val
theorem input14381_def : input14381 = (.seq input14380 input11859) := by
  unfold input14381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14380 output11859)).val
theorem output14381_def : output14381 = (.seq output14380 output11859) := by
  unfold output14381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14381_skip : Flapjack.WordAlloc.isSkip output14381 = false := by
  rw [output14381_def]
  conv => lhs; cbv
  try rfl
theorem node14381_eq : Flapjack.WordAlloc.removeDeadStructural input14381 value5929 value1 value2 = (output14381, value6896, value1) := by
  rw [input14381_def, output14381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11859_eq]
  try dsimp only
  rw [node14380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14381 input11850)).val
theorem input14382_def : input14382 = (.seq input14381 input11850) := by
  unfold input14382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14381)).val
theorem output14382_def : output14382 = (output14381) := by
  unfold output14382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14382_skip : Flapjack.WordAlloc.isSkip output14382 = false := by
  rw [output14382_def]
  conv => lhs; cbv
  try rfl
theorem node14382_eq : Flapjack.WordAlloc.removeDeadStructural input14382 value5929 value1 value2 = (output14382, value6896, value1) := by
  rw [input14382_def, output14382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11850_eq]
  try dsimp only
  rw [node14381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14382 input11849)).val
theorem input14383_def : input14383 = (.seq input14382 input11849) := by
  unfold input14383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14382 output11849)).val
theorem output14383_def : output14383 = (.seq output14382 output11849) := by
  unfold output14383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14383_skip : Flapjack.WordAlloc.isSkip output14383 = false := by
  rw [output14383_def]
  conv => lhs; cbv
  try rfl
theorem node14383_eq : Flapjack.WordAlloc.removeDeadStructural input14383 value5928 value1 value2 = (output14383, value6896, value1) := by
  rw [input14383_def, output14383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11849_eq]
  try dsimp only
  rw [node14382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14383 input11848)).val
theorem input14384_def : input14384 = (.seq input14383 input11848) := by
  unfold input14384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14383 output11848)).val
theorem output14384_def : output14384 = (.seq output14383 output11848) := by
  unfold output14384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14384_skip : Flapjack.WordAlloc.isSkip output14384 = false := by
  rw [output14384_def]
  conv => lhs; cbv
  try rfl
theorem node14384_eq : Flapjack.WordAlloc.removeDeadStructural input14384 value5 value1 value2 = (output14384, value6896, value1) := by
  rw [input14384_def, output14384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11848_eq]
  try dsimp only
  rw [node14383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14384 input11845)).val
theorem input14385_def : input14385 = (.seq input14384 input11845) := by
  unfold input14385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14384 output11845)).val
theorem output14385_def : output14385 = (.seq output14384 output11845) := by
  unfold output14385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14385_skip : Flapjack.WordAlloc.isSkip output14385 = false := by
  rw [output14385_def]
  conv => lhs; cbv
  try rfl
theorem node14385_eq : Flapjack.WordAlloc.removeDeadStructural input14385 value5922 value1 value2 = (output14385, value6896, value1) := by
  rw [input14385_def, output14385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11845_eq]
  try dsimp only
  rw [node14384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14385 input11836)).val
theorem input14386_def : input14386 = (.seq input14385 input11836) := by
  unfold input14386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14385)).val
theorem output14386_def : output14386 = (output14385) := by
  unfold output14386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14386_skip : Flapjack.WordAlloc.isSkip output14386 = false := by
  rw [output14386_def]
  conv => lhs; cbv
  try rfl
theorem node14386_eq : Flapjack.WordAlloc.removeDeadStructural input14386 value5922 value1 value2 = (output14386, value6896, value1) := by
  rw [input14386_def, output14386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11836_eq]
  try dsimp only
  rw [node14385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14386 input11835)).val
theorem input14387_def : input14387 = (.seq input14386 input11835) := by
  unfold input14387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14386 output11835)).val
theorem output14387_def : output14387 = (.seq output14386 output11835) := by
  unfold output14387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14387_skip : Flapjack.WordAlloc.isSkip output14387 = false := by
  rw [output14387_def]
  conv => lhs; cbv
  try rfl
theorem node14387_eq : Flapjack.WordAlloc.removeDeadStructural input14387 value5921 value1 value2 = (output14387, value6896, value1) := by
  rw [input14387_def, output14387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11835_eq]
  try dsimp only
  rw [node14386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14387 input11834)).val
theorem input14388_def : input14388 = (.seq input14387 input11834) := by
  unfold input14388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14387 output11834)).val
theorem output14388_def : output14388 = (.seq output14387 output11834) := by
  unfold output14388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14388_skip : Flapjack.WordAlloc.isSkip output14388 = false := by
  rw [output14388_def]
  conv => lhs; cbv
  try rfl
theorem node14388_eq : Flapjack.WordAlloc.removeDeadStructural input14388 value5 value1 value2 = (output14388, value6896, value1) := by
  rw [input14388_def, output14388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11834_eq]
  try dsimp only
  rw [node14387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14388 input11831)).val
theorem input14389_def : input14389 = (.seq input14388 input11831) := by
  unfold input14389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14388 output11831)).val
theorem output14389_def : output14389 = (.seq output14388 output11831) := by
  unfold output14389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14389_skip : Flapjack.WordAlloc.isSkip output14389 = false := by
  rw [output14389_def]
  conv => lhs; cbv
  try rfl
theorem node14389_eq : Flapjack.WordAlloc.removeDeadStructural input14389 value5915 value1 value2 = (output14389, value6896, value1) := by
  rw [input14389_def, output14389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11831_eq]
  try dsimp only
  rw [node14388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14389 input11822)).val
theorem input14390_def : input14390 = (.seq input14389 input11822) := by
  unfold input14390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14389)).val
theorem output14390_def : output14390 = (output14389) := by
  unfold output14390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14390_skip : Flapjack.WordAlloc.isSkip output14390 = false := by
  rw [output14390_def]
  conv => lhs; cbv
  try rfl
theorem node14390_eq : Flapjack.WordAlloc.removeDeadStructural input14390 value5915 value1 value2 = (output14390, value6896, value1) := by
  rw [input14390_def, output14390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11822_eq]
  try dsimp only
  rw [node14389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14390 input11821)).val
theorem input14391_def : input14391 = (.seq input14390 input11821) := by
  unfold input14391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14390 output11821)).val
theorem output14391_def : output14391 = (.seq output14390 output11821) := by
  unfold output14391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14391_skip : Flapjack.WordAlloc.isSkip output14391 = false := by
  rw [output14391_def]
  conv => lhs; cbv
  try rfl
theorem node14391_eq : Flapjack.WordAlloc.removeDeadStructural input14391 value5914 value1 value2 = (output14391, value6896, value1) := by
  rw [input14391_def, output14391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11821_eq]
  try dsimp only
  rw [node14390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14391 input11820)).val
theorem input14392_def : input14392 = (.seq input14391 input11820) := by
  unfold input14392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14391 output11820)).val
theorem output14392_def : output14392 = (.seq output14391 output11820) := by
  unfold output14392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14392_skip : Flapjack.WordAlloc.isSkip output14392 = false := by
  rw [output14392_def]
  conv => lhs; cbv
  try rfl
theorem node14392_eq : Flapjack.WordAlloc.removeDeadStructural input14392 value5 value1 value2 = (output14392, value6896, value1) := by
  rw [input14392_def, output14392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11820_eq]
  try dsimp only
  rw [node14391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14392 input11817)).val
theorem input14393_def : input14393 = (.seq input14392 input11817) := by
  unfold input14393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14392 output11817)).val
theorem output14393_def : output14393 = (.seq output14392 output11817) := by
  unfold output14393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14393_skip : Flapjack.WordAlloc.isSkip output14393 = false := by
  rw [output14393_def]
  conv => lhs; cbv
  try rfl
theorem node14393_eq : Flapjack.WordAlloc.removeDeadStructural input14393 value5908 value1 value2 = (output14393, value6896, value1) := by
  rw [input14393_def, output14393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11817_eq]
  try dsimp only
  rw [node14392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14393 input11808)).val
theorem input14394_def : input14394 = (.seq input14393 input11808) := by
  unfold input14394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14393)).val
theorem output14394_def : output14394 = (output14393) := by
  unfold output14394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14394_skip : Flapjack.WordAlloc.isSkip output14394 = false := by
  rw [output14394_def]
  conv => lhs; cbv
  try rfl
theorem node14394_eq : Flapjack.WordAlloc.removeDeadStructural input14394 value5908 value1 value2 = (output14394, value6896, value1) := by
  rw [input14394_def, output14394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11808_eq]
  try dsimp only
  rw [node14393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14394 input11807)).val
theorem input14395_def : input14395 = (.seq input14394 input11807) := by
  unfold input14395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14394 output11807)).val
theorem output14395_def : output14395 = (.seq output14394 output11807) := by
  unfold output14395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14395_skip : Flapjack.WordAlloc.isSkip output14395 = false := by
  rw [output14395_def]
  conv => lhs; cbv
  try rfl
theorem node14395_eq : Flapjack.WordAlloc.removeDeadStructural input14395 value5907 value1 value2 = (output14395, value6896, value1) := by
  rw [input14395_def, output14395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11807_eq]
  try dsimp only
  rw [node14394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14395 input11806)).val
theorem input14396_def : input14396 = (.seq input14395 input11806) := by
  unfold input14396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14395 output11806)).val
theorem output14396_def : output14396 = (.seq output14395 output11806) := by
  unfold output14396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14396_skip : Flapjack.WordAlloc.isSkip output14396 = false := by
  rw [output14396_def]
  conv => lhs; cbv
  try rfl
theorem node14396_eq : Flapjack.WordAlloc.removeDeadStructural input14396 value5 value1 value2 = (output14396, value6896, value1) := by
  rw [input14396_def, output14396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11806_eq]
  try dsimp only
  rw [node14395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14396 input11803)).val
theorem input14397_def : input14397 = (.seq input14396 input11803) := by
  unfold input14397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14396 output11803)).val
theorem output14397_def : output14397 = (.seq output14396 output11803) := by
  unfold output14397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14397_skip : Flapjack.WordAlloc.isSkip output14397 = false := by
  rw [output14397_def]
  conv => lhs; cbv
  try rfl
theorem node14397_eq : Flapjack.WordAlloc.removeDeadStructural input14397 value5901 value1 value2 = (output14397, value6896, value1) := by
  rw [input14397_def, output14397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11803_eq]
  try dsimp only
  rw [node14396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14397 input11794)).val
theorem input14398_def : input14398 = (.seq input14397 input11794) := by
  unfold input14398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14397)).val
theorem output14398_def : output14398 = (output14397) := by
  unfold output14398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14398_skip : Flapjack.WordAlloc.isSkip output14398 = false := by
  rw [output14398_def]
  conv => lhs; cbv
  try rfl
theorem node14398_eq : Flapjack.WordAlloc.removeDeadStructural input14398 value5901 value1 value2 = (output14398, value6896, value1) := by
  rw [input14398_def, output14398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11794_eq]
  try dsimp only
  rw [node14397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14398 input11793)).val
theorem input14399_def : input14399 = (.seq input14398 input11793) := by
  unfold input14399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14398 output11793)).val
theorem output14399_def : output14399 = (.seq output14398 output11793) := by
  unfold output14399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14399_skip : Flapjack.WordAlloc.isSkip output14399 = false := by
  rw [output14399_def]
  conv => lhs; cbv
  try rfl
theorem node14399_eq : Flapjack.WordAlloc.removeDeadStructural input14399 value5900 value1 value2 = (output14399, value6896, value1) := by
  rw [input14399_def, output14399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11793_eq]
  try dsimp only
  rw [node14398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14399 input11792)).val
theorem input14400_def : input14400 = (.seq input14399 input11792) := by
  unfold input14400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14399 output11792)).val
theorem output14400_def : output14400 = (.seq output14399 output11792) := by
  unfold output14400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14400_skip : Flapjack.WordAlloc.isSkip output14400 = false := by
  rw [output14400_def]
  conv => lhs; cbv
  try rfl
theorem node14400_eq : Flapjack.WordAlloc.removeDeadStructural input14400 value5 value1 value2 = (output14400, value6896, value1) := by
  rw [input14400_def, output14400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11792_eq]
  try dsimp only
  rw [node14399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14400 input11789)).val
theorem input14401_def : input14401 = (.seq input14400 input11789) := by
  unfold input14401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14400 output11789)).val
theorem output14401_def : output14401 = (.seq output14400 output11789) := by
  unfold output14401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14401_skip : Flapjack.WordAlloc.isSkip output14401 = false := by
  rw [output14401_def]
  conv => lhs; cbv
  try rfl
theorem node14401_eq : Flapjack.WordAlloc.removeDeadStructural input14401 value5894 value1 value2 = (output14401, value6896, value1) := by
  rw [input14401_def, output14401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11789_eq]
  try dsimp only
  rw [node14400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14401 input11780)).val
theorem input14402_def : input14402 = (.seq input14401 input11780) := by
  unfold input14402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14401)).val
theorem output14402_def : output14402 = (output14401) := by
  unfold output14402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14402_skip : Flapjack.WordAlloc.isSkip output14402 = false := by
  rw [output14402_def]
  conv => lhs; cbv
  try rfl
theorem node14402_eq : Flapjack.WordAlloc.removeDeadStructural input14402 value5894 value1 value2 = (output14402, value6896, value1) := by
  rw [input14402_def, output14402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11780_eq]
  try dsimp only
  rw [node14401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14402 input11779)).val
theorem input14403_def : input14403 = (.seq input14402 input11779) := by
  unfold input14403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14402 output11779)).val
theorem output14403_def : output14403 = (.seq output14402 output11779) := by
  unfold output14403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14403_skip : Flapjack.WordAlloc.isSkip output14403 = false := by
  rw [output14403_def]
  conv => lhs; cbv
  try rfl
theorem node14403_eq : Flapjack.WordAlloc.removeDeadStructural input14403 value5893 value1 value2 = (output14403, value6896, value1) := by
  rw [input14403_def, output14403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11779_eq]
  try dsimp only
  rw [node14402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14403 input11778)).val
theorem input14404_def : input14404 = (.seq input14403 input11778) := by
  unfold input14404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14403 output11778)).val
theorem output14404_def : output14404 = (.seq output14403 output11778) := by
  unfold output14404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14404_skip : Flapjack.WordAlloc.isSkip output14404 = false := by
  rw [output14404_def]
  conv => lhs; cbv
  try rfl
theorem node14404_eq : Flapjack.WordAlloc.removeDeadStructural input14404 value5 value1 value2 = (output14404, value6896, value1) := by
  rw [input14404_def, output14404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11778_eq]
  try dsimp only
  rw [node14403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14404 input11775)).val
theorem input14405_def : input14405 = (.seq input14404 input11775) := by
  unfold input14405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14404 output11775)).val
theorem output14405_def : output14405 = (.seq output14404 output11775) := by
  unfold output14405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14405_skip : Flapjack.WordAlloc.isSkip output14405 = false := by
  rw [output14405_def]
  conv => lhs; cbv
  try rfl
theorem node14405_eq : Flapjack.WordAlloc.removeDeadStructural input14405 value5887 value1 value2 = (output14405, value6896, value1) := by
  rw [input14405_def, output14405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11775_eq]
  try dsimp only
  rw [node14404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14405 input11766)).val
theorem input14406_def : input14406 = (.seq input14405 input11766) := by
  unfold input14406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14405)).val
theorem output14406_def : output14406 = (output14405) := by
  unfold output14406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14406_skip : Flapjack.WordAlloc.isSkip output14406 = false := by
  rw [output14406_def]
  conv => lhs; cbv
  try rfl
theorem node14406_eq : Flapjack.WordAlloc.removeDeadStructural input14406 value5887 value1 value2 = (output14406, value6896, value1) := by
  rw [input14406_def, output14406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11766_eq]
  try dsimp only
  rw [node14405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14406 input11765)).val
theorem input14407_def : input14407 = (.seq input14406 input11765) := by
  unfold input14407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14406 output11765)).val
theorem output14407_def : output14407 = (.seq output14406 output11765) := by
  unfold output14407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14407_skip : Flapjack.WordAlloc.isSkip output14407 = false := by
  rw [output14407_def]
  conv => lhs; cbv
  try rfl
theorem node14407_eq : Flapjack.WordAlloc.removeDeadStructural input14407 value5886 value1 value2 = (output14407, value6896, value1) := by
  rw [input14407_def, output14407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11765_eq]
  try dsimp only
  rw [node14406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14407 input11764)).val
theorem input14408_def : input14408 = (.seq input14407 input11764) := by
  unfold input14408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14407 output11764)).val
theorem output14408_def : output14408 = (.seq output14407 output11764) := by
  unfold output14408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14408_skip : Flapjack.WordAlloc.isSkip output14408 = false := by
  rw [output14408_def]
  conv => lhs; cbv
  try rfl
theorem node14408_eq : Flapjack.WordAlloc.removeDeadStructural input14408 value5 value1 value2 = (output14408, value6896, value1) := by
  rw [input14408_def, output14408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11764_eq]
  try dsimp only
  rw [node14407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14408 input11761)).val
theorem input14409_def : input14409 = (.seq input14408 input11761) := by
  unfold input14409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14408 output11761)).val
theorem output14409_def : output14409 = (.seq output14408 output11761) := by
  unfold output14409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14409_skip : Flapjack.WordAlloc.isSkip output14409 = false := by
  rw [output14409_def]
  conv => lhs; cbv
  try rfl
theorem node14409_eq : Flapjack.WordAlloc.removeDeadStructural input14409 value5880 value1 value2 = (output14409, value6896, value1) := by
  rw [input14409_def, output14409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11761_eq]
  try dsimp only
  rw [node14408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14409 input11752)).val
theorem input14410_def : input14410 = (.seq input14409 input11752) := by
  unfold input14410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14409)).val
theorem output14410_def : output14410 = (output14409) := by
  unfold output14410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14410_skip : Flapjack.WordAlloc.isSkip output14410 = false := by
  rw [output14410_def]
  conv => lhs; cbv
  try rfl
theorem node14410_eq : Flapjack.WordAlloc.removeDeadStructural input14410 value5880 value1 value2 = (output14410, value6896, value1) := by
  rw [input14410_def, output14410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11752_eq]
  try dsimp only
  rw [node14409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14410 input11751)).val
theorem input14411_def : input14411 = (.seq input14410 input11751) := by
  unfold input14411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14410 output11751)).val
theorem output14411_def : output14411 = (.seq output14410 output11751) := by
  unfold output14411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14411_skip : Flapjack.WordAlloc.isSkip output14411 = false := by
  rw [output14411_def]
  conv => lhs; cbv
  try rfl
theorem node14411_eq : Flapjack.WordAlloc.removeDeadStructural input14411 value5879 value1 value2 = (output14411, value6896, value1) := by
  rw [input14411_def, output14411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11751_eq]
  try dsimp only
  rw [node14410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14411 input11750)).val
theorem input14412_def : input14412 = (.seq input14411 input11750) := by
  unfold input14412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14411 output11750)).val
theorem output14412_def : output14412 = (.seq output14411 output11750) := by
  unfold output14412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14412_skip : Flapjack.WordAlloc.isSkip output14412 = false := by
  rw [output14412_def]
  conv => lhs; cbv
  try rfl
theorem node14412_eq : Flapjack.WordAlloc.removeDeadStructural input14412 value5 value1 value2 = (output14412, value6896, value1) := by
  rw [input14412_def, output14412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11750_eq]
  try dsimp only
  rw [node14411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14412 input11747)).val
theorem input14413_def : input14413 = (.seq input14412 input11747) := by
  unfold input14413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14412 output11747)).val
theorem output14413_def : output14413 = (.seq output14412 output11747) := by
  unfold output14413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14413_skip : Flapjack.WordAlloc.isSkip output14413 = false := by
  rw [output14413_def]
  conv => lhs; cbv
  try rfl
theorem node14413_eq : Flapjack.WordAlloc.removeDeadStructural input14413 value5873 value1 value2 = (output14413, value6896, value1) := by
  rw [input14413_def, output14413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11747_eq]
  try dsimp only
  rw [node14412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14413 input11738)).val
theorem input14414_def : input14414 = (.seq input14413 input11738) := by
  unfold input14414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14413)).val
theorem output14414_def : output14414 = (output14413) := by
  unfold output14414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14414_skip : Flapjack.WordAlloc.isSkip output14414 = false := by
  rw [output14414_def]
  conv => lhs; cbv
  try rfl
theorem node14414_eq : Flapjack.WordAlloc.removeDeadStructural input14414 value5873 value1 value2 = (output14414, value6896, value1) := by
  rw [input14414_def, output14414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11738_eq]
  try dsimp only
  rw [node14413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14414 input11737)).val
theorem input14415_def : input14415 = (.seq input14414 input11737) := by
  unfold input14415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14414 output11737)).val
theorem output14415_def : output14415 = (.seq output14414 output11737) := by
  unfold output14415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14415_skip : Flapjack.WordAlloc.isSkip output14415 = false := by
  rw [output14415_def]
  conv => lhs; cbv
  try rfl
theorem node14415_eq : Flapjack.WordAlloc.removeDeadStructural input14415 value5872 value1 value2 = (output14415, value6896, value1) := by
  rw [input14415_def, output14415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11737_eq]
  try dsimp only
  rw [node14414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14415 input11736)).val
theorem input14416_def : input14416 = (.seq input14415 input11736) := by
  unfold input14416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14415 output11736)).val
theorem output14416_def : output14416 = (.seq output14415 output11736) := by
  unfold output14416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14416_skip : Flapjack.WordAlloc.isSkip output14416 = false := by
  rw [output14416_def]
  conv => lhs; cbv
  try rfl
theorem node14416_eq : Flapjack.WordAlloc.removeDeadStructural input14416 value5 value1 value2 = (output14416, value6896, value1) := by
  rw [input14416_def, output14416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11736_eq]
  try dsimp only
  rw [node14415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14416 input11733)).val
theorem input14417_def : input14417 = (.seq input14416 input11733) := by
  unfold input14417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14416 output11733)).val
theorem output14417_def : output14417 = (.seq output14416 output11733) := by
  unfold output14417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14417_skip : Flapjack.WordAlloc.isSkip output14417 = false := by
  rw [output14417_def]
  conv => lhs; cbv
  try rfl
theorem node14417_eq : Flapjack.WordAlloc.removeDeadStructural input14417 value5866 value1 value2 = (output14417, value6896, value1) := by
  rw [input14417_def, output14417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11733_eq]
  try dsimp only
  rw [node14416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14417 input11724)).val
theorem input14418_def : input14418 = (.seq input14417 input11724) := by
  unfold input14418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14417)).val
theorem output14418_def : output14418 = (output14417) := by
  unfold output14418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14418_skip : Flapjack.WordAlloc.isSkip output14418 = false := by
  rw [output14418_def]
  conv => lhs; cbv
  try rfl
theorem node14418_eq : Flapjack.WordAlloc.removeDeadStructural input14418 value5866 value1 value2 = (output14418, value6896, value1) := by
  rw [input14418_def, output14418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11724_eq]
  try dsimp only
  rw [node14417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14418 input11723)).val
theorem input14419_def : input14419 = (.seq input14418 input11723) := by
  unfold input14419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14418 output11723)).val
theorem output14419_def : output14419 = (.seq output14418 output11723) := by
  unfold output14419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14419_skip : Flapjack.WordAlloc.isSkip output14419 = false := by
  rw [output14419_def]
  conv => lhs; cbv
  try rfl
theorem node14419_eq : Flapjack.WordAlloc.removeDeadStructural input14419 value5865 value1 value2 = (output14419, value6896, value1) := by
  rw [input14419_def, output14419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11723_eq]
  try dsimp only
  rw [node14418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14419 input11722)).val
theorem input14420_def : input14420 = (.seq input14419 input11722) := by
  unfold input14420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14419 output11722)).val
theorem output14420_def : output14420 = (.seq output14419 output11722) := by
  unfold output14420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14420_skip : Flapjack.WordAlloc.isSkip output14420 = false := by
  rw [output14420_def]
  conv => lhs; cbv
  try rfl
theorem node14420_eq : Flapjack.WordAlloc.removeDeadStructural input14420 value5 value1 value2 = (output14420, value6896, value1) := by
  rw [input14420_def, output14420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11722_eq]
  try dsimp only
  rw [node14419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14420 input11719)).val
theorem input14421_def : input14421 = (.seq input14420 input11719) := by
  unfold input14421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14420 output11719)).val
theorem output14421_def : output14421 = (.seq output14420 output11719) := by
  unfold output14421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14421_skip : Flapjack.WordAlloc.isSkip output14421 = false := by
  rw [output14421_def]
  conv => lhs; cbv
  try rfl
theorem node14421_eq : Flapjack.WordAlloc.removeDeadStructural input14421 value5859 value1 value2 = (output14421, value6896, value1) := by
  rw [input14421_def, output14421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11719_eq]
  try dsimp only
  rw [node14420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14421 input11710)).val
theorem input14422_def : input14422 = (.seq input14421 input11710) := by
  unfold input14422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14421)).val
theorem output14422_def : output14422 = (output14421) := by
  unfold output14422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14422_skip : Flapjack.WordAlloc.isSkip output14422 = false := by
  rw [output14422_def]
  conv => lhs; cbv
  try rfl
theorem node14422_eq : Flapjack.WordAlloc.removeDeadStructural input14422 value5859 value1 value2 = (output14422, value6896, value1) := by
  rw [input14422_def, output14422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11710_eq]
  try dsimp only
  rw [node14421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14422 input11709)).val
theorem input14423_def : input14423 = (.seq input14422 input11709) := by
  unfold input14423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14422 output11709)).val
theorem output14423_def : output14423 = (.seq output14422 output11709) := by
  unfold output14423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14423_skip : Flapjack.WordAlloc.isSkip output14423 = false := by
  rw [output14423_def]
  conv => lhs; cbv
  try rfl
theorem node14423_eq : Flapjack.WordAlloc.removeDeadStructural input14423 value5858 value1 value2 = (output14423, value6896, value1) := by
  rw [input14423_def, output14423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11709_eq]
  try dsimp only
  rw [node14422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14423 input11708)).val
theorem input14424_def : input14424 = (.seq input14423 input11708) := by
  unfold input14424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14423 output11708)).val
theorem output14424_def : output14424 = (.seq output14423 output11708) := by
  unfold output14424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14424_skip : Flapjack.WordAlloc.isSkip output14424 = false := by
  rw [output14424_def]
  conv => lhs; cbv
  try rfl
theorem node14424_eq : Flapjack.WordAlloc.removeDeadStructural input14424 value5 value1 value2 = (output14424, value6896, value1) := by
  rw [input14424_def, output14424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11708_eq]
  try dsimp only
  rw [node14423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14424 input11705)).val
theorem input14425_def : input14425 = (.seq input14424 input11705) := by
  unfold input14425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14424 output11705)).val
theorem output14425_def : output14425 = (.seq output14424 output11705) := by
  unfold output14425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14425_skip : Flapjack.WordAlloc.isSkip output14425 = false := by
  rw [output14425_def]
  conv => lhs; cbv
  try rfl
theorem node14425_eq : Flapjack.WordAlloc.removeDeadStructural input14425 value5852 value1 value2 = (output14425, value6896, value1) := by
  rw [input14425_def, output14425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11705_eq]
  try dsimp only
  rw [node14424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14425 input11696)).val
theorem input14426_def : input14426 = (.seq input14425 input11696) := by
  unfold input14426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14425)).val
theorem output14426_def : output14426 = (output14425) := by
  unfold output14426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14426_skip : Flapjack.WordAlloc.isSkip output14426 = false := by
  rw [output14426_def]
  conv => lhs; cbv
  try rfl
theorem node14426_eq : Flapjack.WordAlloc.removeDeadStructural input14426 value5852 value1 value2 = (output14426, value6896, value1) := by
  rw [input14426_def, output14426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11696_eq]
  try dsimp only
  rw [node14425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14426 input11695)).val
theorem input14427_def : input14427 = (.seq input14426 input11695) := by
  unfold input14427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14426 output11695)).val
theorem output14427_def : output14427 = (.seq output14426 output11695) := by
  unfold output14427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14427_skip : Flapjack.WordAlloc.isSkip output14427 = false := by
  rw [output14427_def]
  conv => lhs; cbv
  try rfl
theorem node14427_eq : Flapjack.WordAlloc.removeDeadStructural input14427 value5851 value1 value2 = (output14427, value6896, value1) := by
  rw [input14427_def, output14427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11695_eq]
  try dsimp only
  rw [node14426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14427 input11694)).val
theorem input14428_def : input14428 = (.seq input14427 input11694) := by
  unfold input14428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14427 output11694)).val
theorem output14428_def : output14428 = (.seq output14427 output11694) := by
  unfold output14428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14428_skip : Flapjack.WordAlloc.isSkip output14428 = false := by
  rw [output14428_def]
  conv => lhs; cbv
  try rfl
theorem node14428_eq : Flapjack.WordAlloc.removeDeadStructural input14428 value5 value1 value2 = (output14428, value6896, value1) := by
  rw [input14428_def, output14428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11694_eq]
  try dsimp only
  rw [node14427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14428 input11691)).val
theorem input14429_def : input14429 = (.seq input14428 input11691) := by
  unfold input14429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14428 output11691)).val
theorem output14429_def : output14429 = (.seq output14428 output11691) := by
  unfold output14429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14429_skip : Flapjack.WordAlloc.isSkip output14429 = false := by
  rw [output14429_def]
  conv => lhs; cbv
  try rfl
theorem node14429_eq : Flapjack.WordAlloc.removeDeadStructural input14429 value5845 value1 value2 = (output14429, value6896, value1) := by
  rw [input14429_def, output14429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11691_eq]
  try dsimp only
  rw [node14428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14429 input11682)).val
theorem input14430_def : input14430 = (.seq input14429 input11682) := by
  unfold input14430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14429)).val
theorem output14430_def : output14430 = (output14429) := by
  unfold output14430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14430_skip : Flapjack.WordAlloc.isSkip output14430 = false := by
  rw [output14430_def]
  conv => lhs; cbv
  try rfl
theorem node14430_eq : Flapjack.WordAlloc.removeDeadStructural input14430 value5845 value1 value2 = (output14430, value6896, value1) := by
  rw [input14430_def, output14430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11682_eq]
  try dsimp only
  rw [node14429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14430 input11681)).val
theorem input14431_def : input14431 = (.seq input14430 input11681) := by
  unfold input14431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14430 output11681)).val
theorem output14431_def : output14431 = (.seq output14430 output11681) := by
  unfold output14431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14431_skip : Flapjack.WordAlloc.isSkip output14431 = false := by
  rw [output14431_def]
  conv => lhs; cbv
  try rfl
theorem node14431_eq : Flapjack.WordAlloc.removeDeadStructural input14431 value5844 value1 value2 = (output14431, value6896, value1) := by
  rw [input14431_def, output14431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11681_eq]
  try dsimp only
  rw [node14430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14431 input11680)).val
theorem input14432_def : input14432 = (.seq input14431 input11680) := by
  unfold input14432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14431 output11680)).val
theorem output14432_def : output14432 = (.seq output14431 output11680) := by
  unfold output14432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14432_skip : Flapjack.WordAlloc.isSkip output14432 = false := by
  rw [output14432_def]
  conv => lhs; cbv
  try rfl
theorem node14432_eq : Flapjack.WordAlloc.removeDeadStructural input14432 value5 value1 value2 = (output14432, value6896, value1) := by
  rw [input14432_def, output14432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11680_eq]
  try dsimp only
  rw [node14431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14432 input11677)).val
theorem input14433_def : input14433 = (.seq input14432 input11677) := by
  unfold input14433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14432 output11677)).val
theorem output14433_def : output14433 = (.seq output14432 output11677) := by
  unfold output14433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14433_skip : Flapjack.WordAlloc.isSkip output14433 = false := by
  rw [output14433_def]
  conv => lhs; cbv
  try rfl
theorem node14433_eq : Flapjack.WordAlloc.removeDeadStructural input14433 value5838 value1 value2 = (output14433, value6896, value1) := by
  rw [input14433_def, output14433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11677_eq]
  try dsimp only
  rw [node14432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14433 input11668)).val
theorem input14434_def : input14434 = (.seq input14433 input11668) := by
  unfold input14434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14433)).val
theorem output14434_def : output14434 = (output14433) := by
  unfold output14434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14434_skip : Flapjack.WordAlloc.isSkip output14434 = false := by
  rw [output14434_def]
  conv => lhs; cbv
  try rfl
theorem node14434_eq : Flapjack.WordAlloc.removeDeadStructural input14434 value5838 value1 value2 = (output14434, value6896, value1) := by
  rw [input14434_def, output14434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11668_eq]
  try dsimp only
  rw [node14433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14434 input11667)).val
theorem input14435_def : input14435 = (.seq input14434 input11667) := by
  unfold input14435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14434 output11667)).val
theorem output14435_def : output14435 = (.seq output14434 output11667) := by
  unfold output14435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14435_skip : Flapjack.WordAlloc.isSkip output14435 = false := by
  rw [output14435_def]
  conv => lhs; cbv
  try rfl
theorem node14435_eq : Flapjack.WordAlloc.removeDeadStructural input14435 value5837 value1 value2 = (output14435, value6896, value1) := by
  rw [input14435_def, output14435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11667_eq]
  try dsimp only
  rw [node14434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14435 input11666)).val
theorem input14436_def : input14436 = (.seq input14435 input11666) := by
  unfold input14436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14435 output11666)).val
theorem output14436_def : output14436 = (.seq output14435 output11666) := by
  unfold output14436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14436_skip : Flapjack.WordAlloc.isSkip output14436 = false := by
  rw [output14436_def]
  conv => lhs; cbv
  try rfl
theorem node14436_eq : Flapjack.WordAlloc.removeDeadStructural input14436 value5 value1 value2 = (output14436, value6896, value1) := by
  rw [input14436_def, output14436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11666_eq]
  try dsimp only
  rw [node14435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14436 input11663)).val
theorem input14437_def : input14437 = (.seq input14436 input11663) := by
  unfold input14437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14436 output11663)).val
theorem output14437_def : output14437 = (.seq output14436 output11663) := by
  unfold output14437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14437_skip : Flapjack.WordAlloc.isSkip output14437 = false := by
  rw [output14437_def]
  conv => lhs; cbv
  try rfl
theorem node14437_eq : Flapjack.WordAlloc.removeDeadStructural input14437 value5831 value1 value2 = (output14437, value6896, value1) := by
  rw [input14437_def, output14437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11663_eq]
  try dsimp only
  rw [node14436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14437 input11654)).val
theorem input14438_def : input14438 = (.seq input14437 input11654) := by
  unfold input14438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14437)).val
theorem output14438_def : output14438 = (output14437) := by
  unfold output14438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14438_skip : Flapjack.WordAlloc.isSkip output14438 = false := by
  rw [output14438_def]
  conv => lhs; cbv
  try rfl
theorem node14438_eq : Flapjack.WordAlloc.removeDeadStructural input14438 value5831 value1 value2 = (output14438, value6896, value1) := by
  rw [input14438_def, output14438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11654_eq]
  try dsimp only
  rw [node14437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14438 input11653)).val
theorem input14439_def : input14439 = (.seq input14438 input11653) := by
  unfold input14439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14438 output11653)).val
theorem output14439_def : output14439 = (.seq output14438 output11653) := by
  unfold output14439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14439_skip : Flapjack.WordAlloc.isSkip output14439 = false := by
  rw [output14439_def]
  conv => lhs; cbv
  try rfl
theorem node14439_eq : Flapjack.WordAlloc.removeDeadStructural input14439 value5830 value1 value2 = (output14439, value6896, value1) := by
  rw [input14439_def, output14439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11653_eq]
  try dsimp only
  rw [node14438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14439 input11652)).val
theorem input14440_def : input14440 = (.seq input14439 input11652) := by
  unfold input14440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14439 output11652)).val
theorem output14440_def : output14440 = (.seq output14439 output11652) := by
  unfold output14440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14440_skip : Flapjack.WordAlloc.isSkip output14440 = false := by
  rw [output14440_def]
  conv => lhs; cbv
  try rfl
theorem node14440_eq : Flapjack.WordAlloc.removeDeadStructural input14440 value5 value1 value2 = (output14440, value6896, value1) := by
  rw [input14440_def, output14440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11652_eq]
  try dsimp only
  rw [node14439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14440 input11649)).val
theorem input14441_def : input14441 = (.seq input14440 input11649) := by
  unfold input14441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14440 output11649)).val
theorem output14441_def : output14441 = (.seq output14440 output11649) := by
  unfold output14441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14441_skip : Flapjack.WordAlloc.isSkip output14441 = false := by
  rw [output14441_def]
  conv => lhs; cbv
  try rfl
theorem node14441_eq : Flapjack.WordAlloc.removeDeadStructural input14441 value5824 value1 value2 = (output14441, value6896, value1) := by
  rw [input14441_def, output14441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11649_eq]
  try dsimp only
  rw [node14440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14441 input11640)).val
theorem input14442_def : input14442 = (.seq input14441 input11640) := by
  unfold input14442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14441)).val
theorem output14442_def : output14442 = (output14441) := by
  unfold output14442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14442_skip : Flapjack.WordAlloc.isSkip output14442 = false := by
  rw [output14442_def]
  conv => lhs; cbv
  try rfl
theorem node14442_eq : Flapjack.WordAlloc.removeDeadStructural input14442 value5824 value1 value2 = (output14442, value6896, value1) := by
  rw [input14442_def, output14442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11640_eq]
  try dsimp only
  rw [node14441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14442 input11639)).val
theorem input14443_def : input14443 = (.seq input14442 input11639) := by
  unfold input14443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14442 output11639)).val
theorem output14443_def : output14443 = (.seq output14442 output11639) := by
  unfold output14443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14443_skip : Flapjack.WordAlloc.isSkip output14443 = false := by
  rw [output14443_def]
  conv => lhs; cbv
  try rfl
theorem node14443_eq : Flapjack.WordAlloc.removeDeadStructural input14443 value5823 value1 value2 = (output14443, value6896, value1) := by
  rw [input14443_def, output14443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11639_eq]
  try dsimp only
  rw [node14442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14443 input11638)).val
theorem input14444_def : input14444 = (.seq input14443 input11638) := by
  unfold input14444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14443 output11638)).val
theorem output14444_def : output14444 = (.seq output14443 output11638) := by
  unfold output14444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14444_skip : Flapjack.WordAlloc.isSkip output14444 = false := by
  rw [output14444_def]
  conv => lhs; cbv
  try rfl
theorem node14444_eq : Flapjack.WordAlloc.removeDeadStructural input14444 value5 value1 value2 = (output14444, value6896, value1) := by
  rw [input14444_def, output14444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11638_eq]
  try dsimp only
  rw [node14443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14444 input11635)).val
theorem input14445_def : input14445 = (.seq input14444 input11635) := by
  unfold input14445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14444 output11635)).val
theorem output14445_def : output14445 = (.seq output14444 output11635) := by
  unfold output14445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14445_skip : Flapjack.WordAlloc.isSkip output14445 = false := by
  rw [output14445_def]
  conv => lhs; cbv
  try rfl
theorem node14445_eq : Flapjack.WordAlloc.removeDeadStructural input14445 value5817 value1 value2 = (output14445, value6896, value1) := by
  rw [input14445_def, output14445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11635_eq]
  try dsimp only
  rw [node14444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14445 input11626)).val
theorem input14446_def : input14446 = (.seq input14445 input11626) := by
  unfold input14446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14445)).val
theorem output14446_def : output14446 = (output14445) := by
  unfold output14446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14446_skip : Flapjack.WordAlloc.isSkip output14446 = false := by
  rw [output14446_def]
  conv => lhs; cbv
  try rfl
theorem node14446_eq : Flapjack.WordAlloc.removeDeadStructural input14446 value5817 value1 value2 = (output14446, value6896, value1) := by
  rw [input14446_def, output14446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11626_eq]
  try dsimp only
  rw [node14445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14446 input11625)).val
theorem input14447_def : input14447 = (.seq input14446 input11625) := by
  unfold input14447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14446 output11625)).val
theorem output14447_def : output14447 = (.seq output14446 output11625) := by
  unfold output14447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14447_skip : Flapjack.WordAlloc.isSkip output14447 = false := by
  rw [output14447_def]
  conv => lhs; cbv
  try rfl
theorem node14447_eq : Flapjack.WordAlloc.removeDeadStructural input14447 value5816 value1 value2 = (output14447, value6896, value1) := by
  rw [input14447_def, output14447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11625_eq]
  try dsimp only
  rw [node14446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14447 input11624)).val
theorem input14448_def : input14448 = (.seq input14447 input11624) := by
  unfold input14448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14447 output11624)).val
theorem output14448_def : output14448 = (.seq output14447 output11624) := by
  unfold output14448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14448_skip : Flapjack.WordAlloc.isSkip output14448 = false := by
  rw [output14448_def]
  conv => lhs; cbv
  try rfl
theorem node14448_eq : Flapjack.WordAlloc.removeDeadStructural input14448 value5 value1 value2 = (output14448, value6896, value1) := by
  rw [input14448_def, output14448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11624_eq]
  try dsimp only
  rw [node14447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14448 input11621)).val
theorem input14449_def : input14449 = (.seq input14448 input11621) := by
  unfold input14449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14448 output11621)).val
theorem output14449_def : output14449 = (.seq output14448 output11621) := by
  unfold output14449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14449_skip : Flapjack.WordAlloc.isSkip output14449 = false := by
  rw [output14449_def]
  conv => lhs; cbv
  try rfl
theorem node14449_eq : Flapjack.WordAlloc.removeDeadStructural input14449 value5810 value1 value2 = (output14449, value6896, value1) := by
  rw [input14449_def, output14449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11621_eq]
  try dsimp only
  rw [node14448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14449 input11612)).val
theorem input14450_def : input14450 = (.seq input14449 input11612) := by
  unfold input14450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14449)).val
theorem output14450_def : output14450 = (output14449) := by
  unfold output14450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14450_skip : Flapjack.WordAlloc.isSkip output14450 = false := by
  rw [output14450_def]
  conv => lhs; cbv
  try rfl
theorem node14450_eq : Flapjack.WordAlloc.removeDeadStructural input14450 value5810 value1 value2 = (output14450, value6896, value1) := by
  rw [input14450_def, output14450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11612_eq]
  try dsimp only
  rw [node14449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14450 input11611)).val
theorem input14451_def : input14451 = (.seq input14450 input11611) := by
  unfold input14451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14450 output11611)).val
theorem output14451_def : output14451 = (.seq output14450 output11611) := by
  unfold output14451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14451_skip : Flapjack.WordAlloc.isSkip output14451 = false := by
  rw [output14451_def]
  conv => lhs; cbv
  try rfl
theorem node14451_eq : Flapjack.WordAlloc.removeDeadStructural input14451 value5809 value1 value2 = (output14451, value6896, value1) := by
  rw [input14451_def, output14451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11611_eq]
  try dsimp only
  rw [node14450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14451 input11610)).val
theorem input14452_def : input14452 = (.seq input14451 input11610) := by
  unfold input14452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14451 output11610)).val
theorem output14452_def : output14452 = (.seq output14451 output11610) := by
  unfold output14452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14452_skip : Flapjack.WordAlloc.isSkip output14452 = false := by
  rw [output14452_def]
  conv => lhs; cbv
  try rfl
theorem node14452_eq : Flapjack.WordAlloc.removeDeadStructural input14452 value5 value1 value2 = (output14452, value6896, value1) := by
  rw [input14452_def, output14452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11610_eq]
  try dsimp only
  rw [node14451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14452 input11607)).val
theorem input14453_def : input14453 = (.seq input14452 input11607) := by
  unfold input14453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14452 output11607)).val
theorem output14453_def : output14453 = (.seq output14452 output11607) := by
  unfold output14453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14453_skip : Flapjack.WordAlloc.isSkip output14453 = false := by
  rw [output14453_def]
  conv => lhs; cbv
  try rfl
theorem node14453_eq : Flapjack.WordAlloc.removeDeadStructural input14453 value5803 value1 value2 = (output14453, value6896, value1) := by
  rw [input14453_def, output14453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11607_eq]
  try dsimp only
  rw [node14452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14453 input11598)).val
theorem input14454_def : input14454 = (.seq input14453 input11598) := by
  unfold input14454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14453)).val
theorem output14454_def : output14454 = (output14453) := by
  unfold output14454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14454_skip : Flapjack.WordAlloc.isSkip output14454 = false := by
  rw [output14454_def]
  conv => lhs; cbv
  try rfl
theorem node14454_eq : Flapjack.WordAlloc.removeDeadStructural input14454 value5803 value1 value2 = (output14454, value6896, value1) := by
  rw [input14454_def, output14454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11598_eq]
  try dsimp only
  rw [node14453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14454 input11597)).val
theorem input14455_def : input14455 = (.seq input14454 input11597) := by
  unfold input14455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14454 output11597)).val
theorem output14455_def : output14455 = (.seq output14454 output11597) := by
  unfold output14455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14455_skip : Flapjack.WordAlloc.isSkip output14455 = false := by
  rw [output14455_def]
  conv => lhs; cbv
  try rfl
theorem node14455_eq : Flapjack.WordAlloc.removeDeadStructural input14455 value5802 value1 value2 = (output14455, value6896, value1) := by
  rw [input14455_def, output14455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11597_eq]
  try dsimp only
  rw [node14454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14455 input11596)).val
theorem input14456_def : input14456 = (.seq input14455 input11596) := by
  unfold input14456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14455 output11596)).val
theorem output14456_def : output14456 = (.seq output14455 output11596) := by
  unfold output14456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14456_skip : Flapjack.WordAlloc.isSkip output14456 = false := by
  rw [output14456_def]
  conv => lhs; cbv
  try rfl
theorem node14456_eq : Flapjack.WordAlloc.removeDeadStructural input14456 value5 value1 value2 = (output14456, value6896, value1) := by
  rw [input14456_def, output14456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11596_eq]
  try dsimp only
  rw [node14455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14456 input11593)).val
theorem input14457_def : input14457 = (.seq input14456 input11593) := by
  unfold input14457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14456 output11593)).val
theorem output14457_def : output14457 = (.seq output14456 output11593) := by
  unfold output14457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14457_skip : Flapjack.WordAlloc.isSkip output14457 = false := by
  rw [output14457_def]
  conv => lhs; cbv
  try rfl
theorem node14457_eq : Flapjack.WordAlloc.removeDeadStructural input14457 value5796 value1 value2 = (output14457, value6896, value1) := by
  rw [input14457_def, output14457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11593_eq]
  try dsimp only
  rw [node14456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14457 input11584)).val
theorem input14458_def : input14458 = (.seq input14457 input11584) := by
  unfold input14458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14457)).val
theorem output14458_def : output14458 = (output14457) := by
  unfold output14458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14458_skip : Flapjack.WordAlloc.isSkip output14458 = false := by
  rw [output14458_def]
  conv => lhs; cbv
  try rfl
theorem node14458_eq : Flapjack.WordAlloc.removeDeadStructural input14458 value5796 value1 value2 = (output14458, value6896, value1) := by
  rw [input14458_def, output14458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11584_eq]
  try dsimp only
  rw [node14457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14458 input11583)).val
theorem input14459_def : input14459 = (.seq input14458 input11583) := by
  unfold input14459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14458 output11583)).val
theorem output14459_def : output14459 = (.seq output14458 output11583) := by
  unfold output14459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14459_skip : Flapjack.WordAlloc.isSkip output14459 = false := by
  rw [output14459_def]
  conv => lhs; cbv
  try rfl
theorem node14459_eq : Flapjack.WordAlloc.removeDeadStructural input14459 value5795 value1 value2 = (output14459, value6896, value1) := by
  rw [input14459_def, output14459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11583_eq]
  try dsimp only
  rw [node14458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14459 input11582)).val
theorem input14460_def : input14460 = (.seq input14459 input11582) := by
  unfold input14460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14459 output11582)).val
theorem output14460_def : output14460 = (.seq output14459 output11582) := by
  unfold output14460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14460_skip : Flapjack.WordAlloc.isSkip output14460 = false := by
  rw [output14460_def]
  conv => lhs; cbv
  try rfl
theorem node14460_eq : Flapjack.WordAlloc.removeDeadStructural input14460 value5 value1 value2 = (output14460, value6896, value1) := by
  rw [input14460_def, output14460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11582_eq]
  try dsimp only
  rw [node14459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14460 input11579)).val
theorem input14461_def : input14461 = (.seq input14460 input11579) := by
  unfold input14461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14460 output11579)).val
theorem output14461_def : output14461 = (.seq output14460 output11579) := by
  unfold output14461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14461_skip : Flapjack.WordAlloc.isSkip output14461 = false := by
  rw [output14461_def]
  conv => lhs; cbv
  try rfl
theorem node14461_eq : Flapjack.WordAlloc.removeDeadStructural input14461 value5789 value1 value2 = (output14461, value6896, value1) := by
  rw [input14461_def, output14461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11579_eq]
  try dsimp only
  rw [node14460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14461 input11570)).val
theorem input14462_def : input14462 = (.seq input14461 input11570) := by
  unfold input14462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14461)).val
theorem output14462_def : output14462 = (output14461) := by
  unfold output14462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14462_skip : Flapjack.WordAlloc.isSkip output14462 = false := by
  rw [output14462_def]
  conv => lhs; cbv
  try rfl
theorem node14462_eq : Flapjack.WordAlloc.removeDeadStructural input14462 value5789 value1 value2 = (output14462, value6896, value1) := by
  rw [input14462_def, output14462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11570_eq]
  try dsimp only
  rw [node14461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14462 input11569)).val
theorem input14463_def : input14463 = (.seq input14462 input11569) := by
  unfold input14463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14462 output11569)).val
theorem output14463_def : output14463 = (.seq output14462 output11569) := by
  unfold output14463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14463_skip : Flapjack.WordAlloc.isSkip output14463 = false := by
  rw [output14463_def]
  conv => lhs; cbv
  try rfl
theorem node14463_eq : Flapjack.WordAlloc.removeDeadStructural input14463 value5788 value1 value2 = (output14463, value6896, value1) := by
  rw [input14463_def, output14463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11569_eq]
  try dsimp only
  rw [node14462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14463 input11568)).val
theorem input14464_def : input14464 = (.seq input14463 input11568) := by
  unfold input14464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14463 output11568)).val
theorem output14464_def : output14464 = (.seq output14463 output11568) := by
  unfold output14464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14464_skip : Flapjack.WordAlloc.isSkip output14464 = false := by
  rw [output14464_def]
  conv => lhs; cbv
  try rfl
theorem node14464_eq : Flapjack.WordAlloc.removeDeadStructural input14464 value5 value1 value2 = (output14464, value6896, value1) := by
  rw [input14464_def, output14464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11568_eq]
  try dsimp only
  rw [node14463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14464 input11565)).val
theorem input14465_def : input14465 = (.seq input14464 input11565) := by
  unfold input14465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14464 output11565)).val
theorem output14465_def : output14465 = (.seq output14464 output11565) := by
  unfold output14465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14465_skip : Flapjack.WordAlloc.isSkip output14465 = false := by
  rw [output14465_def]
  conv => lhs; cbv
  try rfl
theorem node14465_eq : Flapjack.WordAlloc.removeDeadStructural input14465 value5782 value1 value2 = (output14465, value6896, value1) := by
  rw [input14465_def, output14465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11565_eq]
  try dsimp only
  rw [node14464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14465 input11556)).val
theorem input14466_def : input14466 = (.seq input14465 input11556) := by
  unfold input14466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14465)).val
theorem output14466_def : output14466 = (output14465) := by
  unfold output14466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14466_skip : Flapjack.WordAlloc.isSkip output14466 = false := by
  rw [output14466_def]
  conv => lhs; cbv
  try rfl
theorem node14466_eq : Flapjack.WordAlloc.removeDeadStructural input14466 value5782 value1 value2 = (output14466, value6896, value1) := by
  rw [input14466_def, output14466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11556_eq]
  try dsimp only
  rw [node14465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14466 input11555)).val
theorem input14467_def : input14467 = (.seq input14466 input11555) := by
  unfold input14467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14466 output11555)).val
theorem output14467_def : output14467 = (.seq output14466 output11555) := by
  unfold output14467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14467_skip : Flapjack.WordAlloc.isSkip output14467 = false := by
  rw [output14467_def]
  conv => lhs; cbv
  try rfl
theorem node14467_eq : Flapjack.WordAlloc.removeDeadStructural input14467 value5781 value1 value2 = (output14467, value6896, value1) := by
  rw [input14467_def, output14467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11555_eq]
  try dsimp only
  rw [node14466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14467 input11554)).val
theorem input14468_def : input14468 = (.seq input14467 input11554) := by
  unfold input14468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14467 output11554)).val
theorem output14468_def : output14468 = (.seq output14467 output11554) := by
  unfold output14468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14468_skip : Flapjack.WordAlloc.isSkip output14468 = false := by
  rw [output14468_def]
  conv => lhs; cbv
  try rfl
theorem node14468_eq : Flapjack.WordAlloc.removeDeadStructural input14468 value5 value1 value2 = (output14468, value6896, value1) := by
  rw [input14468_def, output14468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11554_eq]
  try dsimp only
  rw [node14467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14468 input11551)).val
theorem input14469_def : input14469 = (.seq input14468 input11551) := by
  unfold input14469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14468 output11551)).val
theorem output14469_def : output14469 = (.seq output14468 output11551) := by
  unfold output14469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14469_skip : Flapjack.WordAlloc.isSkip output14469 = false := by
  rw [output14469_def]
  conv => lhs; cbv
  try rfl
theorem node14469_eq : Flapjack.WordAlloc.removeDeadStructural input14469 value5775 value1 value2 = (output14469, value6896, value1) := by
  rw [input14469_def, output14469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11551_eq]
  try dsimp only
  rw [node14468_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14469 input11542)).val
theorem input14470_def : input14470 = (.seq input14469 input11542) := by
  unfold input14470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14469)).val
theorem output14470_def : output14470 = (output14469) := by
  unfold output14470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14470_skip : Flapjack.WordAlloc.isSkip output14470 = false := by
  rw [output14470_def]
  conv => lhs; cbv
  try rfl
theorem node14470_eq : Flapjack.WordAlloc.removeDeadStructural input14470 value5775 value1 value2 = (output14470, value6896, value1) := by
  rw [input14470_def, output14470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11542_eq]
  try dsimp only
  rw [node14469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14470 input11541)).val
theorem input14471_def : input14471 = (.seq input14470 input11541) := by
  unfold input14471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14470 output11541)).val
theorem output14471_def : output14471 = (.seq output14470 output11541) := by
  unfold output14471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14471_skip : Flapjack.WordAlloc.isSkip output14471 = false := by
  rw [output14471_def]
  conv => lhs; cbv
  try rfl
theorem node14471_eq : Flapjack.WordAlloc.removeDeadStructural input14471 value5774 value1 value2 = (output14471, value6896, value1) := by
  rw [input14471_def, output14471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11541_eq]
  try dsimp only
  rw [node14470_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14471 input11540)).val
theorem input14472_def : input14472 = (.seq input14471 input11540) := by
  unfold input14472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14471 output11540)).val
theorem output14472_def : output14472 = (.seq output14471 output11540) := by
  unfold output14472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14472_skip : Flapjack.WordAlloc.isSkip output14472 = false := by
  rw [output14472_def]
  conv => lhs; cbv
  try rfl
theorem node14472_eq : Flapjack.WordAlloc.removeDeadStructural input14472 value5 value1 value2 = (output14472, value6896, value1) := by
  rw [input14472_def, output14472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11540_eq]
  try dsimp only
  rw [node14471_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14472 input11537)).val
theorem input14473_def : input14473 = (.seq input14472 input11537) := by
  unfold input14473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14472 output11537)).val
theorem output14473_def : output14473 = (.seq output14472 output11537) := by
  unfold output14473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14473_skip : Flapjack.WordAlloc.isSkip output14473 = false := by
  rw [output14473_def]
  conv => lhs; cbv
  try rfl
theorem node14473_eq : Flapjack.WordAlloc.removeDeadStructural input14473 value5768 value1 value2 = (output14473, value6896, value1) := by
  rw [input14473_def, output14473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11537_eq]
  try dsimp only
  rw [node14472_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14473 input11528)).val
theorem input14474_def : input14474 = (.seq input14473 input11528) := by
  unfold input14474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14473)).val
theorem output14474_def : output14474 = (output14473) := by
  unfold output14474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14474_skip : Flapjack.WordAlloc.isSkip output14474 = false := by
  rw [output14474_def]
  conv => lhs; cbv
  try rfl
theorem node14474_eq : Flapjack.WordAlloc.removeDeadStructural input14474 value5768 value1 value2 = (output14474, value6896, value1) := by
  rw [input14474_def, output14474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11528_eq]
  try dsimp only
  rw [node14473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14474 input11527)).val
theorem input14475_def : input14475 = (.seq input14474 input11527) := by
  unfold input14475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14474 output11527)).val
theorem output14475_def : output14475 = (.seq output14474 output11527) := by
  unfold output14475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14475_skip : Flapjack.WordAlloc.isSkip output14475 = false := by
  rw [output14475_def]
  conv => lhs; cbv
  try rfl
theorem node14475_eq : Flapjack.WordAlloc.removeDeadStructural input14475 value5767 value1 value2 = (output14475, value6896, value1) := by
  rw [input14475_def, output14475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11527_eq]
  try dsimp only
  rw [node14474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14475 input11526)).val
theorem input14476_def : input14476 = (.seq input14475 input11526) := by
  unfold input14476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14475 output11526)).val
theorem output14476_def : output14476 = (.seq output14475 output11526) := by
  unfold output14476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14476_skip : Flapjack.WordAlloc.isSkip output14476 = false := by
  rw [output14476_def]
  conv => lhs; cbv
  try rfl
theorem node14476_eq : Flapjack.WordAlloc.removeDeadStructural input14476 value5 value1 value2 = (output14476, value6896, value1) := by
  rw [input14476_def, output14476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11526_eq]
  try dsimp only
  rw [node14475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14476 input11523)).val
theorem input14477_def : input14477 = (.seq input14476 input11523) := by
  unfold input14477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14476 output11523)).val
theorem output14477_def : output14477 = (.seq output14476 output11523) := by
  unfold output14477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14477_skip : Flapjack.WordAlloc.isSkip output14477 = false := by
  rw [output14477_def]
  conv => lhs; cbv
  try rfl
theorem node14477_eq : Flapjack.WordAlloc.removeDeadStructural input14477 value5761 value1 value2 = (output14477, value6896, value1) := by
  rw [input14477_def, output14477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11523_eq]
  try dsimp only
  rw [node14476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14477 input11514)).val
theorem input14478_def : input14478 = (.seq input14477 input11514) := by
  unfold input14478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14477)).val
theorem output14478_def : output14478 = (output14477) := by
  unfold output14478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14478_skip : Flapjack.WordAlloc.isSkip output14478 = false := by
  rw [output14478_def]
  conv => lhs; cbv
  try rfl
theorem node14478_eq : Flapjack.WordAlloc.removeDeadStructural input14478 value5761 value1 value2 = (output14478, value6896, value1) := by
  rw [input14478_def, output14478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11514_eq]
  try dsimp only
  rw [node14477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14478 input11513)).val
theorem input14479_def : input14479 = (.seq input14478 input11513) := by
  unfold input14479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14478 output11513)).val
theorem output14479_def : output14479 = (.seq output14478 output11513) := by
  unfold output14479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14479_skip : Flapjack.WordAlloc.isSkip output14479 = false := by
  rw [output14479_def]
  conv => lhs; cbv
  try rfl
theorem node14479_eq : Flapjack.WordAlloc.removeDeadStructural input14479 value5760 value1 value2 = (output14479, value6896, value1) := by
  rw [input14479_def, output14479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11513_eq]
  try dsimp only
  rw [node14478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14479 input11512)).val
theorem input14480_def : input14480 = (.seq input14479 input11512) := by
  unfold input14480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14479 output11512)).val
theorem output14480_def : output14480 = (.seq output14479 output11512) := by
  unfold output14480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14480_skip : Flapjack.WordAlloc.isSkip output14480 = false := by
  rw [output14480_def]
  conv => lhs; cbv
  try rfl
theorem node14480_eq : Flapjack.WordAlloc.removeDeadStructural input14480 value5 value1 value2 = (output14480, value6896, value1) := by
  rw [input14480_def, output14480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11512_eq]
  try dsimp only
  rw [node14479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14480 input11509)).val
theorem input14481_def : input14481 = (.seq input14480 input11509) := by
  unfold input14481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14480 output11509)).val
theorem output14481_def : output14481 = (.seq output14480 output11509) := by
  unfold output14481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14481_skip : Flapjack.WordAlloc.isSkip output14481 = false := by
  rw [output14481_def]
  conv => lhs; cbv
  try rfl
theorem node14481_eq : Flapjack.WordAlloc.removeDeadStructural input14481 value5754 value1 value2 = (output14481, value6896, value1) := by
  rw [input14481_def, output14481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11509_eq]
  try dsimp only
  rw [node14480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14481 input11500)).val
theorem input14482_def : input14482 = (.seq input14481 input11500) := by
  unfold input14482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14481)).val
theorem output14482_def : output14482 = (output14481) := by
  unfold output14482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14482_skip : Flapjack.WordAlloc.isSkip output14482 = false := by
  rw [output14482_def]
  conv => lhs; cbv
  try rfl
theorem node14482_eq : Flapjack.WordAlloc.removeDeadStructural input14482 value5754 value1 value2 = (output14482, value6896, value1) := by
  rw [input14482_def, output14482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11500_eq]
  try dsimp only
  rw [node14481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14482 input11499)).val
theorem input14483_def : input14483 = (.seq input14482 input11499) := by
  unfold input14483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14482 output11499)).val
theorem output14483_def : output14483 = (.seq output14482 output11499) := by
  unfold output14483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14483_skip : Flapjack.WordAlloc.isSkip output14483 = false := by
  rw [output14483_def]
  conv => lhs; cbv
  try rfl
theorem node14483_eq : Flapjack.WordAlloc.removeDeadStructural input14483 value5753 value1 value2 = (output14483, value6896, value1) := by
  rw [input14483_def, output14483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11499_eq]
  try dsimp only
  rw [node14482_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14483 input11498)).val
theorem input14484_def : input14484 = (.seq input14483 input11498) := by
  unfold input14484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14483 output11498)).val
theorem output14484_def : output14484 = (.seq output14483 output11498) := by
  unfold output14484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14484_skip : Flapjack.WordAlloc.isSkip output14484 = false := by
  rw [output14484_def]
  conv => lhs; cbv
  try rfl
theorem node14484_eq : Flapjack.WordAlloc.removeDeadStructural input14484 value5 value1 value2 = (output14484, value6896, value1) := by
  rw [input14484_def, output14484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11498_eq]
  try dsimp only
  rw [node14483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14484 input11495)).val
theorem input14485_def : input14485 = (.seq input14484 input11495) := by
  unfold input14485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14484 output11495)).val
theorem output14485_def : output14485 = (.seq output14484 output11495) := by
  unfold output14485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14485_skip : Flapjack.WordAlloc.isSkip output14485 = false := by
  rw [output14485_def]
  conv => lhs; cbv
  try rfl
theorem node14485_eq : Flapjack.WordAlloc.removeDeadStructural input14485 value5747 value1 value2 = (output14485, value6896, value1) := by
  rw [input14485_def, output14485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11495_eq]
  try dsimp only
  rw [node14484_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14485 input11486)).val
theorem input14486_def : input14486 = (.seq input14485 input11486) := by
  unfold input14486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14485)).val
theorem output14486_def : output14486 = (output14485) := by
  unfold output14486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14486_skip : Flapjack.WordAlloc.isSkip output14486 = false := by
  rw [output14486_def]
  conv => lhs; cbv
  try rfl
theorem node14486_eq : Flapjack.WordAlloc.removeDeadStructural input14486 value5747 value1 value2 = (output14486, value6896, value1) := by
  rw [input14486_def, output14486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11486_eq]
  try dsimp only
  rw [node14485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14486 input11485)).val
theorem input14487_def : input14487 = (.seq input14486 input11485) := by
  unfold input14487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14486 output11485)).val
theorem output14487_def : output14487 = (.seq output14486 output11485) := by
  unfold output14487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14487_skip : Flapjack.WordAlloc.isSkip output14487 = false := by
  rw [output14487_def]
  conv => lhs; cbv
  try rfl
theorem node14487_eq : Flapjack.WordAlloc.removeDeadStructural input14487 value5746 value1 value2 = (output14487, value6896, value1) := by
  rw [input14487_def, output14487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11485_eq]
  try dsimp only
  rw [node14486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14487 input11484)).val
theorem input14488_def : input14488 = (.seq input14487 input11484) := by
  unfold input14488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14487 output11484)).val
theorem output14488_def : output14488 = (.seq output14487 output11484) := by
  unfold output14488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14488_skip : Flapjack.WordAlloc.isSkip output14488 = false := by
  rw [output14488_def]
  conv => lhs; cbv
  try rfl
theorem node14488_eq : Flapjack.WordAlloc.removeDeadStructural input14488 value5 value1 value2 = (output14488, value6896, value1) := by
  rw [input14488_def, output14488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11484_eq]
  try dsimp only
  rw [node14487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14488 input11481)).val
theorem input14489_def : input14489 = (.seq input14488 input11481) := by
  unfold input14489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14488 output11481)).val
theorem output14489_def : output14489 = (.seq output14488 output11481) := by
  unfold output14489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14489_skip : Flapjack.WordAlloc.isSkip output14489 = false := by
  rw [output14489_def]
  conv => lhs; cbv
  try rfl
theorem node14489_eq : Flapjack.WordAlloc.removeDeadStructural input14489 value5740 value1 value2 = (output14489, value6896, value1) := by
  rw [input14489_def, output14489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11481_eq]
  try dsimp only
  rw [node14488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14489 input11472)).val
theorem input14490_def : input14490 = (.seq input14489 input11472) := by
  unfold input14490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14489)).val
theorem output14490_def : output14490 = (output14489) := by
  unfold output14490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14490_skip : Flapjack.WordAlloc.isSkip output14490 = false := by
  rw [output14490_def]
  conv => lhs; cbv
  try rfl
theorem node14490_eq : Flapjack.WordAlloc.removeDeadStructural input14490 value5740 value1 value2 = (output14490, value6896, value1) := by
  rw [input14490_def, output14490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11472_eq]
  try dsimp only
  rw [node14489_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14490 input11471)).val
theorem input14491_def : input14491 = (.seq input14490 input11471) := by
  unfold input14491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14490 output11471)).val
theorem output14491_def : output14491 = (.seq output14490 output11471) := by
  unfold output14491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14491_skip : Flapjack.WordAlloc.isSkip output14491 = false := by
  rw [output14491_def]
  conv => lhs; cbv
  try rfl
theorem node14491_eq : Flapjack.WordAlloc.removeDeadStructural input14491 value5739 value1 value2 = (output14491, value6896, value1) := by
  rw [input14491_def, output14491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11471_eq]
  try dsimp only
  rw [node14490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14491 input11470)).val
theorem input14492_def : input14492 = (.seq input14491 input11470) := by
  unfold input14492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14491 output11470)).val
theorem output14492_def : output14492 = (.seq output14491 output11470) := by
  unfold output14492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14492_skip : Flapjack.WordAlloc.isSkip output14492 = false := by
  rw [output14492_def]
  conv => lhs; cbv
  try rfl
theorem node14492_eq : Flapjack.WordAlloc.removeDeadStructural input14492 value5 value1 value2 = (output14492, value6896, value1) := by
  rw [input14492_def, output14492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11470_eq]
  try dsimp only
  rw [node14491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14492 input11467)).val
theorem input14493_def : input14493 = (.seq input14492 input11467) := by
  unfold input14493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14492 output11467)).val
theorem output14493_def : output14493 = (.seq output14492 output11467) := by
  unfold output14493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14493_skip : Flapjack.WordAlloc.isSkip output14493 = false := by
  rw [output14493_def]
  conv => lhs; cbv
  try rfl
theorem node14493_eq : Flapjack.WordAlloc.removeDeadStructural input14493 value5733 value1 value2 = (output14493, value6896, value1) := by
  rw [input14493_def, output14493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11467_eq]
  try dsimp only
  rw [node14492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14493 input11458)).val
theorem input14494_def : input14494 = (.seq input14493 input11458) := by
  unfold input14494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14493)).val
theorem output14494_def : output14494 = (output14493) := by
  unfold output14494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14494_skip : Flapjack.WordAlloc.isSkip output14494 = false := by
  rw [output14494_def]
  conv => lhs; cbv
  try rfl
theorem node14494_eq : Flapjack.WordAlloc.removeDeadStructural input14494 value5733 value1 value2 = (output14494, value6896, value1) := by
  rw [input14494_def, output14494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11458_eq]
  try dsimp only
  rw [node14493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14494 input11457)).val
theorem input14495_def : input14495 = (.seq input14494 input11457) := by
  unfold input14495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14494 output11457)).val
theorem output14495_def : output14495 = (.seq output14494 output11457) := by
  unfold output14495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14495_skip : Flapjack.WordAlloc.isSkip output14495 = false := by
  rw [output14495_def]
  conv => lhs; cbv
  try rfl
theorem node14495_eq : Flapjack.WordAlloc.removeDeadStructural input14495 value5732 value1 value2 = (output14495, value6896, value1) := by
  rw [input14495_def, output14495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11457_eq]
  try dsimp only
  rw [node14494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14495 input11456)).val
theorem input14496_def : input14496 = (.seq input14495 input11456) := by
  unfold input14496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14495 output11456)).val
theorem output14496_def : output14496 = (.seq output14495 output11456) := by
  unfold output14496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14496_skip : Flapjack.WordAlloc.isSkip output14496 = false := by
  rw [output14496_def]
  conv => lhs; cbv
  try rfl
theorem node14496_eq : Flapjack.WordAlloc.removeDeadStructural input14496 value5 value1 value2 = (output14496, value6896, value1) := by
  rw [input14496_def, output14496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11456_eq]
  try dsimp only
  rw [node14495_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14496 input11453)).val
theorem input14497_def : input14497 = (.seq input14496 input11453) := by
  unfold input14497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14496 output11453)).val
theorem output14497_def : output14497 = (.seq output14496 output11453) := by
  unfold output14497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14497_skip : Flapjack.WordAlloc.isSkip output14497 = false := by
  rw [output14497_def]
  conv => lhs; cbv
  try rfl
theorem node14497_eq : Flapjack.WordAlloc.removeDeadStructural input14497 value5726 value1 value2 = (output14497, value6896, value1) := by
  rw [input14497_def, output14497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11453_eq]
  try dsimp only
  rw [node14496_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14497 input11444)).val
theorem input14498_def : input14498 = (.seq input14497 input11444) := by
  unfold input14498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14497)).val
theorem output14498_def : output14498 = (output14497) := by
  unfold output14498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14498_skip : Flapjack.WordAlloc.isSkip output14498 = false := by
  rw [output14498_def]
  conv => lhs; cbv
  try rfl
theorem node14498_eq : Flapjack.WordAlloc.removeDeadStructural input14498 value5726 value1 value2 = (output14498, value6896, value1) := by
  rw [input14498_def, output14498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11444_eq]
  try dsimp only
  rw [node14497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14498 input11443)).val
theorem input14499_def : input14499 = (.seq input14498 input11443) := by
  unfold input14499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14498 output11443)).val
theorem output14499_def : output14499 = (.seq output14498 output11443) := by
  unfold output14499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14499_skip : Flapjack.WordAlloc.isSkip output14499 = false := by
  rw [output14499_def]
  conv => lhs; cbv
  try rfl
theorem node14499_eq : Flapjack.WordAlloc.removeDeadStructural input14499 value5725 value1 value2 = (output14499, value6896, value1) := by
  rw [input14499_def, output14499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11443_eq]
  try dsimp only
  rw [node14498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14499 input11442)).val
theorem input14500_def : input14500 = (.seq input14499 input11442) := by
  unfold input14500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14499 output11442)).val
theorem output14500_def : output14500 = (.seq output14499 output11442) := by
  unfold output14500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14500_skip : Flapjack.WordAlloc.isSkip output14500 = false := by
  rw [output14500_def]
  conv => lhs; cbv
  try rfl
theorem node14500_eq : Flapjack.WordAlloc.removeDeadStructural input14500 value5 value1 value2 = (output14500, value6896, value1) := by
  rw [input14500_def, output14500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11442_eq]
  try dsimp only
  rw [node14499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14500 input11439)).val
theorem input14501_def : input14501 = (.seq input14500 input11439) := by
  unfold input14501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14500 output11439)).val
theorem output14501_def : output14501 = (.seq output14500 output11439) := by
  unfold output14501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14501_skip : Flapjack.WordAlloc.isSkip output14501 = false := by
  rw [output14501_def]
  conv => lhs; cbv
  try rfl
theorem node14501_eq : Flapjack.WordAlloc.removeDeadStructural input14501 value5719 value1 value2 = (output14501, value6896, value1) := by
  rw [input14501_def, output14501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11439_eq]
  try dsimp only
  rw [node14500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14501 input11430)).val
theorem input14502_def : input14502 = (.seq input14501 input11430) := by
  unfold input14502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14501)).val
theorem output14502_def : output14502 = (output14501) := by
  unfold output14502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14502_skip : Flapjack.WordAlloc.isSkip output14502 = false := by
  rw [output14502_def]
  conv => lhs; cbv
  try rfl
theorem node14502_eq : Flapjack.WordAlloc.removeDeadStructural input14502 value5719 value1 value2 = (output14502, value6896, value1) := by
  rw [input14502_def, output14502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11430_eq]
  try dsimp only
  rw [node14501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14502 input11429)).val
theorem input14503_def : input14503 = (.seq input14502 input11429) := by
  unfold input14503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14502 output11429)).val
theorem output14503_def : output14503 = (.seq output14502 output11429) := by
  unfold output14503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14503_skip : Flapjack.WordAlloc.isSkip output14503 = false := by
  rw [output14503_def]
  conv => lhs; cbv
  try rfl
theorem node14503_eq : Flapjack.WordAlloc.removeDeadStructural input14503 value5718 value1 value2 = (output14503, value6896, value1) := by
  rw [input14503_def, output14503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11429_eq]
  try dsimp only
  rw [node14502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14503 input11428)).val
theorem input14504_def : input14504 = (.seq input14503 input11428) := by
  unfold input14504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14503 output11428)).val
theorem output14504_def : output14504 = (.seq output14503 output11428) := by
  unfold output14504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14504_skip : Flapjack.WordAlloc.isSkip output14504 = false := by
  rw [output14504_def]
  conv => lhs; cbv
  try rfl
theorem node14504_eq : Flapjack.WordAlloc.removeDeadStructural input14504 value5 value1 value2 = (output14504, value6896, value1) := by
  rw [input14504_def, output14504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11428_eq]
  try dsimp only
  rw [node14503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14504 input11425)).val
theorem input14505_def : input14505 = (.seq input14504 input11425) := by
  unfold input14505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14504 output11425)).val
theorem output14505_def : output14505 = (.seq output14504 output11425) := by
  unfold output14505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14505_skip : Flapjack.WordAlloc.isSkip output14505 = false := by
  rw [output14505_def]
  conv => lhs; cbv
  try rfl
theorem node14505_eq : Flapjack.WordAlloc.removeDeadStructural input14505 value5712 value1 value2 = (output14505, value6896, value1) := by
  rw [input14505_def, output14505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11425_eq]
  try dsimp only
  rw [node14504_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14505 input11416)).val
theorem input14506_def : input14506 = (.seq input14505 input11416) := by
  unfold input14506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14505)).val
theorem output14506_def : output14506 = (output14505) := by
  unfold output14506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14506_skip : Flapjack.WordAlloc.isSkip output14506 = false := by
  rw [output14506_def]
  conv => lhs; cbv
  try rfl
theorem node14506_eq : Flapjack.WordAlloc.removeDeadStructural input14506 value5712 value1 value2 = (output14506, value6896, value1) := by
  rw [input14506_def, output14506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11416_eq]
  try dsimp only
  rw [node14505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14506 input11415)).val
theorem input14507_def : input14507 = (.seq input14506 input11415) := by
  unfold input14507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14506 output11415)).val
theorem output14507_def : output14507 = (.seq output14506 output11415) := by
  unfold output14507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14507_skip : Flapjack.WordAlloc.isSkip output14507 = false := by
  rw [output14507_def]
  conv => lhs; cbv
  try rfl
theorem node14507_eq : Flapjack.WordAlloc.removeDeadStructural input14507 value5711 value1 value2 = (output14507, value6896, value1) := by
  rw [input14507_def, output14507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11415_eq]
  try dsimp only
  rw [node14506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14507 input11414)).val
theorem input14508_def : input14508 = (.seq input14507 input11414) := by
  unfold input14508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14507 output11414)).val
theorem output14508_def : output14508 = (.seq output14507 output11414) := by
  unfold output14508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14508_skip : Flapjack.WordAlloc.isSkip output14508 = false := by
  rw [output14508_def]
  conv => lhs; cbv
  try rfl
theorem node14508_eq : Flapjack.WordAlloc.removeDeadStructural input14508 value5 value1 value2 = (output14508, value6896, value1) := by
  rw [input14508_def, output14508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11414_eq]
  try dsimp only
  rw [node14507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14508 input11411)).val
theorem input14509_def : input14509 = (.seq input14508 input11411) := by
  unfold input14509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14508 output11411)).val
theorem output14509_def : output14509 = (.seq output14508 output11411) := by
  unfold output14509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14509_skip : Flapjack.WordAlloc.isSkip output14509 = false := by
  rw [output14509_def]
  conv => lhs; cbv
  try rfl
theorem node14509_eq : Flapjack.WordAlloc.removeDeadStructural input14509 value5705 value1 value2 = (output14509, value6896, value1) := by
  rw [input14509_def, output14509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11411_eq]
  try dsimp only
  rw [node14508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14509 input11402)).val
theorem input14510_def : input14510 = (.seq input14509 input11402) := by
  unfold input14510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14509)).val
theorem output14510_def : output14510 = (output14509) := by
  unfold output14510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14510_skip : Flapjack.WordAlloc.isSkip output14510 = false := by
  rw [output14510_def]
  conv => lhs; cbv
  try rfl
theorem node14510_eq : Flapjack.WordAlloc.removeDeadStructural input14510 value5705 value1 value2 = (output14510, value6896, value1) := by
  rw [input14510_def, output14510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11402_eq]
  try dsimp only
  rw [node14509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14510 input11401)).val
theorem input14511_def : input14511 = (.seq input14510 input11401) := by
  unfold input14511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14510 output11401)).val
theorem output14511_def : output14511 = (.seq output14510 output11401) := by
  unfold output14511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14511_skip : Flapjack.WordAlloc.isSkip output14511 = false := by
  rw [output14511_def]
  conv => lhs; cbv
  try rfl
theorem node14511_eq : Flapjack.WordAlloc.removeDeadStructural input14511 value5704 value1 value2 = (output14511, value6896, value1) := by
  rw [input14511_def, output14511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11401_eq]
  try dsimp only
  rw [node14510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14511 input11400)).val
theorem input14512_def : input14512 = (.seq input14511 input11400) := by
  unfold input14512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14511 output11400)).val
theorem output14512_def : output14512 = (.seq output14511 output11400) := by
  unfold output14512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14512_skip : Flapjack.WordAlloc.isSkip output14512 = false := by
  rw [output14512_def]
  conv => lhs; cbv
  try rfl
theorem node14512_eq : Flapjack.WordAlloc.removeDeadStructural input14512 value5 value1 value2 = (output14512, value6896, value1) := by
  rw [input14512_def, output14512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11400_eq]
  try dsimp only
  rw [node14511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14512 input11397)).val
theorem input14513_def : input14513 = (.seq input14512 input11397) := by
  unfold input14513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14512 output11397)).val
theorem output14513_def : output14513 = (.seq output14512 output11397) := by
  unfold output14513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14513_skip : Flapjack.WordAlloc.isSkip output14513 = false := by
  rw [output14513_def]
  conv => lhs; cbv
  try rfl
theorem node14513_eq : Flapjack.WordAlloc.removeDeadStructural input14513 value5698 value1 value2 = (output14513, value6896, value1) := by
  rw [input14513_def, output14513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11397_eq]
  try dsimp only
  rw [node14512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14513 input11388)).val
theorem input14514_def : input14514 = (.seq input14513 input11388) := by
  unfold input14514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14513)).val
theorem output14514_def : output14514 = (output14513) := by
  unfold output14514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14514_skip : Flapjack.WordAlloc.isSkip output14514 = false := by
  rw [output14514_def]
  conv => lhs; cbv
  try rfl
theorem node14514_eq : Flapjack.WordAlloc.removeDeadStructural input14514 value5698 value1 value2 = (output14514, value6896, value1) := by
  rw [input14514_def, output14514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11388_eq]
  try dsimp only
  rw [node14513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14514 input11387)).val
theorem input14515_def : input14515 = (.seq input14514 input11387) := by
  unfold input14515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14514 output11387)).val
theorem output14515_def : output14515 = (.seq output14514 output11387) := by
  unfold output14515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14515_skip : Flapjack.WordAlloc.isSkip output14515 = false := by
  rw [output14515_def]
  conv => lhs; cbv
  try rfl
theorem node14515_eq : Flapjack.WordAlloc.removeDeadStructural input14515 value5697 value1 value2 = (output14515, value6896, value1) := by
  rw [input14515_def, output14515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11387_eq]
  try dsimp only
  rw [node14514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14515 input11386)).val
theorem input14516_def : input14516 = (.seq input14515 input11386) := by
  unfold input14516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14515 output11386)).val
theorem output14516_def : output14516 = (.seq output14515 output11386) := by
  unfold output14516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14516_skip : Flapjack.WordAlloc.isSkip output14516 = false := by
  rw [output14516_def]
  conv => lhs; cbv
  try rfl
theorem node14516_eq : Flapjack.WordAlloc.removeDeadStructural input14516 value5 value1 value2 = (output14516, value6896, value1) := by
  rw [input14516_def, output14516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11386_eq]
  try dsimp only
  rw [node14515_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14516 input11383)).val
theorem input14517_def : input14517 = (.seq input14516 input11383) := by
  unfold input14517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14516 output11383)).val
theorem output14517_def : output14517 = (.seq output14516 output11383) := by
  unfold output14517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14517_skip : Flapjack.WordAlloc.isSkip output14517 = false := by
  rw [output14517_def]
  conv => lhs; cbv
  try rfl
theorem node14517_eq : Flapjack.WordAlloc.removeDeadStructural input14517 value5691 value1 value2 = (output14517, value6896, value1) := by
  rw [input14517_def, output14517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11383_eq]
  try dsimp only
  rw [node14516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14517 input11374)).val
theorem input14518_def : input14518 = (.seq input14517 input11374) := by
  unfold input14518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14517)).val
theorem output14518_def : output14518 = (output14517) := by
  unfold output14518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14518_skip : Flapjack.WordAlloc.isSkip output14518 = false := by
  rw [output14518_def]
  conv => lhs; cbv
  try rfl
theorem node14518_eq : Flapjack.WordAlloc.removeDeadStructural input14518 value5691 value1 value2 = (output14518, value6896, value1) := by
  rw [input14518_def, output14518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11374_eq]
  try dsimp only
  rw [node14517_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14518 input11373)).val
theorem input14519_def : input14519 = (.seq input14518 input11373) := by
  unfold input14519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14518 output11373)).val
theorem output14519_def : output14519 = (.seq output14518 output11373) := by
  unfold output14519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14519_skip : Flapjack.WordAlloc.isSkip output14519 = false := by
  rw [output14519_def]
  conv => lhs; cbv
  try rfl
theorem node14519_eq : Flapjack.WordAlloc.removeDeadStructural input14519 value5690 value1 value2 = (output14519, value6896, value1) := by
  rw [input14519_def, output14519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11373_eq]
  try dsimp only
  rw [node14518_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14519 input11372)).val
theorem input14520_def : input14520 = (.seq input14519 input11372) := by
  unfold input14520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14519 output11372)).val
theorem output14520_def : output14520 = (.seq output14519 output11372) := by
  unfold output14520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14520_skip : Flapjack.WordAlloc.isSkip output14520 = false := by
  rw [output14520_def]
  conv => lhs; cbv
  try rfl
theorem node14520_eq : Flapjack.WordAlloc.removeDeadStructural input14520 value5 value1 value2 = (output14520, value6896, value1) := by
  rw [input14520_def, output14520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11372_eq]
  try dsimp only
  rw [node14519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14520 input11369)).val
theorem input14521_def : input14521 = (.seq input14520 input11369) := by
  unfold input14521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14520 output11369)).val
theorem output14521_def : output14521 = (.seq output14520 output11369) := by
  unfold output14521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14521_skip : Flapjack.WordAlloc.isSkip output14521 = false := by
  rw [output14521_def]
  conv => lhs; cbv
  try rfl
theorem node14521_eq : Flapjack.WordAlloc.removeDeadStructural input14521 value5684 value1 value2 = (output14521, value6896, value1) := by
  rw [input14521_def, output14521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11369_eq]
  try dsimp only
  rw [node14520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14521 input11360)).val
theorem input14522_def : input14522 = (.seq input14521 input11360) := by
  unfold input14522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14521)).val
theorem output14522_def : output14522 = (output14521) := by
  unfold output14522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14522_skip : Flapjack.WordAlloc.isSkip output14522 = false := by
  rw [output14522_def]
  conv => lhs; cbv
  try rfl
theorem node14522_eq : Flapjack.WordAlloc.removeDeadStructural input14522 value5684 value1 value2 = (output14522, value6896, value1) := by
  rw [input14522_def, output14522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11360_eq]
  try dsimp only
  rw [node14521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14522 input11359)).val
theorem input14523_def : input14523 = (.seq input14522 input11359) := by
  unfold input14523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14522 output11359)).val
theorem output14523_def : output14523 = (.seq output14522 output11359) := by
  unfold output14523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14523_skip : Flapjack.WordAlloc.isSkip output14523 = false := by
  rw [output14523_def]
  conv => lhs; cbv
  try rfl
theorem node14523_eq : Flapjack.WordAlloc.removeDeadStructural input14523 value5683 value1 value2 = (output14523, value6896, value1) := by
  rw [input14523_def, output14523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11359_eq]
  try dsimp only
  rw [node14522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14523 input11358)).val
theorem input14524_def : input14524 = (.seq input14523 input11358) := by
  unfold input14524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14523 output11358)).val
theorem output14524_def : output14524 = (.seq output14523 output11358) := by
  unfold output14524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14524_skip : Flapjack.WordAlloc.isSkip output14524 = false := by
  rw [output14524_def]
  conv => lhs; cbv
  try rfl
theorem node14524_eq : Flapjack.WordAlloc.removeDeadStructural input14524 value5 value1 value2 = (output14524, value6896, value1) := by
  rw [input14524_def, output14524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11358_eq]
  try dsimp only
  rw [node14523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14524 input11355)).val
theorem input14525_def : input14525 = (.seq input14524 input11355) := by
  unfold input14525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14524 output11355)).val
theorem output14525_def : output14525 = (.seq output14524 output11355) := by
  unfold output14525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14525_skip : Flapjack.WordAlloc.isSkip output14525 = false := by
  rw [output14525_def]
  conv => lhs; cbv
  try rfl
theorem node14525_eq : Flapjack.WordAlloc.removeDeadStructural input14525 value5677 value1 value2 = (output14525, value6896, value1) := by
  rw [input14525_def, output14525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11355_eq]
  try dsimp only
  rw [node14524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14525 input11346)).val
theorem input14526_def : input14526 = (.seq input14525 input11346) := by
  unfold input14526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14525)).val
theorem output14526_def : output14526 = (output14525) := by
  unfold output14526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14526_skip : Flapjack.WordAlloc.isSkip output14526 = false := by
  rw [output14526_def]
  conv => lhs; cbv
  try rfl
theorem node14526_eq : Flapjack.WordAlloc.removeDeadStructural input14526 value5677 value1 value2 = (output14526, value6896, value1) := by
  rw [input14526_def, output14526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11346_eq]
  try dsimp only
  rw [node14525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14526 input11345)).val
theorem input14527_def : input14527 = (.seq input14526 input11345) := by
  unfold input14527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14526 output11345)).val
theorem output14527_def : output14527 = (.seq output14526 output11345) := by
  unfold output14527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14527_skip : Flapjack.WordAlloc.isSkip output14527 = false := by
  rw [output14527_def]
  conv => lhs; cbv
  try rfl
theorem node14527_eq : Flapjack.WordAlloc.removeDeadStructural input14527 value5676 value1 value2 = (output14527, value6896, value1) := by
  rw [input14527_def, output14527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11345_eq]
  try dsimp only
  rw [node14526_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14527 input11344)).val
theorem input14528_def : input14528 = (.seq input14527 input11344) := by
  unfold input14528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14527 output11344)).val
theorem output14528_def : output14528 = (.seq output14527 output11344) := by
  unfold output14528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14528_skip : Flapjack.WordAlloc.isSkip output14528 = false := by
  rw [output14528_def]
  conv => lhs; cbv
  try rfl
theorem node14528_eq : Flapjack.WordAlloc.removeDeadStructural input14528 value5 value1 value2 = (output14528, value6896, value1) := by
  rw [input14528_def, output14528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11344_eq]
  try dsimp only
  rw [node14527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14528 input11341)).val
theorem input14529_def : input14529 = (.seq input14528 input11341) := by
  unfold input14529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14528 output11341)).val
theorem output14529_def : output14529 = (.seq output14528 output11341) := by
  unfold output14529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14529_skip : Flapjack.WordAlloc.isSkip output14529 = false := by
  rw [output14529_def]
  conv => lhs; cbv
  try rfl
theorem node14529_eq : Flapjack.WordAlloc.removeDeadStructural input14529 value5670 value1 value2 = (output14529, value6896, value1) := by
  rw [input14529_def, output14529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11341_eq]
  try dsimp only
  rw [node14528_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14529 input11332)).val
theorem input14530_def : input14530 = (.seq input14529 input11332) := by
  unfold input14530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14529)).val
theorem output14530_def : output14530 = (output14529) := by
  unfold output14530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14530_skip : Flapjack.WordAlloc.isSkip output14530 = false := by
  rw [output14530_def]
  conv => lhs; cbv
  try rfl
theorem node14530_eq : Flapjack.WordAlloc.removeDeadStructural input14530 value5670 value1 value2 = (output14530, value6896, value1) := by
  rw [input14530_def, output14530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11332_eq]
  try dsimp only
  rw [node14529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14530 input11331)).val
theorem input14531_def : input14531 = (.seq input14530 input11331) := by
  unfold input14531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14530 output11331)).val
theorem output14531_def : output14531 = (.seq output14530 output11331) := by
  unfold output14531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14531_skip : Flapjack.WordAlloc.isSkip output14531 = false := by
  rw [output14531_def]
  conv => lhs; cbv
  try rfl
theorem node14531_eq : Flapjack.WordAlloc.removeDeadStructural input14531 value5669 value1 value2 = (output14531, value6896, value1) := by
  rw [input14531_def, output14531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11331_eq]
  try dsimp only
  rw [node14530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14531 input11330)).val
theorem input14532_def : input14532 = (.seq input14531 input11330) := by
  unfold input14532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14531 output11330)).val
theorem output14532_def : output14532 = (.seq output14531 output11330) := by
  unfold output14532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14532_skip : Flapjack.WordAlloc.isSkip output14532 = false := by
  rw [output14532_def]
  conv => lhs; cbv
  try rfl
theorem node14532_eq : Flapjack.WordAlloc.removeDeadStructural input14532 value5 value1 value2 = (output14532, value6896, value1) := by
  rw [input14532_def, output14532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11330_eq]
  try dsimp only
  rw [node14531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14532 input11327)).val
theorem input14533_def : input14533 = (.seq input14532 input11327) := by
  unfold input14533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14532 output11327)).val
theorem output14533_def : output14533 = (.seq output14532 output11327) := by
  unfold output14533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14533_skip : Flapjack.WordAlloc.isSkip output14533 = false := by
  rw [output14533_def]
  conv => lhs; cbv
  try rfl
theorem node14533_eq : Flapjack.WordAlloc.removeDeadStructural input14533 value5663 value1 value2 = (output14533, value6896, value1) := by
  rw [input14533_def, output14533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11327_eq]
  try dsimp only
  rw [node14532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14533 input11318)).val
theorem input14534_def : input14534 = (.seq input14533 input11318) := by
  unfold input14534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14533)).val
theorem output14534_def : output14534 = (output14533) := by
  unfold output14534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14534_skip : Flapjack.WordAlloc.isSkip output14534 = false := by
  rw [output14534_def]
  conv => lhs; cbv
  try rfl
theorem node14534_eq : Flapjack.WordAlloc.removeDeadStructural input14534 value5663 value1 value2 = (output14534, value6896, value1) := by
  rw [input14534_def, output14534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11318_eq]
  try dsimp only
  rw [node14533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14534 input11317)).val
theorem input14535_def : input14535 = (.seq input14534 input11317) := by
  unfold input14535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14534 output11317)).val
theorem output14535_def : output14535 = (.seq output14534 output11317) := by
  unfold output14535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14535_skip : Flapjack.WordAlloc.isSkip output14535 = false := by
  rw [output14535_def]
  conv => lhs; cbv
  try rfl
theorem node14535_eq : Flapjack.WordAlloc.removeDeadStructural input14535 value5662 value1 value2 = (output14535, value6896, value1) := by
  rw [input14535_def, output14535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11317_eq]
  try dsimp only
  rw [node14534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14535 input11316)).val
theorem input14536_def : input14536 = (.seq input14535 input11316) := by
  unfold input14536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14535 output11316)).val
theorem output14536_def : output14536 = (.seq output14535 output11316) := by
  unfold output14536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14536_skip : Flapjack.WordAlloc.isSkip output14536 = false := by
  rw [output14536_def]
  conv => lhs; cbv
  try rfl
theorem node14536_eq : Flapjack.WordAlloc.removeDeadStructural input14536 value5 value1 value2 = (output14536, value6896, value1) := by
  rw [input14536_def, output14536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11316_eq]
  try dsimp only
  rw [node14535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14536 input11313)).val
theorem input14537_def : input14537 = (.seq input14536 input11313) := by
  unfold input14537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14536 output11313)).val
theorem output14537_def : output14537 = (.seq output14536 output11313) := by
  unfold output14537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14537_skip : Flapjack.WordAlloc.isSkip output14537 = false := by
  rw [output14537_def]
  conv => lhs; cbv
  try rfl
theorem node14537_eq : Flapjack.WordAlloc.removeDeadStructural input14537 value5656 value1 value2 = (output14537, value6896, value1) := by
  rw [input14537_def, output14537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11313_eq]
  try dsimp only
  rw [node14536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14537 input11304)).val
theorem input14538_def : input14538 = (.seq input14537 input11304) := by
  unfold input14538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14537)).val
theorem output14538_def : output14538 = (output14537) := by
  unfold output14538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14538_skip : Flapjack.WordAlloc.isSkip output14538 = false := by
  rw [output14538_def]
  conv => lhs; cbv
  try rfl
theorem node14538_eq : Flapjack.WordAlloc.removeDeadStructural input14538 value5656 value1 value2 = (output14538, value6896, value1) := by
  rw [input14538_def, output14538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11304_eq]
  try dsimp only
  rw [node14537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14538 input11303)).val
theorem input14539_def : input14539 = (.seq input14538 input11303) := by
  unfold input14539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14538 output11303)).val
theorem output14539_def : output14539 = (.seq output14538 output11303) := by
  unfold output14539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14539_skip : Flapjack.WordAlloc.isSkip output14539 = false := by
  rw [output14539_def]
  conv => lhs; cbv
  try rfl
theorem node14539_eq : Flapjack.WordAlloc.removeDeadStructural input14539 value5655 value1 value2 = (output14539, value6896, value1) := by
  rw [input14539_def, output14539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11303_eq]
  try dsimp only
  rw [node14538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14539 input11302)).val
theorem input14540_def : input14540 = (.seq input14539 input11302) := by
  unfold input14540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14539 output11302)).val
theorem output14540_def : output14540 = (.seq output14539 output11302) := by
  unfold output14540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14540_skip : Flapjack.WordAlloc.isSkip output14540 = false := by
  rw [output14540_def]
  conv => lhs; cbv
  try rfl
theorem node14540_eq : Flapjack.WordAlloc.removeDeadStructural input14540 value5 value1 value2 = (output14540, value6896, value1) := by
  rw [input14540_def, output14540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11302_eq]
  try dsimp only
  rw [node14539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14540 input11299)).val
theorem input14541_def : input14541 = (.seq input14540 input11299) := by
  unfold input14541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14540 output11299)).val
theorem output14541_def : output14541 = (.seq output14540 output11299) := by
  unfold output14541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14541_skip : Flapjack.WordAlloc.isSkip output14541 = false := by
  rw [output14541_def]
  conv => lhs; cbv
  try rfl
theorem node14541_eq : Flapjack.WordAlloc.removeDeadStructural input14541 value5649 value1 value2 = (output14541, value6896, value1) := by
  rw [input14541_def, output14541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11299_eq]
  try dsimp only
  rw [node14540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14541 input11290)).val
theorem input14542_def : input14542 = (.seq input14541 input11290) := by
  unfold input14542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14541)).val
theorem output14542_def : output14542 = (output14541) := by
  unfold output14542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14542_skip : Flapjack.WordAlloc.isSkip output14542 = false := by
  rw [output14542_def]
  conv => lhs; cbv
  try rfl
theorem node14542_eq : Flapjack.WordAlloc.removeDeadStructural input14542 value5649 value1 value2 = (output14542, value6896, value1) := by
  rw [input14542_def, output14542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11290_eq]
  try dsimp only
  rw [node14541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14542 input11289)).val
theorem input14543_def : input14543 = (.seq input14542 input11289) := by
  unfold input14543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14542 output11289)).val
theorem output14543_def : output14543 = (.seq output14542 output11289) := by
  unfold output14543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14543_skip : Flapjack.WordAlloc.isSkip output14543 = false := by
  rw [output14543_def]
  conv => lhs; cbv
  try rfl
theorem node14543_eq : Flapjack.WordAlloc.removeDeadStructural input14543 value5648 value1 value2 = (output14543, value6896, value1) := by
  rw [input14543_def, output14543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11289_eq]
  try dsimp only
  rw [node14542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14543 input11288)).val
theorem input14544_def : input14544 = (.seq input14543 input11288) := by
  unfold input14544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14543 output11288)).val
theorem output14544_def : output14544 = (.seq output14543 output11288) := by
  unfold output14544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14544_skip : Flapjack.WordAlloc.isSkip output14544 = false := by
  rw [output14544_def]
  conv => lhs; cbv
  try rfl
theorem node14544_eq : Flapjack.WordAlloc.removeDeadStructural input14544 value5 value1 value2 = (output14544, value6896, value1) := by
  rw [input14544_def, output14544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11288_eq]
  try dsimp only
  rw [node14543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14544 input11285)).val
theorem input14545_def : input14545 = (.seq input14544 input11285) := by
  unfold input14545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14544 output11285)).val
theorem output14545_def : output14545 = (.seq output14544 output11285) := by
  unfold output14545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14545_skip : Flapjack.WordAlloc.isSkip output14545 = false := by
  rw [output14545_def]
  conv => lhs; cbv
  try rfl
theorem node14545_eq : Flapjack.WordAlloc.removeDeadStructural input14545 value5642 value1 value2 = (output14545, value6896, value1) := by
  rw [input14545_def, output14545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11285_eq]
  try dsimp only
  rw [node14544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14545 input11276)).val
theorem input14546_def : input14546 = (.seq input14545 input11276) := by
  unfold input14546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14545)).val
theorem output14546_def : output14546 = (output14545) := by
  unfold output14546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14546_skip : Flapjack.WordAlloc.isSkip output14546 = false := by
  rw [output14546_def]
  conv => lhs; cbv
  try rfl
theorem node14546_eq : Flapjack.WordAlloc.removeDeadStructural input14546 value5642 value1 value2 = (output14546, value6896, value1) := by
  rw [input14546_def, output14546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11276_eq]
  try dsimp only
  rw [node14545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14546 input11275)).val
theorem input14547_def : input14547 = (.seq input14546 input11275) := by
  unfold input14547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14546 output11275)).val
theorem output14547_def : output14547 = (.seq output14546 output11275) := by
  unfold output14547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14547_skip : Flapjack.WordAlloc.isSkip output14547 = false := by
  rw [output14547_def]
  conv => lhs; cbv
  try rfl
theorem node14547_eq : Flapjack.WordAlloc.removeDeadStructural input14547 value5641 value1 value2 = (output14547, value6896, value1) := by
  rw [input14547_def, output14547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11275_eq]
  try dsimp only
  rw [node14546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14547 input11274)).val
theorem input14548_def : input14548 = (.seq input14547 input11274) := by
  unfold input14548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14547 output11274)).val
theorem output14548_def : output14548 = (.seq output14547 output11274) := by
  unfold output14548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14548_skip : Flapjack.WordAlloc.isSkip output14548 = false := by
  rw [output14548_def]
  conv => lhs; cbv
  try rfl
theorem node14548_eq : Flapjack.WordAlloc.removeDeadStructural input14548 value5 value1 value2 = (output14548, value6896, value1) := by
  rw [input14548_def, output14548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11274_eq]
  try dsimp only
  rw [node14547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14548 input11271)).val
theorem input14549_def : input14549 = (.seq input14548 input11271) := by
  unfold input14549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14548 output11271)).val
theorem output14549_def : output14549 = (.seq output14548 output11271) := by
  unfold output14549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14549_skip : Flapjack.WordAlloc.isSkip output14549 = false := by
  rw [output14549_def]
  conv => lhs; cbv
  try rfl
theorem node14549_eq : Flapjack.WordAlloc.removeDeadStructural input14549 value5635 value1 value2 = (output14549, value6896, value1) := by
  rw [input14549_def, output14549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11271_eq]
  try dsimp only
  rw [node14548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14549 input11262)).val
theorem input14550_def : input14550 = (.seq input14549 input11262) := by
  unfold input14550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14549)).val
theorem output14550_def : output14550 = (output14549) := by
  unfold output14550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14550_skip : Flapjack.WordAlloc.isSkip output14550 = false := by
  rw [output14550_def]
  conv => lhs; cbv
  try rfl
theorem node14550_eq : Flapjack.WordAlloc.removeDeadStructural input14550 value5635 value1 value2 = (output14550, value6896, value1) := by
  rw [input14550_def, output14550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11262_eq]
  try dsimp only
  rw [node14549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14550 input11261)).val
theorem input14551_def : input14551 = (.seq input14550 input11261) := by
  unfold input14551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14550 output11261)).val
theorem output14551_def : output14551 = (.seq output14550 output11261) := by
  unfold output14551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14551_skip : Flapjack.WordAlloc.isSkip output14551 = false := by
  rw [output14551_def]
  conv => lhs; cbv
  try rfl
theorem node14551_eq : Flapjack.WordAlloc.removeDeadStructural input14551 value5634 value1 value2 = (output14551, value6896, value1) := by
  rw [input14551_def, output14551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11261_eq]
  try dsimp only
  rw [node14550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14551 input11260)).val
theorem input14552_def : input14552 = (.seq input14551 input11260) := by
  unfold input14552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14551 output11260)).val
theorem output14552_def : output14552 = (.seq output14551 output11260) := by
  unfold output14552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14552_skip : Flapjack.WordAlloc.isSkip output14552 = false := by
  rw [output14552_def]
  conv => lhs; cbv
  try rfl
theorem node14552_eq : Flapjack.WordAlloc.removeDeadStructural input14552 value5 value1 value2 = (output14552, value6896, value1) := by
  rw [input14552_def, output14552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11260_eq]
  try dsimp only
  rw [node14551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14552 input11257)).val
theorem input14553_def : input14553 = (.seq input14552 input11257) := by
  unfold input14553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14552 output11257)).val
theorem output14553_def : output14553 = (.seq output14552 output11257) := by
  unfold output14553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14553_skip : Flapjack.WordAlloc.isSkip output14553 = false := by
  rw [output14553_def]
  conv => lhs; cbv
  try rfl
theorem node14553_eq : Flapjack.WordAlloc.removeDeadStructural input14553 value5628 value1 value2 = (output14553, value6896, value1) := by
  rw [input14553_def, output14553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11257_eq]
  try dsimp only
  rw [node14552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14553 input11248)).val
theorem input14554_def : input14554 = (.seq input14553 input11248) := by
  unfold input14554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14553)).val
theorem output14554_def : output14554 = (output14553) := by
  unfold output14554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14554_skip : Flapjack.WordAlloc.isSkip output14554 = false := by
  rw [output14554_def]
  conv => lhs; cbv
  try rfl
theorem node14554_eq : Flapjack.WordAlloc.removeDeadStructural input14554 value5628 value1 value2 = (output14554, value6896, value1) := by
  rw [input14554_def, output14554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11248_eq]
  try dsimp only
  rw [node14553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14554 input11247)).val
theorem input14555_def : input14555 = (.seq input14554 input11247) := by
  unfold input14555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14554 output11247)).val
theorem output14555_def : output14555 = (.seq output14554 output11247) := by
  unfold output14555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14555_skip : Flapjack.WordAlloc.isSkip output14555 = false := by
  rw [output14555_def]
  conv => lhs; cbv
  try rfl
theorem node14555_eq : Flapjack.WordAlloc.removeDeadStructural input14555 value5627 value1 value2 = (output14555, value6896, value1) := by
  rw [input14555_def, output14555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11247_eq]
  try dsimp only
  rw [node14554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14555 input11246)).val
theorem input14556_def : input14556 = (.seq input14555 input11246) := by
  unfold input14556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14555 output11246)).val
theorem output14556_def : output14556 = (.seq output14555 output11246) := by
  unfold output14556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14556_skip : Flapjack.WordAlloc.isSkip output14556 = false := by
  rw [output14556_def]
  conv => lhs; cbv
  try rfl
theorem node14556_eq : Flapjack.WordAlloc.removeDeadStructural input14556 value5 value1 value2 = (output14556, value6896, value1) := by
  rw [input14556_def, output14556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11246_eq]
  try dsimp only
  rw [node14555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14556 input11243)).val
theorem input14557_def : input14557 = (.seq input14556 input11243) := by
  unfold input14557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14556 output11243)).val
theorem output14557_def : output14557 = (.seq output14556 output11243) := by
  unfold output14557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14557_skip : Flapjack.WordAlloc.isSkip output14557 = false := by
  rw [output14557_def]
  conv => lhs; cbv
  try rfl
theorem node14557_eq : Flapjack.WordAlloc.removeDeadStructural input14557 value5621 value1 value2 = (output14557, value6896, value1) := by
  rw [input14557_def, output14557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11243_eq]
  try dsimp only
  rw [node14556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14557 input11234)).val
theorem input14558_def : input14558 = (.seq input14557 input11234) := by
  unfold input14558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14557)).val
theorem output14558_def : output14558 = (output14557) := by
  unfold output14558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14558_skip : Flapjack.WordAlloc.isSkip output14558 = false := by
  rw [output14558_def]
  conv => lhs; cbv
  try rfl
theorem node14558_eq : Flapjack.WordAlloc.removeDeadStructural input14558 value5621 value1 value2 = (output14558, value6896, value1) := by
  rw [input14558_def, output14558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11234_eq]
  try dsimp only
  rw [node14557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14558 input11233)).val
theorem input14559_def : input14559 = (.seq input14558 input11233) := by
  unfold input14559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14558 output11233)).val
theorem output14559_def : output14559 = (.seq output14558 output11233) := by
  unfold output14559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14559_skip : Flapjack.WordAlloc.isSkip output14559 = false := by
  rw [output14559_def]
  conv => lhs; cbv
  try rfl
theorem node14559_eq : Flapjack.WordAlloc.removeDeadStructural input14559 value5620 value1 value2 = (output14559, value6896, value1) := by
  rw [input14559_def, output14559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11233_eq]
  try dsimp only
  rw [node14558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14559 input11232)).val
theorem input14560_def : input14560 = (.seq input14559 input11232) := by
  unfold input14560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14559 output11232)).val
theorem output14560_def : output14560 = (.seq output14559 output11232) := by
  unfold output14560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14560_skip : Flapjack.WordAlloc.isSkip output14560 = false := by
  rw [output14560_def]
  conv => lhs; cbv
  try rfl
theorem node14560_eq : Flapjack.WordAlloc.removeDeadStructural input14560 value5 value1 value2 = (output14560, value6896, value1) := by
  rw [input14560_def, output14560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11232_eq]
  try dsimp only
  rw [node14559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14560 input11229)).val
theorem input14561_def : input14561 = (.seq input14560 input11229) := by
  unfold input14561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14560 output11229)).val
theorem output14561_def : output14561 = (.seq output14560 output11229) := by
  unfold output14561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14561_skip : Flapjack.WordAlloc.isSkip output14561 = false := by
  rw [output14561_def]
  conv => lhs; cbv
  try rfl
theorem node14561_eq : Flapjack.WordAlloc.removeDeadStructural input14561 value5614 value1 value2 = (output14561, value6896, value1) := by
  rw [input14561_def, output14561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11229_eq]
  try dsimp only
  rw [node14560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14561 input11220)).val
theorem input14562_def : input14562 = (.seq input14561 input11220) := by
  unfold input14562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14561)).val
theorem output14562_def : output14562 = (output14561) := by
  unfold output14562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14562_skip : Flapjack.WordAlloc.isSkip output14562 = false := by
  rw [output14562_def]
  conv => lhs; cbv
  try rfl
theorem node14562_eq : Flapjack.WordAlloc.removeDeadStructural input14562 value5614 value1 value2 = (output14562, value6896, value1) := by
  rw [input14562_def, output14562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11220_eq]
  try dsimp only
  rw [node14561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14562 input11219)).val
theorem input14563_def : input14563 = (.seq input14562 input11219) := by
  unfold input14563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14562 output11219)).val
theorem output14563_def : output14563 = (.seq output14562 output11219) := by
  unfold output14563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14563_skip : Flapjack.WordAlloc.isSkip output14563 = false := by
  rw [output14563_def]
  conv => lhs; cbv
  try rfl
theorem node14563_eq : Flapjack.WordAlloc.removeDeadStructural input14563 value5613 value1 value2 = (output14563, value6896, value1) := by
  rw [input14563_def, output14563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11219_eq]
  try dsimp only
  rw [node14562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14563 input11218)).val
theorem input14564_def : input14564 = (.seq input14563 input11218) := by
  unfold input14564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14563 output11218)).val
theorem output14564_def : output14564 = (.seq output14563 output11218) := by
  unfold output14564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14564_skip : Flapjack.WordAlloc.isSkip output14564 = false := by
  rw [output14564_def]
  conv => lhs; cbv
  try rfl
theorem node14564_eq : Flapjack.WordAlloc.removeDeadStructural input14564 value5 value1 value2 = (output14564, value6896, value1) := by
  rw [input14564_def, output14564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11218_eq]
  try dsimp only
  rw [node14563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14564 input11215)).val
theorem input14565_def : input14565 = (.seq input14564 input11215) := by
  unfold input14565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14564 output11215)).val
theorem output14565_def : output14565 = (.seq output14564 output11215) := by
  unfold output14565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14565_skip : Flapjack.WordAlloc.isSkip output14565 = false := by
  rw [output14565_def]
  conv => lhs; cbv
  try rfl
theorem node14565_eq : Flapjack.WordAlloc.removeDeadStructural input14565 value5607 value1 value2 = (output14565, value6896, value1) := by
  rw [input14565_def, output14565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11215_eq]
  try dsimp only
  rw [node14564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14565 input11206)).val
theorem input14566_def : input14566 = (.seq input14565 input11206) := by
  unfold input14566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14565)).val
theorem output14566_def : output14566 = (output14565) := by
  unfold output14566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14566_skip : Flapjack.WordAlloc.isSkip output14566 = false := by
  rw [output14566_def]
  conv => lhs; cbv
  try rfl
theorem node14566_eq : Flapjack.WordAlloc.removeDeadStructural input14566 value5607 value1 value2 = (output14566, value6896, value1) := by
  rw [input14566_def, output14566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11206_eq]
  try dsimp only
  rw [node14565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14566 input11205)).val
theorem input14567_def : input14567 = (.seq input14566 input11205) := by
  unfold input14567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14566 output11205)).val
theorem output14567_def : output14567 = (.seq output14566 output11205) := by
  unfold output14567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14567_skip : Flapjack.WordAlloc.isSkip output14567 = false := by
  rw [output14567_def]
  conv => lhs; cbv
  try rfl
theorem node14567_eq : Flapjack.WordAlloc.removeDeadStructural input14567 value5606 value1 value2 = (output14567, value6896, value1) := by
  rw [input14567_def, output14567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11205_eq]
  try dsimp only
  rw [node14566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14567 input11204)).val
theorem input14568_def : input14568 = (.seq input14567 input11204) := by
  unfold input14568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14567 output11204)).val
theorem output14568_def : output14568 = (.seq output14567 output11204) := by
  unfold output14568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14568_skip : Flapjack.WordAlloc.isSkip output14568 = false := by
  rw [output14568_def]
  conv => lhs; cbv
  try rfl
theorem node14568_eq : Flapjack.WordAlloc.removeDeadStructural input14568 value5 value1 value2 = (output14568, value6896, value1) := by
  rw [input14568_def, output14568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11204_eq]
  try dsimp only
  rw [node14567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14568 input11201)).val
theorem input14569_def : input14569 = (.seq input14568 input11201) := by
  unfold input14569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14568 output11201)).val
theorem output14569_def : output14569 = (.seq output14568 output11201) := by
  unfold output14569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14569_skip : Flapjack.WordAlloc.isSkip output14569 = false := by
  rw [output14569_def]
  conv => lhs; cbv
  try rfl
theorem node14569_eq : Flapjack.WordAlloc.removeDeadStructural input14569 value5600 value1 value2 = (output14569, value6896, value1) := by
  rw [input14569_def, output14569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11201_eq]
  try dsimp only
  rw [node14568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14569 input11192)).val
theorem input14570_def : input14570 = (.seq input14569 input11192) := by
  unfold input14570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14569)).val
theorem output14570_def : output14570 = (output14569) := by
  unfold output14570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14570_skip : Flapjack.WordAlloc.isSkip output14570 = false := by
  rw [output14570_def]
  conv => lhs; cbv
  try rfl
theorem node14570_eq : Flapjack.WordAlloc.removeDeadStructural input14570 value5600 value1 value2 = (output14570, value6896, value1) := by
  rw [input14570_def, output14570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11192_eq]
  try dsimp only
  rw [node14569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14570 input11191)).val
theorem input14571_def : input14571 = (.seq input14570 input11191) := by
  unfold input14571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14570 output11191)).val
theorem output14571_def : output14571 = (.seq output14570 output11191) := by
  unfold output14571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14571_skip : Flapjack.WordAlloc.isSkip output14571 = false := by
  rw [output14571_def]
  conv => lhs; cbv
  try rfl
theorem node14571_eq : Flapjack.WordAlloc.removeDeadStructural input14571 value5599 value1 value2 = (output14571, value6896, value1) := by
  rw [input14571_def, output14571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11191_eq]
  try dsimp only
  rw [node14570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14571 input11190)).val
theorem input14572_def : input14572 = (.seq input14571 input11190) := by
  unfold input14572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14571 output11190)).val
theorem output14572_def : output14572 = (.seq output14571 output11190) := by
  unfold output14572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14572_skip : Flapjack.WordAlloc.isSkip output14572 = false := by
  rw [output14572_def]
  conv => lhs; cbv
  try rfl
theorem node14572_eq : Flapjack.WordAlloc.removeDeadStructural input14572 value5 value1 value2 = (output14572, value6896, value1) := by
  rw [input14572_def, output14572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11190_eq]
  try dsimp only
  rw [node14571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14572 input11187)).val
theorem input14573_def : input14573 = (.seq input14572 input11187) := by
  unfold input14573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14572 output11187)).val
theorem output14573_def : output14573 = (.seq output14572 output11187) := by
  unfold output14573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14573_skip : Flapjack.WordAlloc.isSkip output14573 = false := by
  rw [output14573_def]
  conv => lhs; cbv
  try rfl
theorem node14573_eq : Flapjack.WordAlloc.removeDeadStructural input14573 value5593 value1 value2 = (output14573, value6896, value1) := by
  rw [input14573_def, output14573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11187_eq]
  try dsimp only
  rw [node14572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14573 input11178)).val
theorem input14574_def : input14574 = (.seq input14573 input11178) := by
  unfold input14574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14573)).val
theorem output14574_def : output14574 = (output14573) := by
  unfold output14574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14574_skip : Flapjack.WordAlloc.isSkip output14574 = false := by
  rw [output14574_def]
  conv => lhs; cbv
  try rfl
theorem node14574_eq : Flapjack.WordAlloc.removeDeadStructural input14574 value5593 value1 value2 = (output14574, value6896, value1) := by
  rw [input14574_def, output14574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11178_eq]
  try dsimp only
  rw [node14573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14574 input11177)).val
theorem input14575_def : input14575 = (.seq input14574 input11177) := by
  unfold input14575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14574 output11177)).val
theorem output14575_def : output14575 = (.seq output14574 output11177) := by
  unfold output14575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14575_skip : Flapjack.WordAlloc.isSkip output14575 = false := by
  rw [output14575_def]
  conv => lhs; cbv
  try rfl
theorem node14575_eq : Flapjack.WordAlloc.removeDeadStructural input14575 value5592 value1 value2 = (output14575, value6896, value1) := by
  rw [input14575_def, output14575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11177_eq]
  try dsimp only
  rw [node14574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14575 input11176)).val
theorem input14576_def : input14576 = (.seq input14575 input11176) := by
  unfold input14576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14575 output11176)).val
theorem output14576_def : output14576 = (.seq output14575 output11176) := by
  unfold output14576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14576_skip : Flapjack.WordAlloc.isSkip output14576 = false := by
  rw [output14576_def]
  conv => lhs; cbv
  try rfl
theorem node14576_eq : Flapjack.WordAlloc.removeDeadStructural input14576 value5 value1 value2 = (output14576, value6896, value1) := by
  rw [input14576_def, output14576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11176_eq]
  try dsimp only
  rw [node14575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14576 input11173)).val
theorem input14577_def : input14577 = (.seq input14576 input11173) := by
  unfold input14577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14576 output11173)).val
theorem output14577_def : output14577 = (.seq output14576 output11173) := by
  unfold output14577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14577_skip : Flapjack.WordAlloc.isSkip output14577 = false := by
  rw [output14577_def]
  conv => lhs; cbv
  try rfl
theorem node14577_eq : Flapjack.WordAlloc.removeDeadStructural input14577 value5586 value1 value2 = (output14577, value6896, value1) := by
  rw [input14577_def, output14577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11173_eq]
  try dsimp only
  rw [node14576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14577 input11164)).val
theorem input14578_def : input14578 = (.seq input14577 input11164) := by
  unfold input14578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14577)).val
theorem output14578_def : output14578 = (output14577) := by
  unfold output14578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14578_skip : Flapjack.WordAlloc.isSkip output14578 = false := by
  rw [output14578_def]
  conv => lhs; cbv
  try rfl
theorem node14578_eq : Flapjack.WordAlloc.removeDeadStructural input14578 value5586 value1 value2 = (output14578, value6896, value1) := by
  rw [input14578_def, output14578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11164_eq]
  try dsimp only
  rw [node14577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14578 input11163)).val
theorem input14579_def : input14579 = (.seq input14578 input11163) := by
  unfold input14579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14578 output11163)).val
theorem output14579_def : output14579 = (.seq output14578 output11163) := by
  unfold output14579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14579_skip : Flapjack.WordAlloc.isSkip output14579 = false := by
  rw [output14579_def]
  conv => lhs; cbv
  try rfl
theorem node14579_eq : Flapjack.WordAlloc.removeDeadStructural input14579 value5585 value1 value2 = (output14579, value6896, value1) := by
  rw [input14579_def, output14579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11163_eq]
  try dsimp only
  rw [node14578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14579 input11162)).val
theorem input14580_def : input14580 = (.seq input14579 input11162) := by
  unfold input14580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14579 output11162)).val
theorem output14580_def : output14580 = (.seq output14579 output11162) := by
  unfold output14580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14580_skip : Flapjack.WordAlloc.isSkip output14580 = false := by
  rw [output14580_def]
  conv => lhs; cbv
  try rfl
theorem node14580_eq : Flapjack.WordAlloc.removeDeadStructural input14580 value5 value1 value2 = (output14580, value6896, value1) := by
  rw [input14580_def, output14580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11162_eq]
  try dsimp only
  rw [node14579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14580 input11159)).val
theorem input14581_def : input14581 = (.seq input14580 input11159) := by
  unfold input14581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14580 output11159)).val
theorem output14581_def : output14581 = (.seq output14580 output11159) := by
  unfold output14581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14581_skip : Flapjack.WordAlloc.isSkip output14581 = false := by
  rw [output14581_def]
  conv => lhs; cbv
  try rfl
theorem node14581_eq : Flapjack.WordAlloc.removeDeadStructural input14581 value5579 value1 value2 = (output14581, value6896, value1) := by
  rw [input14581_def, output14581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11159_eq]
  try dsimp only
  rw [node14580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14581 input11150)).val
theorem input14582_def : input14582 = (.seq input14581 input11150) := by
  unfold input14582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14581)).val
theorem output14582_def : output14582 = (output14581) := by
  unfold output14582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14582_skip : Flapjack.WordAlloc.isSkip output14582 = false := by
  rw [output14582_def]
  conv => lhs; cbv
  try rfl
theorem node14582_eq : Flapjack.WordAlloc.removeDeadStructural input14582 value5579 value1 value2 = (output14582, value6896, value1) := by
  rw [input14582_def, output14582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11150_eq]
  try dsimp only
  rw [node14581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14582 input11149)).val
theorem input14583_def : input14583 = (.seq input14582 input11149) := by
  unfold input14583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14582 output11149)).val
theorem output14583_def : output14583 = (.seq output14582 output11149) := by
  unfold output14583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14583_skip : Flapjack.WordAlloc.isSkip output14583 = false := by
  rw [output14583_def]
  conv => lhs; cbv
  try rfl
theorem node14583_eq : Flapjack.WordAlloc.removeDeadStructural input14583 value5578 value1 value2 = (output14583, value6896, value1) := by
  rw [input14583_def, output14583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11149_eq]
  try dsimp only
  rw [node14582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14583 input11148)).val
theorem input14584_def : input14584 = (.seq input14583 input11148) := by
  unfold input14584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14583 output11148)).val
theorem output14584_def : output14584 = (.seq output14583 output11148) := by
  unfold output14584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14584_skip : Flapjack.WordAlloc.isSkip output14584 = false := by
  rw [output14584_def]
  conv => lhs; cbv
  try rfl
theorem node14584_eq : Flapjack.WordAlloc.removeDeadStructural input14584 value5 value1 value2 = (output14584, value6896, value1) := by
  rw [input14584_def, output14584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11148_eq]
  try dsimp only
  rw [node14583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14584 input11145)).val
theorem input14585_def : input14585 = (.seq input14584 input11145) := by
  unfold input14585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14584 output11145)).val
theorem output14585_def : output14585 = (.seq output14584 output11145) := by
  unfold output14585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14585_skip : Flapjack.WordAlloc.isSkip output14585 = false := by
  rw [output14585_def]
  conv => lhs; cbv
  try rfl
theorem node14585_eq : Flapjack.WordAlloc.removeDeadStructural input14585 value5572 value1 value2 = (output14585, value6896, value1) := by
  rw [input14585_def, output14585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11145_eq]
  try dsimp only
  rw [node14584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14585 input11136)).val
theorem input14586_def : input14586 = (.seq input14585 input11136) := by
  unfold input14586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14585)).val
theorem output14586_def : output14586 = (output14585) := by
  unfold output14586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14586_skip : Flapjack.WordAlloc.isSkip output14586 = false := by
  rw [output14586_def]
  conv => lhs; cbv
  try rfl
theorem node14586_eq : Flapjack.WordAlloc.removeDeadStructural input14586 value5572 value1 value2 = (output14586, value6896, value1) := by
  rw [input14586_def, output14586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11136_eq]
  try dsimp only
  rw [node14585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14586 input11135)).val
theorem input14587_def : input14587 = (.seq input14586 input11135) := by
  unfold input14587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14586 output11135)).val
theorem output14587_def : output14587 = (.seq output14586 output11135) := by
  unfold output14587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14587_skip : Flapjack.WordAlloc.isSkip output14587 = false := by
  rw [output14587_def]
  conv => lhs; cbv
  try rfl
theorem node14587_eq : Flapjack.WordAlloc.removeDeadStructural input14587 value5571 value1 value2 = (output14587, value6896, value1) := by
  rw [input14587_def, output14587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11135_eq]
  try dsimp only
  rw [node14586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14587 input11134)).val
theorem input14588_def : input14588 = (.seq input14587 input11134) := by
  unfold input14588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14587 output11134)).val
theorem output14588_def : output14588 = (.seq output14587 output11134) := by
  unfold output14588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14588_skip : Flapjack.WordAlloc.isSkip output14588 = false := by
  rw [output14588_def]
  conv => lhs; cbv
  try rfl
theorem node14588_eq : Flapjack.WordAlloc.removeDeadStructural input14588 value5 value1 value2 = (output14588, value6896, value1) := by
  rw [input14588_def, output14588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11134_eq]
  try dsimp only
  rw [node14587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14588 input11131)).val
theorem input14589_def : input14589 = (.seq input14588 input11131) := by
  unfold input14589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14588 output11131)).val
theorem output14589_def : output14589 = (.seq output14588 output11131) := by
  unfold output14589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14589_skip : Flapjack.WordAlloc.isSkip output14589 = false := by
  rw [output14589_def]
  conv => lhs; cbv
  try rfl
theorem node14589_eq : Flapjack.WordAlloc.removeDeadStructural input14589 value5565 value1 value2 = (output14589, value6896, value1) := by
  rw [input14589_def, output14589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11131_eq]
  try dsimp only
  rw [node14588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14589 input11122)).val
theorem input14590_def : input14590 = (.seq input14589 input11122) := by
  unfold input14590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output14589)).val
theorem output14590_def : output14590 = (output14589) := by
  unfold output14590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14590_skip : Flapjack.WordAlloc.isSkip output14590 = false := by
  rw [output14590_def]
  conv => lhs; cbv
  try rfl
theorem node14590_eq : Flapjack.WordAlloc.removeDeadStructural input14590 value5565 value1 value2 = (output14590, value6896, value1) := by
  rw [input14590_def, output14590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11122_eq]
  try dsimp only
  rw [node14589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input14591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input14590 input11121)).val
theorem input14591_def : input14591 = (.seq input14590 input11121) := by
  unfold input14591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output14591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output14590 output11121)).val
theorem output14591_def : output14591 = (.seq output14590 output11121) := by
  unfold output14591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output14591_skip : Flapjack.WordAlloc.isSkip output14591 = false := by
  rw [output14591_def]
  conv => lhs; cbv
  try rfl
theorem node14591_eq : Flapjack.WordAlloc.removeDeadStructural input14591 value5564 value1 value2 = (output14591, value6896, value1) := by
  rw [input14591_def, output14591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11121_eq]
  try dsimp only
  rw [node14590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node14591_eq
end InitECandidate.Proofs.DeadStages713
