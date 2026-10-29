import InitECandidate.Proofs.DeadStages64.Chunk039
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1279 input630)).val
theorem input1280_def : input1280 = (.seq input1279 input630) := by
  unfold input1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1279 output630)).val
theorem output1280_def : output1280 = (.seq output1279 output630) := by
  unfold output1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1280_skip : Flapjack.WordAlloc.isSkip output1280 = false := by
  rw [output1280_def]
  conv => lhs; cbv
  try rfl
theorem node1280_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value318 value1 value2 = (output1280, value4, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node630_eq]
  dsimp only
  rw [node1279_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1280 input629)).val
theorem input1281_def : input1281 = (.seq input1280 input629) := by
  unfold input1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1280 output629)).val
theorem output1281_def : output1281 = (.seq output1280 output629) := by
  unfold output1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1281_skip : Flapjack.WordAlloc.isSkip output1281 = false := by
  rw [output1281_def]
  conv => lhs; cbv
  try rfl
theorem node1281_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value4 value1 value2 = (output1281, value4, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node629_eq]
  dsimp only
  rw [node1280_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1281 input626)).val
theorem input1282_def : input1282 = (.seq input1281 input626) := by
  unfold input1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1281 output626)).val
theorem output1282_def : output1282 = (.seq output1281 output626) := by
  unfold output1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1282_skip : Flapjack.WordAlloc.isSkip output1282 = false := by
  rw [output1282_def]
  conv => lhs; cbv
  try rfl
theorem node1282_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value313 value1 value2 = (output1282, value4, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node626_eq]
  dsimp only
  rw [node1281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1282 input619)).val
theorem input1283_def : input1283 = (.seq input1282 input619) := by
  unfold input1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1282)).val
theorem output1283_def : output1283 = (output1282) := by
  unfold output1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1283_skip : Flapjack.WordAlloc.isSkip output1283 = false := by
  rw [output1283_def]
  conv => lhs; cbv
  try rfl
theorem node1283_eq : Flapjack.WordAlloc.removeDeadStructural input1283 value313 value1 value2 = (output1283, value4, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node619_eq]
  dsimp only
  rw [node1282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1283 input618)).val
theorem input1284_def : input1284 = (.seq input1283 input618) := by
  unfold input1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1283 output618)).val
theorem output1284_def : output1284 = (.seq output1283 output618) := by
  unfold output1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1284_skip : Flapjack.WordAlloc.isSkip output1284 = false := by
  rw [output1284_def]
  conv => lhs; cbv
  try rfl
theorem node1284_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value312 value1 value2 = (output1284, value4, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node618_eq]
  dsimp only
  rw [node1283_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1284 input617)).val
theorem input1285_def : input1285 = (.seq input1284 input617) := by
  unfold input1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1284 output617)).val
theorem output1285_def : output1285 = (.seq output1284 output617) := by
  unfold output1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1285_skip : Flapjack.WordAlloc.isSkip output1285 = false := by
  rw [output1285_def]
  conv => lhs; cbv
  try rfl
theorem node1285_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value4 value1 value2 = (output1285, value4, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node617_eq]
  dsimp only
  rw [node1284_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1285 input614)).val
theorem input1286_def : input1286 = (.seq input1285 input614) := by
  unfold input1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1285 output614)).val
theorem output1286_def : output1286 = (.seq output1285 output614) := by
  unfold output1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1286_skip : Flapjack.WordAlloc.isSkip output1286 = false := by
  rw [output1286_def]
  conv => lhs; cbv
  try rfl
theorem node1286_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value307 value1 value2 = (output1286, value4, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node614_eq]
  dsimp only
  rw [node1285_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1286 input607)).val
theorem input1287_def : input1287 = (.seq input1286 input607) := by
  unfold input1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1286)).val
theorem output1287_def : output1287 = (output1286) := by
  unfold output1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1287_skip : Flapjack.WordAlloc.isSkip output1287 = false := by
  rw [output1287_def]
  conv => lhs; cbv
  try rfl
theorem node1287_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value307 value1 value2 = (output1287, value4, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node607_eq]
  dsimp only
  rw [node1286_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1287 input606)).val
theorem input1288_def : input1288 = (.seq input1287 input606) := by
  unfold input1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1287 output606)).val
