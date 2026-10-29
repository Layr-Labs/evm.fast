import InitECandidate.Proofs.DeadStages713.Chunk059
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input15360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15359 input8182)).val
theorem input15360_def : input15360 = (.seq input15359 input8182) := by
  unfold input15360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15359 output8182)).val
theorem output15360_def : output15360 = (.seq output15359 output8182) := by
  unfold output15360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15360_skip : Flapjack.WordAlloc.isSkip output15360 = false := by
  rw [output15360_def]
  conv => lhs; cbv
  try rfl
theorem node15360_eq : Flapjack.WordAlloc.removeDeadStructural input15360 value5 value1 value2 = (output15360, value6896, value1) := by
  rw [input15360_def, output15360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8182_eq]
  try dsimp only
  rw [node15359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15360 input8179)).val
theorem input15361_def : input15361 = (.seq input15360 input8179) := by
  unfold input15361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15360 output8179)).val
theorem output15361_def : output15361 = (.seq output15360 output8179) := by
  unfold output15361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15361_skip : Flapjack.WordAlloc.isSkip output15361 = false := by
  rw [output15361_def]
  conv => lhs; cbv
  try rfl
theorem node15361_eq : Flapjack.WordAlloc.removeDeadStructural input15361 value4088 value1 value2 = (output15361, value6896, value1) := by
  rw [input15361_def, output15361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8179_eq]
  try dsimp only
  rw [node15360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15361 input8168)).val
theorem input15362_def : input15362 = (.seq input15361 input8168) := by
  unfold input15362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15361)).val
theorem output15362_def : output15362 = (output15361) := by
  unfold output15362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15362_skip : Flapjack.WordAlloc.isSkip output15362 = false := by
  rw [output15362_def]
  conv => lhs; cbv
  try rfl
theorem node15362_eq : Flapjack.WordAlloc.removeDeadStructural input15362 value4088 value1 value2 = (output15362, value6896, value1) := by
  rw [input15362_def, output15362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8168_eq]
  try dsimp only
  rw [node15361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15362 input8167)).val
theorem input15363_def : input15363 = (.seq input15362 input8167) := by
  unfold input15363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15362 output8167)).val
theorem output15363_def : output15363 = (.seq output15362 output8167) := by
  unfold output15363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15363_skip : Flapjack.WordAlloc.isSkip output15363 = false := by
  rw [output15363_def]
  conv => lhs; cbv
  try rfl
theorem node15363_eq : Flapjack.WordAlloc.removeDeadStructural input15363 value4087 value1 value2 = (output15363, value6896, value1) := by
  rw [input15363_def, output15363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8167_eq]
  try dsimp only
  rw [node15362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15363 input8166)).val
theorem input15364_def : input15364 = (.seq input15363 input8166) := by
  unfold input15364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15363 output8166)).val
theorem output15364_def : output15364 = (.seq output15363 output8166) := by
  unfold output15364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15364_skip : Flapjack.WordAlloc.isSkip output15364 = false := by
  rw [output15364_def]
  conv => lhs; cbv
  try rfl
theorem node15364_eq : Flapjack.WordAlloc.removeDeadStructural input15364 value5 value1 value2 = (output15364, value6896, value1) := by
  rw [input15364_def, output15364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8166_eq]
  try dsimp only
  rw [node15363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15364 input8163)).val
theorem input15365_def : input15365 = (.seq input15364 input8163) := by
  unfold input15365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15364 output8163)).val
theorem output15365_def : output15365 = (.seq output15364 output8163) := by
  unfold output15365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15365_skip : Flapjack.WordAlloc.isSkip output15365 = false := by
  rw [output15365_def]
  conv => lhs; cbv
  try rfl
theorem node15365_eq : Flapjack.WordAlloc.removeDeadStructural input15365 value4080 value1 value2 = (output15365, value6896, value1) := by
  rw [input15365_def, output15365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8163_eq]
  try dsimp only
  rw [node15364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15365 input8152)).val
theorem input15366_def : input15366 = (.seq input15365 input8152) := by
  unfold input15366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15365)).val
theorem output15366_def : output15366 = (output15365) := by
  unfold output15366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15366_skip : Flapjack.WordAlloc.isSkip output15366 = false := by
  rw [output15366_def]
  conv => lhs; cbv
  try rfl
theorem node15366_eq : Flapjack.WordAlloc.removeDeadStructural input15366 value4080 value1 value2 = (output15366, value6896, value1) := by
  rw [input15366_def, output15366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8152_eq]
  try dsimp only
  rw [node15365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15366 input8151)).val
theorem input15367_def : input15367 = (.seq input15366 input8151) := by
  unfold input15367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15366 output8151)).val
theorem output15367_def : output15367 = (.seq output15366 output8151) := by
  unfold output15367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15367_skip : Flapjack.WordAlloc.isSkip output15367 = false := by
  rw [output15367_def]
  conv => lhs; cbv
  try rfl
theorem node15367_eq : Flapjack.WordAlloc.removeDeadStructural input15367 value4079 value1 value2 = (output15367, value6896, value1) := by
  rw [input15367_def, output15367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8151_eq]
  try dsimp only
  rw [node15366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15367 input8150)).val
theorem input15368_def : input15368 = (.seq input15367 input8150) := by
  unfold input15368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15367 output8150)).val
theorem output15368_def : output15368 = (.seq output15367 output8150) := by
  unfold output15368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15368_skip : Flapjack.WordAlloc.isSkip output15368 = false := by
  rw [output15368_def]
  conv => lhs; cbv
  try rfl
theorem node15368_eq : Flapjack.WordAlloc.removeDeadStructural input15368 value5 value1 value2 = (output15368, value6896, value1) := by
  rw [input15368_def, output15368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8150_eq]
  try dsimp only
  rw [node15367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15368 input8147)).val
theorem input15369_def : input15369 = (.seq input15368 input8147) := by
  unfold input15369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15368 output8147)).val
theorem output15369_def : output15369 = (.seq output15368 output8147) := by
  unfold output15369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15369_skip : Flapjack.WordAlloc.isSkip output15369 = false := by
  rw [output15369_def]
  conv => lhs; cbv
  try rfl
theorem node15369_eq : Flapjack.WordAlloc.removeDeadStructural input15369 value4072 value1 value2 = (output15369, value6896, value1) := by
  rw [input15369_def, output15369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8147_eq]
  try dsimp only
  rw [node15368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15369 input8136)).val
theorem input15370_def : input15370 = (.seq input15369 input8136) := by
  unfold input15370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15369)).val
theorem output15370_def : output15370 = (output15369) := by
  unfold output15370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15370_skip : Flapjack.WordAlloc.isSkip output15370 = false := by
  rw [output15370_def]
  conv => lhs; cbv
  try rfl
theorem node15370_eq : Flapjack.WordAlloc.removeDeadStructural input15370 value4072 value1 value2 = (output15370, value6896, value1) := by
  rw [input15370_def, output15370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8136_eq]
  try dsimp only
  rw [node15369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15370 input8135)).val
theorem input15371_def : input15371 = (.seq input15370 input8135) := by
  unfold input15371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15370 output8135)).val
theorem output15371_def : output15371 = (.seq output15370 output8135) := by
  unfold output15371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15371_skip : Flapjack.WordAlloc.isSkip output15371 = false := by
  rw [output15371_def]
  conv => lhs; cbv
  try rfl
theorem node15371_eq : Flapjack.WordAlloc.removeDeadStructural input15371 value4071 value1 value2 = (output15371, value6896, value1) := by
  rw [input15371_def, output15371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8135_eq]
  try dsimp only
  rw [node15370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15371 input8134)).val
theorem input15372_def : input15372 = (.seq input15371 input8134) := by
  unfold input15372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15371 output8134)).val
theorem output15372_def : output15372 = (.seq output15371 output8134) := by
  unfold output15372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15372_skip : Flapjack.WordAlloc.isSkip output15372 = false := by
  rw [output15372_def]
  conv => lhs; cbv
  try rfl
theorem node15372_eq : Flapjack.WordAlloc.removeDeadStructural input15372 value5 value1 value2 = (output15372, value6896, value1) := by
  rw [input15372_def, output15372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8134_eq]
  try dsimp only
  rw [node15371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15372 input8131)).val
theorem input15373_def : input15373 = (.seq input15372 input8131) := by
  unfold input15373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15372 output8131)).val
theorem output15373_def : output15373 = (.seq output15372 output8131) := by
  unfold output15373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15373_skip : Flapjack.WordAlloc.isSkip output15373 = false := by
  rw [output15373_def]
  conv => lhs; cbv
  try rfl
theorem node15373_eq : Flapjack.WordAlloc.removeDeadStructural input15373 value4064 value1 value2 = (output15373, value6896, value1) := by
  rw [input15373_def, output15373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8131_eq]
  try dsimp only
  rw [node15372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15373 input8120)).val
theorem input15374_def : input15374 = (.seq input15373 input8120) := by
  unfold input15374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15373)).val
theorem output15374_def : output15374 = (output15373) := by
  unfold output15374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15374_skip : Flapjack.WordAlloc.isSkip output15374 = false := by
  rw [output15374_def]
  conv => lhs; cbv
  try rfl
theorem node15374_eq : Flapjack.WordAlloc.removeDeadStructural input15374 value4064 value1 value2 = (output15374, value6896, value1) := by
  rw [input15374_def, output15374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8120_eq]
  try dsimp only
  rw [node15373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15374 input8119)).val
theorem input15375_def : input15375 = (.seq input15374 input8119) := by
  unfold input15375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15374 output8119)).val
theorem output15375_def : output15375 = (.seq output15374 output8119) := by
  unfold output15375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15375_skip : Flapjack.WordAlloc.isSkip output15375 = false := by
  rw [output15375_def]
  conv => lhs; cbv
  try rfl
theorem node15375_eq : Flapjack.WordAlloc.removeDeadStructural input15375 value4063 value1 value2 = (output15375, value6896, value1) := by
  rw [input15375_def, output15375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8119_eq]
  try dsimp only
  rw [node15374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15375 input8118)).val
theorem input15376_def : input15376 = (.seq input15375 input8118) := by
  unfold input15376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15375 output8118)).val
theorem output15376_def : output15376 = (.seq output15375 output8118) := by
  unfold output15376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15376_skip : Flapjack.WordAlloc.isSkip output15376 = false := by
  rw [output15376_def]
  conv => lhs; cbv
  try rfl
theorem node15376_eq : Flapjack.WordAlloc.removeDeadStructural input15376 value5 value1 value2 = (output15376, value6896, value1) := by
  rw [input15376_def, output15376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8118_eq]
  try dsimp only
  rw [node15375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15376 input8115)).val
theorem input15377_def : input15377 = (.seq input15376 input8115) := by
  unfold input15377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15376 output8115)).val
theorem output15377_def : output15377 = (.seq output15376 output8115) := by
  unfold output15377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15377_skip : Flapjack.WordAlloc.isSkip output15377 = false := by
  rw [output15377_def]
  conv => lhs; cbv
  try rfl
theorem node15377_eq : Flapjack.WordAlloc.removeDeadStructural input15377 value4056 value1 value2 = (output15377, value6896, value1) := by
  rw [input15377_def, output15377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8115_eq]
  try dsimp only
  rw [node15376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15377 input8104)).val
theorem input15378_def : input15378 = (.seq input15377 input8104) := by
  unfold input15378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15377)).val
theorem output15378_def : output15378 = (output15377) := by
  unfold output15378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15378_skip : Flapjack.WordAlloc.isSkip output15378 = false := by
  rw [output15378_def]
  conv => lhs; cbv
  try rfl
theorem node15378_eq : Flapjack.WordAlloc.removeDeadStructural input15378 value4056 value1 value2 = (output15378, value6896, value1) := by
  rw [input15378_def, output15378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8104_eq]
  try dsimp only
  rw [node15377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15378 input8103)).val
theorem input15379_def : input15379 = (.seq input15378 input8103) := by
  unfold input15379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15378 output8103)).val
theorem output15379_def : output15379 = (.seq output15378 output8103) := by
  unfold output15379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15379_skip : Flapjack.WordAlloc.isSkip output15379 = false := by
  rw [output15379_def]
  conv => lhs; cbv
  try rfl
theorem node15379_eq : Flapjack.WordAlloc.removeDeadStructural input15379 value4055 value1 value2 = (output15379, value6896, value1) := by
  rw [input15379_def, output15379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8103_eq]
  try dsimp only
  rw [node15378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15379 input8102)).val
theorem input15380_def : input15380 = (.seq input15379 input8102) := by
  unfold input15380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15379 output8102)).val
theorem output15380_def : output15380 = (.seq output15379 output8102) := by
  unfold output15380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15380_skip : Flapjack.WordAlloc.isSkip output15380 = false := by
  rw [output15380_def]
  conv => lhs; cbv
  try rfl
theorem node15380_eq : Flapjack.WordAlloc.removeDeadStructural input15380 value5 value1 value2 = (output15380, value6896, value1) := by
  rw [input15380_def, output15380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8102_eq]
  try dsimp only
  rw [node15379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15380 input8099)).val
theorem input15381_def : input15381 = (.seq input15380 input8099) := by
  unfold input15381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15380 output8099)).val
theorem output15381_def : output15381 = (.seq output15380 output8099) := by
  unfold output15381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15381_skip : Flapjack.WordAlloc.isSkip output15381 = false := by
  rw [output15381_def]
  conv => lhs; cbv
  try rfl
theorem node15381_eq : Flapjack.WordAlloc.removeDeadStructural input15381 value4048 value1 value2 = (output15381, value6896, value1) := by
  rw [input15381_def, output15381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8099_eq]
  try dsimp only
  rw [node15380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15381 input8088)).val
theorem input15382_def : input15382 = (.seq input15381 input8088) := by
  unfold input15382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15381)).val
theorem output15382_def : output15382 = (output15381) := by
  unfold output15382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15382_skip : Flapjack.WordAlloc.isSkip output15382 = false := by
  rw [output15382_def]
  conv => lhs; cbv
  try rfl
theorem node15382_eq : Flapjack.WordAlloc.removeDeadStructural input15382 value4048 value1 value2 = (output15382, value6896, value1) := by
  rw [input15382_def, output15382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8088_eq]
  try dsimp only
  rw [node15381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15382 input8087)).val
theorem input15383_def : input15383 = (.seq input15382 input8087) := by
  unfold input15383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15382 output8087)).val
theorem output15383_def : output15383 = (.seq output15382 output8087) := by
  unfold output15383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15383_skip : Flapjack.WordAlloc.isSkip output15383 = false := by
  rw [output15383_def]
  conv => lhs; cbv
  try rfl
theorem node15383_eq : Flapjack.WordAlloc.removeDeadStructural input15383 value4047 value1 value2 = (output15383, value6896, value1) := by
  rw [input15383_def, output15383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8087_eq]
  try dsimp only
  rw [node15382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15383 input8086)).val
theorem input15384_def : input15384 = (.seq input15383 input8086) := by
  unfold input15384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15383 output8086)).val
theorem output15384_def : output15384 = (.seq output15383 output8086) := by
  unfold output15384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15384_skip : Flapjack.WordAlloc.isSkip output15384 = false := by
  rw [output15384_def]
  conv => lhs; cbv
  try rfl
theorem node15384_eq : Flapjack.WordAlloc.removeDeadStructural input15384 value5 value1 value2 = (output15384, value6896, value1) := by
  rw [input15384_def, output15384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8086_eq]
  try dsimp only
  rw [node15383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15384 input8083)).val
theorem input15385_def : input15385 = (.seq input15384 input8083) := by
  unfold input15385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15384 output8083)).val
theorem output15385_def : output15385 = (.seq output15384 output8083) := by
  unfold output15385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15385_skip : Flapjack.WordAlloc.isSkip output15385 = false := by
  rw [output15385_def]
  conv => lhs; cbv
  try rfl
theorem node15385_eq : Flapjack.WordAlloc.removeDeadStructural input15385 value4040 value1 value2 = (output15385, value6896, value1) := by
  rw [input15385_def, output15385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8083_eq]
  try dsimp only
  rw [node15384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15385 input8072)).val
theorem input15386_def : input15386 = (.seq input15385 input8072) := by
  unfold input15386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15385)).val
theorem output15386_def : output15386 = (output15385) := by
  unfold output15386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15386_skip : Flapjack.WordAlloc.isSkip output15386 = false := by
  rw [output15386_def]
  conv => lhs; cbv
  try rfl
theorem node15386_eq : Flapjack.WordAlloc.removeDeadStructural input15386 value4040 value1 value2 = (output15386, value6896, value1) := by
  rw [input15386_def, output15386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8072_eq]
  try dsimp only
  rw [node15385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15386 input8071)).val
theorem input15387_def : input15387 = (.seq input15386 input8071) := by
  unfold input15387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15386 output8071)).val
theorem output15387_def : output15387 = (.seq output15386 output8071) := by
  unfold output15387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15387_skip : Flapjack.WordAlloc.isSkip output15387 = false := by
  rw [output15387_def]
  conv => lhs; cbv
  try rfl
theorem node15387_eq : Flapjack.WordAlloc.removeDeadStructural input15387 value4039 value1 value2 = (output15387, value6896, value1) := by
  rw [input15387_def, output15387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8071_eq]
  try dsimp only
  rw [node15386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15387 input8070)).val
theorem input15388_def : input15388 = (.seq input15387 input8070) := by
  unfold input15388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15387 output8070)).val
theorem output15388_def : output15388 = (.seq output15387 output8070) := by
  unfold output15388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15388_skip : Flapjack.WordAlloc.isSkip output15388 = false := by
  rw [output15388_def]
  conv => lhs; cbv
  try rfl
theorem node15388_eq : Flapjack.WordAlloc.removeDeadStructural input15388 value5 value1 value2 = (output15388, value6896, value1) := by
  rw [input15388_def, output15388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8070_eq]
  try dsimp only
  rw [node15387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15388 input8067)).val
theorem input15389_def : input15389 = (.seq input15388 input8067) := by
  unfold input15389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15388 output8067)).val
theorem output15389_def : output15389 = (.seq output15388 output8067) := by
  unfold output15389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15389_skip : Flapjack.WordAlloc.isSkip output15389 = false := by
  rw [output15389_def]
  conv => lhs; cbv
  try rfl
theorem node15389_eq : Flapjack.WordAlloc.removeDeadStructural input15389 value4032 value1 value2 = (output15389, value6896, value1) := by
  rw [input15389_def, output15389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8067_eq]
  try dsimp only
  rw [node15388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15389 input8056)).val
theorem input15390_def : input15390 = (.seq input15389 input8056) := by
  unfold input15390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15389)).val
theorem output15390_def : output15390 = (output15389) := by
  unfold output15390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15390_skip : Flapjack.WordAlloc.isSkip output15390 = false := by
  rw [output15390_def]
  conv => lhs; cbv
  try rfl
theorem node15390_eq : Flapjack.WordAlloc.removeDeadStructural input15390 value4032 value1 value2 = (output15390, value6896, value1) := by
  rw [input15390_def, output15390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8056_eq]
  try dsimp only
  rw [node15389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15390 input8055)).val
theorem input15391_def : input15391 = (.seq input15390 input8055) := by
  unfold input15391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15390 output8055)).val
theorem output15391_def : output15391 = (.seq output15390 output8055) := by
  unfold output15391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15391_skip : Flapjack.WordAlloc.isSkip output15391 = false := by
  rw [output15391_def]
  conv => lhs; cbv
  try rfl
theorem node15391_eq : Flapjack.WordAlloc.removeDeadStructural input15391 value4031 value1 value2 = (output15391, value6896, value1) := by
  rw [input15391_def, output15391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8055_eq]
  try dsimp only
  rw [node15390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15391 input8054)).val
