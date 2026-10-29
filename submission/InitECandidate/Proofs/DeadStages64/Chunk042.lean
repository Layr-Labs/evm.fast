import InitECandidate.Proofs.DeadStages64.Chunk041
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1343 input438)).val
theorem input1344_def : input1344 = (.seq input1343 input438) := by
  unfold input1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1343 output438)).val
theorem output1344_def : output1344 = (.seq output1343 output438) := by
  unfold output1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1344_skip : Flapjack.WordAlloc.isSkip output1344 = false := by
  rw [output1344_def]
  conv => lhs; cbv
  try rfl
theorem node1344_eq : Flapjack.WordAlloc.removeDeadStructural input1344 value222 value1 value2 = (output1344, value4, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node438_eq]
  dsimp only
  rw [node1343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1344 input437)).val
theorem input1345_def : input1345 = (.seq input1344 input437) := by
  unfold input1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1344 output437)).val
theorem output1345_def : output1345 = (.seq output1344 output437) := by
  unfold output1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1345_skip : Flapjack.WordAlloc.isSkip output1345 = false := by
  rw [output1345_def]
  conv => lhs; cbv
  try rfl
theorem node1345_eq : Flapjack.WordAlloc.removeDeadStructural input1345 value4 value1 value2 = (output1345, value4, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node437_eq]
  dsimp only
  rw [node1344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1345 input434)).val
theorem input1346_def : input1346 = (.seq input1345 input434) := by
  unfold input1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1345 output434)).val
theorem output1346_def : output1346 = (.seq output1345 output434) := by
  unfold output1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1346_skip : Flapjack.WordAlloc.isSkip output1346 = false := by
  rw [output1346_def]
  conv => lhs; cbv
  try rfl
theorem node1346_eq : Flapjack.WordAlloc.removeDeadStructural input1346 value217 value1 value2 = (output1346, value4, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node434_eq]
  dsimp only
  rw [node1345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1346 input427)).val
theorem input1347_def : input1347 = (.seq input1346 input427) := by
  unfold input1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1346)).val
theorem output1347_def : output1347 = (output1346) := by
  unfold output1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1347_skip : Flapjack.WordAlloc.isSkip output1347 = false := by
  rw [output1347_def]
  conv => lhs; cbv
  try rfl
theorem node1347_eq : Flapjack.WordAlloc.removeDeadStructural input1347 value217 value1 value2 = (output1347, value4, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node427_eq]
  dsimp only
  rw [node1346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1347 input426)).val
theorem input1348_def : input1348 = (.seq input1347 input426) := by
  unfold input1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1347 output426)).val
theorem output1348_def : output1348 = (.seq output1347 output426) := by
  unfold output1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1348_skip : Flapjack.WordAlloc.isSkip output1348 = false := by
  rw [output1348_def]
  conv => lhs; cbv
  try rfl
theorem node1348_eq : Flapjack.WordAlloc.removeDeadStructural input1348 value216 value1 value2 = (output1348, value4, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node426_eq]
  dsimp only
  rw [node1347_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1348 input425)).val
theorem input1349_def : input1349 = (.seq input1348 input425) := by
  unfold input1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1348 output425)).val
theorem output1349_def : output1349 = (.seq output1348 output425) := by
  unfold output1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1349_skip : Flapjack.WordAlloc.isSkip output1349 = false := by
  rw [output1349_def]
  conv => lhs; cbv
  try rfl
theorem node1349_eq : Flapjack.WordAlloc.removeDeadStructural input1349 value4 value1 value2 = (output1349, value4, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node425_eq]
  dsimp only
  rw [node1348_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1349 input422)).val
theorem input1350_def : input1350 = (.seq input1349 input422) := by
  unfold input1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1349 output422)).val
theorem output1350_def : output1350 = (.seq output1349 output422) := by
  unfold output1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1350_skip : Flapjack.WordAlloc.isSkip output1350 = false := by
  rw [output1350_def]
  conv => lhs; cbv
  try rfl
theorem node1350_eq : Flapjack.WordAlloc.removeDeadStructural input1350 value211 value1 value2 = (output1350, value4, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node422_eq]
  dsimp only
  rw [node1349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1350 input415)).val
theorem input1351_def : input1351 = (.seq input1350 input415) := by
  unfold input1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1350)).val
theorem output1351_def : output1351 = (output1350) := by
  unfold output1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1351_skip : Flapjack.WordAlloc.isSkip output1351 = false := by
  rw [output1351_def]
  conv => lhs; cbv
  try rfl