theorem output1288_def : output1288 = (.seq output1287 output606) := by
  unfold output1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1288_skip : Flapjack.WordAlloc.isSkip output1288 = false := by
  rw [output1288_def]
  conv => lhs; cbv
  try rfl
theorem node1288_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value306 value1 value2 = (output1288, value4, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node606_eq]
  dsimp only
  rw [node1287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1288 input605)).val
theorem input1289_def : input1289 = (.seq input1288 input605) := by
  unfold input1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1288 output605)).val
theorem output1289_def : output1289 = (.seq output1288 output605) := by
  unfold output1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1289_skip : Flapjack.WordAlloc.isSkip output1289 = false := by
  rw [output1289_def]
  conv => lhs; cbv
  try rfl
theorem node1289_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value4 value1 value2 = (output1289, value4, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node605_eq]
  dsimp only
  rw [node1288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1289 input602)).val
theorem input1290_def : input1290 = (.seq input1289 input602) := by
  unfold input1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1289 output602)).val
theorem output1290_def : output1290 = (.seq output1289 output602) := by
  unfold output1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1290_skip : Flapjack.WordAlloc.isSkip output1290 = false := by
  rw [output1290_def]
  conv => lhs; cbv
  try rfl
theorem node1290_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value301 value1 value2 = (output1290, value4, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  dsimp only
  rw [node1289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1290 input595)).val
theorem input1291_def : input1291 = (.seq input1290 input595) := by
  unfold input1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1290)).val
theorem output1291_def : output1291 = (output1290) := by
  unfold output1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1291_skip : Flapjack.WordAlloc.isSkip output1291 = false := by
  rw [output1291_def]
  conv => lhs; cbv
  try rfl
theorem node1291_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value301 value1 value2 = (output1291, value4, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node595_eq]
  dsimp only
  rw [node1290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1291 input594)).val
theorem input1292_def : input1292 = (.seq input1291 input594) := by
  unfold input1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1291 output594)).val
theorem output1292_def : output1292 = (.seq output1291 output594) := by
  unfold output1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1292_skip : Flapjack.WordAlloc.isSkip output1292 = false := by
  rw [output1292_def]
  conv => lhs; cbv
  try rfl
theorem node1292_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value300 value1 value2 = (output1292, value4, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node594_eq]
  dsimp only
  rw [node1291_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1292 input593)).val
theorem input1293_def : input1293 = (.seq input1292 input593) := by
  unfold input1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1292 output593)).val
theorem output1293_def : output1293 = (.seq output1292 output593) := by
  unfold output1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1293_skip : Flapjack.WordAlloc.isSkip output1293 = false := by
  rw [output1293_def]
  conv => lhs; cbv
  try rfl
theorem node1293_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value4 value1 value2 = (output1293, value4, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node593_eq]
  dsimp only
  rw [node1292_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1293 input590)).val
theorem input1294_def : input1294 = (.seq input1293 input590) := by
  unfold input1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1293 output590)).val
theorem output1294_def : output1294 = (.seq output1293 output590) := by
  unfold output1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1294_skip : Flapjack.WordAlloc.isSkip output1294 = false := by
  rw [output1294_def]
  conv => lhs; cbv
  try rfl
theorem node1294_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value295 value1 value2 = (output1294, value4, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node590_eq]
  dsimp only
  rw [node1293_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1294 input583)).val
theorem input1295_def : input1295 = (.seq input1294 input583) := by
  unfold input1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1294)).val
theorem output1295_def : output1295 = (output1294) := by
  unfold output1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1295_skip : Flapjack.WordAlloc.isSkip output1295 = false := by
  rw [output1295_def]
  conv => lhs; cbv
  try rfl
theorem node1295_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value295 value1 value2 = (output1295, value4, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node583_eq]
  dsimp only
  rw [node1294_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1295 input582)).val
theorem input1296_def : input1296 = (.seq input1295 input582) := by
  unfold input1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1295 output582)).val
theorem output1296_def : output1296 = (.seq output1295 output582) := by
  unfold output1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1296_skip : Flapjack.WordAlloc.isSkip output1296 = false := by
  rw [output1296_def]
  conv => lhs; cbv
  try rfl