theorem input15392_def : input15392 = (.seq input15391 input8054) := by
  unfold input15392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15391 output8054)).val
theorem output15392_def : output15392 = (.seq output15391 output8054) := by
  unfold output15392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15392_skip : Flapjack.WordAlloc.isSkip output15392 = false := by
  rw [output15392_def]
  conv => lhs; cbv
  try rfl
theorem node15392_eq : Flapjack.WordAlloc.removeDeadStructural input15392 value5 value1 value2 = (output15392, value6896, value1) := by
  rw [input15392_def, output15392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8054_eq]
  try dsimp only
  rw [node15391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15392 input8051)).val
theorem input15393_def : input15393 = (.seq input15392 input8051) := by
  unfold input15393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15392 output8051)).val
theorem output15393_def : output15393 = (.seq output15392 output8051) := by
  unfold output15393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15393_skip : Flapjack.WordAlloc.isSkip output15393 = false := by
  rw [output15393_def]
  conv => lhs; cbv
  try rfl
theorem node15393_eq : Flapjack.WordAlloc.removeDeadStructural input15393 value4024 value1 value2 = (output15393, value6896, value1) := by
  rw [input15393_def, output15393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8051_eq]
  try dsimp only
  rw [node15392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15393 input8040)).val
theorem input15394_def : input15394 = (.seq input15393 input8040) := by
  unfold input15394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15393)).val
theorem output15394_def : output15394 = (output15393) := by
  unfold output15394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15394_skip : Flapjack.WordAlloc.isSkip output15394 = false := by
  rw [output15394_def]
  conv => lhs; cbv
  try rfl
theorem node15394_eq : Flapjack.WordAlloc.removeDeadStructural input15394 value4024 value1 value2 = (output15394, value6896, value1) := by
  rw [input15394_def, output15394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8040_eq]
  try dsimp only
  rw [node15393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15394 input8039)).val
theorem input15395_def : input15395 = (.seq input15394 input8039) := by
  unfold input15395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15394 output8039)).val
theorem output15395_def : output15395 = (.seq output15394 output8039) := by
  unfold output15395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15395_skip : Flapjack.WordAlloc.isSkip output15395 = false := by
  rw [output15395_def]
  conv => lhs; cbv
  try rfl
theorem node15395_eq : Flapjack.WordAlloc.removeDeadStructural input15395 value4023 value1 value2 = (output15395, value6896, value1) := by
  rw [input15395_def, output15395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8039_eq]
  try dsimp only
  rw [node15394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15395 input8038)).val
theorem input15396_def : input15396 = (.seq input15395 input8038) := by
  unfold input15396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15395 output8038)).val
theorem output15396_def : output15396 = (.seq output15395 output8038) := by
  unfold output15396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15396_skip : Flapjack.WordAlloc.isSkip output15396 = false := by
  rw [output15396_def]
  conv => lhs; cbv
  try rfl
theorem node15396_eq : Flapjack.WordAlloc.removeDeadStructural input15396 value5 value1 value2 = (output15396, value6896, value1) := by
  rw [input15396_def, output15396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8038_eq]
  try dsimp only
  rw [node15395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15396 input8035)).val
theorem input15397_def : input15397 = (.seq input15396 input8035) := by
  unfold input15397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15396 output8035)).val
theorem output15397_def : output15397 = (.seq output15396 output8035) := by
  unfold output15397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15397_skip : Flapjack.WordAlloc.isSkip output15397 = false := by
  rw [output15397_def]
  conv => lhs; cbv
  try rfl
theorem node15397_eq : Flapjack.WordAlloc.removeDeadStructural input15397 value4016 value1 value2 = (output15397, value6896, value1) := by
  rw [input15397_def, output15397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8035_eq]
  try dsimp only
  rw [node15396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15397 input8024)).val
theorem input15398_def : input15398 = (.seq input15397 input8024) := by
  unfold input15398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15397)).val
theorem output15398_def : output15398 = (output15397) := by
  unfold output15398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15398_skip : Flapjack.WordAlloc.isSkip output15398 = false := by
  rw [output15398_def]
  conv => lhs; cbv
  try rfl
theorem node15398_eq : Flapjack.WordAlloc.removeDeadStructural input15398 value4016 value1 value2 = (output15398, value6896, value1) := by
  rw [input15398_def, output15398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8024_eq]
  try dsimp only
  rw [node15397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15398 input8023)).val
theorem input15399_def : input15399 = (.seq input15398 input8023) := by
  unfold input15399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15398 output8023)).val
theorem output15399_def : output15399 = (.seq output15398 output8023) := by
  unfold output15399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15399_skip : Flapjack.WordAlloc.isSkip output15399 = false := by
  rw [output15399_def]
  conv => lhs; cbv
  try rfl
theorem node15399_eq : Flapjack.WordAlloc.removeDeadStructural input15399 value4015 value1 value2 = (output15399, value6896, value1) := by
  rw [input15399_def, output15399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8023_eq]
  try dsimp only
  rw [node15398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15399 input8022)).val
theorem input15400_def : input15400 = (.seq input15399 input8022) := by
  unfold input15400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15399 output8022)).val
theorem output15400_def : output15400 = (.seq output15399 output8022) := by
  unfold output15400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15400_skip : Flapjack.WordAlloc.isSkip output15400 = false := by
  rw [output15400_def]
  conv => lhs; cbv
  try rfl
theorem node15400_eq : Flapjack.WordAlloc.removeDeadStructural input15400 value5 value1 value2 = (output15400, value6896, value1) := by
  rw [input15400_def, output15400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8022_eq]
  try dsimp only
  rw [node15399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15400 input8019)).val
theorem input15401_def : input15401 = (.seq input15400 input8019) := by
  unfold input15401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15400 output8019)).val
theorem output15401_def : output15401 = (.seq output15400 output8019) := by
  unfold output15401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15401_skip : Flapjack.WordAlloc.isSkip output15401 = false := by
  rw [output15401_def]
  conv => lhs; cbv
  try rfl
theorem node15401_eq : Flapjack.WordAlloc.removeDeadStructural input15401 value4008 value1 value2 = (output15401, value6896, value1) := by
  rw [input15401_def, output15401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8019_eq]
  try dsimp only
  rw [node15400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15401 input8008)).val
theorem input15402_def : input15402 = (.seq input15401 input8008) := by
  unfold input15402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15401)).val
theorem output15402_def : output15402 = (output15401) := by
  unfold output15402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15402_skip : Flapjack.WordAlloc.isSkip output15402 = false := by
  rw [output15402_def]
  conv => lhs; cbv
  try rfl
theorem node15402_eq : Flapjack.WordAlloc.removeDeadStructural input15402 value4008 value1 value2 = (output15402, value6896, value1) := by
  rw [input15402_def, output15402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8008_eq]
  try dsimp only
  rw [node15401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15402 input8007)).val
theorem input15403_def : input15403 = (.seq input15402 input8007) := by
  unfold input15403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15402 output8007)).val
theorem output15403_def : output15403 = (.seq output15402 output8007) := by
  unfold output15403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15403_skip : Flapjack.WordAlloc.isSkip output15403 = false := by
  rw [output15403_def]
  conv => lhs; cbv
  try rfl
theorem node15403_eq : Flapjack.WordAlloc.removeDeadStructural input15403 value4007 value1 value2 = (output15403, value6896, value1) := by
  rw [input15403_def, output15403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8007_eq]
  try dsimp only
  rw [node15402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15403 input8006)).val
theorem input15404_def : input15404 = (.seq input15403 input8006) := by
  unfold input15404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15403 output8006)).val
theorem output15404_def : output15404 = (.seq output15403 output8006) := by
  unfold output15404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15404_skip : Flapjack.WordAlloc.isSkip output15404 = false := by
  rw [output15404_def]
  conv => lhs; cbv
  try rfl
theorem node15404_eq : Flapjack.WordAlloc.removeDeadStructural input15404 value5 value1 value2 = (output15404, value6896, value1) := by
  rw [input15404_def, output15404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8006_eq]
  try dsimp only
  rw [node15403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15404 input8003)).val
theorem input15405_def : input15405 = (.seq input15404 input8003) := by
  unfold input15405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15404 output8003)).val
theorem output15405_def : output15405 = (.seq output15404 output8003) := by
  unfold output15405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15405_skip : Flapjack.WordAlloc.isSkip output15405 = false := by
  rw [output15405_def]
  conv => lhs; cbv
  try rfl
theorem node15405_eq : Flapjack.WordAlloc.removeDeadStructural input15405 value4000 value1 value2 = (output15405, value6896, value1) := by
  rw [input15405_def, output15405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8003_eq]
  try dsimp only
  rw [node15404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15405 input7992)).val
theorem input15406_def : input15406 = (.seq input15405 input7992) := by
  unfold input15406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15405)).val
theorem output15406_def : output15406 = (output15405) := by
  unfold output15406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15406_skip : Flapjack.WordAlloc.isSkip output15406 = false := by
  rw [output15406_def]
  conv => lhs; cbv
  try rfl
theorem node15406_eq : Flapjack.WordAlloc.removeDeadStructural input15406 value4000 value1 value2 = (output15406, value6896, value1) := by
  rw [input15406_def, output15406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7992_eq]
  try dsimp only
  rw [node15405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15406 input7991)).val
theorem input15407_def : input15407 = (.seq input15406 input7991) := by
  unfold input15407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15406 output7991)).val
theorem output15407_def : output15407 = (.seq output15406 output7991) := by
  unfold output15407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15407_skip : Flapjack.WordAlloc.isSkip output15407 = false := by
  rw [output15407_def]
  conv => lhs; cbv
  try rfl
theorem node15407_eq : Flapjack.WordAlloc.removeDeadStructural input15407 value3999 value1 value2 = (output15407, value6896, value1) := by
  rw [input15407_def, output15407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7991_eq]
  try dsimp only
  rw [node15406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15407 input7990)).val
theorem input15408_def : input15408 = (.seq input15407 input7990) := by
  unfold input15408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15407 output7990)).val
theorem output15408_def : output15408 = (.seq output15407 output7990) := by
  unfold output15408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15408_skip : Flapjack.WordAlloc.isSkip output15408 = false := by
  rw [output15408_def]
  conv => lhs; cbv
  try rfl
theorem node15408_eq : Flapjack.WordAlloc.removeDeadStructural input15408 value5 value1 value2 = (output15408, value6896, value1) := by
  rw [input15408_def, output15408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7990_eq]
  try dsimp only
  rw [node15407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15408 input7987)).val
theorem input15409_def : input15409 = (.seq input15408 input7987) := by
  unfold input15409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15408 output7987)).val
theorem output15409_def : output15409 = (.seq output15408 output7987) := by
  unfold output15409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15409_skip : Flapjack.WordAlloc.isSkip output15409 = false := by
  rw [output15409_def]
  conv => lhs; cbv
  try rfl
theorem node15409_eq : Flapjack.WordAlloc.removeDeadStructural input15409 value3992 value1 value2 = (output15409, value6896, value1) := by
  rw [input15409_def, output15409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7987_eq]
  try dsimp only
  rw [node15408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15409 input7976)).val
theorem input15410_def : input15410 = (.seq input15409 input7976) := by
  unfold input15410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15409)).val
theorem output15410_def : output15410 = (output15409) := by
  unfold output15410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15410_skip : Flapjack.WordAlloc.isSkip output15410 = false := by
  rw [output15410_def]
  conv => lhs; cbv
  try rfl
theorem node15410_eq : Flapjack.WordAlloc.removeDeadStructural input15410 value3992 value1 value2 = (output15410, value6896, value1) := by
  rw [input15410_def, output15410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7976_eq]
  try dsimp only
  rw [node15409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15410 input7975)).val
theorem input15411_def : input15411 = (.seq input15410 input7975) := by
  unfold input15411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15410 output7975)).val
theorem output15411_def : output15411 = (.seq output15410 output7975) := by
  unfold output15411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15411_skip : Flapjack.WordAlloc.isSkip output15411 = false := by
  rw [output15411_def]
  conv => lhs; cbv
  try rfl
theorem node15411_eq : Flapjack.WordAlloc.removeDeadStructural input15411 value3991 value1 value2 = (output15411, value6896, value1) := by
  rw [input15411_def, output15411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7975_eq]
  try dsimp only
  rw [node15410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15411 input7974)).val
theorem input15412_def : input15412 = (.seq input15411 input7974) := by
  unfold input15412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15411 output7974)).val
theorem output15412_def : output15412 = (.seq output15411 output7974) := by
  unfold output15412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15412_skip : Flapjack.WordAlloc.isSkip output15412 = false := by
  rw [output15412_def]
  conv => lhs; cbv
  try rfl
theorem node15412_eq : Flapjack.WordAlloc.removeDeadStructural input15412 value5 value1 value2 = (output15412, value6896, value1) := by
  rw [input15412_def, output15412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7974_eq]
  try dsimp only
  rw [node15411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15412 input7971)).val
theorem input15413_def : input15413 = (.seq input15412 input7971) := by
  unfold input15413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15412 output7971)).val
theorem output15413_def : output15413 = (.seq output15412 output7971) := by
  unfold output15413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15413_skip : Flapjack.WordAlloc.isSkip output15413 = false := by
  rw [output15413_def]
  conv => lhs; cbv
  try rfl
theorem node15413_eq : Flapjack.WordAlloc.removeDeadStructural input15413 value3984 value1 value2 = (output15413, value6896, value1) := by
  rw [input15413_def, output15413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7971_eq]
  try dsimp only
  rw [node15412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15413 input7960)).val
theorem input15414_def : input15414 = (.seq input15413 input7960) := by
  unfold input15414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15413)).val
theorem output15414_def : output15414 = (output15413) := by
  unfold output15414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15414_skip : Flapjack.WordAlloc.isSkip output15414 = false := by
  rw [output15414_def]
  conv => lhs; cbv
  try rfl
theorem node15414_eq : Flapjack.WordAlloc.removeDeadStructural input15414 value3984 value1 value2 = (output15414, value6896, value1) := by
  rw [input15414_def, output15414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7960_eq]
  try dsimp only
  rw [node15413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15414 input7959)).val
theorem input15415_def : input15415 = (.seq input15414 input7959) := by
  unfold input15415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15414 output7959)).val
theorem output15415_def : output15415 = (.seq output15414 output7959) := by
  unfold output15415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15415_skip : Flapjack.WordAlloc.isSkip output15415 = false := by
  rw [output15415_def]
  conv => lhs; cbv
  try rfl
theorem node15415_eq : Flapjack.WordAlloc.removeDeadStructural input15415 value3983 value1 value2 = (output15415, value6896, value1) := by
  rw [input15415_def, output15415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7959_eq]
  try dsimp only
  rw [node15414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15415 input7958)).val
theorem input15416_def : input15416 = (.seq input15415 input7958) := by
  unfold input15416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15415 output7958)).val
theorem output15416_def : output15416 = (.seq output15415 output7958) := by
  unfold output15416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15416_skip : Flapjack.WordAlloc.isSkip output15416 = false := by
  rw [output15416_def]
  conv => lhs; cbv
  try rfl
theorem node15416_eq : Flapjack.WordAlloc.removeDeadStructural input15416 value5 value1 value2 = (output15416, value6896, value1) := by
  rw [input15416_def, output15416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7958_eq]
  try dsimp only
  rw [node15415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15416 input7955)).val
theorem input15417_def : input15417 = (.seq input15416 input7955) := by
  unfold input15417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15416 output7955)).val
theorem output15417_def : output15417 = (.seq output15416 output7955) := by
  unfold output15417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15417_skip : Flapjack.WordAlloc.isSkip output15417 = false := by
  rw [output15417_def]
  conv => lhs; cbv
  try rfl
theorem node15417_eq : Flapjack.WordAlloc.removeDeadStructural input15417 value3976 value1 value2 = (output15417, value6896, value1) := by
  rw [input15417_def, output15417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7955_eq]
  try dsimp only
  rw [node15416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15417 input7944)).val
theorem input15418_def : input15418 = (.seq input15417 input7944) := by
  unfold input15418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15417)).val
theorem output15418_def : output15418 = (output15417) := by
  unfold output15418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15418_skip : Flapjack.WordAlloc.isSkip output15418 = false := by
  rw [output15418_def]
  conv => lhs; cbv
  try rfl
theorem node15418_eq : Flapjack.WordAlloc.removeDeadStructural input15418 value3976 value1 value2 = (output15418, value6896, value1) := by
  rw [input15418_def, output15418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7944_eq]
  try dsimp only
  rw [node15417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15418 input7943)).val
theorem input15419_def : input15419 = (.seq input15418 input7943) := by
  unfold input15419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15418 output7943)).val
theorem output15419_def : output15419 = (.seq output15418 output7943) := by
  unfold output15419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15419_skip : Flapjack.WordAlloc.isSkip output15419 = false := by
  rw [output15419_def]
  conv => lhs; cbv
  try rfl
theorem node15419_eq : Flapjack.WordAlloc.removeDeadStructural input15419 value3975 value1 value2 = (output15419, value6896, value1) := by
  rw [input15419_def, output15419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7943_eq]
  try dsimp only
  rw [node15418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15419 input7942)).val
theorem input15420_def : input15420 = (.seq input15419 input7942) := by
  unfold input15420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15419 output7942)).val
theorem output15420_def : output15420 = (.seq output15419 output7942) := by
  unfold output15420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15420_skip : Flapjack.WordAlloc.isSkip output15420 = false := by
  rw [output15420_def]
  conv => lhs; cbv
  try rfl
theorem node15420_eq : Flapjack.WordAlloc.removeDeadStructural input15420 value5 value1 value2 = (output15420, value6896, value1) := by
  rw [input15420_def, output15420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7942_eq]
  try dsimp only
  rw [node15419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15420 input7939)).val
theorem input15421_def : input15421 = (.seq input15420 input7939) := by
  unfold input15421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15420 output7939)).val
theorem output15421_def : output15421 = (.seq output15420 output7939) := by
  unfold output15421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15421_skip : Flapjack.WordAlloc.isSkip output15421 = false := by
  rw [output15421_def]
  conv => lhs; cbv
  try rfl
theorem node15421_eq : Flapjack.WordAlloc.removeDeadStructural input15421 value3968 value1 value2 = (output15421, value6896, value1) := by
  rw [input15421_def, output15421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7939_eq]
  try dsimp only
  rw [node15420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15421 input7928)).val
theorem input15422_def : input15422 = (.seq input15421 input7928) := by
  unfold input15422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15421)).val
theorem output15422_def : output15422 = (output15421) := by
  unfold output15422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15422_skip : Flapjack.WordAlloc.isSkip output15422 = false := by
  rw [output15422_def]
  conv => lhs; cbv
  try rfl
theorem node15422_eq : Flapjack.WordAlloc.removeDeadStructural input15422 value3968 value1 value2 = (output15422, value6896, value1) := by
  rw [input15422_def, output15422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7928_eq]
  try dsimp only
  rw [node15421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15422 input7927)).val
theorem input15423_def : input15423 = (.seq input15422 input7927) := by
  unfold input15423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15422 output7927)).val
theorem output15423_def : output15423 = (.seq output15422 output7927) := by
  unfold output15423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15423_skip : Flapjack.WordAlloc.isSkip output15423 = false := by
  rw [output15423_def]
  conv => lhs; cbv
  try rfl
theorem node15423_eq : Flapjack.WordAlloc.removeDeadStructural input15423 value3967 value1 value2 = (output15423, value6896, value1) := by
  rw [input15423_def, output15423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7927_eq]
  try dsimp only
  rw [node15422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15423 input7926)).val
