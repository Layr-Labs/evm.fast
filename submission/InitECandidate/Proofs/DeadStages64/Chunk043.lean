import InitECandidate.Proofs.DeadStages64.Chunk042
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1375 input342)).val
theorem input1376_def : input1376 = (.seq input1375 input342) := by
  unfold input1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1375 output342)).val
theorem output1376_def : output1376 = (.seq output1375 output342) := by
  unfold output1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1376_skip : Flapjack.WordAlloc.isSkip output1376 = false := by
  rw [output1376_def]
  conv => lhs; cbv
  try rfl
theorem node1376_eq : Flapjack.WordAlloc.removeDeadStructural input1376 value174 value1 value2 = (output1376, value4, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  dsimp only
  rw [node1375_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1376 input341)).val
theorem input1377_def : input1377 = (.seq input1376 input341) := by
  unfold input1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1376 output341)).val
theorem output1377_def : output1377 = (.seq output1376 output341) := by
  unfold output1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1377_skip : Flapjack.WordAlloc.isSkip output1377 = false := by
  rw [output1377_def]
  conv => lhs; cbv
  try rfl
theorem node1377_eq : Flapjack.WordAlloc.removeDeadStructural input1377 value4 value1 value2 = (output1377, value4, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node341_eq]
  dsimp only
  rw [node1376_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1377 input338)).val
theorem input1378_def : input1378 = (.seq input1377 input338) := by
  unfold input1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1377 output338)).val
theorem output1378_def : output1378 = (.seq output1377 output338) := by
  unfold output1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1378_skip : Flapjack.WordAlloc.isSkip output1378 = false := by
  rw [output1378_def]
  conv => lhs; cbv
  try rfl
theorem node1378_eq : Flapjack.WordAlloc.removeDeadStructural input1378 value169 value1 value2 = (output1378, value4, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node338_eq]
  dsimp only
  rw [node1377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1378 input331)).val
theorem input1379_def : input1379 = (.seq input1378 input331) := by
  unfold input1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1378)).val
theorem output1379_def : output1379 = (output1378) := by
  unfold output1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1379_skip : Flapjack.WordAlloc.isSkip output1379 = false := by
  rw [output1379_def]
  conv => lhs; cbv
  try rfl
theorem node1379_eq : Flapjack.WordAlloc.removeDeadStructural input1379 value169 value1 value2 = (output1379, value4, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node331_eq]
  dsimp only
  rw [node1378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1379 input330)).val
theorem input1380_def : input1380 = (.seq input1379 input330) := by
  unfold input1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1379 output330)).val
theorem output1380_def : output1380 = (.seq output1379 output330) := by
  unfold output1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1380_skip : Flapjack.WordAlloc.isSkip output1380 = false := by
  rw [output1380_def]
  conv => lhs; cbv
  try rfl
theorem node1380_eq : Flapjack.WordAlloc.removeDeadStructural input1380 value168 value1 value2 = (output1380, value4, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node330_eq]
  dsimp only
  rw [node1379_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1380 input329)).val
theorem input1381_def : input1381 = (.seq input1380 input329) := by
  unfold input1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1380 output329)).val
theorem output1381_def : output1381 = (.seq output1380 output329) := by
  unfold output1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1381_skip : Flapjack.WordAlloc.isSkip output1381 = false := by
  rw [output1381_def]
  conv => lhs; cbv
  try rfl
theorem node1381_eq : Flapjack.WordAlloc.removeDeadStructural input1381 value4 value1 value2 = (output1381, value4, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  dsimp only
  rw [node1380_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1381 input326)).val
theorem input1382_def : input1382 = (.seq input1381 input326) := by
  unfold input1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1381 output326)).val
theorem output1382_def : output1382 = (.seq output1381 output326) := by
  unfold output1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1382_skip : Flapjack.WordAlloc.isSkip output1382 = false := by
  rw [output1382_def]
  conv => lhs; cbv
  try rfl
theorem node1382_eq : Flapjack.WordAlloc.removeDeadStructural input1382 value163 value1 value2 = (output1382, value4, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  dsimp only
  rw [node1381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1382 input319)).val
theorem input1383_def : input1383 = (.seq input1382 input319) := by
  unfold input1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1382)).val
theorem output1383_def : output1383 = (output1382) := by
  unfold output1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1383_skip : Flapjack.WordAlloc.isSkip output1383 = false := by
  rw [output1383_def]
  conv => lhs; cbv
  try rfl