theorem node1296_eq : Flapjack.WordAlloc.removeDeadStructural input1296 value294 value1 value2 = (output1296, value4, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node582_eq]
  dsimp only
  rw [node1295_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1296 input581)).val
theorem input1297_def : input1297 = (.seq input1296 input581) := by
  unfold input1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1296 output581)).val
theorem output1297_def : output1297 = (.seq output1296 output581) := by
  unfold output1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1297_skip : Flapjack.WordAlloc.isSkip output1297 = false := by
  rw [output1297_def]
  conv => lhs; cbv
  try rfl
theorem node1297_eq : Flapjack.WordAlloc.removeDeadStructural input1297 value4 value1 value2 = (output1297, value4, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node581_eq]
  dsimp only
  rw [node1296_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1297 input578)).val
theorem input1298_def : input1298 = (.seq input1297 input578) := by
  unfold input1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1297 output578)).val
theorem output1298_def : output1298 = (.seq output1297 output578) := by
  unfold output1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1298_skip : Flapjack.WordAlloc.isSkip output1298 = false := by
  rw [output1298_def]
  conv => lhs; cbv
  try rfl
theorem node1298_eq : Flapjack.WordAlloc.removeDeadStructural input1298 value289 value1 value2 = (output1298, value4, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node578_eq]
  dsimp only
  rw [node1297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1298 input571)).val
theorem input1299_def : input1299 = (.seq input1298 input571) := by
  unfold input1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1298)).val
theorem output1299_def : output1299 = (output1298) := by
  unfold output1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1299_skip : Flapjack.WordAlloc.isSkip output1299 = false := by
  rw [output1299_def]
  conv => lhs; cbv
  try rfl
theorem node1299_eq : Flapjack.WordAlloc.removeDeadStructural input1299 value289 value1 value2 = (output1299, value4, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node571_eq]
  dsimp only
  rw [node1298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1299 input570)).val
theorem input1300_def : input1300 = (.seq input1299 input570) := by
  unfold input1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1299 output570)).val
theorem output1300_def : output1300 = (.seq output1299 output570) := by
  unfold output1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1300_skip : Flapjack.WordAlloc.isSkip output1300 = false := by
  rw [output1300_def]
  conv => lhs; cbv
  try rfl
theorem node1300_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value288 value1 value2 = (output1300, value4, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node570_eq]
  dsimp only
  rw [node1299_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1300 input569)).val
theorem input1301_def : input1301 = (.seq input1300 input569) := by
  unfold input1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1300 output569)).val
theorem output1301_def : output1301 = (.seq output1300 output569) := by
  unfold output1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1301_skip : Flapjack.WordAlloc.isSkip output1301 = false := by
  rw [output1301_def]
  conv => lhs; cbv
  try rfl
theorem node1301_eq : Flapjack.WordAlloc.removeDeadStructural input1301 value4 value1 value2 = (output1301, value4, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node569_eq]
  dsimp only
  rw [node1300_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1301 input566)).val
theorem input1302_def : input1302 = (.seq input1301 input566) := by
  unfold input1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1301 output566)).val
theorem output1302_def : output1302 = (.seq output1301 output566) := by
  unfold output1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1302_skip : Flapjack.WordAlloc.isSkip output1302 = false := by
  rw [output1302_def]
  conv => lhs; cbv
  try rfl
theorem node1302_eq : Flapjack.WordAlloc.removeDeadStructural input1302 value283 value1 value2 = (output1302, value4, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node566_eq]
  dsimp only
  rw [node1301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1302 input559)).val
theorem input1303_def : input1303 = (.seq input1302 input559) := by
  unfold input1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1302)).val
theorem output1303_def : output1303 = (output1302) := by
  unfold output1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1303_skip : Flapjack.WordAlloc.isSkip output1303 = false := by
  rw [output1303_def]
  conv => lhs; cbv
  try rfl
theorem node1303_eq : Flapjack.WordAlloc.removeDeadStructural input1303 value283 value1 value2 = (output1303, value4, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node559_eq]
  dsimp only
  rw [node1302_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1303 input558)).val
theorem input1304_def : input1304 = (.seq input1303 input558) := by
  unfold input1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1303 output558)).val
theorem output1304_def : output1304 = (.seq output1303 output558) := by
  unfold output1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1304_skip : Flapjack.WordAlloc.isSkip output1304 = false := by
  rw [output1304_def]
  conv => lhs; cbv
  try rfl