theorem input15424_def : input15424 = (.seq input15423 input7926) := by
  unfold input15424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15423 output7926)).val
theorem output15424_def : output15424 = (.seq output15423 output7926) := by
  unfold output15424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15424_skip : Flapjack.WordAlloc.isSkip output15424 = false := by
  rw [output15424_def]
  conv => lhs; cbv
  try rfl
theorem node15424_eq : Flapjack.WordAlloc.removeDeadStructural input15424 value5 value1 value2 = (output15424, value6896, value1) := by
  rw [input15424_def, output15424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7926_eq]
  try dsimp only
  rw [node15423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15424 input7923)).val
theorem input15425_def : input15425 = (.seq input15424 input7923) := by
  unfold input15425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15424 output7923)).val
theorem output15425_def : output15425 = (.seq output15424 output7923) := by
  unfold output15425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15425_skip : Flapjack.WordAlloc.isSkip output15425 = false := by
  rw [output15425_def]
  conv => lhs; cbv
  try rfl
theorem node15425_eq : Flapjack.WordAlloc.removeDeadStructural input15425 value3960 value1 value2 = (output15425, value6896, value1) := by
  rw [input15425_def, output15425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7923_eq]
  try dsimp only
  rw [node15424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15425 input7912)).val
theorem input15426_def : input15426 = (.seq input15425 input7912) := by
  unfold input15426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15425)).val
theorem output15426_def : output15426 = (output15425) := by
  unfold output15426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15426_skip : Flapjack.WordAlloc.isSkip output15426 = false := by
  rw [output15426_def]
  conv => lhs; cbv
  try rfl
theorem node15426_eq : Flapjack.WordAlloc.removeDeadStructural input15426 value3960 value1 value2 = (output15426, value6896, value1) := by
  rw [input15426_def, output15426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7912_eq]
  try dsimp only
  rw [node15425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15426 input7911)).val
theorem input15427_def : input15427 = (.seq input15426 input7911) := by
  unfold input15427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15426 output7911)).val
theorem output15427_def : output15427 = (.seq output15426 output7911) := by
  unfold output15427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15427_skip : Flapjack.WordAlloc.isSkip output15427 = false := by
  rw [output15427_def]
  conv => lhs; cbv
  try rfl
theorem node15427_eq : Flapjack.WordAlloc.removeDeadStructural input15427 value3959 value1 value2 = (output15427, value6896, value1) := by
  rw [input15427_def, output15427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7911_eq]
  try dsimp only
  rw [node15426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15427 input7910)).val
theorem input15428_def : input15428 = (.seq input15427 input7910) := by
  unfold input15428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15427 output7910)).val
theorem output15428_def : output15428 = (.seq output15427 output7910) := by
  unfold output15428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15428_skip : Flapjack.WordAlloc.isSkip output15428 = false := by
  rw [output15428_def]
  conv => lhs; cbv
  try rfl
theorem node15428_eq : Flapjack.WordAlloc.removeDeadStructural input15428 value5 value1 value2 = (output15428, value6896, value1) := by
  rw [input15428_def, output15428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7910_eq]
  try dsimp only
  rw [node15427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15428 input7907)).val
theorem input15429_def : input15429 = (.seq input15428 input7907) := by
  unfold input15429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15428 output7907)).val
theorem output15429_def : output15429 = (.seq output15428 output7907) := by
  unfold output15429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15429_skip : Flapjack.WordAlloc.isSkip output15429 = false := by
  rw [output15429_def]
  conv => lhs; cbv
  try rfl
theorem node15429_eq : Flapjack.WordAlloc.removeDeadStructural input15429 value3952 value1 value2 = (output15429, value6896, value1) := by
  rw [input15429_def, output15429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7907_eq]
  try dsimp only
  rw [node15428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15429 input7896)).val
theorem input15430_def : input15430 = (.seq input15429 input7896) := by
  unfold input15430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15429)).val
theorem output15430_def : output15430 = (output15429) := by
  unfold output15430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15430_skip : Flapjack.WordAlloc.isSkip output15430 = false := by
  rw [output15430_def]
  conv => lhs; cbv
  try rfl
theorem node15430_eq : Flapjack.WordAlloc.removeDeadStructural input15430 value3952 value1 value2 = (output15430, value6896, value1) := by
  rw [input15430_def, output15430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7896_eq]
  try dsimp only
  rw [node15429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15430 input7895)).val
theorem input15431_def : input15431 = (.seq input15430 input7895) := by
  unfold input15431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15430 output7895)).val
theorem output15431_def : output15431 = (.seq output15430 output7895) := by
  unfold output15431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15431_skip : Flapjack.WordAlloc.isSkip output15431 = false := by
  rw [output15431_def]
  conv => lhs; cbv
  try rfl
theorem node15431_eq : Flapjack.WordAlloc.removeDeadStructural input15431 value3951 value1 value2 = (output15431, value6896, value1) := by
  rw [input15431_def, output15431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7895_eq]
  try dsimp only
  rw [node15430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15431 input7894)).val
theorem input15432_def : input15432 = (.seq input15431 input7894) := by
  unfold input15432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15431 output7894)).val
theorem output15432_def : output15432 = (.seq output15431 output7894) := by
  unfold output15432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15432_skip : Flapjack.WordAlloc.isSkip output15432 = false := by
  rw [output15432_def]
  conv => lhs; cbv
  try rfl
theorem node15432_eq : Flapjack.WordAlloc.removeDeadStructural input15432 value5 value1 value2 = (output15432, value6896, value1) := by
  rw [input15432_def, output15432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7894_eq]
  try dsimp only
  rw [node15431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15432 input7891)).val
theorem input15433_def : input15433 = (.seq input15432 input7891) := by
  unfold input15433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15432 output7891)).val
theorem output15433_def : output15433 = (.seq output15432 output7891) := by
  unfold output15433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15433_skip : Flapjack.WordAlloc.isSkip output15433 = false := by
  rw [output15433_def]
  conv => lhs; cbv
  try rfl
theorem node15433_eq : Flapjack.WordAlloc.removeDeadStructural input15433 value3944 value1 value2 = (output15433, value6896, value1) := by
  rw [input15433_def, output15433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7891_eq]
  try dsimp only
  rw [node15432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15433 input7880)).val
theorem input15434_def : input15434 = (.seq input15433 input7880) := by
  unfold input15434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15433)).val
theorem output15434_def : output15434 = (output15433) := by
  unfold output15434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15434_skip : Flapjack.WordAlloc.isSkip output15434 = false := by
  rw [output15434_def]
  conv => lhs; cbv
  try rfl
theorem node15434_eq : Flapjack.WordAlloc.removeDeadStructural input15434 value3944 value1 value2 = (output15434, value6896, value1) := by
  rw [input15434_def, output15434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7880_eq]
  try dsimp only
  rw [node15433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15434 input7879)).val
theorem input15435_def : input15435 = (.seq input15434 input7879) := by
  unfold input15435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15434 output7879)).val
theorem output15435_def : output15435 = (.seq output15434 output7879) := by
  unfold output15435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15435_skip : Flapjack.WordAlloc.isSkip output15435 = false := by
  rw [output15435_def]
  conv => lhs; cbv
  try rfl
theorem node15435_eq : Flapjack.WordAlloc.removeDeadStructural input15435 value3943 value1 value2 = (output15435, value6896, value1) := by
  rw [input15435_def, output15435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7879_eq]
  try dsimp only
  rw [node15434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15435 input7878)).val
theorem input15436_def : input15436 = (.seq input15435 input7878) := by
  unfold input15436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15435 output7878)).val
theorem output15436_def : output15436 = (.seq output15435 output7878) := by
  unfold output15436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15436_skip : Flapjack.WordAlloc.isSkip output15436 = false := by
  rw [output15436_def]
  conv => lhs; cbv
  try rfl
theorem node15436_eq : Flapjack.WordAlloc.removeDeadStructural input15436 value5 value1 value2 = (output15436, value6896, value1) := by
  rw [input15436_def, output15436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7878_eq]
  try dsimp only
  rw [node15435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15436 input7875)).val
theorem input15437_def : input15437 = (.seq input15436 input7875) := by
  unfold input15437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15436 output7875)).val
theorem output15437_def : output15437 = (.seq output15436 output7875) := by
  unfold output15437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15437_skip : Flapjack.WordAlloc.isSkip output15437 = false := by
  rw [output15437_def]
  conv => lhs; cbv
  try rfl
theorem node15437_eq : Flapjack.WordAlloc.removeDeadStructural input15437 value3936 value1 value2 = (output15437, value6896, value1) := by
  rw [input15437_def, output15437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7875_eq]
  try dsimp only
  rw [node15436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15437 input7864)).val
theorem input15438_def : input15438 = (.seq input15437 input7864) := by
  unfold input15438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15437)).val
theorem output15438_def : output15438 = (output15437) := by
  unfold output15438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15438_skip : Flapjack.WordAlloc.isSkip output15438 = false := by
  rw [output15438_def]
  conv => lhs; cbv
  try rfl
theorem node15438_eq : Flapjack.WordAlloc.removeDeadStructural input15438 value3936 value1 value2 = (output15438, value6896, value1) := by
  rw [input15438_def, output15438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7864_eq]
  try dsimp only
  rw [node15437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15438 input7863)).val
theorem input15439_def : input15439 = (.seq input15438 input7863) := by
  unfold input15439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15438 output7863)).val
theorem output15439_def : output15439 = (.seq output15438 output7863) := by
  unfold output15439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15439_skip : Flapjack.WordAlloc.isSkip output15439 = false := by
  rw [output15439_def]
  conv => lhs; cbv
  try rfl
theorem node15439_eq : Flapjack.WordAlloc.removeDeadStructural input15439 value3935 value1 value2 = (output15439, value6896, value1) := by
  rw [input15439_def, output15439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7863_eq]
  try dsimp only
  rw [node15438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15439 input7862)).val
theorem input15440_def : input15440 = (.seq input15439 input7862) := by
  unfold input15440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15439 output7862)).val
theorem output15440_def : output15440 = (.seq output15439 output7862) := by
  unfold output15440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15440_skip : Flapjack.WordAlloc.isSkip output15440 = false := by
  rw [output15440_def]
  conv => lhs; cbv
  try rfl
theorem node15440_eq : Flapjack.WordAlloc.removeDeadStructural input15440 value5 value1 value2 = (output15440, value6896, value1) := by
  rw [input15440_def, output15440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7862_eq]
  try dsimp only
  rw [node15439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15440 input7859)).val
theorem input15441_def : input15441 = (.seq input15440 input7859) := by
  unfold input15441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15440 output7859)).val
theorem output15441_def : output15441 = (.seq output15440 output7859) := by
  unfold output15441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15441_skip : Flapjack.WordAlloc.isSkip output15441 = false := by
  rw [output15441_def]
  conv => lhs; cbv
  try rfl
theorem node15441_eq : Flapjack.WordAlloc.removeDeadStructural input15441 value3928 value1 value2 = (output15441, value6896, value1) := by
  rw [input15441_def, output15441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7859_eq]
  try dsimp only
  rw [node15440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15441 input7848)).val
theorem input15442_def : input15442 = (.seq input15441 input7848) := by
  unfold input15442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15441)).val
theorem output15442_def : output15442 = (output15441) := by
  unfold output15442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15442_skip : Flapjack.WordAlloc.isSkip output15442 = false := by
  rw [output15442_def]
  conv => lhs; cbv
  try rfl
theorem node15442_eq : Flapjack.WordAlloc.removeDeadStructural input15442 value3928 value1 value2 = (output15442, value6896, value1) := by
  rw [input15442_def, output15442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7848_eq]
  try dsimp only
  rw [node15441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15442 input7847)).val
theorem input15443_def : input15443 = (.seq input15442 input7847) := by
  unfold input15443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15442 output7847)).val
theorem output15443_def : output15443 = (.seq output15442 output7847) := by
  unfold output15443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15443_skip : Flapjack.WordAlloc.isSkip output15443 = false := by
  rw [output15443_def]
  conv => lhs; cbv
  try rfl
theorem node15443_eq : Flapjack.WordAlloc.removeDeadStructural input15443 value3927 value1 value2 = (output15443, value6896, value1) := by
  rw [input15443_def, output15443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7847_eq]
  try dsimp only
  rw [node15442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15443 input7846)).val
theorem input15444_def : input15444 = (.seq input15443 input7846) := by
  unfold input15444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15443 output7846)).val
theorem output15444_def : output15444 = (.seq output15443 output7846) := by
  unfold output15444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15444_skip : Flapjack.WordAlloc.isSkip output15444 = false := by
  rw [output15444_def]
  conv => lhs; cbv
  try rfl
theorem node15444_eq : Flapjack.WordAlloc.removeDeadStructural input15444 value5 value1 value2 = (output15444, value6896, value1) := by
  rw [input15444_def, output15444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7846_eq]
  try dsimp only
  rw [node15443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15444 input7843)).val
theorem input15445_def : input15445 = (.seq input15444 input7843) := by
  unfold input15445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15444 output7843)).val
theorem output15445_def : output15445 = (.seq output15444 output7843) := by
  unfold output15445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15445_skip : Flapjack.WordAlloc.isSkip output15445 = false := by
  rw [output15445_def]
  conv => lhs; cbv
  try rfl
theorem node15445_eq : Flapjack.WordAlloc.removeDeadStructural input15445 value3920 value1 value2 = (output15445, value6896, value1) := by
  rw [input15445_def, output15445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7843_eq]
  try dsimp only
  rw [node15444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15445 input7832)).val
theorem input15446_def : input15446 = (.seq input15445 input7832) := by
  unfold input15446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15445)).val
theorem output15446_def : output15446 = (output15445) := by
  unfold output15446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15446_skip : Flapjack.WordAlloc.isSkip output15446 = false := by
  rw [output15446_def]
  conv => lhs; cbv
  try rfl
theorem node15446_eq : Flapjack.WordAlloc.removeDeadStructural input15446 value3920 value1 value2 = (output15446, value6896, value1) := by
  rw [input15446_def, output15446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7832_eq]
  try dsimp only
  rw [node15445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15446 input7831)).val
theorem input15447_def : input15447 = (.seq input15446 input7831) := by
  unfold input15447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15446 output7831)).val
theorem output15447_def : output15447 = (.seq output15446 output7831) := by
  unfold output15447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15447_skip : Flapjack.WordAlloc.isSkip output15447 = false := by
  rw [output15447_def]
  conv => lhs; cbv
  try rfl
theorem node15447_eq : Flapjack.WordAlloc.removeDeadStructural input15447 value3919 value1 value2 = (output15447, value6896, value1) := by
  rw [input15447_def, output15447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7831_eq]
  try dsimp only
  rw [node15446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15447 input7830)).val
theorem input15448_def : input15448 = (.seq input15447 input7830) := by
  unfold input15448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15447 output7830)).val
theorem output15448_def : output15448 = (.seq output15447 output7830) := by
  unfold output15448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15448_skip : Flapjack.WordAlloc.isSkip output15448 = false := by
  rw [output15448_def]
  conv => lhs; cbv
  try rfl
theorem node15448_eq : Flapjack.WordAlloc.removeDeadStructural input15448 value5 value1 value2 = (output15448, value6896, value1) := by
  rw [input15448_def, output15448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7830_eq]
  try dsimp only
  rw [node15447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15448 input7827)).val
theorem input15449_def : input15449 = (.seq input15448 input7827) := by
  unfold input15449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15448 output7827)).val
theorem output15449_def : output15449 = (.seq output15448 output7827) := by
  unfold output15449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15449_skip : Flapjack.WordAlloc.isSkip output15449 = false := by
  rw [output15449_def]
  conv => lhs; cbv
  try rfl
theorem node15449_eq : Flapjack.WordAlloc.removeDeadStructural input15449 value3912 value1 value2 = (output15449, value6896, value1) := by
  rw [input15449_def, output15449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7827_eq]
  try dsimp only
  rw [node15448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15449 input7816)).val
theorem input15450_def : input15450 = (.seq input15449 input7816) := by
  unfold input15450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15449)).val
theorem output15450_def : output15450 = (output15449) := by
  unfold output15450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15450_skip : Flapjack.WordAlloc.isSkip output15450 = false := by
  rw [output15450_def]
  conv => lhs; cbv
  try rfl
theorem node15450_eq : Flapjack.WordAlloc.removeDeadStructural input15450 value3912 value1 value2 = (output15450, value6896, value1) := by
  rw [input15450_def, output15450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7816_eq]
  try dsimp only
  rw [node15449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15450 input7815)).val
theorem input15451_def : input15451 = (.seq input15450 input7815) := by
  unfold input15451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15450 output7815)).val
theorem output15451_def : output15451 = (.seq output15450 output7815) := by
  unfold output15451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15451_skip : Flapjack.WordAlloc.isSkip output15451 = false := by
  rw [output15451_def]
  conv => lhs; cbv
  try rfl
theorem node15451_eq : Flapjack.WordAlloc.removeDeadStructural input15451 value3911 value1 value2 = (output15451, value6896, value1) := by
  rw [input15451_def, output15451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7815_eq]
  try dsimp only
  rw [node15450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15451 input7814)).val
theorem input15452_def : input15452 = (.seq input15451 input7814) := by
  unfold input15452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15451 output7814)).val
theorem output15452_def : output15452 = (.seq output15451 output7814) := by
  unfold output15452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15452_skip : Flapjack.WordAlloc.isSkip output15452 = false := by
  rw [output15452_def]
  conv => lhs; cbv
  try rfl
theorem node15452_eq : Flapjack.WordAlloc.removeDeadStructural input15452 value5 value1 value2 = (output15452, value6896, value1) := by
  rw [input15452_def, output15452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7814_eq]
  try dsimp only
  rw [node15451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15452 input7811)).val
theorem input15453_def : input15453 = (.seq input15452 input7811) := by
  unfold input15453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15452 output7811)).val
theorem output15453_def : output15453 = (.seq output15452 output7811) := by
  unfold output15453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15453_skip : Flapjack.WordAlloc.isSkip output15453 = false := by
  rw [output15453_def]
  conv => lhs; cbv
  try rfl
theorem node15453_eq : Flapjack.WordAlloc.removeDeadStructural input15453 value3904 value1 value2 = (output15453, value6896, value1) := by
  rw [input15453_def, output15453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7811_eq]
  try dsimp only
  rw [node15452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15453 input7800)).val
theorem input15454_def : input15454 = (.seq input15453 input7800) := by
  unfold input15454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15453)).val
theorem output15454_def : output15454 = (output15453) := by
  unfold output15454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15454_skip : Flapjack.WordAlloc.isSkip output15454 = false := by
  rw [output15454_def]
  conv => lhs; cbv
  try rfl
theorem node15454_eq : Flapjack.WordAlloc.removeDeadStructural input15454 value3904 value1 value2 = (output15454, value6896, value1) := by
  rw [input15454_def, output15454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7800_eq]
  try dsimp only
  rw [node15453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15454 input7799)).val
theorem input15455_def : input15455 = (.seq input15454 input7799) := by
  unfold input15455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15454 output7799)).val
theorem output15455_def : output15455 = (.seq output15454 output7799) := by
  unfold output15455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15455_skip : Flapjack.WordAlloc.isSkip output15455 = false := by
  rw [output15455_def]
  conv => lhs; cbv
  try rfl
theorem node15455_eq : Flapjack.WordAlloc.removeDeadStructural input15455 value3903 value1 value2 = (output15455, value6896, value1) := by
  rw [input15455_def, output15455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7799_eq]
  try dsimp only
  rw [node15454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15455 input7798)).val