theorem node1351_eq : Flapjack.WordAlloc.removeDeadStructural input1351 value211 value1 value2 = (output1351, value4, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node415_eq]
  dsimp only
  rw [node1350_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1351 input414)).val
theorem input1352_def : input1352 = (.seq input1351 input414) := by
  unfold input1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1351 output414)).val
theorem output1352_def : output1352 = (.seq output1351 output414) := by
  unfold output1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1352_skip : Flapjack.WordAlloc.isSkip output1352 = false := by
  rw [output1352_def]
  conv => lhs; cbv
  try rfl
theorem node1352_eq : Flapjack.WordAlloc.removeDeadStructural input1352 value210 value1 value2 = (output1352, value4, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node414_eq]
  dsimp only
  rw [node1351_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1352 input413)).val
theorem input1353_def : input1353 = (.seq input1352 input413) := by
  unfold input1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1352 output413)).val
theorem output1353_def : output1353 = (.seq output1352 output413) := by
  unfold output1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1353_skip : Flapjack.WordAlloc.isSkip output1353 = false := by
  rw [output1353_def]
  conv => lhs; cbv
  try rfl
theorem node1353_eq : Flapjack.WordAlloc.removeDeadStructural input1353 value4 value1 value2 = (output1353, value4, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node413_eq]
  dsimp only
  rw [node1352_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1353 input410)).val
theorem input1354_def : input1354 = (.seq input1353 input410) := by
  unfold input1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1353 output410)).val
theorem output1354_def : output1354 = (.seq output1353 output410) := by
  unfold output1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1354_skip : Flapjack.WordAlloc.isSkip output1354 = false := by
  rw [output1354_def]
  conv => lhs; cbv
  try rfl
theorem node1354_eq : Flapjack.WordAlloc.removeDeadStructural input1354 value205 value1 value2 = (output1354, value4, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node410_eq]
  dsimp only
  rw [node1353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1354 input403)).val
theorem input1355_def : input1355 = (.seq input1354 input403) := by
  unfold input1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1354)).val
theorem output1355_def : output1355 = (output1354) := by
  unfold output1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1355_skip : Flapjack.WordAlloc.isSkip output1355 = false := by
  rw [output1355_def]
  conv => lhs; cbv
  try rfl
theorem node1355_eq : Flapjack.WordAlloc.removeDeadStructural input1355 value205 value1 value2 = (output1355, value4, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node403_eq]
  dsimp only
  rw [node1354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1355 input402)).val
theorem input1356_def : input1356 = (.seq input1355 input402) := by
  unfold input1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1355 output402)).val
theorem output1356_def : output1356 = (.seq output1355 output402) := by
  unfold output1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1356_skip : Flapjack.WordAlloc.isSkip output1356 = false := by
  rw [output1356_def]
  conv => lhs; cbv
  try rfl
theorem node1356_eq : Flapjack.WordAlloc.removeDeadStructural input1356 value204 value1 value2 = (output1356, value4, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node402_eq]
  dsimp only
  rw [node1355_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1356 input401)).val
theorem input1357_def : input1357 = (.seq input1356 input401) := by
  unfold input1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1356 output401)).val
theorem output1357_def : output1357 = (.seq output1356 output401) := by
  unfold output1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1357_skip : Flapjack.WordAlloc.isSkip output1357 = false := by
  rw [output1357_def]
  conv => lhs; cbv
  try rfl
theorem node1357_eq : Flapjack.WordAlloc.removeDeadStructural input1357 value4 value1 value2 = (output1357, value4, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node401_eq]
  dsimp only
  rw [node1356_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1357 input398)).val
theorem input1358_def : input1358 = (.seq input1357 input398) := by
  unfold input1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1357 output398)).val
theorem output1358_def : output1358 = (.seq output1357 output398) := by
  unfold output1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1358_skip : Flapjack.WordAlloc.isSkip output1358 = false := by
  rw [output1358_def]
  conv => lhs; cbv
  try rfl
theorem node1358_eq : Flapjack.WordAlloc.removeDeadStructural input1358 value199 value1 value2 = (output1358, value4, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node398_eq]
  dsimp only
  rw [node1357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1358 input391)).val
theorem input1359_def : input1359 = (.seq input1358 input391) := by
  unfold input1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1358)).val
theorem output1359_def : output1359 = (output1358) := by
  unfold output1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1359_skip : Flapjack.WordAlloc.isSkip output1359 = false := by
  rw [output1359_def]
  conv => lhs; cbv
  try rfl