theorem node1304_eq : Flapjack.WordAlloc.removeDeadStructural input1304 value282 value1 value2 = (output1304, value4, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node558_eq]
  dsimp only
  rw [node1303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1304 input557)).val
theorem input1305_def : input1305 = (.seq input1304 input557) := by
  unfold input1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1304 output557)).val
theorem output1305_def : output1305 = (.seq output1304 output557) := by
  unfold output1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1305_skip : Flapjack.WordAlloc.isSkip output1305 = false := by
  rw [output1305_def]
  conv => lhs; cbv
  try rfl
theorem node1305_eq : Flapjack.WordAlloc.removeDeadStructural input1305 value4 value1 value2 = (output1305, value4, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node557_eq]
  dsimp only
  rw [node1304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1305 input554)).val
theorem input1306_def : input1306 = (.seq input1305 input554) := by
  unfold input1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1305 output554)).val
theorem output1306_def : output1306 = (.seq output1305 output554) := by
  unfold output1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1306_skip : Flapjack.WordAlloc.isSkip output1306 = false := by
  rw [output1306_def]
  conv => lhs; cbv
  try rfl
theorem node1306_eq : Flapjack.WordAlloc.removeDeadStructural input1306 value277 value1 value2 = (output1306, value4, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node554_eq]
  dsimp only
  rw [node1305_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1306 input547)).val
theorem input1307_def : input1307 = (.seq input1306 input547) := by
  unfold input1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1306)).val
theorem output1307_def : output1307 = (output1306) := by
  unfold output1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1307_skip : Flapjack.WordAlloc.isSkip output1307 = false := by
  rw [output1307_def]
  conv => lhs; cbv
  try rfl
theorem node1307_eq : Flapjack.WordAlloc.removeDeadStructural input1307 value277 value1 value2 = (output1307, value4, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node547_eq]
  dsimp only
  rw [node1306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1307 input546)).val
theorem input1308_def : input1308 = (.seq input1307 input546) := by
  unfold input1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1307 output546)).val
theorem output1308_def : output1308 = (.seq output1307 output546) := by
  unfold output1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1308_skip : Flapjack.WordAlloc.isSkip output1308 = false := by
  rw [output1308_def]
  conv => lhs; cbv
  try rfl
theorem node1308_eq : Flapjack.WordAlloc.removeDeadStructural input1308 value276 value1 value2 = (output1308, value4, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node546_eq]
  dsimp only
  rw [node1307_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1308 input545)).val
theorem input1309_def : input1309 = (.seq input1308 input545) := by
  unfold input1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1308 output545)).val
theorem output1309_def : output1309 = (.seq output1308 output545) := by
  unfold output1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1309_skip : Flapjack.WordAlloc.isSkip output1309 = false := by
  rw [output1309_def]
  conv => lhs; cbv
  try rfl
theorem node1309_eq : Flapjack.WordAlloc.removeDeadStructural input1309 value4 value1 value2 = (output1309, value4, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node545_eq]
  dsimp only
  rw [node1308_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1309 input542)).val
theorem input1310_def : input1310 = (.seq input1309 input542) := by
  unfold input1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1309 output542)).val
theorem output1310_def : output1310 = (.seq output1309 output542) := by
  unfold output1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1310_skip : Flapjack.WordAlloc.isSkip output1310 = false := by
  rw [output1310_def]
  conv => lhs; cbv
  try rfl
theorem node1310_eq : Flapjack.WordAlloc.removeDeadStructural input1310 value271 value1 value2 = (output1310, value4, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  dsimp only
  rw [node1309_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1310 input535)).val
theorem input1311_def : input1311 = (.seq input1310 input535) := by
  unfold input1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1310)).val
theorem output1311_def : output1311 = (output1310) := by
  unfold output1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1311_skip : Flapjack.WordAlloc.isSkip output1311 = false := by
  rw [output1311_def]
  conv => lhs; cbv
  try rfl
theorem node1311_eq : Flapjack.WordAlloc.removeDeadStructural input1311 value271 value1 value2 = (output1311, value4, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node535_eq]
  dsimp only
  rw [node1310_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1311_eq
end InitECandidate.Proofs.DeadStages64