theorem input15456_def : input15456 = (.seq input15455 input7798) := by
  unfold input15456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15455 output7798)).val
theorem output15456_def : output15456 = (.seq output15455 output7798) := by
  unfold output15456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15456_skip : Flapjack.WordAlloc.isSkip output15456 = false := by
  rw [output15456_def]
  conv => lhs; cbv
  try rfl
theorem node15456_eq : Flapjack.WordAlloc.removeDeadStructural input15456 value5 value1 value2 = (output15456, value6896, value1) := by
  rw [input15456_def, output15456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7798_eq]
  try dsimp only
  rw [node15455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15456 input7795)).val
theorem input15457_def : input15457 = (.seq input15456 input7795) := by
  unfold input15457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15456 output7795)).val
theorem output15457_def : output15457 = (.seq output15456 output7795) := by
  unfold output15457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15457_skip : Flapjack.WordAlloc.isSkip output15457 = false := by
  rw [output15457_def]
  conv => lhs; cbv
  try rfl
theorem node15457_eq : Flapjack.WordAlloc.removeDeadStructural input15457 value3896 value1 value2 = (output15457, value6896, value1) := by
  rw [input15457_def, output15457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7795_eq]
  try dsimp only
  rw [node15456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15457 input7784)).val
theorem input15458_def : input15458 = (.seq input15457 input7784) := by
  unfold input15458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15457)).val
theorem output15458_def : output15458 = (output15457) := by
  unfold output15458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15458_skip : Flapjack.WordAlloc.isSkip output15458 = false := by
  rw [output15458_def]
  conv => lhs; cbv
  try rfl
theorem node15458_eq : Flapjack.WordAlloc.removeDeadStructural input15458 value3896 value1 value2 = (output15458, value6896, value1) := by
  rw [input15458_def, output15458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7784_eq]
  try dsimp only
  rw [node15457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15458 input7783)).val
theorem input15459_def : input15459 = (.seq input15458 input7783) := by
  unfold input15459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15458 output7783)).val
theorem output15459_def : output15459 = (.seq output15458 output7783) := by
  unfold output15459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15459_skip : Flapjack.WordAlloc.isSkip output15459 = false := by
  rw [output15459_def]
  conv => lhs; cbv
  try rfl
theorem node15459_eq : Flapjack.WordAlloc.removeDeadStructural input15459 value3895 value1 value2 = (output15459, value6896, value1) := by
  rw [input15459_def, output15459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7783_eq]
  try dsimp only
  rw [node15458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15459 input7782)).val
theorem input15460_def : input15460 = (.seq input15459 input7782) := by
  unfold input15460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15459 output7782)).val
theorem output15460_def : output15460 = (.seq output15459 output7782) := by
  unfold output15460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15460_skip : Flapjack.WordAlloc.isSkip output15460 = false := by
  rw [output15460_def]
  conv => lhs; cbv
  try rfl
theorem node15460_eq : Flapjack.WordAlloc.removeDeadStructural input15460 value5 value1 value2 = (output15460, value6896, value1) := by
  rw [input15460_def, output15460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7782_eq]
  try dsimp only
  rw [node15459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15460 input7779)).val
theorem input15461_def : input15461 = (.seq input15460 input7779) := by
  unfold input15461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15460 output7779)).val
theorem output15461_def : output15461 = (.seq output15460 output7779) := by
  unfold output15461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15461_skip : Flapjack.WordAlloc.isSkip output15461 = false := by
  rw [output15461_def]
  conv => lhs; cbv
  try rfl
theorem node15461_eq : Flapjack.WordAlloc.removeDeadStructural input15461 value3888 value1 value2 = (output15461, value6896, value1) := by
  rw [input15461_def, output15461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7779_eq]
  try dsimp only
  rw [node15460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15461 input7768)).val
theorem input15462_def : input15462 = (.seq input15461 input7768) := by
  unfold input15462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15461)).val
theorem output15462_def : output15462 = (output15461) := by
  unfold output15462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15462_skip : Flapjack.WordAlloc.isSkip output15462 = false := by
  rw [output15462_def]
  conv => lhs; cbv
  try rfl
theorem node15462_eq : Flapjack.WordAlloc.removeDeadStructural input15462 value3888 value1 value2 = (output15462, value6896, value1) := by
  rw [input15462_def, output15462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7768_eq]
  try dsimp only
  rw [node15461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15462 input7767)).val
theorem input15463_def : input15463 = (.seq input15462 input7767) := by
  unfold input15463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15462 output7767)).val
theorem output15463_def : output15463 = (.seq output15462 output7767) := by
  unfold output15463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15463_skip : Flapjack.WordAlloc.isSkip output15463 = false := by
  rw [output15463_def]
  conv => lhs; cbv
  try rfl
theorem node15463_eq : Flapjack.WordAlloc.removeDeadStructural input15463 value3887 value1 value2 = (output15463, value6896, value1) := by
  rw [input15463_def, output15463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7767_eq]
  try dsimp only
  rw [node15462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15463 input7766)).val
theorem input15464_def : input15464 = (.seq input15463 input7766) := by
  unfold input15464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15463 output7766)).val
theorem output15464_def : output15464 = (.seq output15463 output7766) := by
  unfold output15464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15464_skip : Flapjack.WordAlloc.isSkip output15464 = false := by
  rw [output15464_def]
  conv => lhs; cbv
  try rfl
theorem node15464_eq : Flapjack.WordAlloc.removeDeadStructural input15464 value5 value1 value2 = (output15464, value6896, value1) := by
  rw [input15464_def, output15464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7766_eq]
  try dsimp only
  rw [node15463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15464 input7763)).val
theorem input15465_def : input15465 = (.seq input15464 input7763) := by
  unfold input15465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15464 output7763)).val
theorem output15465_def : output15465 = (.seq output15464 output7763) := by
  unfold output15465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15465_skip : Flapjack.WordAlloc.isSkip output15465 = false := by
  rw [output15465_def]
  conv => lhs; cbv
  try rfl
theorem node15465_eq : Flapjack.WordAlloc.removeDeadStructural input15465 value3880 value1 value2 = (output15465, value6896, value1) := by
  rw [input15465_def, output15465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7763_eq]
  try dsimp only
  rw [node15464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15465 input7752)).val
theorem input15466_def : input15466 = (.seq input15465 input7752) := by
  unfold input15466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15465)).val
theorem output15466_def : output15466 = (output15465) := by
  unfold output15466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15466_skip : Flapjack.WordAlloc.isSkip output15466 = false := by
  rw [output15466_def]
  conv => lhs; cbv
  try rfl
theorem node15466_eq : Flapjack.WordAlloc.removeDeadStructural input15466 value3880 value1 value2 = (output15466, value6896, value1) := by
  rw [input15466_def, output15466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7752_eq]
  try dsimp only
  rw [node15465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15466 input7751)).val
theorem input15467_def : input15467 = (.seq input15466 input7751) := by
  unfold input15467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15466 output7751)).val
theorem output15467_def : output15467 = (.seq output15466 output7751) := by
  unfold output15467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15467_skip : Flapjack.WordAlloc.isSkip output15467 = false := by
  rw [output15467_def]
  conv => lhs; cbv
  try rfl
theorem node15467_eq : Flapjack.WordAlloc.removeDeadStructural input15467 value3879 value1 value2 = (output15467, value6896, value1) := by
  rw [input15467_def, output15467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7751_eq]
  try dsimp only
  rw [node15466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15467 input7750)).val
theorem input15468_def : input15468 = (.seq input15467 input7750) := by
  unfold input15468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15467 output7750)).val
theorem output15468_def : output15468 = (.seq output15467 output7750) := by
  unfold output15468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15468_skip : Flapjack.WordAlloc.isSkip output15468 = false := by
  rw [output15468_def]
  conv => lhs; cbv
  try rfl
theorem node15468_eq : Flapjack.WordAlloc.removeDeadStructural input15468 value5 value1 value2 = (output15468, value6896, value1) := by
  rw [input15468_def, output15468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7750_eq]
  try dsimp only
  rw [node15467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15468 input7747)).val
theorem input15469_def : input15469 = (.seq input15468 input7747) := by
  unfold input15469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15468 output7747)).val
theorem output15469_def : output15469 = (.seq output15468 output7747) := by
  unfold output15469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15469_skip : Flapjack.WordAlloc.isSkip output15469 = false := by
  rw [output15469_def]
  conv => lhs; cbv
  try rfl
theorem node15469_eq : Flapjack.WordAlloc.removeDeadStructural input15469 value3872 value1 value2 = (output15469, value6896, value1) := by
  rw [input15469_def, output15469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7747_eq]
  try dsimp only
  rw [node15468_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15469 input7736)).val
theorem input15470_def : input15470 = (.seq input15469 input7736) := by
  unfold input15470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15469)).val
theorem output15470_def : output15470 = (output15469) := by
  unfold output15470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15470_skip : Flapjack.WordAlloc.isSkip output15470 = false := by
  rw [output15470_def]
  conv => lhs; cbv
  try rfl
theorem node15470_eq : Flapjack.WordAlloc.removeDeadStructural input15470 value3872 value1 value2 = (output15470, value6896, value1) := by
  rw [input15470_def, output15470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7736_eq]
  try dsimp only
  rw [node15469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15470 input7735)).val
theorem input15471_def : input15471 = (.seq input15470 input7735) := by
  unfold input15471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15470 output7735)).val
theorem output15471_def : output15471 = (.seq output15470 output7735) := by
  unfold output15471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15471_skip : Flapjack.WordAlloc.isSkip output15471 = false := by
  rw [output15471_def]
  conv => lhs; cbv
  try rfl
theorem node15471_eq : Flapjack.WordAlloc.removeDeadStructural input15471 value3871 value1 value2 = (output15471, value6896, value1) := by
  rw [input15471_def, output15471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7735_eq]
  try dsimp only
  rw [node15470_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15471 input7734)).val
theorem input15472_def : input15472 = (.seq input15471 input7734) := by
  unfold input15472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15471 output7734)).val
theorem output15472_def : output15472 = (.seq output15471 output7734) := by
  unfold output15472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15472_skip : Flapjack.WordAlloc.isSkip output15472 = false := by
  rw [output15472_def]
  conv => lhs; cbv
  try rfl
theorem node15472_eq : Flapjack.WordAlloc.removeDeadStructural input15472 value5 value1 value2 = (output15472, value6896, value1) := by
  rw [input15472_def, output15472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7734_eq]
  try dsimp only
  rw [node15471_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15472 input7731)).val
theorem input15473_def : input15473 = (.seq input15472 input7731) := by
  unfold input15473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15472 output7731)).val
theorem output15473_def : output15473 = (.seq output15472 output7731) := by
  unfold output15473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15473_skip : Flapjack.WordAlloc.isSkip output15473 = false := by
  rw [output15473_def]
  conv => lhs; cbv
  try rfl
theorem node15473_eq : Flapjack.WordAlloc.removeDeadStructural input15473 value3864 value1 value2 = (output15473, value6896, value1) := by
  rw [input15473_def, output15473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7731_eq]
  try dsimp only
  rw [node15472_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15473 input7720)).val
theorem input15474_def : input15474 = (.seq input15473 input7720) := by
  unfold input15474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15473)).val
theorem output15474_def : output15474 = (output15473) := by
  unfold output15474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15474_skip : Flapjack.WordAlloc.isSkip output15474 = false := by
  rw [output15474_def]
  conv => lhs; cbv
  try rfl
theorem node15474_eq : Flapjack.WordAlloc.removeDeadStructural input15474 value3864 value1 value2 = (output15474, value6896, value1) := by
  rw [input15474_def, output15474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7720_eq]
  try dsimp only
  rw [node15473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15474 input7719)).val
theorem input15475_def : input15475 = (.seq input15474 input7719) := by
  unfold input15475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15474 output7719)).val
theorem output15475_def : output15475 = (.seq output15474 output7719) := by
  unfold output15475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15475_skip : Flapjack.WordAlloc.isSkip output15475 = false := by
  rw [output15475_def]
  conv => lhs; cbv
  try rfl
theorem node15475_eq : Flapjack.WordAlloc.removeDeadStructural input15475 value3863 value1 value2 = (output15475, value6896, value1) := by
  rw [input15475_def, output15475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7719_eq]
  try dsimp only
  rw [node15474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15475 input7718)).val
theorem input15476_def : input15476 = (.seq input15475 input7718) := by
  unfold input15476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15475 output7718)).val
theorem output15476_def : output15476 = (.seq output15475 output7718) := by
  unfold output15476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15476_skip : Flapjack.WordAlloc.isSkip output15476 = false := by
  rw [output15476_def]
  conv => lhs; cbv
  try rfl
theorem node15476_eq : Flapjack.WordAlloc.removeDeadStructural input15476 value5 value1 value2 = (output15476, value6896, value1) := by
  rw [input15476_def, output15476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7718_eq]
  try dsimp only
  rw [node15475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15476 input7715)).val
theorem input15477_def : input15477 = (.seq input15476 input7715) := by
  unfold input15477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15476 output7715)).val
theorem output15477_def : output15477 = (.seq output15476 output7715) := by
  unfold output15477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15477_skip : Flapjack.WordAlloc.isSkip output15477 = false := by
  rw [output15477_def]
  conv => lhs; cbv
  try rfl
theorem node15477_eq : Flapjack.WordAlloc.removeDeadStructural input15477 value3856 value1 value2 = (output15477, value6896, value1) := by
  rw [input15477_def, output15477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7715_eq]
  try dsimp only
  rw [node15476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15477 input7704)).val
theorem input15478_def : input15478 = (.seq input15477 input7704) := by
  unfold input15478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15477)).val
theorem output15478_def : output15478 = (output15477) := by
  unfold output15478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15478_skip : Flapjack.WordAlloc.isSkip output15478 = false := by
  rw [output15478_def]
  conv => lhs; cbv
  try rfl
theorem node15478_eq : Flapjack.WordAlloc.removeDeadStructural input15478 value3856 value1 value2 = (output15478, value6896, value1) := by
  rw [input15478_def, output15478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7704_eq]
  try dsimp only
  rw [node15477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15478 input7703)).val
theorem input15479_def : input15479 = (.seq input15478 input7703) := by
  unfold input15479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15478 output7703)).val
theorem output15479_def : output15479 = (.seq output15478 output7703) := by
  unfold output15479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15479_skip : Flapjack.WordAlloc.isSkip output15479 = false := by
  rw [output15479_def]
  conv => lhs; cbv
  try rfl
theorem node15479_eq : Flapjack.WordAlloc.removeDeadStructural input15479 value3855 value1 value2 = (output15479, value6896, value1) := by
  rw [input15479_def, output15479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7703_eq]
  try dsimp only
  rw [node15478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15479 input7702)).val
theorem input15480_def : input15480 = (.seq input15479 input7702) := by
  unfold input15480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15479 output7702)).val
theorem output15480_def : output15480 = (.seq output15479 output7702) := by
  unfold output15480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15480_skip : Flapjack.WordAlloc.isSkip output15480 = false := by
  rw [output15480_def]
  conv => lhs; cbv
  try rfl
theorem node15480_eq : Flapjack.WordAlloc.removeDeadStructural input15480 value5 value1 value2 = (output15480, value6896, value1) := by
  rw [input15480_def, output15480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7702_eq]
  try dsimp only
  rw [node15479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15480 input7699)).val
theorem input15481_def : input15481 = (.seq input15480 input7699) := by
  unfold input15481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15480 output7699)).val
theorem output15481_def : output15481 = (.seq output15480 output7699) := by
  unfold output15481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15481_skip : Flapjack.WordAlloc.isSkip output15481 = false := by
  rw [output15481_def]
  conv => lhs; cbv
  try rfl
theorem node15481_eq : Flapjack.WordAlloc.removeDeadStructural input15481 value3848 value1 value2 = (output15481, value6896, value1) := by
  rw [input15481_def, output15481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7699_eq]
  try dsimp only
  rw [node15480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15481 input7688)).val
theorem input15482_def : input15482 = (.seq input15481 input7688) := by
  unfold input15482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15481)).val
theorem output15482_def : output15482 = (output15481) := by
  unfold output15482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15482_skip : Flapjack.WordAlloc.isSkip output15482 = false := by
  rw [output15482_def]
  conv => lhs; cbv
  try rfl
theorem node15482_eq : Flapjack.WordAlloc.removeDeadStructural input15482 value3848 value1 value2 = (output15482, value6896, value1) := by
  rw [input15482_def, output15482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7688_eq]
  try dsimp only
  rw [node15481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15482 input7687)).val
theorem input15483_def : input15483 = (.seq input15482 input7687) := by
  unfold input15483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15482 output7687)).val
theorem output15483_def : output15483 = (.seq output15482 output7687) := by
  unfold output15483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15483_skip : Flapjack.WordAlloc.isSkip output15483 = false := by
  rw [output15483_def]
  conv => lhs; cbv
  try rfl
theorem node15483_eq : Flapjack.WordAlloc.removeDeadStructural input15483 value3847 value1 value2 = (output15483, value6896, value1) := by
  rw [input15483_def, output15483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7687_eq]
  try dsimp only
  rw [node15482_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15483 input7686)).val
theorem input15484_def : input15484 = (.seq input15483 input7686) := by
  unfold input15484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15483 output7686)).val
theorem output15484_def : output15484 = (.seq output15483 output7686) := by
  unfold output15484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15484_skip : Flapjack.WordAlloc.isSkip output15484 = false := by
  rw [output15484_def]
  conv => lhs; cbv
  try rfl
theorem node15484_eq : Flapjack.WordAlloc.removeDeadStructural input15484 value5 value1 value2 = (output15484, value6896, value1) := by
  rw [input15484_def, output15484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7686_eq]
  try dsimp only
  rw [node15483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15484 input7683)).val
theorem input15485_def : input15485 = (.seq input15484 input7683) := by
  unfold input15485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15484 output7683)).val
theorem output15485_def : output15485 = (.seq output15484 output7683) := by
  unfold output15485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15485_skip : Flapjack.WordAlloc.isSkip output15485 = false := by
  rw [output15485_def]
  conv => lhs; cbv
  try rfl
theorem node15485_eq : Flapjack.WordAlloc.removeDeadStructural input15485 value3840 value1 value2 = (output15485, value6896, value1) := by
  rw [input15485_def, output15485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7683_eq]
  try dsimp only
  rw [node15484_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15485 input7672)).val
theorem input15486_def : input15486 = (.seq input15485 input7672) := by
  unfold input15486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15485)).val
theorem output15486_def : output15486 = (output15485) := by
  unfold output15486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15486_skip : Flapjack.WordAlloc.isSkip output15486 = false := by
  rw [output15486_def]
  conv => lhs; cbv
  try rfl
theorem node15486_eq : Flapjack.WordAlloc.removeDeadStructural input15486 value3840 value1 value2 = (output15486, value6896, value1) := by
  rw [input15486_def, output15486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7672_eq]
  try dsimp only
  rw [node15485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15486 input7671)).val
theorem input15487_def : input15487 = (.seq input15486 input7671) := by
  unfold input15487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15486 output7671)).val
theorem output15487_def : output15487 = (.seq output15486 output7671) := by
  unfold output15487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15487_skip : Flapjack.WordAlloc.isSkip output15487 = false := by
  rw [output15487_def]
  conv => lhs; cbv
  try rfl
theorem node15487_eq : Flapjack.WordAlloc.removeDeadStructural input15487 value3839 value1 value2 = (output15487, value6896, value1) := by
  rw [input15487_def, output15487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7671_eq]
  try dsimp only
  rw [node15486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15487 input7670)).val