theorem node1359_eq : Flapjack.WordAlloc.removeDeadStructural input1359 value199 value1 value2 = (output1359, value4, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node391_eq]
  dsimp only
  rw [node1358_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1359 input390)).val
theorem input1360_def : input1360 = (.seq input1359 input390) := by
  unfold input1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1359 output390)).val
theorem output1360_def : output1360 = (.seq output1359 output390) := by
  unfold output1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1360_skip : Flapjack.WordAlloc.isSkip output1360 = false := by
  rw [output1360_def]
  conv => lhs; cbv
  try rfl
theorem node1360_eq : Flapjack.WordAlloc.removeDeadStructural input1360 value198 value1 value2 = (output1360, value4, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node390_eq]
  dsimp only
  rw [node1359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1360 input389)).val
theorem input1361_def : input1361 = (.seq input1360 input389) := by
  unfold input1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1360 output389)).val
theorem output1361_def : output1361 = (.seq output1360 output389) := by
  unfold output1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1361_skip : Flapjack.WordAlloc.isSkip output1361 = false := by
  rw [output1361_def]
  conv => lhs; cbv
  try rfl
theorem node1361_eq : Flapjack.WordAlloc.removeDeadStructural input1361 value4 value1 value2 = (output1361, value4, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node389_eq]
  dsimp only
  rw [node1360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1361 input386)).val
theorem input1362_def : input1362 = (.seq input1361 input386) := by
  unfold input1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1361 output386)).val
theorem output1362_def : output1362 = (.seq output1361 output386) := by
  unfold output1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1362_skip : Flapjack.WordAlloc.isSkip output1362 = false := by
  rw [output1362_def]
  conv => lhs; cbv
  try rfl
theorem node1362_eq : Flapjack.WordAlloc.removeDeadStructural input1362 value193 value1 value2 = (output1362, value4, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node386_eq]
  dsimp only
  rw [node1361_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1362 input379)).val
theorem input1363_def : input1363 = (.seq input1362 input379) := by
  unfold input1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1362)).val
theorem output1363_def : output1363 = (output1362) := by
  unfold output1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1363_skip : Flapjack.WordAlloc.isSkip output1363 = false := by
  rw [output1363_def]
  conv => lhs; cbv
  try rfl
theorem node1363_eq : Flapjack.WordAlloc.removeDeadStructural input1363 value193 value1 value2 = (output1363, value4, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node379_eq]
  dsimp only
  rw [node1362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1363 input378)).val
theorem input1364_def : input1364 = (.seq input1363 input378) := by
  unfold input1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1363 output378)).val
theorem output1364_def : output1364 = (.seq output1363 output378) := by
  unfold output1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1364_skip : Flapjack.WordAlloc.isSkip output1364 = false := by
  rw [output1364_def]
  conv => lhs; cbv
  try rfl
theorem node1364_eq : Flapjack.WordAlloc.removeDeadStructural input1364 value192 value1 value2 = (output1364, value4, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node378_eq]
  dsimp only
  rw [node1363_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1364 input377)).val
theorem input1365_def : input1365 = (.seq input1364 input377) := by
  unfold input1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1364 output377)).val
theorem output1365_def : output1365 = (.seq output1364 output377) := by
  unfold output1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1365_skip : Flapjack.WordAlloc.isSkip output1365 = false := by
  rw [output1365_def]
  conv => lhs; cbv
  try rfl
theorem node1365_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value4 value1 value2 = (output1365, value4, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node377_eq]
  dsimp only
  rw [node1364_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1365 input374)).val
theorem input1366_def : input1366 = (.seq input1365 input374) := by
  unfold input1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1365 output374)).val
theorem output1366_def : output1366 = (.seq output1365 output374) := by
  unfold output1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1366_skip : Flapjack.WordAlloc.isSkip output1366 = false := by
  rw [output1366_def]
  conv => lhs; cbv
  try rfl
theorem node1366_eq : Flapjack.WordAlloc.removeDeadStructural input1366 value187 value1 value2 = (output1366, value4, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node374_eq]
  dsimp only
  rw [node1365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1366 input367)).val
theorem input1367_def : input1367 = (.seq input1366 input367) := by
  unfold input1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1366)).val
theorem output1367_def : output1367 = (output1366) := by
  unfold output1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1367_skip : Flapjack.WordAlloc.isSkip output1367 = false := by
  rw [output1367_def]
  conv => lhs; cbv
  try rfl