theorem node1383_eq : Flapjack.WordAlloc.removeDeadStructural input1383 value163 value1 value2 = (output1383, value4, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node319_eq]
  dsimp only
  rw [node1382_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1383 input318)).val
theorem input1384_def : input1384 = (.seq input1383 input318) := by
  unfold input1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1383 output318)).val
theorem output1384_def : output1384 = (.seq output1383 output318) := by
  unfold output1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1384_skip : Flapjack.WordAlloc.isSkip output1384 = false := by
  rw [output1384_def]
  conv => lhs; cbv
  try rfl
theorem node1384_eq : Flapjack.WordAlloc.removeDeadStructural input1384 value162 value1 value2 = (output1384, value4, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node318_eq]
  dsimp only
  rw [node1383_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1384 input317)).val
theorem input1385_def : input1385 = (.seq input1384 input317) := by
  unfold input1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1384 output317)).val
theorem output1385_def : output1385 = (.seq output1384 output317) := by
  unfold output1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1385_skip : Flapjack.WordAlloc.isSkip output1385 = false := by
  rw [output1385_def]
  conv => lhs; cbv
  try rfl
theorem node1385_eq : Flapjack.WordAlloc.removeDeadStructural input1385 value4 value1 value2 = (output1385, value4, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node317_eq]
  dsimp only
  rw [node1384_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1385 input314)).val
theorem input1386_def : input1386 = (.seq input1385 input314) := by
  unfold input1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1385 output314)).val
theorem output1386_def : output1386 = (.seq output1385 output314) := by
  unfold output1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1386_skip : Flapjack.WordAlloc.isSkip output1386 = false := by
  rw [output1386_def]
  conv => lhs; cbv
  try rfl
theorem node1386_eq : Flapjack.WordAlloc.removeDeadStructural input1386 value157 value1 value2 = (output1386, value4, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node314_eq]
  dsimp only
  rw [node1385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1386 input307)).val
theorem input1387_def : input1387 = (.seq input1386 input307) := by
  unfold input1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1386)).val
theorem output1387_def : output1387 = (output1386) := by
  unfold output1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1387_skip : Flapjack.WordAlloc.isSkip output1387 = false := by
  rw [output1387_def]
  conv => lhs; cbv
  try rfl
theorem node1387_eq : Flapjack.WordAlloc.removeDeadStructural input1387 value157 value1 value2 = (output1387, value4, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node307_eq]
  dsimp only
  rw [node1386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1387 input306)).val
theorem input1388_def : input1388 = (.seq input1387 input306) := by
  unfold input1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1387 output306)).val
theorem output1388_def : output1388 = (.seq output1387 output306) := by
  unfold output1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1388_skip : Flapjack.WordAlloc.isSkip output1388 = false := by
  rw [output1388_def]
  conv => lhs; cbv
  try rfl
theorem node1388_eq : Flapjack.WordAlloc.removeDeadStructural input1388 value156 value1 value2 = (output1388, value4, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node306_eq]
  dsimp only
  rw [node1387_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1388 input305)).val
theorem input1389_def : input1389 = (.seq input1388 input305) := by
  unfold input1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1388 output305)).val
theorem output1389_def : output1389 = (.seq output1388 output305) := by
  unfold output1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1389_skip : Flapjack.WordAlloc.isSkip output1389 = false := by
  rw [output1389_def]
  conv => lhs; cbv
  try rfl
theorem node1389_eq : Flapjack.WordAlloc.removeDeadStructural input1389 value4 value1 value2 = (output1389, value4, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node305_eq]
  dsimp only
  rw [node1388_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1389 input302)).val
theorem input1390_def : input1390 = (.seq input1389 input302) := by
  unfold input1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1389 output302)).val
theorem output1390_def : output1390 = (.seq output1389 output302) := by
  unfold output1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1390_skip : Flapjack.WordAlloc.isSkip output1390 = false := by
  rw [output1390_def]
  conv => lhs; cbv
  try rfl
theorem node1390_eq : Flapjack.WordAlloc.removeDeadStructural input1390 value151 value1 value2 = (output1390, value4, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node302_eq]
  dsimp only
  rw [node1389_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1390 input295)).val
theorem input1391_def : input1391 = (.seq input1390 input295) := by
  unfold input1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1390)).val
theorem output1391_def : output1391 = (output1390) := by
  unfold output1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1391_skip : Flapjack.WordAlloc.isSkip output1391 = false := by
  rw [output1391_def]
  conv => lhs; cbv
  try rfl