theorem input15488_def : input15488 = (.seq input15487 input7670) := by
  unfold input15488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15487 output7670)).val
theorem output15488_def : output15488 = (.seq output15487 output7670) := by
  unfold output15488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15488_skip : Flapjack.WordAlloc.isSkip output15488 = false := by
  rw [output15488_def]
  conv => lhs; cbv
  try rfl
theorem node15488_eq : Flapjack.WordAlloc.removeDeadStructural input15488 value5 value1 value2 = (output15488, value6896, value1) := by
  rw [input15488_def, output15488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7670_eq]
  try dsimp only
  rw [node15487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15488 input7667)).val
theorem input15489_def : input15489 = (.seq input15488 input7667) := by
  unfold input15489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15488 output7667)).val
theorem output15489_def : output15489 = (.seq output15488 output7667) := by
  unfold output15489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15489_skip : Flapjack.WordAlloc.isSkip output15489 = false := by
  rw [output15489_def]
  conv => lhs; cbv
  try rfl
theorem node15489_eq : Flapjack.WordAlloc.removeDeadStructural input15489 value3832 value1 value2 = (output15489, value6896, value1) := by
  rw [input15489_def, output15489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7667_eq]
  try dsimp only
  rw [node15488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15489 input7656)).val
theorem input15490_def : input15490 = (.seq input15489 input7656) := by
  unfold input15490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15489)).val
theorem output15490_def : output15490 = (output15489) := by
  unfold output15490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15490_skip : Flapjack.WordAlloc.isSkip output15490 = false := by
  rw [output15490_def]
  conv => lhs; cbv
  try rfl
theorem node15490_eq : Flapjack.WordAlloc.removeDeadStructural input15490 value3832 value1 value2 = (output15490, value6896, value1) := by
  rw [input15490_def, output15490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7656_eq]
  try dsimp only
  rw [node15489_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15490 input7655)).val
theorem input15491_def : input15491 = (.seq input15490 input7655) := by
  unfold input15491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15490 output7655)).val
theorem output15491_def : output15491 = (.seq output15490 output7655) := by
  unfold output15491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15491_skip : Flapjack.WordAlloc.isSkip output15491 = false := by
  rw [output15491_def]
  conv => lhs; cbv
  try rfl
theorem node15491_eq : Flapjack.WordAlloc.removeDeadStructural input15491 value3831 value1 value2 = (output15491, value6896, value1) := by
  rw [input15491_def, output15491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7655_eq]
  try dsimp only
  rw [node15490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15491 input7654)).val
theorem input15492_def : input15492 = (.seq input15491 input7654) := by
  unfold input15492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15491 output7654)).val
theorem output15492_def : output15492 = (.seq output15491 output7654) := by
  unfold output15492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15492_skip : Flapjack.WordAlloc.isSkip output15492 = false := by
  rw [output15492_def]
  conv => lhs; cbv
  try rfl
theorem node15492_eq : Flapjack.WordAlloc.removeDeadStructural input15492 value5 value1 value2 = (output15492, value6896, value1) := by
  rw [input15492_def, output15492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7654_eq]
  try dsimp only
  rw [node15491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15492 input7651)).val
theorem input15493_def : input15493 = (.seq input15492 input7651) := by
  unfold input15493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15492 output7651)).val
theorem output15493_def : output15493 = (.seq output15492 output7651) := by
  unfold output15493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15493_skip : Flapjack.WordAlloc.isSkip output15493 = false := by
  rw [output15493_def]
  conv => lhs; cbv
  try rfl
theorem node15493_eq : Flapjack.WordAlloc.removeDeadStructural input15493 value3824 value1 value2 = (output15493, value6896, value1) := by
  rw [input15493_def, output15493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7651_eq]
  try dsimp only
  rw [node15492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15493 input7640)).val
theorem input15494_def : input15494 = (.seq input15493 input7640) := by
  unfold input15494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15493)).val
theorem output15494_def : output15494 = (output15493) := by
  unfold output15494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15494_skip : Flapjack.WordAlloc.isSkip output15494 = false := by
  rw [output15494_def]
  conv => lhs; cbv
  try rfl
theorem node15494_eq : Flapjack.WordAlloc.removeDeadStructural input15494 value3824 value1 value2 = (output15494, value6896, value1) := by
  rw [input15494_def, output15494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7640_eq]
  try dsimp only
  rw [node15493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15494 input7639)).val
theorem input15495_def : input15495 = (.seq input15494 input7639) := by
  unfold input15495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15494 output7639)).val
theorem output15495_def : output15495 = (.seq output15494 output7639) := by
  unfold output15495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15495_skip : Flapjack.WordAlloc.isSkip output15495 = false := by
  rw [output15495_def]
  conv => lhs; cbv
  try rfl
theorem node15495_eq : Flapjack.WordAlloc.removeDeadStructural input15495 value3823 value1 value2 = (output15495, value6896, value1) := by
  rw [input15495_def, output15495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7639_eq]
  try dsimp only
  rw [node15494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15495 input7638)).val
theorem input15496_def : input15496 = (.seq input15495 input7638) := by
  unfold input15496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15495 output7638)).val
theorem output15496_def : output15496 = (.seq output15495 output7638) := by
  unfold output15496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15496_skip : Flapjack.WordAlloc.isSkip output15496 = false := by
  rw [output15496_def]
  conv => lhs; cbv
  try rfl
theorem node15496_eq : Flapjack.WordAlloc.removeDeadStructural input15496 value5 value1 value2 = (output15496, value6896, value1) := by
  rw [input15496_def, output15496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7638_eq]
  try dsimp only
  rw [node15495_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15496 input7635)).val
theorem input15497_def : input15497 = (.seq input15496 input7635) := by
  unfold input15497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15496 output7635)).val
theorem output15497_def : output15497 = (.seq output15496 output7635) := by
  unfold output15497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15497_skip : Flapjack.WordAlloc.isSkip output15497 = false := by
  rw [output15497_def]
  conv => lhs; cbv
  try rfl
theorem node15497_eq : Flapjack.WordAlloc.removeDeadStructural input15497 value3816 value1 value2 = (output15497, value6896, value1) := by
  rw [input15497_def, output15497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7635_eq]
  try dsimp only
  rw [node15496_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15497 input7624)).val
theorem input15498_def : input15498 = (.seq input15497 input7624) := by
  unfold input15498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15497)).val
theorem output15498_def : output15498 = (output15497) := by
  unfold output15498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15498_skip : Flapjack.WordAlloc.isSkip output15498 = false := by
  rw [output15498_def]
  conv => lhs; cbv
  try rfl
theorem node15498_eq : Flapjack.WordAlloc.removeDeadStructural input15498 value3816 value1 value2 = (output15498, value6896, value1) := by
  rw [input15498_def, output15498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7624_eq]
  try dsimp only
  rw [node15497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15498 input7623)).val
theorem input15499_def : input15499 = (.seq input15498 input7623) := by
  unfold input15499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15498 output7623)).val
theorem output15499_def : output15499 = (.seq output15498 output7623) := by
  unfold output15499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15499_skip : Flapjack.WordAlloc.isSkip output15499 = false := by
  rw [output15499_def]
  conv => lhs; cbv
  try rfl
theorem node15499_eq : Flapjack.WordAlloc.removeDeadStructural input15499 value3815 value1 value2 = (output15499, value6896, value1) := by
  rw [input15499_def, output15499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7623_eq]
  try dsimp only
  rw [node15498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15499 input7622)).val
theorem input15500_def : input15500 = (.seq input15499 input7622) := by
  unfold input15500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15499 output7622)).val
theorem output15500_def : output15500 = (.seq output15499 output7622) := by
  unfold output15500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15500_skip : Flapjack.WordAlloc.isSkip output15500 = false := by
  rw [output15500_def]
  conv => lhs; cbv
  try rfl
theorem node15500_eq : Flapjack.WordAlloc.removeDeadStructural input15500 value5 value1 value2 = (output15500, value6896, value1) := by
  rw [input15500_def, output15500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7622_eq]
  try dsimp only
  rw [node15499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15500 input7619)).val
theorem input15501_def : input15501 = (.seq input15500 input7619) := by
  unfold input15501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15500 output7619)).val
theorem output15501_def : output15501 = (.seq output15500 output7619) := by
  unfold output15501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15501_skip : Flapjack.WordAlloc.isSkip output15501 = false := by
  rw [output15501_def]
  conv => lhs; cbv
  try rfl
theorem node15501_eq : Flapjack.WordAlloc.removeDeadStructural input15501 value3808 value1 value2 = (output15501, value6896, value1) := by
  rw [input15501_def, output15501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7619_eq]
  try dsimp only
  rw [node15500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15501 input7608)).val
theorem input15502_def : input15502 = (.seq input15501 input7608) := by
  unfold input15502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15501)).val
theorem output15502_def : output15502 = (output15501) := by
  unfold output15502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15502_skip : Flapjack.WordAlloc.isSkip output15502 = false := by
  rw [output15502_def]
  conv => lhs; cbv
  try rfl
theorem node15502_eq : Flapjack.WordAlloc.removeDeadStructural input15502 value3808 value1 value2 = (output15502, value6896, value1) := by
  rw [input15502_def, output15502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7608_eq]
  try dsimp only
  rw [node15501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15502 input7607)).val
theorem input15503_def : input15503 = (.seq input15502 input7607) := by
  unfold input15503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15502 output7607)).val
theorem output15503_def : output15503 = (.seq output15502 output7607) := by
  unfold output15503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15503_skip : Flapjack.WordAlloc.isSkip output15503 = false := by
  rw [output15503_def]
  conv => lhs; cbv
  try rfl
theorem node15503_eq : Flapjack.WordAlloc.removeDeadStructural input15503 value3807 value1 value2 = (output15503, value6896, value1) := by
  rw [input15503_def, output15503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7607_eq]
  try dsimp only
  rw [node15502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15503 input7606)).val
theorem input15504_def : input15504 = (.seq input15503 input7606) := by
  unfold input15504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15503 output7606)).val
theorem output15504_def : output15504 = (.seq output15503 output7606) := by
  unfold output15504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15504_skip : Flapjack.WordAlloc.isSkip output15504 = false := by
  rw [output15504_def]
  conv => lhs; cbv
  try rfl
theorem node15504_eq : Flapjack.WordAlloc.removeDeadStructural input15504 value5 value1 value2 = (output15504, value6896, value1) := by
  rw [input15504_def, output15504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7606_eq]
  try dsimp only
  rw [node15503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15504 input7603)).val
theorem input15505_def : input15505 = (.seq input15504 input7603) := by
  unfold input15505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15504 output7603)).val
theorem output15505_def : output15505 = (.seq output15504 output7603) := by
  unfold output15505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15505_skip : Flapjack.WordAlloc.isSkip output15505 = false := by
  rw [output15505_def]
  conv => lhs; cbv
  try rfl
theorem node15505_eq : Flapjack.WordAlloc.removeDeadStructural input15505 value3800 value1 value2 = (output15505, value6896, value1) := by
  rw [input15505_def, output15505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7603_eq]
  try dsimp only
  rw [node15504_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15505 input7592)).val
theorem input15506_def : input15506 = (.seq input15505 input7592) := by
  unfold input15506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15505)).val
theorem output15506_def : output15506 = (output15505) := by
  unfold output15506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15506_skip : Flapjack.WordAlloc.isSkip output15506 = false := by
  rw [output15506_def]
  conv => lhs; cbv
  try rfl
theorem node15506_eq : Flapjack.WordAlloc.removeDeadStructural input15506 value3800 value1 value2 = (output15506, value6896, value1) := by
  rw [input15506_def, output15506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7592_eq]
  try dsimp only
  rw [node15505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15506 input7591)).val
theorem input15507_def : input15507 = (.seq input15506 input7591) := by
  unfold input15507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15506 output7591)).val
theorem output15507_def : output15507 = (.seq output15506 output7591) := by
  unfold output15507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15507_skip : Flapjack.WordAlloc.isSkip output15507 = false := by
  rw [output15507_def]
  conv => lhs; cbv
  try rfl
theorem node15507_eq : Flapjack.WordAlloc.removeDeadStructural input15507 value3799 value1 value2 = (output15507, value6896, value1) := by
  rw [input15507_def, output15507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7591_eq]
  try dsimp only
  rw [node15506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15507 input7590)).val
theorem input15508_def : input15508 = (.seq input15507 input7590) := by
  unfold input15508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15507 output7590)).val
theorem output15508_def : output15508 = (.seq output15507 output7590) := by
  unfold output15508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15508_skip : Flapjack.WordAlloc.isSkip output15508 = false := by
  rw [output15508_def]
  conv => lhs; cbv
  try rfl
theorem node15508_eq : Flapjack.WordAlloc.removeDeadStructural input15508 value5 value1 value2 = (output15508, value6896, value1) := by
  rw [input15508_def, output15508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7590_eq]
  try dsimp only
  rw [node15507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15508 input7587)).val
theorem input15509_def : input15509 = (.seq input15508 input7587) := by
  unfold input15509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15508 output7587)).val
theorem output15509_def : output15509 = (.seq output15508 output7587) := by
  unfold output15509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15509_skip : Flapjack.WordAlloc.isSkip output15509 = false := by
  rw [output15509_def]
  conv => lhs; cbv
  try rfl
theorem node15509_eq : Flapjack.WordAlloc.removeDeadStructural input15509 value3792 value1 value2 = (output15509, value6896, value1) := by
  rw [input15509_def, output15509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7587_eq]
  try dsimp only
  rw [node15508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15509 input7576)).val
theorem input15510_def : input15510 = (.seq input15509 input7576) := by
  unfold input15510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15509)).val
theorem output15510_def : output15510 = (output15509) := by
  unfold output15510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15510_skip : Flapjack.WordAlloc.isSkip output15510 = false := by
  rw [output15510_def]
  conv => lhs; cbv
  try rfl
theorem node15510_eq : Flapjack.WordAlloc.removeDeadStructural input15510 value3792 value1 value2 = (output15510, value6896, value1) := by
  rw [input15510_def, output15510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7576_eq]
  try dsimp only
  rw [node15509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15510 input7575)).val
theorem input15511_def : input15511 = (.seq input15510 input7575) := by
  unfold input15511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15510 output7575)).val
theorem output15511_def : output15511 = (.seq output15510 output7575) := by
  unfold output15511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15511_skip : Flapjack.WordAlloc.isSkip output15511 = false := by
  rw [output15511_def]
  conv => lhs; cbv
  try rfl
theorem node15511_eq : Flapjack.WordAlloc.removeDeadStructural input15511 value3791 value1 value2 = (output15511, value6896, value1) := by
  rw [input15511_def, output15511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7575_eq]
  try dsimp only
  rw [node15510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15511 input7574)).val
theorem input15512_def : input15512 = (.seq input15511 input7574) := by
  unfold input15512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15511 output7574)).val
theorem output15512_def : output15512 = (.seq output15511 output7574) := by
  unfold output15512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15512_skip : Flapjack.WordAlloc.isSkip output15512 = false := by
  rw [output15512_def]
  conv => lhs; cbv
  try rfl
theorem node15512_eq : Flapjack.WordAlloc.removeDeadStructural input15512 value5 value1 value2 = (output15512, value6896, value1) := by
  rw [input15512_def, output15512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7574_eq]
  try dsimp only
  rw [node15511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15512 input7571)).val
theorem input15513_def : input15513 = (.seq input15512 input7571) := by
  unfold input15513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15512 output7571)).val
theorem output15513_def : output15513 = (.seq output15512 output7571) := by
  unfold output15513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15513_skip : Flapjack.WordAlloc.isSkip output15513 = false := by
  rw [output15513_def]
  conv => lhs; cbv
  try rfl
theorem node15513_eq : Flapjack.WordAlloc.removeDeadStructural input15513 value3784 value1 value2 = (output15513, value6896, value1) := by
  rw [input15513_def, output15513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7571_eq]
  try dsimp only
  rw [node15512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15513 input7560)).val
theorem input15514_def : input15514 = (.seq input15513 input7560) := by
  unfold input15514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15513)).val
theorem output15514_def : output15514 = (output15513) := by
  unfold output15514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15514_skip : Flapjack.WordAlloc.isSkip output15514 = false := by
  rw [output15514_def]
  conv => lhs; cbv
  try rfl
theorem node15514_eq : Flapjack.WordAlloc.removeDeadStructural input15514 value3784 value1 value2 = (output15514, value6896, value1) := by
  rw [input15514_def, output15514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7560_eq]
  try dsimp only
  rw [node15513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15514 input7559)).val
theorem input15515_def : input15515 = (.seq input15514 input7559) := by
  unfold input15515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15514 output7559)).val
theorem output15515_def : output15515 = (.seq output15514 output7559) := by
  unfold output15515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15515_skip : Flapjack.WordAlloc.isSkip output15515 = false := by
  rw [output15515_def]
  conv => lhs; cbv
  try rfl
theorem node15515_eq : Flapjack.WordAlloc.removeDeadStructural input15515 value3783 value1 value2 = (output15515, value6896, value1) := by
  rw [input15515_def, output15515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7559_eq]
  try dsimp only
  rw [node15514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15515 input7558)).val
theorem input15516_def : input15516 = (.seq input15515 input7558) := by
  unfold input15516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15515 output7558)).val
theorem output15516_def : output15516 = (.seq output15515 output7558) := by
  unfold output15516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15516_skip : Flapjack.WordAlloc.isSkip output15516 = false := by
  rw [output15516_def]
  conv => lhs; cbv
  try rfl
theorem node15516_eq : Flapjack.WordAlloc.removeDeadStructural input15516 value5 value1 value2 = (output15516, value6896, value1) := by
  rw [input15516_def, output15516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7558_eq]
  try dsimp only
  rw [node15515_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15516 input7555)).val
theorem input15517_def : input15517 = (.seq input15516 input7555) := by
  unfold input15517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15516 output7555)).val
theorem output15517_def : output15517 = (.seq output15516 output7555) := by
  unfold output15517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15517_skip : Flapjack.WordAlloc.isSkip output15517 = false := by
  rw [output15517_def]
  conv => lhs; cbv
  try rfl
theorem node15517_eq : Flapjack.WordAlloc.removeDeadStructural input15517 value3776 value1 value2 = (output15517, value6896, value1) := by
  rw [input15517_def, output15517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7555_eq]
  try dsimp only
  rw [node15516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15517 input7544)).val
theorem input15518_def : input15518 = (.seq input15517 input7544) := by
  unfold input15518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15517)).val
theorem output15518_def : output15518 = (output15517) := by
  unfold output15518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15518_skip : Flapjack.WordAlloc.isSkip output15518 = false := by
  rw [output15518_def]
  conv => lhs; cbv
  try rfl
theorem node15518_eq : Flapjack.WordAlloc.removeDeadStructural input15518 value3776 value1 value2 = (output15518, value6896, value1) := by
  rw [input15518_def, output15518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7544_eq]
  try dsimp only
  rw [node15517_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15518 input7543)).val
theorem input15519_def : input15519 = (.seq input15518 input7543) := by
  unfold input15519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15518 output7543)).val
theorem output15519_def : output15519 = (.seq output15518 output7543) := by
  unfold output15519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15519_skip : Flapjack.WordAlloc.isSkip output15519 = false := by
  rw [output15519_def]
  conv => lhs; cbv
  try rfl
theorem node15519_eq : Flapjack.WordAlloc.removeDeadStructural input15519 value3775 value1 value2 = (output15519, value6896, value1) := by
  rw [input15519_def, output15519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7543_eq]
  try dsimp only
  rw [node15518_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15519 input7542)).val