theorem node1367_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value187 value1 value2 = (output1367, value4, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node367_eq]
  dsimp only
  rw [node1366_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1367 input366)).val
theorem input1368_def : input1368 = (.seq input1367 input366) := by
  unfold input1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1367 output366)).val
theorem output1368_def : output1368 = (.seq output1367 output366) := by
  unfold output1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1368_skip : Flapjack.WordAlloc.isSkip output1368 = false := by
  rw [output1368_def]
  conv => lhs; cbv
  try rfl
theorem node1368_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value186 value1 value2 = (output1368, value4, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node366_eq]
  dsimp only
  rw [node1367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1368 input365)).val
theorem input1369_def : input1369 = (.seq input1368 input365) := by
  unfold input1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1368 output365)).val
theorem output1369_def : output1369 = (.seq output1368 output365) := by
  unfold output1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1369_skip : Flapjack.WordAlloc.isSkip output1369 = false := by
  rw [output1369_def]
  conv => lhs; cbv
  try rfl
theorem node1369_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value4 value1 value2 = (output1369, value4, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  dsimp only
  rw [node1368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1369 input362)).val
theorem input1370_def : input1370 = (.seq input1369 input362) := by
  unfold input1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1369 output362)).val
theorem output1370_def : output1370 = (.seq output1369 output362) := by
  unfold output1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1370_skip : Flapjack.WordAlloc.isSkip output1370 = false := by
  rw [output1370_def]
  conv => lhs; cbv
  try rfl
theorem node1370_eq : Flapjack.WordAlloc.removeDeadStructural input1370 value181 value1 value2 = (output1370, value4, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node362_eq]
  dsimp only
  rw [node1369_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1370 input355)).val
theorem input1371_def : input1371 = (.seq input1370 input355) := by
  unfold input1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1370)).val
theorem output1371_def : output1371 = (output1370) := by
  unfold output1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1371_skip : Flapjack.WordAlloc.isSkip output1371 = false := by
  rw [output1371_def]
  conv => lhs; cbv
  try rfl
theorem node1371_eq : Flapjack.WordAlloc.removeDeadStructural input1371 value181 value1 value2 = (output1371, value4, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  dsimp only
  rw [node1370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1371 input354)).val
theorem input1372_def : input1372 = (.seq input1371 input354) := by
  unfold input1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1371 output354)).val
theorem output1372_def : output1372 = (.seq output1371 output354) := by
  unfold output1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1372_skip : Flapjack.WordAlloc.isSkip output1372 = false := by
  rw [output1372_def]
  conv => lhs; cbv
  try rfl
theorem node1372_eq : Flapjack.WordAlloc.removeDeadStructural input1372 value180 value1 value2 = (output1372, value4, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node354_eq]
  dsimp only
  rw [node1371_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1372 input353)).val
theorem input1373_def : input1373 = (.seq input1372 input353) := by
  unfold input1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1372 output353)).val
theorem output1373_def : output1373 = (.seq output1372 output353) := by
  unfold output1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1373_skip : Flapjack.WordAlloc.isSkip output1373 = false := by
  rw [output1373_def]
  conv => lhs; cbv
  try rfl
theorem node1373_eq : Flapjack.WordAlloc.removeDeadStructural input1373 value4 value1 value2 = (output1373, value4, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  dsimp only
  rw [node1372_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1373 input350)).val
theorem input1374_def : input1374 = (.seq input1373 input350) := by
  unfold input1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1373 output350)).val
theorem output1374_def : output1374 = (.seq output1373 output350) := by
  unfold output1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1374_skip : Flapjack.WordAlloc.isSkip output1374 = false := by
  rw [output1374_def]
  conv => lhs; cbv
  try rfl
theorem node1374_eq : Flapjack.WordAlloc.removeDeadStructural input1374 value175 value1 value2 = (output1374, value4, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node350_eq]
  dsimp only
  rw [node1373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1374 input343)).val
theorem input1375_def : input1375 = (.seq input1374 input343) := by
  unfold input1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1374)).val
theorem output1375_def : output1375 = (output1374) := by
  unfold output1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1375_skip : Flapjack.WordAlloc.isSkip output1375 = false := by
  rw [output1375_def]
  conv => lhs; cbv
  try rfl
theorem node1375_eq : Flapjack.WordAlloc.removeDeadStructural input1375 value175 value1 value2 = (output1375, value4, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node343_eq]
  dsimp only
  rw [node1374_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1375_eq
end InitECandidate.Proofs.DeadStages64