theorem node1391_eq : Flapjack.WordAlloc.removeDeadStructural input1391 value151 value1 value2 = (output1391, value4, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node295_eq]
  dsimp only
  rw [node1390_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1391 input294)).val
theorem input1392_def : input1392 = (.seq input1391 input294) := by
  unfold input1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1391 output294)).val
theorem output1392_def : output1392 = (.seq output1391 output294) := by
  unfold output1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1392_skip : Flapjack.WordAlloc.isSkip output1392 = false := by
  rw [output1392_def]
  conv => lhs; cbv
  try rfl
theorem node1392_eq : Flapjack.WordAlloc.removeDeadStructural input1392 value150 value1 value2 = (output1392, value4, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node294_eq]
  dsimp only
  rw [node1391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1392 input293)).val
theorem input1393_def : input1393 = (.seq input1392 input293) := by
  unfold input1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1392 output293)).val
theorem output1393_def : output1393 = (.seq output1392 output293) := by
  unfold output1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1393_skip : Flapjack.WordAlloc.isSkip output1393 = false := by
  rw [output1393_def]
  conv => lhs; cbv
  try rfl
theorem node1393_eq : Flapjack.WordAlloc.removeDeadStructural input1393 value4 value1 value2 = (output1393, value4, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node293_eq]
  dsimp only
  rw [node1392_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1393 input290)).val
theorem input1394_def : input1394 = (.seq input1393 input290) := by
  unfold input1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1393 output290)).val
theorem output1394_def : output1394 = (.seq output1393 output290) := by
  unfold output1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1394_skip : Flapjack.WordAlloc.isSkip output1394 = false := by
  rw [output1394_def]
  conv => lhs; cbv
  try rfl
theorem node1394_eq : Flapjack.WordAlloc.removeDeadStructural input1394 value145 value1 value2 = (output1394, value4, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node290_eq]
  dsimp only
  rw [node1393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1394 input283)).val
theorem input1395_def : input1395 = (.seq input1394 input283) := by
  unfold input1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1394)).val
theorem output1395_def : output1395 = (output1394) := by
  unfold output1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1395_skip : Flapjack.WordAlloc.isSkip output1395 = false := by
  rw [output1395_def]
  conv => lhs; cbv
  try rfl
theorem node1395_eq : Flapjack.WordAlloc.removeDeadStructural input1395 value145 value1 value2 = (output1395, value4, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node283_eq]
  dsimp only
  rw [node1394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1395 input282)).val
theorem input1396_def : input1396 = (.seq input1395 input282) := by
  unfold input1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1395 output282)).val
theorem output1396_def : output1396 = (.seq output1395 output282) := by
  unfold output1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1396_skip : Flapjack.WordAlloc.isSkip output1396 = false := by
  rw [output1396_def]
  conv => lhs; cbv
  try rfl
theorem node1396_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value144 value1 value2 = (output1396, value4, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node282_eq]
  dsimp only
  rw [node1395_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1396 input281)).val
theorem input1397_def : input1397 = (.seq input1396 input281) := by
  unfold input1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1396 output281)).val
theorem output1397_def : output1397 = (.seq output1396 output281) := by
  unfold output1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1397_skip : Flapjack.WordAlloc.isSkip output1397 = false := by
  rw [output1397_def]
  conv => lhs; cbv
  try rfl
theorem node1397_eq : Flapjack.WordAlloc.removeDeadStructural input1397 value4 value1 value2 = (output1397, value4, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node281_eq]
  dsimp only
  rw [node1396_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1397 input278)).val
theorem input1398_def : input1398 = (.seq input1397 input278) := by
  unfold input1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1397 output278)).val
theorem output1398_def : output1398 = (.seq output1397 output278) := by
  unfold output1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1398_skip : Flapjack.WordAlloc.isSkip output1398 = false := by
  rw [output1398_def]
  conv => lhs; cbv
  try rfl
theorem node1398_eq : Flapjack.WordAlloc.removeDeadStructural input1398 value139 value1 value2 = (output1398, value4, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node278_eq]
  dsimp only
  rw [node1397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1398 input271)).val
theorem input1399_def : input1399 = (.seq input1398 input271) := by
  unfold input1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1398)).val
theorem output1399_def : output1399 = (output1398) := by
  unfold output1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1399_skip : Flapjack.WordAlloc.isSkip output1399 = false := by
  rw [output1399_def]
  conv => lhs; cbv
  try rfl