theorem input15520_def : input15520 = (.seq input15519 input7542) := by
  unfold input15520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15519 output7542)).val
theorem output15520_def : output15520 = (.seq output15519 output7542) := by
  unfold output15520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15520_skip : Flapjack.WordAlloc.isSkip output15520 = false := by
  rw [output15520_def]
  conv => lhs; cbv
  try rfl
theorem node15520_eq : Flapjack.WordAlloc.removeDeadStructural input15520 value5 value1 value2 = (output15520, value6896, value1) := by
  rw [input15520_def, output15520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7542_eq]
  try dsimp only
  rw [node15519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15520 input7539)).val
theorem input15521_def : input15521 = (.seq input15520 input7539) := by
  unfold input15521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15520 output7539)).val
theorem output15521_def : output15521 = (.seq output15520 output7539) := by
  unfold output15521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15521_skip : Flapjack.WordAlloc.isSkip output15521 = false := by
  rw [output15521_def]
  conv => lhs; cbv
  try rfl
theorem node15521_eq : Flapjack.WordAlloc.removeDeadStructural input15521 value3768 value1 value2 = (output15521, value6896, value1) := by
  rw [input15521_def, output15521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7539_eq]
  try dsimp only
  rw [node15520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15521 input7528)).val
theorem input15522_def : input15522 = (.seq input15521 input7528) := by
  unfold input15522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15521)).val
theorem output15522_def : output15522 = (output15521) := by
  unfold output15522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15522_skip : Flapjack.WordAlloc.isSkip output15522 = false := by
  rw [output15522_def]
  conv => lhs; cbv
  try rfl
theorem node15522_eq : Flapjack.WordAlloc.removeDeadStructural input15522 value3768 value1 value2 = (output15522, value6896, value1) := by
  rw [input15522_def, output15522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7528_eq]
  try dsimp only
  rw [node15521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15522 input7527)).val
theorem input15523_def : input15523 = (.seq input15522 input7527) := by
  unfold input15523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15522 output7527)).val
theorem output15523_def : output15523 = (.seq output15522 output7527) := by
  unfold output15523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15523_skip : Flapjack.WordAlloc.isSkip output15523 = false := by
  rw [output15523_def]
  conv => lhs; cbv
  try rfl
theorem node15523_eq : Flapjack.WordAlloc.removeDeadStructural input15523 value3767 value1 value2 = (output15523, value6896, value1) := by
  rw [input15523_def, output15523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7527_eq]
  try dsimp only
  rw [node15522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15523 input7526)).val
theorem input15524_def : input15524 = (.seq input15523 input7526) := by
  unfold input15524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15523 output7526)).val
theorem output15524_def : output15524 = (.seq output15523 output7526) := by
  unfold output15524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15524_skip : Flapjack.WordAlloc.isSkip output15524 = false := by
  rw [output15524_def]
  conv => lhs; cbv
  try rfl
theorem node15524_eq : Flapjack.WordAlloc.removeDeadStructural input15524 value5 value1 value2 = (output15524, value6896, value1) := by
  rw [input15524_def, output15524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7526_eq]
  try dsimp only
  rw [node15523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15524 input7523)).val
theorem input15525_def : input15525 = (.seq input15524 input7523) := by
  unfold input15525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15524 output7523)).val
theorem output15525_def : output15525 = (.seq output15524 output7523) := by
  unfold output15525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15525_skip : Flapjack.WordAlloc.isSkip output15525 = false := by
  rw [output15525_def]
  conv => lhs; cbv
  try rfl
theorem node15525_eq : Flapjack.WordAlloc.removeDeadStructural input15525 value3760 value1 value2 = (output15525, value6896, value1) := by
  rw [input15525_def, output15525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7523_eq]
  try dsimp only
  rw [node15524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15525 input7512)).val
theorem input15526_def : input15526 = (.seq input15525 input7512) := by
  unfold input15526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15525)).val
theorem output15526_def : output15526 = (output15525) := by
  unfold output15526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15526_skip : Flapjack.WordAlloc.isSkip output15526 = false := by
  rw [output15526_def]
  conv => lhs; cbv
  try rfl
theorem node15526_eq : Flapjack.WordAlloc.removeDeadStructural input15526 value3760 value1 value2 = (output15526, value6896, value1) := by
  rw [input15526_def, output15526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7512_eq]
  try dsimp only
  rw [node15525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15526 input7511)).val
theorem input15527_def : input15527 = (.seq input15526 input7511) := by
  unfold input15527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15526 output7511)).val
theorem output15527_def : output15527 = (.seq output15526 output7511) := by
  unfold output15527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15527_skip : Flapjack.WordAlloc.isSkip output15527 = false := by
  rw [output15527_def]
  conv => lhs; cbv
  try rfl
theorem node15527_eq : Flapjack.WordAlloc.removeDeadStructural input15527 value3759 value1 value2 = (output15527, value6896, value1) := by
  rw [input15527_def, output15527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7511_eq]
  try dsimp only
  rw [node15526_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15527 input7510)).val
theorem input15528_def : input15528 = (.seq input15527 input7510) := by
  unfold input15528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15527 output7510)).val
theorem output15528_def : output15528 = (.seq output15527 output7510) := by
  unfold output15528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15528_skip : Flapjack.WordAlloc.isSkip output15528 = false := by
  rw [output15528_def]
  conv => lhs; cbv
  try rfl
theorem node15528_eq : Flapjack.WordAlloc.removeDeadStructural input15528 value5 value1 value2 = (output15528, value6896, value1) := by
  rw [input15528_def, output15528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7510_eq]
  try dsimp only
  rw [node15527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15528 input7507)).val
theorem input15529_def : input15529 = (.seq input15528 input7507) := by
  unfold input15529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15528 output7507)).val
theorem output15529_def : output15529 = (.seq output15528 output7507) := by
  unfold output15529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15529_skip : Flapjack.WordAlloc.isSkip output15529 = false := by
  rw [output15529_def]
  conv => lhs; cbv
  try rfl
theorem node15529_eq : Flapjack.WordAlloc.removeDeadStructural input15529 value3752 value1 value2 = (output15529, value6896, value1) := by
  rw [input15529_def, output15529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7507_eq]
  try dsimp only
  rw [node15528_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15529 input7496)).val
theorem input15530_def : input15530 = (.seq input15529 input7496) := by
  unfold input15530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15529)).val
theorem output15530_def : output15530 = (output15529) := by
  unfold output15530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15530_skip : Flapjack.WordAlloc.isSkip output15530 = false := by
  rw [output15530_def]
  conv => lhs; cbv
  try rfl
theorem node15530_eq : Flapjack.WordAlloc.removeDeadStructural input15530 value3752 value1 value2 = (output15530, value6896, value1) := by
  rw [input15530_def, output15530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7496_eq]
  try dsimp only
  rw [node15529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15530 input7495)).val
theorem input15531_def : input15531 = (.seq input15530 input7495) := by
  unfold input15531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15530 output7495)).val
theorem output15531_def : output15531 = (.seq output15530 output7495) := by
  unfold output15531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15531_skip : Flapjack.WordAlloc.isSkip output15531 = false := by
  rw [output15531_def]
  conv => lhs; cbv
  try rfl
theorem node15531_eq : Flapjack.WordAlloc.removeDeadStructural input15531 value3751 value1 value2 = (output15531, value6896, value1) := by
  rw [input15531_def, output15531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7495_eq]
  try dsimp only
  rw [node15530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15531 input7494)).val
theorem input15532_def : input15532 = (.seq input15531 input7494) := by
  unfold input15532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15531 output7494)).val
theorem output15532_def : output15532 = (.seq output15531 output7494) := by
  unfold output15532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15532_skip : Flapjack.WordAlloc.isSkip output15532 = false := by
  rw [output15532_def]
  conv => lhs; cbv
  try rfl
theorem node15532_eq : Flapjack.WordAlloc.removeDeadStructural input15532 value5 value1 value2 = (output15532, value6896, value1) := by
  rw [input15532_def, output15532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7494_eq]
  try dsimp only
  rw [node15531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15532 input7491)).val
theorem input15533_def : input15533 = (.seq input15532 input7491) := by
  unfold input15533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15532 output7491)).val
theorem output15533_def : output15533 = (.seq output15532 output7491) := by
  unfold output15533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15533_skip : Flapjack.WordAlloc.isSkip output15533 = false := by
  rw [output15533_def]
  conv => lhs; cbv
  try rfl
theorem node15533_eq : Flapjack.WordAlloc.removeDeadStructural input15533 value3744 value1 value2 = (output15533, value6896, value1) := by
  rw [input15533_def, output15533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7491_eq]
  try dsimp only
  rw [node15532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15533 input7480)).val
theorem input15534_def : input15534 = (.seq input15533 input7480) := by
  unfold input15534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15533)).val
theorem output15534_def : output15534 = (output15533) := by
  unfold output15534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15534_skip : Flapjack.WordAlloc.isSkip output15534 = false := by
  rw [output15534_def]
  conv => lhs; cbv
  try rfl
theorem node15534_eq : Flapjack.WordAlloc.removeDeadStructural input15534 value3744 value1 value2 = (output15534, value6896, value1) := by
  rw [input15534_def, output15534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7480_eq]
  try dsimp only
  rw [node15533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15534 input7479)).val
theorem input15535_def : input15535 = (.seq input15534 input7479) := by
  unfold input15535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15534 output7479)).val
theorem output15535_def : output15535 = (.seq output15534 output7479) := by
  unfold output15535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15535_skip : Flapjack.WordAlloc.isSkip output15535 = false := by
  rw [output15535_def]
  conv => lhs; cbv
  try rfl
theorem node15535_eq : Flapjack.WordAlloc.removeDeadStructural input15535 value3743 value1 value2 = (output15535, value6896, value1) := by
  rw [input15535_def, output15535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7479_eq]
  try dsimp only
  rw [node15534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15535 input7478)).val
theorem input15536_def : input15536 = (.seq input15535 input7478) := by
  unfold input15536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15535 output7478)).val
theorem output15536_def : output15536 = (.seq output15535 output7478) := by
  unfold output15536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15536_skip : Flapjack.WordAlloc.isSkip output15536 = false := by
  rw [output15536_def]
  conv => lhs; cbv
  try rfl
theorem node15536_eq : Flapjack.WordAlloc.removeDeadStructural input15536 value5 value1 value2 = (output15536, value6896, value1) := by
  rw [input15536_def, output15536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7478_eq]
  try dsimp only
  rw [node15535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15536 input7475)).val
theorem input15537_def : input15537 = (.seq input15536 input7475) := by
  unfold input15537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15536 output7475)).val
theorem output15537_def : output15537 = (.seq output15536 output7475) := by
  unfold output15537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15537_skip : Flapjack.WordAlloc.isSkip output15537 = false := by
  rw [output15537_def]
  conv => lhs; cbv
  try rfl
theorem node15537_eq : Flapjack.WordAlloc.removeDeadStructural input15537 value3736 value1 value2 = (output15537, value6896, value1) := by
  rw [input15537_def, output15537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7475_eq]
  try dsimp only
  rw [node15536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15537 input7464)).val
theorem input15538_def : input15538 = (.seq input15537 input7464) := by
  unfold input15538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15537)).val
theorem output15538_def : output15538 = (output15537) := by
  unfold output15538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15538_skip : Flapjack.WordAlloc.isSkip output15538 = false := by
  rw [output15538_def]
  conv => lhs; cbv
  try rfl
theorem node15538_eq : Flapjack.WordAlloc.removeDeadStructural input15538 value3736 value1 value2 = (output15538, value6896, value1) := by
  rw [input15538_def, output15538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7464_eq]
  try dsimp only
  rw [node15537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15538 input7463)).val
theorem input15539_def : input15539 = (.seq input15538 input7463) := by
  unfold input15539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15538 output7463)).val
theorem output15539_def : output15539 = (.seq output15538 output7463) := by
  unfold output15539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15539_skip : Flapjack.WordAlloc.isSkip output15539 = false := by
  rw [output15539_def]
  conv => lhs; cbv
  try rfl
theorem node15539_eq : Flapjack.WordAlloc.removeDeadStructural input15539 value3735 value1 value2 = (output15539, value6896, value1) := by
  rw [input15539_def, output15539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7463_eq]
  try dsimp only
  rw [node15538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15539 input7462)).val
theorem input15540_def : input15540 = (.seq input15539 input7462) := by
  unfold input15540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15539 output7462)).val
theorem output15540_def : output15540 = (.seq output15539 output7462) := by
  unfold output15540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15540_skip : Flapjack.WordAlloc.isSkip output15540 = false := by
  rw [output15540_def]
  conv => lhs; cbv
  try rfl
theorem node15540_eq : Flapjack.WordAlloc.removeDeadStructural input15540 value5 value1 value2 = (output15540, value6896, value1) := by
  rw [input15540_def, output15540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7462_eq]
  try dsimp only
  rw [node15539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15540 input7459)).val
theorem input15541_def : input15541 = (.seq input15540 input7459) := by
  unfold input15541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15540 output7459)).val
theorem output15541_def : output15541 = (.seq output15540 output7459) := by
  unfold output15541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15541_skip : Flapjack.WordAlloc.isSkip output15541 = false := by
  rw [output15541_def]
  conv => lhs; cbv
  try rfl
theorem node15541_eq : Flapjack.WordAlloc.removeDeadStructural input15541 value3728 value1 value2 = (output15541, value6896, value1) := by
  rw [input15541_def, output15541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7459_eq]
  try dsimp only
  rw [node15540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15541 input7448)).val
theorem input15542_def : input15542 = (.seq input15541 input7448) := by
  unfold input15542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15541)).val
theorem output15542_def : output15542 = (output15541) := by
  unfold output15542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15542_skip : Flapjack.WordAlloc.isSkip output15542 = false := by
  rw [output15542_def]
  conv => lhs; cbv
  try rfl
theorem node15542_eq : Flapjack.WordAlloc.removeDeadStructural input15542 value3728 value1 value2 = (output15542, value6896, value1) := by
  rw [input15542_def, output15542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7448_eq]
  try dsimp only
  rw [node15541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15542 input7447)).val
theorem input15543_def : input15543 = (.seq input15542 input7447) := by
  unfold input15543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15542 output7447)).val
theorem output15543_def : output15543 = (.seq output15542 output7447) := by
  unfold output15543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15543_skip : Flapjack.WordAlloc.isSkip output15543 = false := by
  rw [output15543_def]
  conv => lhs; cbv
  try rfl
theorem node15543_eq : Flapjack.WordAlloc.removeDeadStructural input15543 value3727 value1 value2 = (output15543, value6896, value1) := by
  rw [input15543_def, output15543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7447_eq]
  try dsimp only
  rw [node15542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15543 input7446)).val
theorem input15544_def : input15544 = (.seq input15543 input7446) := by
  unfold input15544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15543 output7446)).val
theorem output15544_def : output15544 = (.seq output15543 output7446) := by
  unfold output15544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15544_skip : Flapjack.WordAlloc.isSkip output15544 = false := by
  rw [output15544_def]
  conv => lhs; cbv
  try rfl
theorem node15544_eq : Flapjack.WordAlloc.removeDeadStructural input15544 value5 value1 value2 = (output15544, value6896, value1) := by
  rw [input15544_def, output15544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7446_eq]
  try dsimp only
  rw [node15543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15544 input7443)).val
theorem input15545_def : input15545 = (.seq input15544 input7443) := by
  unfold input15545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15544 output7443)).val
theorem output15545_def : output15545 = (.seq output15544 output7443) := by
  unfold output15545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15545_skip : Flapjack.WordAlloc.isSkip output15545 = false := by
  rw [output15545_def]
  conv => lhs; cbv
  try rfl
theorem node15545_eq : Flapjack.WordAlloc.removeDeadStructural input15545 value3720 value1 value2 = (output15545, value6896, value1) := by
  rw [input15545_def, output15545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7443_eq]
  try dsimp only
  rw [node15544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15545 input7432)).val
theorem input15546_def : input15546 = (.seq input15545 input7432) := by
  unfold input15546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15545)).val
theorem output15546_def : output15546 = (output15545) := by
  unfold output15546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15546_skip : Flapjack.WordAlloc.isSkip output15546 = false := by
  rw [output15546_def]
  conv => lhs; cbv
  try rfl
theorem node15546_eq : Flapjack.WordAlloc.removeDeadStructural input15546 value3720 value1 value2 = (output15546, value6896, value1) := by
  rw [input15546_def, output15546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7432_eq]
  try dsimp only
  rw [node15545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15546 input7431)).val
theorem input15547_def : input15547 = (.seq input15546 input7431) := by
  unfold input15547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15546 output7431)).val
theorem output15547_def : output15547 = (.seq output15546 output7431) := by
  unfold output15547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15547_skip : Flapjack.WordAlloc.isSkip output15547 = false := by
  rw [output15547_def]
  conv => lhs; cbv
  try rfl
theorem node15547_eq : Flapjack.WordAlloc.removeDeadStructural input15547 value3719 value1 value2 = (output15547, value6896, value1) := by
  rw [input15547_def, output15547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7431_eq]
  try dsimp only
  rw [node15546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15547 input7430)).val
theorem input15548_def : input15548 = (.seq input15547 input7430) := by
  unfold input15548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15547 output7430)).val
theorem output15548_def : output15548 = (.seq output15547 output7430) := by
  unfold output15548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15548_skip : Flapjack.WordAlloc.isSkip output15548 = false := by
  rw [output15548_def]
  conv => lhs; cbv
  try rfl
theorem node15548_eq : Flapjack.WordAlloc.removeDeadStructural input15548 value5 value1 value2 = (output15548, value6896, value1) := by
  rw [input15548_def, output15548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7430_eq]
  try dsimp only
  rw [node15547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15548 input7427)).val
theorem input15549_def : input15549 = (.seq input15548 input7427) := by
  unfold input15549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15548 output7427)).val
theorem output15549_def : output15549 = (.seq output15548 output7427) := by
  unfold output15549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15549_skip : Flapjack.WordAlloc.isSkip output15549 = false := by
  rw [output15549_def]
  conv => lhs; cbv
  try rfl
theorem node15549_eq : Flapjack.WordAlloc.removeDeadStructural input15549 value3712 value1 value2 = (output15549, value6896, value1) := by
  rw [input15549_def, output15549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7427_eq]
  try dsimp only
  rw [node15548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15549 input7416)).val
theorem input15550_def : input15550 = (.seq input15549 input7416) := by
  unfold input15550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15549)).val
theorem output15550_def : output15550 = (output15549) := by
  unfold output15550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15550_skip : Flapjack.WordAlloc.isSkip output15550 = false := by
  rw [output15550_def]
  conv => lhs; cbv
  try rfl
theorem node15550_eq : Flapjack.WordAlloc.removeDeadStructural input15550 value3712 value1 value2 = (output15550, value6896, value1) := by
  rw [input15550_def, output15550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7416_eq]
  try dsimp only
  rw [node15549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15550 input7415)).val
theorem input15551_def : input15551 = (.seq input15550 input7415) := by
  unfold input15551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15550 output7415)).val
theorem output15551_def : output15551 = (.seq output15550 output7415) := by
  unfold output15551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15551_skip : Flapjack.WordAlloc.isSkip output15551 = false := by
  rw [output15551_def]
  conv => lhs; cbv
  try rfl
theorem node15551_eq : Flapjack.WordAlloc.removeDeadStructural input15551 value3711 value1 value2 = (output15551, value6896, value1) := by
  rw [input15551_def, output15551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7415_eq]
  try dsimp only
  rw [node15550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15551 input7414)).val
theorem input15552_def : input15552 = (.seq input15551 input7414) := by
  unfold input15552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15551 output7414)).val
theorem output15552_def : output15552 = (.seq output15551 output7414) := by
  unfold output15552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15552_skip : Flapjack.WordAlloc.isSkip output15552 = false := by
  rw [output15552_def]
  conv => lhs; cbv
  try rfl
theorem node15552_eq : Flapjack.WordAlloc.removeDeadStructural input15552 value5 value1 value2 = (output15552, value6896, value1) := by
  rw [input15552_def, output15552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7414_eq]
  try dsimp only
  rw [node15551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15552 input7411)).val
theorem input15553_def : input15553 = (.seq input15552 input7411) := by
  unfold input15553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15552 output7411)).val
theorem output15553_def : output15553 = (.seq output15552 output7411) := by
  unfold output15553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15553_skip : Flapjack.WordAlloc.isSkip output15553 = false := by
  rw [output15553_def]
  conv => lhs; cbv
  try rfl
theorem node15553_eq : Flapjack.WordAlloc.removeDeadStructural input15553 value3704 value1 value2 = (output15553, value6896, value1) := by
  rw [input15553_def, output15553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7411_eq]
  try dsimp only
  rw [node15552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15553 input7400)).val
theorem input15554_def : input15554 = (.seq input15553 input7400) := by
  unfold input15554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15553)).val
theorem output15554_def : output15554 = (output15553) := by
  unfold output15554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15554_skip : Flapjack.WordAlloc.isSkip output15554 = false := by
  rw [output15554_def]
  conv => lhs; cbv
  try rfl
theorem node15554_eq : Flapjack.WordAlloc.removeDeadStructural input15554 value3704 value1 value2 = (output15554, value6896, value1) := by
  rw [input15554_def, output15554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7400_eq]
  try dsimp only
  rw [node15553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15554 input7399)).val
theorem input15555_def : input15555 = (.seq input15554 input7399) := by
  unfold input15555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15554 output7399)).val
theorem output15555_def : output15555 = (.seq output15554 output7399) := by
  unfold output15555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15555_skip : Flapjack.WordAlloc.isSkip output15555 = false := by
  rw [output15555_def]
  conv => lhs; cbv
  try rfl
theorem node15555_eq : Flapjack.WordAlloc.removeDeadStructural input15555 value3703 value1 value2 = (output15555, value6896, value1) := by
  rw [input15555_def, output15555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7399_eq]
  try dsimp only
  rw [node15554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15555 input7398)).val
theorem input15556_def : input15556 = (.seq input15555 input7398) := by
  unfold input15556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15555 output7398)).val
theorem output15556_def : output15556 = (.seq output15555 output7398) := by
  unfold output15556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15556_skip : Flapjack.WordAlloc.isSkip output15556 = false := by
  rw [output15556_def]
  conv => lhs; cbv
  try rfl
theorem node15556_eq : Flapjack.WordAlloc.removeDeadStructural input15556 value5 value1 value2 = (output15556, value6896, value1) := by
  rw [input15556_def, output15556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7398_eq]
  try dsimp only
  rw [node15555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15556 input7395)).val
theorem input15557_def : input15557 = (.seq input15556 input7395) := by
  unfold input15557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15556 output7395)).val
theorem output15557_def : output15557 = (.seq output15556 output7395) := by
  unfold output15557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15557_skip : Flapjack.WordAlloc.isSkip output15557 = false := by
  rw [output15557_def]
  conv => lhs; cbv
  try rfl
theorem node15557_eq : Flapjack.WordAlloc.removeDeadStructural input15557 value3696 value1 value2 = (output15557, value6896, value1) := by
  rw [input15557_def, output15557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7395_eq]
  try dsimp only
  rw [node15556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15557 input7384)).val
theorem input15558_def : input15558 = (.seq input15557 input7384) := by
  unfold input15558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15557)).val
theorem output15558_def : output15558 = (output15557) := by
  unfold output15558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15558_skip : Flapjack.WordAlloc.isSkip output15558 = false := by
  rw [output15558_def]
  conv => lhs; cbv
  try rfl
theorem node15558_eq : Flapjack.WordAlloc.removeDeadStructural input15558 value3696 value1 value2 = (output15558, value6896, value1) := by
  rw [input15558_def, output15558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7384_eq]
  try dsimp only
  rw [node15557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15558 input7383)).val
theorem input15559_def : input15559 = (.seq input15558 input7383) := by
  unfold input15559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15558 output7383)).val
theorem output15559_def : output15559 = (.seq output15558 output7383) := by
  unfold output15559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15559_skip : Flapjack.WordAlloc.isSkip output15559 = false := by
  rw [output15559_def]
  conv => lhs; cbv
  try rfl
theorem node15559_eq : Flapjack.WordAlloc.removeDeadStructural input15559 value3695 value1 value2 = (output15559, value6896, value1) := by
  rw [input15559_def, output15559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7383_eq]
  try dsimp only
  rw [node15558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15559 input7382)).val
theorem input15560_def : input15560 = (.seq input15559 input7382) := by
  unfold input15560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15559 output7382)).val
theorem output15560_def : output15560 = (.seq output15559 output7382) := by
  unfold output15560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15560_skip : Flapjack.WordAlloc.isSkip output15560 = false := by
  rw [output15560_def]
  conv => lhs; cbv
  try rfl
theorem node15560_eq : Flapjack.WordAlloc.removeDeadStructural input15560 value5 value1 value2 = (output15560, value6896, value1) := by
  rw [input15560_def, output15560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7382_eq]
  try dsimp only
  rw [node15559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15560 input7379)).val
theorem input15561_def : input15561 = (.seq input15560 input7379) := by
  unfold input15561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15560 output7379)).val
theorem output15561_def : output15561 = (.seq output15560 output7379) := by
  unfold output15561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15561_skip : Flapjack.WordAlloc.isSkip output15561 = false := by
  rw [output15561_def]
  conv => lhs; cbv
  try rfl
theorem node15561_eq : Flapjack.WordAlloc.removeDeadStructural input15561 value3688 value1 value2 = (output15561, value6896, value1) := by
  rw [input15561_def, output15561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7379_eq]
  try dsimp only
  rw [node15560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15561 input7368)).val
theorem input15562_def : input15562 = (.seq input15561 input7368) := by
  unfold input15562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15561)).val
theorem output15562_def : output15562 = (output15561) := by
  unfold output15562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15562_skip : Flapjack.WordAlloc.isSkip output15562 = false := by
  rw [output15562_def]
  conv => lhs; cbv
  try rfl
theorem node15562_eq : Flapjack.WordAlloc.removeDeadStructural input15562 value3688 value1 value2 = (output15562, value6896, value1) := by
  rw [input15562_def, output15562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7368_eq]
  try dsimp only
  rw [node15561_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15562 input7367)).val
theorem input15563_def : input15563 = (.seq input15562 input7367) := by
  unfold input15563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15562 output7367)).val
theorem output15563_def : output15563 = (.seq output15562 output7367) := by
  unfold output15563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15563_skip : Flapjack.WordAlloc.isSkip output15563 = false := by
  rw [output15563_def]
  conv => lhs; cbv
  try rfl
theorem node15563_eq : Flapjack.WordAlloc.removeDeadStructural input15563 value3687 value1 value2 = (output15563, value6896, value1) := by
  rw [input15563_def, output15563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7367_eq]
  try dsimp only
  rw [node15562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15563 input7366)).val
theorem input15564_def : input15564 = (.seq input15563 input7366) := by
  unfold input15564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15563 output7366)).val
theorem output15564_def : output15564 = (.seq output15563 output7366) := by
  unfold output15564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15564_skip : Flapjack.WordAlloc.isSkip output15564 = false := by
  rw [output15564_def]
  conv => lhs; cbv
  try rfl
theorem node15564_eq : Flapjack.WordAlloc.removeDeadStructural input15564 value5 value1 value2 = (output15564, value6896, value1) := by
  rw [input15564_def, output15564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7366_eq]
  try dsimp only
  rw [node15563_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15564 input7363)).val
theorem input15565_def : input15565 = (.seq input15564 input7363) := by
  unfold input15565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15564 output7363)).val
theorem output15565_def : output15565 = (.seq output15564 output7363) := by
  unfold output15565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15565_skip : Flapjack.WordAlloc.isSkip output15565 = false := by
  rw [output15565_def]
  conv => lhs; cbv
  try rfl
theorem node15565_eq : Flapjack.WordAlloc.removeDeadStructural input15565 value3680 value1 value2 = (output15565, value6896, value1) := by
  rw [input15565_def, output15565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7363_eq]
  try dsimp only
  rw [node15564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15565 input7352)).val
theorem input15566_def : input15566 = (.seq input15565 input7352) := by
  unfold input15566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15565)).val
theorem output15566_def : output15566 = (output15565) := by
  unfold output15566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15566_skip : Flapjack.WordAlloc.isSkip output15566 = false := by
  rw [output15566_def]
  conv => lhs; cbv
  try rfl
theorem node15566_eq : Flapjack.WordAlloc.removeDeadStructural input15566 value3680 value1 value2 = (output15566, value6896, value1) := by
  rw [input15566_def, output15566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7352_eq]
  try dsimp only
  rw [node15565_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15566 input7351)).val
theorem input15567_def : input15567 = (.seq input15566 input7351) := by
  unfold input15567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15566 output7351)).val
theorem output15567_def : output15567 = (.seq output15566 output7351) := by
  unfold output15567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15567_skip : Flapjack.WordAlloc.isSkip output15567 = false := by
  rw [output15567_def]
  conv => lhs; cbv
  try rfl
theorem node15567_eq : Flapjack.WordAlloc.removeDeadStructural input15567 value3679 value1 value2 = (output15567, value6896, value1) := by
  rw [input15567_def, output15567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7351_eq]
  try dsimp only
  rw [node15566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15567 input7350)).val
theorem input15568_def : input15568 = (.seq input15567 input7350) := by
  unfold input15568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15567 output7350)).val
theorem output15568_def : output15568 = (.seq output15567 output7350) := by
  unfold output15568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15568_skip : Flapjack.WordAlloc.isSkip output15568 = false := by
  rw [output15568_def]
  conv => lhs; cbv
  try rfl
theorem node15568_eq : Flapjack.WordAlloc.removeDeadStructural input15568 value5 value1 value2 = (output15568, value6896, value1) := by
  rw [input15568_def, output15568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7350_eq]
  try dsimp only
  rw [node15567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15568 input7347)).val
theorem input15569_def : input15569 = (.seq input15568 input7347) := by
  unfold input15569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15568 output7347)).val
theorem output15569_def : output15569 = (.seq output15568 output7347) := by
  unfold output15569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15569_skip : Flapjack.WordAlloc.isSkip output15569 = false := by
  rw [output15569_def]
  conv => lhs; cbv
  try rfl
theorem node15569_eq : Flapjack.WordAlloc.removeDeadStructural input15569 value3672 value1 value2 = (output15569, value6896, value1) := by
  rw [input15569_def, output15569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7347_eq]
  try dsimp only
  rw [node15568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15569 input7336)).val
theorem input15570_def : input15570 = (.seq input15569 input7336) := by
  unfold input15570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15569)).val
theorem output15570_def : output15570 = (output15569) := by
  unfold output15570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15570_skip : Flapjack.WordAlloc.isSkip output15570 = false := by
  rw [output15570_def]
  conv => lhs; cbv
  try rfl
theorem node15570_eq : Flapjack.WordAlloc.removeDeadStructural input15570 value3672 value1 value2 = (output15570, value6896, value1) := by
  rw [input15570_def, output15570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7336_eq]
  try dsimp only
  rw [node15569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15570 input7335)).val
theorem input15571_def : input15571 = (.seq input15570 input7335) := by
  unfold input15571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15570 output7335)).val
theorem output15571_def : output15571 = (.seq output15570 output7335) := by
  unfold output15571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15571_skip : Flapjack.WordAlloc.isSkip output15571 = false := by
  rw [output15571_def]
  conv => lhs; cbv
  try rfl
theorem node15571_eq : Flapjack.WordAlloc.removeDeadStructural input15571 value3671 value1 value2 = (output15571, value6896, value1) := by
  rw [input15571_def, output15571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7335_eq]
  try dsimp only
  rw [node15570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15571 input7334)).val
theorem input15572_def : input15572 = (.seq input15571 input7334) := by
  unfold input15572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15571 output7334)).val
theorem output15572_def : output15572 = (.seq output15571 output7334) := by
  unfold output15572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15572_skip : Flapjack.WordAlloc.isSkip output15572 = false := by
  rw [output15572_def]
  conv => lhs; cbv
  try rfl
theorem node15572_eq : Flapjack.WordAlloc.removeDeadStructural input15572 value5 value1 value2 = (output15572, value6896, value1) := by
  rw [input15572_def, output15572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7334_eq]
  try dsimp only
  rw [node15571_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15572 input7331)).val
theorem input15573_def : input15573 = (.seq input15572 input7331) := by
  unfold input15573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15572 output7331)).val
theorem output15573_def : output15573 = (.seq output15572 output7331) := by
  unfold output15573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15573_skip : Flapjack.WordAlloc.isSkip output15573 = false := by
  rw [output15573_def]
  conv => lhs; cbv
  try rfl
theorem node15573_eq : Flapjack.WordAlloc.removeDeadStructural input15573 value3664 value1 value2 = (output15573, value6896, value1) := by
  rw [input15573_def, output15573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7331_eq]
  try dsimp only
  rw [node15572_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15573 input7320)).val
theorem input15574_def : input15574 = (.seq input15573 input7320) := by
  unfold input15574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15573)).val
theorem output15574_def : output15574 = (output15573) := by
  unfold output15574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15574_skip : Flapjack.WordAlloc.isSkip output15574 = false := by
  rw [output15574_def]
  conv => lhs; cbv
  try rfl
theorem node15574_eq : Flapjack.WordAlloc.removeDeadStructural input15574 value3664 value1 value2 = (output15574, value6896, value1) := by
  rw [input15574_def, output15574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7320_eq]
  try dsimp only
  rw [node15573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15574 input7319)).val
theorem input15575_def : input15575 = (.seq input15574 input7319) := by
  unfold input15575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15574 output7319)).val
theorem output15575_def : output15575 = (.seq output15574 output7319) := by
  unfold output15575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15575_skip : Flapjack.WordAlloc.isSkip output15575 = false := by
  rw [output15575_def]
  conv => lhs; cbv
  try rfl
theorem node15575_eq : Flapjack.WordAlloc.removeDeadStructural input15575 value3663 value1 value2 = (output15575, value6896, value1) := by
  rw [input15575_def, output15575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7319_eq]
  try dsimp only
  rw [node15574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15575 input7318)).val
theorem input15576_def : input15576 = (.seq input15575 input7318) := by
  unfold input15576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15575 output7318)).val
theorem output15576_def : output15576 = (.seq output15575 output7318) := by
  unfold output15576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15576_skip : Flapjack.WordAlloc.isSkip output15576 = false := by
  rw [output15576_def]
  conv => lhs; cbv
  try rfl
theorem node15576_eq : Flapjack.WordAlloc.removeDeadStructural input15576 value5 value1 value2 = (output15576, value6896, value1) := by
  rw [input15576_def, output15576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7318_eq]
  try dsimp only
  rw [node15575_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15576 input7315)).val
theorem input15577_def : input15577 = (.seq input15576 input7315) := by
  unfold input15577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15576 output7315)).val
theorem output15577_def : output15577 = (.seq output15576 output7315) := by
  unfold output15577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15577_skip : Flapjack.WordAlloc.isSkip output15577 = false := by
  rw [output15577_def]
  conv => lhs; cbv
  try rfl
theorem node15577_eq : Flapjack.WordAlloc.removeDeadStructural input15577 value3656 value1 value2 = (output15577, value6896, value1) := by
  rw [input15577_def, output15577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7315_eq]
  try dsimp only
  rw [node15576_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15577 input7304)).val
theorem input15578_def : input15578 = (.seq input15577 input7304) := by
  unfold input15578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15577)).val
theorem output15578_def : output15578 = (output15577) := by
  unfold output15578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15578_skip : Flapjack.WordAlloc.isSkip output15578 = false := by
  rw [output15578_def]
  conv => lhs; cbv
  try rfl
theorem node15578_eq : Flapjack.WordAlloc.removeDeadStructural input15578 value3656 value1 value2 = (output15578, value6896, value1) := by
  rw [input15578_def, output15578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7304_eq]
  try dsimp only
  rw [node15577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15578 input7303)).val
theorem input15579_def : input15579 = (.seq input15578 input7303) := by
  unfold input15579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15578 output7303)).val
theorem output15579_def : output15579 = (.seq output15578 output7303) := by
  unfold output15579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15579_skip : Flapjack.WordAlloc.isSkip output15579 = false := by
  rw [output15579_def]
  conv => lhs; cbv
  try rfl
theorem node15579_eq : Flapjack.WordAlloc.removeDeadStructural input15579 value3655 value1 value2 = (output15579, value6896, value1) := by
  rw [input15579_def, output15579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7303_eq]
  try dsimp only
  rw [node15578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15579 input7302)).val
theorem input15580_def : input15580 = (.seq input15579 input7302) := by
  unfold input15580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15579 output7302)).val
theorem output15580_def : output15580 = (.seq output15579 output7302) := by
  unfold output15580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15580_skip : Flapjack.WordAlloc.isSkip output15580 = false := by
  rw [output15580_def]
  conv => lhs; cbv
  try rfl
theorem node15580_eq : Flapjack.WordAlloc.removeDeadStructural input15580 value5 value1 value2 = (output15580, value6896, value1) := by
  rw [input15580_def, output15580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7302_eq]
  try dsimp only
  rw [node15579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15580 input7299)).val
theorem input15581_def : input15581 = (.seq input15580 input7299) := by
  unfold input15581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15580 output7299)).val
theorem output15581_def : output15581 = (.seq output15580 output7299) := by
  unfold output15581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15581_skip : Flapjack.WordAlloc.isSkip output15581 = false := by
  rw [output15581_def]
  conv => lhs; cbv
  try rfl
theorem node15581_eq : Flapjack.WordAlloc.removeDeadStructural input15581 value3648 value1 value2 = (output15581, value6896, value1) := by
  rw [input15581_def, output15581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7299_eq]
  try dsimp only
  rw [node15580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15581 input7288)).val
theorem input15582_def : input15582 = (.seq input15581 input7288) := by
  unfold input15582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15581)).val
theorem output15582_def : output15582 = (output15581) := by
  unfold output15582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15582_skip : Flapjack.WordAlloc.isSkip output15582 = false := by
  rw [output15582_def]
  conv => lhs; cbv
  try rfl
theorem node15582_eq : Flapjack.WordAlloc.removeDeadStructural input15582 value3648 value1 value2 = (output15582, value6896, value1) := by
  rw [input15582_def, output15582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7288_eq]
  try dsimp only
  rw [node15581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15582 input7287)).val
theorem input15583_def : input15583 = (.seq input15582 input7287) := by
  unfold input15583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15582 output7287)).val
theorem output15583_def : output15583 = (.seq output15582 output7287) := by
  unfold output15583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15583_skip : Flapjack.WordAlloc.isSkip output15583 = false := by
  rw [output15583_def]
  conv => lhs; cbv
  try rfl
theorem node15583_eq : Flapjack.WordAlloc.removeDeadStructural input15583 value3647 value1 value2 = (output15583, value6896, value1) := by
  rw [input15583_def, output15583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7287_eq]
  try dsimp only
  rw [node15582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15583 input7286)).val