theorem node1399_eq : Flapjack.WordAlloc.removeDeadStructural input1399 value139 value1 value2 = (output1399, value4, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node271_eq]
  dsimp only
  rw [node1398_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1399 input270)).val
theorem input1400_def : input1400 = (.seq input1399 input270) := by
  unfold input1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1399 output270)).val
theorem output1400_def : output1400 = (.seq output1399 output270) := by
  unfold output1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1400_skip : Flapjack.WordAlloc.isSkip output1400 = false := by
  rw [output1400_def]
  conv => lhs; cbv
  try rfl
theorem node1400_eq : Flapjack.WordAlloc.removeDeadStructural input1400 value138 value1 value2 = (output1400, value4, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node270_eq]
  dsimp only
  rw [node1399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1400 input269)).val
theorem input1401_def : input1401 = (.seq input1400 input269) := by
  unfold input1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1400 output269)).val
theorem output1401_def : output1401 = (.seq output1400 output269) := by
  unfold output1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1401_skip : Flapjack.WordAlloc.isSkip output1401 = false := by
  rw [output1401_def]
  conv => lhs; cbv
  try rfl
theorem node1401_eq : Flapjack.WordAlloc.removeDeadStructural input1401 value4 value1 value2 = (output1401, value4, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node269_eq]
  dsimp only
  rw [node1400_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1401 input266)).val
theorem input1402_def : input1402 = (.seq input1401 input266) := by
  unfold input1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1401 output266)).val
theorem output1402_def : output1402 = (.seq output1401 output266) := by
  unfold output1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1402_skip : Flapjack.WordAlloc.isSkip output1402 = false := by
  rw [output1402_def]
  conv => lhs; cbv
  try rfl
theorem node1402_eq : Flapjack.WordAlloc.removeDeadStructural input1402 value133 value1 value2 = (output1402, value4, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node266_eq]
  dsimp only
  rw [node1401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1402 input259)).val
theorem input1403_def : input1403 = (.seq input1402 input259) := by
  unfold input1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1402)).val
theorem output1403_def : output1403 = (output1402) := by
  unfold output1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1403_skip : Flapjack.WordAlloc.isSkip output1403 = false := by
  rw [output1403_def]
  conv => lhs; cbv
  try rfl
theorem node1403_eq : Flapjack.WordAlloc.removeDeadStructural input1403 value133 value1 value2 = (output1403, value4, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  dsimp only
  rw [node1402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1403 input258)).val
theorem input1404_def : input1404 = (.seq input1403 input258) := by
  unfold input1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1403 output258)).val
theorem output1404_def : output1404 = (.seq output1403 output258) := by
  unfold output1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1404_skip : Flapjack.WordAlloc.isSkip output1404 = false := by
  rw [output1404_def]
  conv => lhs; cbv
  try rfl
theorem node1404_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value132 value1 value2 = (output1404, value4, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  dsimp only
  rw [node1403_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1404 input257)).val
theorem input1405_def : input1405 = (.seq input1404 input257) := by
  unfold input1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1404 output257)).val
theorem output1405_def : output1405 = (.seq output1404 output257) := by
  unfold output1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1405_skip : Flapjack.WordAlloc.isSkip output1405 = false := by
  rw [output1405_def]
  conv => lhs; cbv
  try rfl
theorem node1405_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value4 value1 value2 = (output1405, value4, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node257_eq]
  dsimp only
  rw [node1404_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1405 input254)).val
theorem input1406_def : input1406 = (.seq input1405 input254) := by
  unfold input1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1405 output254)).val
theorem output1406_def : output1406 = (.seq output1405 output254) := by
  unfold output1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1406_skip : Flapjack.WordAlloc.isSkip output1406 = false := by
  rw [output1406_def]
  conv => lhs; cbv
  try rfl
theorem node1406_eq : Flapjack.WordAlloc.removeDeadStructural input1406 value127 value1 value2 = (output1406, value4, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node254_eq]
  dsimp only
  rw [node1405_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1406 input247)).val
theorem input1407_def : input1407 = (.seq input1406 input247) := by
  unfold input1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1406)).val
theorem output1407_def : output1407 = (output1406) := by
  unfold output1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1407_skip : Flapjack.WordAlloc.isSkip output1407 = false := by
  rw [output1407_def]
  conv => lhs; cbv
  try rfl
theorem node1407_eq : Flapjack.WordAlloc.removeDeadStructural input1407 value127 value1 value2 = (output1407, value4, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node247_eq]
  dsimp only
  rw [node1406_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1407_eq
end InitECandidate.Proofs.DeadStages64