theorem input15584_def : input15584 = (.seq input15583 input7286) := by
  unfold input15584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15583 output7286)).val
theorem output15584_def : output15584 = (.seq output15583 output7286) := by
  unfold output15584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15584_skip : Flapjack.WordAlloc.isSkip output15584 = false := by
  rw [output15584_def]
  conv => lhs; cbv
  try rfl
theorem node15584_eq : Flapjack.WordAlloc.removeDeadStructural input15584 value5 value1 value2 = (output15584, value6896, value1) := by
  rw [input15584_def, output15584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7286_eq]
  try dsimp only
  rw [node15583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15584 input7283)).val
theorem input15585_def : input15585 = (.seq input15584 input7283) := by
  unfold input15585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15584 output7283)).val
theorem output15585_def : output15585 = (.seq output15584 output7283) := by
  unfold output15585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15585_skip : Flapjack.WordAlloc.isSkip output15585 = false := by
  rw [output15585_def]
  conv => lhs; cbv
  try rfl
theorem node15585_eq : Flapjack.WordAlloc.removeDeadStructural input15585 value3640 value1 value2 = (output15585, value6896, value1) := by
  rw [input15585_def, output15585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7283_eq]
  try dsimp only
  rw [node15584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15585 input7272)).val
theorem input15586_def : input15586 = (.seq input15585 input7272) := by
  unfold input15586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15585)).val
theorem output15586_def : output15586 = (output15585) := by
  unfold output15586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15586_skip : Flapjack.WordAlloc.isSkip output15586 = false := by
  rw [output15586_def]
  conv => lhs; cbv
  try rfl
theorem node15586_eq : Flapjack.WordAlloc.removeDeadStructural input15586 value3640 value1 value2 = (output15586, value6896, value1) := by
  rw [input15586_def, output15586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7272_eq]
  try dsimp only
  rw [node15585_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15586 input7271)).val
theorem input15587_def : input15587 = (.seq input15586 input7271) := by
  unfold input15587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15586 output7271)).val
theorem output15587_def : output15587 = (.seq output15586 output7271) := by
  unfold output15587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15587_skip : Flapjack.WordAlloc.isSkip output15587 = false := by
  rw [output15587_def]
  conv => lhs; cbv
  try rfl
theorem node15587_eq : Flapjack.WordAlloc.removeDeadStructural input15587 value3639 value1 value2 = (output15587, value6896, value1) := by
  rw [input15587_def, output15587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7271_eq]
  try dsimp only
  rw [node15586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15587 input7270)).val
theorem input15588_def : input15588 = (.seq input15587 input7270) := by
  unfold input15588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15587 output7270)).val
theorem output15588_def : output15588 = (.seq output15587 output7270) := by
  unfold output15588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15588_skip : Flapjack.WordAlloc.isSkip output15588 = false := by
  rw [output15588_def]
  conv => lhs; cbv
  try rfl
theorem node15588_eq : Flapjack.WordAlloc.removeDeadStructural input15588 value5 value1 value2 = (output15588, value6896, value1) := by
  rw [input15588_def, output15588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7270_eq]
  try dsimp only
  rw [node15587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15588 input7267)).val
theorem input15589_def : input15589 = (.seq input15588 input7267) := by
  unfold input15589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15588 output7267)).val
theorem output15589_def : output15589 = (.seq output15588 output7267) := by
  unfold output15589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15589_skip : Flapjack.WordAlloc.isSkip output15589 = false := by
  rw [output15589_def]
  conv => lhs; cbv
  try rfl
theorem node15589_eq : Flapjack.WordAlloc.removeDeadStructural input15589 value3632 value1 value2 = (output15589, value6896, value1) := by
  rw [input15589_def, output15589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7267_eq]
  try dsimp only
  rw [node15588_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15589 input7256)).val
theorem input15590_def : input15590 = (.seq input15589 input7256) := by
  unfold input15590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15589)).val
theorem output15590_def : output15590 = (output15589) := by
  unfold output15590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15590_skip : Flapjack.WordAlloc.isSkip output15590 = false := by
  rw [output15590_def]
  conv => lhs; cbv
  try rfl
theorem node15590_eq : Flapjack.WordAlloc.removeDeadStructural input15590 value3632 value1 value2 = (output15590, value6896, value1) := by
  rw [input15590_def, output15590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7256_eq]
  try dsimp only
  rw [node15589_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15590 input7255)).val
theorem input15591_def : input15591 = (.seq input15590 input7255) := by
  unfold input15591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15590 output7255)).val
theorem output15591_def : output15591 = (.seq output15590 output7255) := by
  unfold output15591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15591_skip : Flapjack.WordAlloc.isSkip output15591 = false := by
  rw [output15591_def]
  conv => lhs; cbv
  try rfl
theorem node15591_eq : Flapjack.WordAlloc.removeDeadStructural input15591 value3631 value1 value2 = (output15591, value6896, value1) := by
  rw [input15591_def, output15591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7255_eq]
  try dsimp only
  rw [node15590_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15591 input7254)).val
theorem input15592_def : input15592 = (.seq input15591 input7254) := by
  unfold input15592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15591 output7254)).val
theorem output15592_def : output15592 = (.seq output15591 output7254) := by
  unfold output15592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15592_skip : Flapjack.WordAlloc.isSkip output15592 = false := by
  rw [output15592_def]
  conv => lhs; cbv
  try rfl
theorem node15592_eq : Flapjack.WordAlloc.removeDeadStructural input15592 value5 value1 value2 = (output15592, value6896, value1) := by
  rw [input15592_def, output15592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7254_eq]
  try dsimp only
  rw [node15591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15592 input7251)).val
theorem input15593_def : input15593 = (.seq input15592 input7251) := by
  unfold input15593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15592 output7251)).val
theorem output15593_def : output15593 = (.seq output15592 output7251) := by
  unfold output15593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15593_skip : Flapjack.WordAlloc.isSkip output15593 = false := by
  rw [output15593_def]
  conv => lhs; cbv
  try rfl
theorem node15593_eq : Flapjack.WordAlloc.removeDeadStructural input15593 value3624 value1 value2 = (output15593, value6896, value1) := by
  rw [input15593_def, output15593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7251_eq]
  try dsimp only
  rw [node15592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15593 input7240)).val
theorem input15594_def : input15594 = (.seq input15593 input7240) := by
  unfold input15594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15593)).val
theorem output15594_def : output15594 = (output15593) := by
  unfold output15594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15594_skip : Flapjack.WordAlloc.isSkip output15594 = false := by
  rw [output15594_def]
  conv => lhs; cbv
  try rfl
theorem node15594_eq : Flapjack.WordAlloc.removeDeadStructural input15594 value3624 value1 value2 = (output15594, value6896, value1) := by
  rw [input15594_def, output15594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7240_eq]
  try dsimp only
  rw [node15593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15594 input7239)).val
theorem input15595_def : input15595 = (.seq input15594 input7239) := by
  unfold input15595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15594 output7239)).val
theorem output15595_def : output15595 = (.seq output15594 output7239) := by
  unfold output15595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15595_skip : Flapjack.WordAlloc.isSkip output15595 = false := by
  rw [output15595_def]
  conv => lhs; cbv
  try rfl
theorem node15595_eq : Flapjack.WordAlloc.removeDeadStructural input15595 value3623 value1 value2 = (output15595, value6896, value1) := by
  rw [input15595_def, output15595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7239_eq]
  try dsimp only
  rw [node15594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15595 input7238)).val
theorem input15596_def : input15596 = (.seq input15595 input7238) := by
  unfold input15596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15595 output7238)).val
theorem output15596_def : output15596 = (.seq output15595 output7238) := by
  unfold output15596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15596_skip : Flapjack.WordAlloc.isSkip output15596 = false := by
  rw [output15596_def]
  conv => lhs; cbv
  try rfl
theorem node15596_eq : Flapjack.WordAlloc.removeDeadStructural input15596 value5 value1 value2 = (output15596, value6896, value1) := by
  rw [input15596_def, output15596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7238_eq]
  try dsimp only
  rw [node15595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15596 input7235)).val
theorem input15597_def : input15597 = (.seq input15596 input7235) := by
  unfold input15597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15596 output7235)).val
theorem output15597_def : output15597 = (.seq output15596 output7235) := by
  unfold output15597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15597_skip : Flapjack.WordAlloc.isSkip output15597 = false := by
  rw [output15597_def]
  conv => lhs; cbv
  try rfl
theorem node15597_eq : Flapjack.WordAlloc.removeDeadStructural input15597 value3616 value1 value2 = (output15597, value6896, value1) := by
  rw [input15597_def, output15597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7235_eq]
  try dsimp only
  rw [node15596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15597 input7224)).val
theorem input15598_def : input15598 = (.seq input15597 input7224) := by
  unfold input15598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15597)).val
theorem output15598_def : output15598 = (output15597) := by
  unfold output15598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15598_skip : Flapjack.WordAlloc.isSkip output15598 = false := by
  rw [output15598_def]
  conv => lhs; cbv
  try rfl
theorem node15598_eq : Flapjack.WordAlloc.removeDeadStructural input15598 value3616 value1 value2 = (output15598, value6896, value1) := by
  rw [input15598_def, output15598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7224_eq]
  try dsimp only
  rw [node15597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15598 input7223)).val
theorem input15599_def : input15599 = (.seq input15598 input7223) := by
  unfold input15599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15598 output7223)).val
theorem output15599_def : output15599 = (.seq output15598 output7223) := by
  unfold output15599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15599_skip : Flapjack.WordAlloc.isSkip output15599 = false := by
  rw [output15599_def]
  conv => lhs; cbv
  try rfl
theorem node15599_eq : Flapjack.WordAlloc.removeDeadStructural input15599 value3615 value1 value2 = (output15599, value6896, value1) := by
  rw [input15599_def, output15599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7223_eq]
  try dsimp only
  rw [node15598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15599 input7222)).val
theorem input15600_def : input15600 = (.seq input15599 input7222) := by
  unfold input15600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15599 output7222)).val
theorem output15600_def : output15600 = (.seq output15599 output7222) := by
  unfold output15600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15600_skip : Flapjack.WordAlloc.isSkip output15600 = false := by
  rw [output15600_def]
  conv => lhs; cbv
  try rfl
theorem node15600_eq : Flapjack.WordAlloc.removeDeadStructural input15600 value5 value1 value2 = (output15600, value6896, value1) := by
  rw [input15600_def, output15600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7222_eq]
  try dsimp only
  rw [node15599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15600 input7219)).val
theorem input15601_def : input15601 = (.seq input15600 input7219) := by
  unfold input15601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15600 output7219)).val
theorem output15601_def : output15601 = (.seq output15600 output7219) := by
  unfold output15601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15601_skip : Flapjack.WordAlloc.isSkip output15601 = false := by
  rw [output15601_def]
  conv => lhs; cbv
  try rfl
theorem node15601_eq : Flapjack.WordAlloc.removeDeadStructural input15601 value3608 value1 value2 = (output15601, value6896, value1) := by
  rw [input15601_def, output15601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7219_eq]
  try dsimp only
  rw [node15600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15601 input7208)).val
theorem input15602_def : input15602 = (.seq input15601 input7208) := by
  unfold input15602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15601)).val
theorem output15602_def : output15602 = (output15601) := by
  unfold output15602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15602_skip : Flapjack.WordAlloc.isSkip output15602 = false := by
  rw [output15602_def]
  conv => lhs; cbv
  try rfl
theorem node15602_eq : Flapjack.WordAlloc.removeDeadStructural input15602 value3608 value1 value2 = (output15602, value6896, value1) := by
  rw [input15602_def, output15602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7208_eq]
  try dsimp only
  rw [node15601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15602 input7207)).val
theorem input15603_def : input15603 = (.seq input15602 input7207) := by
  unfold input15603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15602 output7207)).val
theorem output15603_def : output15603 = (.seq output15602 output7207) := by
  unfold output15603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15603_skip : Flapjack.WordAlloc.isSkip output15603 = false := by
  rw [output15603_def]
  conv => lhs; cbv
  try rfl
theorem node15603_eq : Flapjack.WordAlloc.removeDeadStructural input15603 value3607 value1 value2 = (output15603, value6896, value1) := by
  rw [input15603_def, output15603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7207_eq]
  try dsimp only
  rw [node15602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15603 input7206)).val
theorem input15604_def : input15604 = (.seq input15603 input7206) := by
  unfold input15604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15603 output7206)).val
theorem output15604_def : output15604 = (.seq output15603 output7206) := by
  unfold output15604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15604_skip : Flapjack.WordAlloc.isSkip output15604 = false := by
  rw [output15604_def]
  conv => lhs; cbv
  try rfl
theorem node15604_eq : Flapjack.WordAlloc.removeDeadStructural input15604 value5 value1 value2 = (output15604, value6896, value1) := by
  rw [input15604_def, output15604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7206_eq]
  try dsimp only
  rw [node15603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15604 input7203)).val
theorem input15605_def : input15605 = (.seq input15604 input7203) := by
  unfold input15605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15604 output7203)).val
theorem output15605_def : output15605 = (.seq output15604 output7203) := by
  unfold output15605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15605_skip : Flapjack.WordAlloc.isSkip output15605 = false := by
  rw [output15605_def]
  conv => lhs; cbv
  try rfl
theorem node15605_eq : Flapjack.WordAlloc.removeDeadStructural input15605 value3600 value1 value2 = (output15605, value6896, value1) := by
  rw [input15605_def, output15605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7203_eq]
  try dsimp only
  rw [node15604_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15605 input7192)).val
theorem input15606_def : input15606 = (.seq input15605 input7192) := by
  unfold input15606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15605)).val
theorem output15606_def : output15606 = (output15605) := by
  unfold output15606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15606_skip : Flapjack.WordAlloc.isSkip output15606 = false := by
  rw [output15606_def]
  conv => lhs; cbv
  try rfl
theorem node15606_eq : Flapjack.WordAlloc.removeDeadStructural input15606 value3600 value1 value2 = (output15606, value6896, value1) := by
  rw [input15606_def, output15606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7192_eq]
  try dsimp only
  rw [node15605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15606 input7191)).val
theorem input15607_def : input15607 = (.seq input15606 input7191) := by
  unfold input15607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15606 output7191)).val
theorem output15607_def : output15607 = (.seq output15606 output7191) := by
  unfold output15607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15607_skip : Flapjack.WordAlloc.isSkip output15607 = false := by
  rw [output15607_def]
  conv => lhs; cbv
  try rfl
theorem node15607_eq : Flapjack.WordAlloc.removeDeadStructural input15607 value3599 value1 value2 = (output15607, value6896, value1) := by
  rw [input15607_def, output15607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7191_eq]
  try dsimp only
  rw [node15606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15607 input7190)).val
theorem input15608_def : input15608 = (.seq input15607 input7190) := by
  unfold input15608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15607 output7190)).val
theorem output15608_def : output15608 = (.seq output15607 output7190) := by
  unfold output15608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15608_skip : Flapjack.WordAlloc.isSkip output15608 = false := by
  rw [output15608_def]
  conv => lhs; cbv
  try rfl
theorem node15608_eq : Flapjack.WordAlloc.removeDeadStructural input15608 value5 value1 value2 = (output15608, value6896, value1) := by
  rw [input15608_def, output15608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7190_eq]
  try dsimp only
  rw [node15607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15608 input7187)).val
theorem input15609_def : input15609 = (.seq input15608 input7187) := by
  unfold input15609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15608 output7187)).val
theorem output15609_def : output15609 = (.seq output15608 output7187) := by
  unfold output15609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15609_skip : Flapjack.WordAlloc.isSkip output15609 = false := by
  rw [output15609_def]
  conv => lhs; cbv
  try rfl
theorem node15609_eq : Flapjack.WordAlloc.removeDeadStructural input15609 value3592 value1 value2 = (output15609, value6896, value1) := by
  rw [input15609_def, output15609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7187_eq]
  try dsimp only
  rw [node15608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15609 input7176)).val
theorem input15610_def : input15610 = (.seq input15609 input7176) := by
  unfold input15610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15609)).val
theorem output15610_def : output15610 = (output15609) := by
  unfold output15610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15610_skip : Flapjack.WordAlloc.isSkip output15610 = false := by
  rw [output15610_def]
  conv => lhs; cbv
  try rfl
theorem node15610_eq : Flapjack.WordAlloc.removeDeadStructural input15610 value3592 value1 value2 = (output15610, value6896, value1) := by
  rw [input15610_def, output15610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7176_eq]
  try dsimp only
  rw [node15609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15610 input7175)).val
theorem input15611_def : input15611 = (.seq input15610 input7175) := by
  unfold input15611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15610 output7175)).val
theorem output15611_def : output15611 = (.seq output15610 output7175) := by
  unfold output15611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15611_skip : Flapjack.WordAlloc.isSkip output15611 = false := by
  rw [output15611_def]
  conv => lhs; cbv
  try rfl
theorem node15611_eq : Flapjack.WordAlloc.removeDeadStructural input15611 value3591 value1 value2 = (output15611, value6896, value1) := by
  rw [input15611_def, output15611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7175_eq]
  try dsimp only
  rw [node15610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15611 input7174)).val
theorem input15612_def : input15612 = (.seq input15611 input7174) := by
  unfold input15612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15611 output7174)).val
theorem output15612_def : output15612 = (.seq output15611 output7174) := by
  unfold output15612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15612_skip : Flapjack.WordAlloc.isSkip output15612 = false := by
  rw [output15612_def]
  conv => lhs; cbv
  try rfl
theorem node15612_eq : Flapjack.WordAlloc.removeDeadStructural input15612 value5 value1 value2 = (output15612, value6896, value1) := by
  rw [input15612_def, output15612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7174_eq]
  try dsimp only
  rw [node15611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15612 input7171)).val
theorem input15613_def : input15613 = (.seq input15612 input7171) := by
  unfold input15613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15612 output7171)).val
theorem output15613_def : output15613 = (.seq output15612 output7171) := by
  unfold output15613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15613_skip : Flapjack.WordAlloc.isSkip output15613 = false := by
  rw [output15613_def]
  conv => lhs; cbv
  try rfl
theorem node15613_eq : Flapjack.WordAlloc.removeDeadStructural input15613 value3584 value1 value2 = (output15613, value6896, value1) := by
  rw [input15613_def, output15613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7171_eq]
  try dsimp only
  rw [node15612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15613 input7160)).val
theorem input15614_def : input15614 = (.seq input15613 input7160) := by
  unfold input15614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15613)).val
theorem output15614_def : output15614 = (output15613) := by
  unfold output15614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15614_skip : Flapjack.WordAlloc.isSkip output15614 = false := by
  rw [output15614_def]
  conv => lhs; cbv
  try rfl
theorem node15614_eq : Flapjack.WordAlloc.removeDeadStructural input15614 value3584 value1 value2 = (output15614, value6896, value1) := by
  rw [input15614_def, output15614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7160_eq]
  try dsimp only
  rw [node15613_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input15615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15614 input7159)).val
theorem input15615_def : input15615 = (.seq input15614 input7159) := by
  unfold input15615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15614 output7159)).val
theorem output15615_def : output15615 = (.seq output15614 output7159) := by
  unfold output15615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15615_skip : Flapjack.WordAlloc.isSkip output15615 = false := by
  rw [output15615_def]
  conv => lhs; cbv
  try rfl
theorem node15615_eq : Flapjack.WordAlloc.removeDeadStructural input15615 value3583 value1 value2 = (output15615, value6896, value1) := by
  rw [input15615_def, output15615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7159_eq]
  try dsimp only
  rw [node15614_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node15615_eq
end InitECandidate.Proofs.DeadStages713
