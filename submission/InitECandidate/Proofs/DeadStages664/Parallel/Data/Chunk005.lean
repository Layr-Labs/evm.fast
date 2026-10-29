import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages664.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages664.Parallel
@[irreducible, cbv_opaque] def input1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1279 input972)).val
theorem input1280_def : input1280 = (.seq input1279 input972) := by
  unfold input1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1279)).val
theorem output1280_def : output1280 = (output1279) := by
  unfold output1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1280_skip : Flapjack.WordAlloc.isSkip output1280 = false := by
  rw [output1280_def]
  exact output1279_skip


@[irreducible, cbv_opaque] def input1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1280 input971)).val
theorem input1281_def : input1281 = (.seq input1280 input971) := by
  unfold input1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1280 output971)).val
theorem output1281_def : output1281 = (.seq output1280 output971) := by
  unfold output1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1281_skip : Flapjack.WordAlloc.isSkip output1281 = false := by
  rw [output1281_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1281 input970)).val
theorem input1282_def : input1282 = (.seq input1281 input970) := by
  unfold input1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1281 output970)).val
theorem output1282_def : output1282 = (.seq output1281 output970) := by
  unfold output1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1282_skip : Flapjack.WordAlloc.isSkip output1282 = false := by
  rw [output1282_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1282 input967)).val
theorem input1283_def : input1283 = (.seq input1282 input967) := by
  unfold input1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1282 output967)).val
theorem output1283_def : output1283 = (.seq output1282 output967) := by
  unfold output1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1283_skip : Flapjack.WordAlloc.isSkip output1283 = false := by
  rw [output1283_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1283 input966)).val
theorem input1284_def : input1284 = (.seq input1283 input966) := by
  unfold input1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1283 output966)).val
theorem output1284_def : output1284 = (.seq output1283 output966) := by
  unfold output1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1284_skip : Flapjack.WordAlloc.isSkip output1284 = false := by
  rw [output1284_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1284 input963)).val
theorem input1285_def : input1285 = (.seq input1284 input963) := by
  unfold input1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1284 output963)).val
theorem output1285_def : output1285 = (.seq output1284 output963) := by
  unfold output1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1285_skip : Flapjack.WordAlloc.isSkip output1285 = false := by
  rw [output1285_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1285 input962)).val
theorem input1286_def : input1286 = (.seq input1285 input962) := by
  unfold input1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1285 output962)).val
theorem output1286_def : output1286 = (.seq output1285 output962) := by
  unfold output1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1286_skip : Flapjack.WordAlloc.isSkip output1286 = false := by
  rw [output1286_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1286 input959)).val
theorem input1287_def : input1287 = (.seq input1286 input959) := by
  unfold input1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1286 output959)).val
theorem output1287_def : output1287 = (.seq output1286 output959) := by
  unfold output1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1287_skip : Flapjack.WordAlloc.isSkip output1287 = false := by
  rw [output1287_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1287 input958)).val
theorem input1288_def : input1288 = (.seq input1287 input958) := by
  unfold input1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1287 output958)).val
theorem output1288_def : output1288 = (.seq output1287 output958) := by
  unfold output1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1288_skip : Flapjack.WordAlloc.isSkip output1288 = false := by
  rw [output1288_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1288 input955)).val
theorem input1289_def : input1289 = (.seq input1288 input955) := by
  unfold input1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1288 output955)).val
theorem output1289_def : output1289 = (.seq output1288 output955) := by
  unfold output1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1289_skip : Flapjack.WordAlloc.isSkip output1289 = false := by
  rw [output1289_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1289 input946)).val
theorem input1290_def : input1290 = (.seq input1289 input946) := by
  unfold input1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1289)).val
theorem output1290_def : output1290 = (output1289) := by
  unfold output1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1290_skip : Flapjack.WordAlloc.isSkip output1290 = false := by
  rw [output1290_def]
  exact output1289_skip


@[irreducible, cbv_opaque] def input1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1290 input945)).val
theorem input1291_def : input1291 = (.seq input1290 input945) := by
  unfold input1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1290)).val
theorem output1291_def : output1291 = (output1290) := by
  unfold output1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1291_skip : Flapjack.WordAlloc.isSkip output1291 = false := by
  rw [output1291_def]
  exact output1290_skip


@[irreducible, cbv_opaque] def input1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1291 input944)).val
theorem input1292_def : input1292 = (.seq input1291 input944) := by
  unfold input1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1291)).val
theorem output1292_def : output1292 = (output1291) := by
  unfold output1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1292_skip : Flapjack.WordAlloc.isSkip output1292 = false := by
  rw [output1292_def]
  exact output1291_skip


@[irreducible, cbv_opaque] def input1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1292 input943)).val
theorem input1293_def : input1293 = (.seq input1292 input943) := by
  unfold input1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1292)).val
theorem output1293_def : output1293 = (output1292) := by
  unfold output1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1293_skip : Flapjack.WordAlloc.isSkip output1293 = false := by
  rw [output1293_def]
  exact output1292_skip


@[irreducible, cbv_opaque] def input1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1293 input942)).val
theorem input1294_def : input1294 = (.seq input1293 input942) := by
  unfold input1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1293 output942)).val
theorem output1294_def : output1294 = (.seq output1293 output942) := by
  unfold output1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1294_skip : Flapjack.WordAlloc.isSkip output1294 = false := by
  rw [output1294_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1294 input941)).val
theorem input1295_def : input1295 = (.seq input1294 input941) := by
  unfold input1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1294 output941)).val
theorem output1295_def : output1295 = (.seq output1294 output941) := by
  unfold output1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1295_skip : Flapjack.WordAlloc.isSkip output1295 = false := by
  rw [output1295_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1295 input938)).val
theorem input1296_def : input1296 = (.seq input1295 input938) := by
  unfold input1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1295 output938)).val
theorem output1296_def : output1296 = (.seq output1295 output938) := by
  unfold output1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1296_skip : Flapjack.WordAlloc.isSkip output1296 = false := by
  rw [output1296_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1296 input937)).val
theorem input1297_def : input1297 = (.seq input1296 input937) := by
  unfold input1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1296 output937)).val
theorem output1297_def : output1297 = (.seq output1296 output937) := by
  unfold output1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1297_skip : Flapjack.WordAlloc.isSkip output1297 = false := by
  rw [output1297_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1297 input934)).val
theorem input1298_def : input1298 = (.seq input1297 input934) := by
  unfold input1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1297 output934)).val
theorem output1298_def : output1298 = (.seq output1297 output934) := by
  unfold output1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1298_skip : Flapjack.WordAlloc.isSkip output1298 = false := by
  rw [output1298_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1298 input933)).val
theorem input1299_def : input1299 = (.seq input1298 input933) := by
  unfold input1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1298 output933)).val
theorem output1299_def : output1299 = (.seq output1298 output933) := by
  unfold output1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1299_skip : Flapjack.WordAlloc.isSkip output1299 = false := by
  rw [output1299_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1299 input930)).val
theorem input1300_def : input1300 = (.seq input1299 input930) := by
  unfold input1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1299 output930)).val
theorem output1300_def : output1300 = (.seq output1299 output930) := by
  unfold output1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1300_skip : Flapjack.WordAlloc.isSkip output1300 = false := by
  rw [output1300_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1300 input929)).val
theorem input1301_def : input1301 = (.seq input1300 input929) := by
  unfold input1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1300 output929)).val
theorem output1301_def : output1301 = (.seq output1300 output929) := by
  unfold output1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1301_skip : Flapjack.WordAlloc.isSkip output1301 = false := by
  rw [output1301_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1301 input926)).val
theorem input1302_def : input1302 = (.seq input1301 input926) := by
  unfold input1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1301 output926)).val
theorem output1302_def : output1302 = (.seq output1301 output926) := by
  unfold output1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1302_skip : Flapjack.WordAlloc.isSkip output1302 = false := by
  rw [output1302_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1302 input917)).val
theorem input1303_def : input1303 = (.seq input1302 input917) := by
  unfold input1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1302)).val
theorem output1303_def : output1303 = (output1302) := by
  unfold output1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1303_skip : Flapjack.WordAlloc.isSkip output1303 = false := by
  rw [output1303_def]
  exact output1302_skip


@[irreducible, cbv_opaque] def input1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1303 input916)).val
theorem input1304_def : input1304 = (.seq input1303 input916) := by
  unfold input1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1303)).val
theorem output1304_def : output1304 = (output1303) := by
  unfold output1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1304_skip : Flapjack.WordAlloc.isSkip output1304 = false := by
  rw [output1304_def]
  exact output1303_skip


@[irreducible, cbv_opaque] def input1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1304 input915)).val
theorem input1305_def : input1305 = (.seq input1304 input915) := by
  unfold input1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1304)).val
theorem output1305_def : output1305 = (output1304) := by
  unfold output1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1305_skip : Flapjack.WordAlloc.isSkip output1305 = false := by
  rw [output1305_def]
  exact output1304_skip


@[irreducible, cbv_opaque] def input1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1305 input914)).val
theorem input1306_def : input1306 = (.seq input1305 input914) := by
  unfold input1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1305)).val
theorem output1306_def : output1306 = (output1305) := by
  unfold output1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1306_skip : Flapjack.WordAlloc.isSkip output1306 = false := by
  rw [output1306_def]
  exact output1305_skip


@[irreducible, cbv_opaque] def input1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1306 input913)).val
theorem input1307_def : input1307 = (.seq input1306 input913) := by
  unfold input1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1306 output913)).val
theorem output1307_def : output1307 = (.seq output1306 output913) := by
  unfold output1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1307_skip : Flapjack.WordAlloc.isSkip output1307 = false := by
  rw [output1307_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1307 input912)).val
theorem input1308_def : input1308 = (.seq input1307 input912) := by
  unfold input1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1307 output912)).val
theorem output1308_def : output1308 = (.seq output1307 output912) := by
  unfold output1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1308_skip : Flapjack.WordAlloc.isSkip output1308 = false := by
  rw [output1308_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1308 input909)).val
theorem input1309_def : input1309 = (.seq input1308 input909) := by
  unfold input1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1308 output909)).val
theorem output1309_def : output1309 = (.seq output1308 output909) := by
  unfold output1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1309_skip : Flapjack.WordAlloc.isSkip output1309 = false := by
  rw [output1309_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1309 input908)).val
theorem input1310_def : input1310 = (.seq input1309 input908) := by
  unfold input1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1309 output908)).val
theorem output1310_def : output1310 = (.seq output1309 output908) := by
  unfold output1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1310_skip : Flapjack.WordAlloc.isSkip output1310 = false := by
  rw [output1310_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1310 input905)).val
theorem input1311_def : input1311 = (.seq input1310 input905) := by
  unfold input1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1310 output905)).val
theorem output1311_def : output1311 = (.seq output1310 output905) := by
  unfold output1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1311_skip : Flapjack.WordAlloc.isSkip output1311 = false := by
  rw [output1311_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1311 input904)).val
theorem input1312_def : input1312 = (.seq input1311 input904) := by
  unfold input1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1311 output904)).val
theorem output1312_def : output1312 = (.seq output1311 output904) := by
  unfold output1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1312_skip : Flapjack.WordAlloc.isSkip output1312 = false := by
  rw [output1312_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1312 input901)).val
theorem input1313_def : input1313 = (.seq input1312 input901) := by
  unfold input1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1312 output901)).val
theorem output1313_def : output1313 = (.seq output1312 output901) := by
  unfold output1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1313_skip : Flapjack.WordAlloc.isSkip output1313 = false := by
  rw [output1313_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1313 input900)).val
theorem input1314_def : input1314 = (.seq input1313 input900) := by
  unfold input1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1313 output900)).val
theorem output1314_def : output1314 = (.seq output1313 output900) := by
  unfold output1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1314_skip : Flapjack.WordAlloc.isSkip output1314 = false := by
  rw [output1314_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1314 input897)).val
theorem input1315_def : input1315 = (.seq input1314 input897) := by
  unfold input1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1314 output897)).val
theorem output1315_def : output1315 = (.seq output1314 output897) := by
  unfold output1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1315_skip : Flapjack.WordAlloc.isSkip output1315 = false := by
  rw [output1315_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1315 input888)).val
theorem input1316_def : input1316 = (.seq input1315 input888) := by
  unfold input1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1315)).val
theorem output1316_def : output1316 = (output1315) := by
  unfold output1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1316_skip : Flapjack.WordAlloc.isSkip output1316 = false := by
  rw [output1316_def]
  exact output1315_skip


@[irreducible, cbv_opaque] def input1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1316 input887)).val
theorem input1317_def : input1317 = (.seq input1316 input887) := by
  unfold input1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1316)).val
theorem output1317_def : output1317 = (output1316) := by
  unfold output1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1317_skip : Flapjack.WordAlloc.isSkip output1317 = false := by
  rw [output1317_def]
  exact output1316_skip


@[irreducible, cbv_opaque] def input1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1317 input886)).val
theorem input1318_def : input1318 = (.seq input1317 input886) := by
  unfold input1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1317)).val
theorem output1318_def : output1318 = (output1317) := by
  unfold output1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1318_skip : Flapjack.WordAlloc.isSkip output1318 = false := by
  rw [output1318_def]
  exact output1317_skip


@[irreducible, cbv_opaque] def input1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1318 input885)).val
theorem input1319_def : input1319 = (.seq input1318 input885) := by
  unfold input1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1318)).val
theorem output1319_def : output1319 = (output1318) := by
  unfold output1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1319_skip : Flapjack.WordAlloc.isSkip output1319 = false := by
  rw [output1319_def]
  exact output1318_skip


@[irreducible, cbv_opaque] def input1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1319 input884)).val
theorem input1320_def : input1320 = (.seq input1319 input884) := by
  unfold input1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1319 output884)).val
theorem output1320_def : output1320 = (.seq output1319 output884) := by
  unfold output1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1320_skip : Flapjack.WordAlloc.isSkip output1320 = false := by
  rw [output1320_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1320 input883)).val
theorem input1321_def : input1321 = (.seq input1320 input883) := by
  unfold input1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1320 output883)).val
theorem output1321_def : output1321 = (.seq output1320 output883) := by
  unfold output1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1321_skip : Flapjack.WordAlloc.isSkip output1321 = false := by
  rw [output1321_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1321 input880)).val
theorem input1322_def : input1322 = (.seq input1321 input880) := by
  unfold input1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1321 output880)).val
theorem output1322_def : output1322 = (.seq output1321 output880) := by
  unfold output1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1322_skip : Flapjack.WordAlloc.isSkip output1322 = false := by
  rw [output1322_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1322 input879)).val
theorem input1323_def : input1323 = (.seq input1322 input879) := by
  unfold input1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1322 output879)).val
theorem output1323_def : output1323 = (.seq output1322 output879) := by
  unfold output1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1323_skip : Flapjack.WordAlloc.isSkip output1323 = false := by
  rw [output1323_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1323 input876)).val
theorem input1324_def : input1324 = (.seq input1323 input876) := by
  unfold input1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1323 output876)).val
theorem output1324_def : output1324 = (.seq output1323 output876) := by
  unfold output1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1324_skip : Flapjack.WordAlloc.isSkip output1324 = false := by
  rw [output1324_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1324 input875)).val
theorem input1325_def : input1325 = (.seq input1324 input875) := by
  unfold input1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1324 output875)).val
theorem output1325_def : output1325 = (.seq output1324 output875) := by
  unfold output1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1325_skip : Flapjack.WordAlloc.isSkip output1325 = false := by
  rw [output1325_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1325 input872)).val
theorem input1326_def : input1326 = (.seq input1325 input872) := by
  unfold input1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1325 output872)).val
theorem output1326_def : output1326 = (.seq output1325 output872) := by
  unfold output1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1326_skip : Flapjack.WordAlloc.isSkip output1326 = false := by
  rw [output1326_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1326 input871)).val
theorem input1327_def : input1327 = (.seq input1326 input871) := by
  unfold input1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1326 output871)).val
theorem output1327_def : output1327 = (.seq output1326 output871) := by
  unfold output1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1327_skip : Flapjack.WordAlloc.isSkip output1327 = false := by
  rw [output1327_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1327 input868)).val
theorem input1328_def : input1328 = (.seq input1327 input868) := by
  unfold input1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1327 output868)).val
theorem output1328_def : output1328 = (.seq output1327 output868) := by
  unfold output1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1328_skip : Flapjack.WordAlloc.isSkip output1328 = false := by
  rw [output1328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1328 input859)).val
theorem input1329_def : input1329 = (.seq input1328 input859) := by
  unfold input1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1328)).val
theorem output1329_def : output1329 = (output1328) := by
  unfold output1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1329_skip : Flapjack.WordAlloc.isSkip output1329 = false := by
  rw [output1329_def]
  exact output1328_skip


@[irreducible, cbv_opaque] def input1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1329 input858)).val
theorem input1330_def : input1330 = (.seq input1329 input858) := by
  unfold input1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1329)).val
theorem output1330_def : output1330 = (output1329) := by
  unfold output1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1330_skip : Flapjack.WordAlloc.isSkip output1330 = false := by
  rw [output1330_def]
  exact output1329_skip


@[irreducible, cbv_opaque] def input1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1330 input857)).val
theorem input1331_def : input1331 = (.seq input1330 input857) := by
  unfold input1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1330)).val
theorem output1331_def : output1331 = (output1330) := by
  unfold output1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1331_skip : Flapjack.WordAlloc.isSkip output1331 = false := by
  rw [output1331_def]
  exact output1330_skip


@[irreducible, cbv_opaque] def input1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1331 input856)).val
theorem input1332_def : input1332 = (.seq input1331 input856) := by
  unfold input1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1331)).val
theorem output1332_def : output1332 = (output1331) := by
  unfold output1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1332_skip : Flapjack.WordAlloc.isSkip output1332 = false := by
  rw [output1332_def]
  exact output1331_skip


@[irreducible, cbv_opaque] def input1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1332 input855)).val
theorem input1333_def : input1333 = (.seq input1332 input855) := by
  unfold input1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1332 output855)).val
theorem output1333_def : output1333 = (.seq output1332 output855) := by
  unfold output1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1333_skip : Flapjack.WordAlloc.isSkip output1333 = false := by
  rw [output1333_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1333 input854)).val
theorem input1334_def : input1334 = (.seq input1333 input854) := by
  unfold input1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1333 output854)).val
theorem output1334_def : output1334 = (.seq output1333 output854) := by
  unfold output1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1334_skip : Flapjack.WordAlloc.isSkip output1334 = false := by
  rw [output1334_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1334 input851)).val
theorem input1335_def : input1335 = (.seq input1334 input851) := by
  unfold input1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1334 output851)).val
theorem output1335_def : output1335 = (.seq output1334 output851) := by
  unfold output1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1335_skip : Flapjack.WordAlloc.isSkip output1335 = false := by
  rw [output1335_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1335 input850)).val
theorem input1336_def : input1336 = (.seq input1335 input850) := by
  unfold input1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1335 output850)).val
theorem output1336_def : output1336 = (.seq output1335 output850) := by
  unfold output1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1336_skip : Flapjack.WordAlloc.isSkip output1336 = false := by
  rw [output1336_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1336 input847)).val
theorem input1337_def : input1337 = (.seq input1336 input847) := by
  unfold input1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1336 output847)).val
theorem output1337_def : output1337 = (.seq output1336 output847) := by
  unfold output1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1337_skip : Flapjack.WordAlloc.isSkip output1337 = false := by
  rw [output1337_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1337 input846)).val
theorem input1338_def : input1338 = (.seq input1337 input846) := by
  unfold input1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1337 output846)).val
theorem output1338_def : output1338 = (.seq output1337 output846) := by
  unfold output1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1338_skip : Flapjack.WordAlloc.isSkip output1338 = false := by
  rw [output1338_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1338 input843)).val
theorem input1339_def : input1339 = (.seq input1338 input843) := by
  unfold input1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1338 output843)).val
theorem output1339_def : output1339 = (.seq output1338 output843) := by
  unfold output1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1339_skip : Flapjack.WordAlloc.isSkip output1339 = false := by
  rw [output1339_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1339 input842)).val
theorem input1340_def : input1340 = (.seq input1339 input842) := by
  unfold input1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1339 output842)).val
theorem output1340_def : output1340 = (.seq output1339 output842) := by
  unfold output1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1340_skip : Flapjack.WordAlloc.isSkip output1340 = false := by
  rw [output1340_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1340 input839)).val
theorem input1341_def : input1341 = (.seq input1340 input839) := by
  unfold input1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1340 output839)).val
theorem output1341_def : output1341 = (.seq output1340 output839) := by
  unfold output1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1341_skip : Flapjack.WordAlloc.isSkip output1341 = false := by
  rw [output1341_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1341 input830)).val
theorem input1342_def : input1342 = (.seq input1341 input830) := by
  unfold input1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1341)).val
theorem output1342_def : output1342 = (output1341) := by
  unfold output1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1342_skip : Flapjack.WordAlloc.isSkip output1342 = false := by
  rw [output1342_def]
  exact output1341_skip


@[irreducible, cbv_opaque] def input1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1342 input829)).val
theorem input1343_def : input1343 = (.seq input1342 input829) := by
  unfold input1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1342)).val
theorem output1343_def : output1343 = (output1342) := by
  unfold output1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1343_skip : Flapjack.WordAlloc.isSkip output1343 = false := by
  rw [output1343_def]
  exact output1342_skip


@[irreducible, cbv_opaque] def input1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1343 input828)).val
theorem input1344_def : input1344 = (.seq input1343 input828) := by
  unfold input1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1343)).val
theorem output1344_def : output1344 = (output1343) := by
  unfold output1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1344_skip : Flapjack.WordAlloc.isSkip output1344 = false := by
  rw [output1344_def]
  exact output1343_skip


@[irreducible, cbv_opaque] def input1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1344 input827)).val
theorem input1345_def : input1345 = (.seq input1344 input827) := by
  unfold input1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1344)).val
theorem output1345_def : output1345 = (output1344) := by
  unfold output1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1345_skip : Flapjack.WordAlloc.isSkip output1345 = false := by
  rw [output1345_def]
  exact output1344_skip


@[irreducible, cbv_opaque] def input1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1345 input826)).val
theorem input1346_def : input1346 = (.seq input1345 input826) := by
  unfold input1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1345 output826)).val
theorem output1346_def : output1346 = (.seq output1345 output826) := by
  unfold output1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1346_skip : Flapjack.WordAlloc.isSkip output1346 = false := by
  rw [output1346_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1346 input825)).val
theorem input1347_def : input1347 = (.seq input1346 input825) := by
  unfold input1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1346 output825)).val
theorem output1347_def : output1347 = (.seq output1346 output825) := by
  unfold output1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1347_skip : Flapjack.WordAlloc.isSkip output1347 = false := by
  rw [output1347_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1347 input822)).val
theorem input1348_def : input1348 = (.seq input1347 input822) := by
  unfold input1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1347 output822)).val
theorem output1348_def : output1348 = (.seq output1347 output822) := by
  unfold output1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1348_skip : Flapjack.WordAlloc.isSkip output1348 = false := by
  rw [output1348_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1348 input821)).val
theorem input1349_def : input1349 = (.seq input1348 input821) := by
  unfold input1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1348 output821)).val
theorem output1349_def : output1349 = (.seq output1348 output821) := by
  unfold output1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1349_skip : Flapjack.WordAlloc.isSkip output1349 = false := by
  rw [output1349_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1349 input818)).val
theorem input1350_def : input1350 = (.seq input1349 input818) := by
  unfold input1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1349 output818)).val
theorem output1350_def : output1350 = (.seq output1349 output818) := by
  unfold output1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1350_skip : Flapjack.WordAlloc.isSkip output1350 = false := by
  rw [output1350_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1350 input817)).val
theorem input1351_def : input1351 = (.seq input1350 input817) := by
  unfold input1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1350 output817)).val
theorem output1351_def : output1351 = (.seq output1350 output817) := by
  unfold output1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1351_skip : Flapjack.WordAlloc.isSkip output1351 = false := by
  rw [output1351_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1351 input814)).val
theorem input1352_def : input1352 = (.seq input1351 input814) := by
  unfold input1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1351 output814)).val
theorem output1352_def : output1352 = (.seq output1351 output814) := by
  unfold output1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1352_skip : Flapjack.WordAlloc.isSkip output1352 = false := by
  rw [output1352_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1352 input813)).val
theorem input1353_def : input1353 = (.seq input1352 input813) := by
  unfold input1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1352 output813)).val
theorem output1353_def : output1353 = (.seq output1352 output813) := by
  unfold output1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1353_skip : Flapjack.WordAlloc.isSkip output1353 = false := by
  rw [output1353_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1353 input810)).val
theorem input1354_def : input1354 = (.seq input1353 input810) := by
  unfold input1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1353 output810)).val
theorem output1354_def : output1354 = (.seq output1353 output810) := by
  unfold output1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1354_skip : Flapjack.WordAlloc.isSkip output1354 = false := by
  rw [output1354_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1354 input801)).val
theorem input1355_def : input1355 = (.seq input1354 input801) := by
  unfold input1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1354)).val
theorem output1355_def : output1355 = (output1354) := by
  unfold output1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1355_skip : Flapjack.WordAlloc.isSkip output1355 = false := by
  rw [output1355_def]
  exact output1354_skip


@[irreducible, cbv_opaque] def input1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1355 input800)).val
theorem input1356_def : input1356 = (.seq input1355 input800) := by
  unfold input1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1355)).val
theorem output1356_def : output1356 = (output1355) := by
  unfold output1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1356_skip : Flapjack.WordAlloc.isSkip output1356 = false := by
  rw [output1356_def]
  exact output1355_skip


@[irreducible, cbv_opaque] def input1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1356 input799)).val
theorem input1357_def : input1357 = (.seq input1356 input799) := by
  unfold input1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1356)).val
theorem output1357_def : output1357 = (output1356) := by
  unfold output1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1357_skip : Flapjack.WordAlloc.isSkip output1357 = false := by
  rw [output1357_def]
  exact output1356_skip


@[irreducible, cbv_opaque] def input1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1357 input798)).val
theorem input1358_def : input1358 = (.seq input1357 input798) := by
  unfold input1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1357)).val
theorem output1358_def : output1358 = (output1357) := by
  unfold output1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1358_skip : Flapjack.WordAlloc.isSkip output1358 = false := by
  rw [output1358_def]
  exact output1357_skip


@[irreducible, cbv_opaque] def input1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1358 input797)).val
theorem input1359_def : input1359 = (.seq input1358 input797) := by
  unfold input1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1358 output797)).val
theorem output1359_def : output1359 = (.seq output1358 output797) := by
  unfold output1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1359_skip : Flapjack.WordAlloc.isSkip output1359 = false := by
  rw [output1359_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1359 input796)).val
theorem input1360_def : input1360 = (.seq input1359 input796) := by
  unfold input1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1359 output796)).val
theorem output1360_def : output1360 = (.seq output1359 output796) := by
  unfold output1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1360_skip : Flapjack.WordAlloc.isSkip output1360 = false := by
  rw [output1360_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1360 input793)).val
theorem input1361_def : input1361 = (.seq input1360 input793) := by
  unfold input1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1360 output793)).val
theorem output1361_def : output1361 = (.seq output1360 output793) := by
  unfold output1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1361_skip : Flapjack.WordAlloc.isSkip output1361 = false := by
  rw [output1361_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1361 input792)).val
theorem input1362_def : input1362 = (.seq input1361 input792) := by
  unfold input1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1361 output792)).val
theorem output1362_def : output1362 = (.seq output1361 output792) := by
  unfold output1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1362_skip : Flapjack.WordAlloc.isSkip output1362 = false := by
  rw [output1362_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1362 input789)).val
theorem input1363_def : input1363 = (.seq input1362 input789) := by
  unfold input1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1362 output789)).val
theorem output1363_def : output1363 = (.seq output1362 output789) := by
  unfold output1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1363_skip : Flapjack.WordAlloc.isSkip output1363 = false := by
  rw [output1363_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1363 input788)).val
theorem input1364_def : input1364 = (.seq input1363 input788) := by
  unfold input1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1363 output788)).val
theorem output1364_def : output1364 = (.seq output1363 output788) := by
  unfold output1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1364_skip : Flapjack.WordAlloc.isSkip output1364 = false := by
  rw [output1364_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1364 input785)).val
theorem input1365_def : input1365 = (.seq input1364 input785) := by
  unfold input1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1364 output785)).val
theorem output1365_def : output1365 = (.seq output1364 output785) := by
  unfold output1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1365_skip : Flapjack.WordAlloc.isSkip output1365 = false := by
  rw [output1365_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1365 input784)).val
theorem input1366_def : input1366 = (.seq input1365 input784) := by
  unfold input1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1365 output784)).val
theorem output1366_def : output1366 = (.seq output1365 output784) := by
  unfold output1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1366_skip : Flapjack.WordAlloc.isSkip output1366 = false := by
  rw [output1366_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1366 input781)).val
theorem input1367_def : input1367 = (.seq input1366 input781) := by
  unfold input1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1366)).val
theorem output1367_def : output1367 = (output1366) := by
  unfold output1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1367_skip : Flapjack.WordAlloc.isSkip output1367 = false := by
  rw [output1367_def]
  exact output1366_skip


@[irreducible, cbv_opaque] def input1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1367 input780)).val
theorem input1368_def : input1368 = (.seq input1367 input780) := by
  unfold input1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1367 output780)).val
theorem output1368_def : output1368 = (.seq output1367 output780) := by
  unfold output1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1368_skip : Flapjack.WordAlloc.isSkip output1368 = false := by
  rw [output1368_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1368 input773)).val
theorem input1369_def : input1369 = (.seq input1368 input773) := by
  unfold input1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1368 output773)).val
theorem output1369_def : output1369 = (.seq output1368 output773) := by
  unfold output1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1369_skip : Flapjack.WordAlloc.isSkip output1369 = false := by
  rw [output1369_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1369 input772)).val
theorem input1370_def : input1370 = (.seq input1369 input772) := by
  unfold input1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1369 output772)).val
theorem output1370_def : output1370 = (.seq output1369 output772) := by
  unfold output1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1370_skip : Flapjack.WordAlloc.isSkip output1370 = false := by
  rw [output1370_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1370 input765)).val
theorem input1371_def : input1371 = (.seq input1370 input765) := by
  unfold input1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1370 output765)).val
theorem output1371_def : output1371 = (.seq output1370 output765) := by
  unfold output1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1371_skip : Flapjack.WordAlloc.isSkip output1371 = false := by
  rw [output1371_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1371 input764)).val
theorem input1372_def : input1372 = (.seq input1371 input764) := by
  unfold input1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1371 output764)).val
theorem output1372_def : output1372 = (.seq output1371 output764) := by
  unfold output1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1372_skip : Flapjack.WordAlloc.isSkip output1372 = false := by
  rw [output1372_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1372 input763)).val
theorem input1373_def : input1373 = (.seq input1372 input763) := by
  unfold input1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1372 output763)).val
theorem output1373_def : output1373 = (.seq output1372 output763) := by
  unfold output1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1373_skip : Flapjack.WordAlloc.isSkip output1373 = false := by
  rw [output1373_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1373 input760)).val
theorem input1374_def : input1374 = (.seq input1373 input760) := by
  unfold input1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1373 output760)).val
theorem output1374_def : output1374 = (.seq output1373 output760) := by
  unfold output1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1374_skip : Flapjack.WordAlloc.isSkip output1374 = false := by
  rw [output1374_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1374 input759)).val
theorem input1375_def : input1375 = (.seq input1374 input759) := by
  unfold input1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1374 output759)).val
theorem output1375_def : output1375 = (.seq output1374 output759) := by
  unfold output1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1375_skip : Flapjack.WordAlloc.isSkip output1375 = false := by
  rw [output1375_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1375 input758)).val
theorem input1376_def : input1376 = (.seq input1375 input758) := by
  unfold input1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1375 output758)).val
theorem output1376_def : output1376 = (.seq output1375 output758) := by
  unfold output1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1376_skip : Flapjack.WordAlloc.isSkip output1376 = false := by
  rw [output1376_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1376 input757)).val
theorem input1377_def : input1377 = (.seq input1376 input757) := by
  unfold input1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1376 output757)).val
theorem output1377_def : output1377 = (.seq output1376 output757) := by
  unfold output1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1377_skip : Flapjack.WordAlloc.isSkip output1377 = false := by
  rw [output1377_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1377 input756)).val
theorem input1378_def : input1378 = (.seq input1377 input756) := by
  unfold input1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1377)).val
theorem output1378_def : output1378 = (output1377) := by
  unfold output1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1378_skip : Flapjack.WordAlloc.isSkip output1378 = false := by
  rw [output1378_def]
  exact output1377_skip


@[irreducible, cbv_opaque] def input1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1378 input755)).val
theorem input1379_def : input1379 = (.seq input1378 input755) := by
  unfold input1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1378)).val
theorem output1379_def : output1379 = (output1378) := by
  unfold output1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1379_skip : Flapjack.WordAlloc.isSkip output1379 = false := by
  rw [output1379_def]
  exact output1378_skip


@[irreducible, cbv_opaque] def input1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1379 input754)).val
theorem input1380_def : input1380 = (.seq input1379 input754) := by
  unfold input1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1379)).val
theorem output1380_def : output1380 = (output1379) := by
  unfold output1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1380_skip : Flapjack.WordAlloc.isSkip output1380 = false := by
  rw [output1380_def]
  exact output1379_skip


@[irreducible, cbv_opaque] def input1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1380 input753)).val
theorem input1381_def : input1381 = (.seq input1380 input753) := by
  unfold input1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1380)).val
theorem output1381_def : output1381 = (output1380) := by
  unfold output1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1381_skip : Flapjack.WordAlloc.isSkip output1381 = false := by
  rw [output1381_def]
  exact output1380_skip


@[irreducible, cbv_opaque] def input1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1381 input752)).val
theorem input1382_def : input1382 = (.seq input1381 input752) := by
  unfold input1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1381)).val
theorem output1382_def : output1382 = (output1381) := by
  unfold output1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1382_skip : Flapjack.WordAlloc.isSkip output1382 = false := by
  rw [output1382_def]
  exact output1381_skip


@[irreducible, cbv_opaque] def input1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1382 input751)).val
theorem input1383_def : input1383 = (.seq input1382 input751) := by
  unfold input1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1382)).val
theorem output1383_def : output1383 = (output1382) := by
  unfold output1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1383_skip : Flapjack.WordAlloc.isSkip output1383 = false := by
  rw [output1383_def]
  exact output1382_skip


@[irreducible, cbv_opaque] def input1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1383 input750)).val
theorem input1384_def : input1384 = (.seq input1383 input750) := by
  unfold input1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1383)).val
theorem output1384_def : output1384 = (output1383) := by
  unfold output1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1384_skip : Flapjack.WordAlloc.isSkip output1384 = false := by
  rw [output1384_def]
  exact output1383_skip


@[irreducible, cbv_opaque] def input1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1384 input749)).val
theorem input1385_def : input1385 = (.seq input1384 input749) := by
  unfold input1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1384)).val
theorem output1385_def : output1385 = (output1384) := by
  unfold output1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1385_skip : Flapjack.WordAlloc.isSkip output1385 = false := by
  rw [output1385_def]
  exact output1384_skip


@[irreducible, cbv_opaque] def input1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1385 input748)).val
theorem input1386_def : input1386 = (.seq input1385 input748) := by
  unfold input1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1385 output748)).val
theorem output1386_def : output1386 = (.seq output1385 output748) := by
  unfold output1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1386_skip : Flapjack.WordAlloc.isSkip output1386 = false := by
  rw [output1386_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1386 input727)).val
theorem input1387_def : input1387 = (.seq input1386 input727) := by
  unfold input1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1386 output727)).val
theorem output1387_def : output1387 = (.seq output1386 output727) := by
  unfold output1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1387_skip : Flapjack.WordAlloc.isSkip output1387 = false := by
  rw [output1387_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1387 input726)).val
theorem input1388_def : input1388 = (.seq input1387 input726) := by
  unfold input1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1387)).val
theorem output1388_def : output1388 = (output1387) := by
  unfold output1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1388_skip : Flapjack.WordAlloc.isSkip output1388 = false := by
  rw [output1388_def]
  exact output1387_skip


@[irreducible, cbv_opaque] def input1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1388 input725)).val
theorem input1389_def : input1389 = (.seq input1388 input725) := by
  unfold input1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1388)).val
theorem output1389_def : output1389 = (output1388) := by
  unfold output1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1389_skip : Flapjack.WordAlloc.isSkip output1389 = false := by
  rw [output1389_def]
  exact output1388_skip


@[irreducible, cbv_opaque] def input1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1389 input724)).val
theorem input1390_def : input1390 = (.seq input1389 input724) := by
  unfold input1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1389)).val
theorem output1390_def : output1390 = (output1389) := by
  unfold output1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1390_skip : Flapjack.WordAlloc.isSkip output1390 = false := by
  rw [output1390_def]
  exact output1389_skip


@[irreducible, cbv_opaque] def input1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1390 input723)).val
theorem input1391_def : input1391 = (.seq input1390 input723) := by
  unfold input1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1390)).val
theorem output1391_def : output1391 = (output1390) := by
  unfold output1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1391_skip : Flapjack.WordAlloc.isSkip output1391 = false := by
  rw [output1391_def]
  exact output1390_skip


@[irreducible, cbv_opaque] def input1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1391 input722)).val
theorem input1392_def : input1392 = (.seq input1391 input722) := by
  unfold input1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1391 output722)).val
theorem output1392_def : output1392 = (.seq output1391 output722) := by
  unfold output1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1392_skip : Flapjack.WordAlloc.isSkip output1392 = false := by
  rw [output1392_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1392 input721)).val
theorem input1393_def : input1393 = (.seq input1392 input721) := by
  unfold input1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1392 output721)).val
theorem output1393_def : output1393 = (.seq output1392 output721) := by
  unfold output1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1393_skip : Flapjack.WordAlloc.isSkip output1393 = false := by
  rw [output1393_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1393 input720)).val
theorem input1394_def : input1394 = (.seq input1393 input720) := by
  unfold input1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1393 output720)).val
theorem output1394_def : output1394 = (.seq output1393 output720) := by
  unfold output1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1394_skip : Flapjack.WordAlloc.isSkip output1394 = false := by
  rw [output1394_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1394 input719)).val
theorem input1395_def : input1395 = (.seq input1394 input719) := by
  unfold input1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1394 output719)).val
theorem output1395_def : output1395 = (.seq output1394 output719) := by
  unfold output1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1395_skip : Flapjack.WordAlloc.isSkip output1395 = false := by
  rw [output1395_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1395 input718)).val
theorem input1396_def : input1396 = (.seq input1395 input718) := by
  unfold input1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1395 output718)).val
theorem output1396_def : output1396 = (.seq output1395 output718) := by
  unfold output1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1396_skip : Flapjack.WordAlloc.isSkip output1396 = false := by
  rw [output1396_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1396 input705)).val
theorem input1397_def : input1397 = (.seq input1396 input705) := by
  unfold input1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1396 output705)).val
theorem output1397_def : output1397 = (.seq output1396 output705) := by
  unfold output1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1397_skip : Flapjack.WordAlloc.isSkip output1397 = false := by
  rw [output1397_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1397 input704)).val
theorem input1398_def : input1398 = (.seq input1397 input704) := by
  unfold input1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1397 output704)).val
theorem output1398_def : output1398 = (.seq output1397 output704) := by
  unfold output1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1398_skip : Flapjack.WordAlloc.isSkip output1398 = false := by
  rw [output1398_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1398 input703)).val
theorem input1399_def : input1399 = (.seq input1398 input703) := by
  unfold input1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1398 output703)).val
theorem output1399_def : output1399 = (.seq output1398 output703) := by
  unfold output1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1399_skip : Flapjack.WordAlloc.isSkip output1399 = false := by
  rw [output1399_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1399 input702)).val
theorem input1400_def : input1400 = (.seq input1399 input702) := by
  unfold input1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1399 output702)).val
theorem output1400_def : output1400 = (.seq output1399 output702) := by
  unfold output1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1400_skip : Flapjack.WordAlloc.isSkip output1400 = false := by
  rw [output1400_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1400 input701)).val
theorem input1401_def : input1401 = (.seq input1400 input701) := by
  unfold input1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1400 output701)).val
theorem output1401_def : output1401 = (.seq output1400 output701) := by
  unfold output1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1401_skip : Flapjack.WordAlloc.isSkip output1401 = false := by
  rw [output1401_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1401 input700)).val
theorem input1402_def : input1402 = (.seq input1401 input700) := by
  unfold input1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1401 output700)).val
theorem output1402_def : output1402 = (.seq output1401 output700) := by
  unfold output1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1402_skip : Flapjack.WordAlloc.isSkip output1402 = false := by
  rw [output1402_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1402 input695)).val
theorem input1403_def : input1403 = (.seq input1402 input695) := by
  unfold input1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1402 output695)).val
theorem output1403_def : output1403 = (.seq output1402 output695) := by
  unfold output1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1403_skip : Flapjack.WordAlloc.isSkip output1403 = false := by
  rw [output1403_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1403 input694)).val
theorem input1404_def : input1404 = (.seq input1403 input694) := by
  unfold input1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1403 output694)).val
theorem output1404_def : output1404 = (.seq output1403 output694) := by
  unfold output1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1404_skip : Flapjack.WordAlloc.isSkip output1404 = false := by
  rw [output1404_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1404 input687)).val
theorem input1405_def : input1405 = (.seq input1404 input687) := by
  unfold input1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1404 output687)).val
theorem output1405_def : output1405 = (.seq output1404 output687) := by
  unfold output1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1405_skip : Flapjack.WordAlloc.isSkip output1405 = false := by
  rw [output1405_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1405 input686)).val
theorem input1406_def : input1406 = (.seq input1405 input686) := by
  unfold input1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1405 output686)).val
theorem output1406_def : output1406 = (.seq output1405 output686) := by
  unfold output1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1406_skip : Flapjack.WordAlloc.isSkip output1406 = false := by
  rw [output1406_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1406 input685)).val
theorem input1407_def : input1407 = (.seq input1406 input685) := by
  unfold input1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1406 output685)).val
theorem output1407_def : output1407 = (.seq output1406 output685) := by
  unfold output1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1407_skip : Flapjack.WordAlloc.isSkip output1407 = false := by
  rw [output1407_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1407 input684)).val
theorem input1408_def : input1408 = (.seq input1407 input684) := by
  unfold input1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1407 output684)).val
theorem output1408_def : output1408 = (.seq output1407 output684) := by
  unfold output1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1408_skip : Flapjack.WordAlloc.isSkip output1408 = false := by
  rw [output1408_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1408 input683)).val
theorem input1409_def : input1409 = (.seq input1408 input683) := by
  unfold input1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1408 output683)).val
theorem output1409_def : output1409 = (.seq output1408 output683) := by
  unfold output1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1409_skip : Flapjack.WordAlloc.isSkip output1409 = false := by
  rw [output1409_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1409 input682)).val
theorem input1410_def : input1410 = (.seq input1409 input682) := by
  unfold input1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1409 output682)).val
theorem output1410_def : output1410 = (.seq output1409 output682) := by
  unfold output1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1410_skip : Flapjack.WordAlloc.isSkip output1410 = false := by
  rw [output1410_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1410 input679)).val
theorem input1411_def : input1411 = (.seq input1410 input679) := by
  unfold input1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1410 output679)).val
theorem output1411_def : output1411 = (.seq output1410 output679) := by
  unfold output1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1411_skip : Flapjack.WordAlloc.isSkip output1411 = false := by
  rw [output1411_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1411 input678)).val
theorem input1412_def : input1412 = (.seq input1411 input678) := by
  unfold input1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1411 output678)).val
theorem output1412_def : output1412 = (.seq output1411 output678) := by
  unfold output1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1412_skip : Flapjack.WordAlloc.isSkip output1412 = false := by
  rw [output1412_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1412 input675)).val
theorem input1413_def : input1413 = (.seq input1412 input675) := by
  unfold input1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1412 output675)).val
theorem output1413_def : output1413 = (.seq output1412 output675) := by
  unfold output1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1413_skip : Flapjack.WordAlloc.isSkip output1413 = false := by
  rw [output1413_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1413 input674)).val
theorem input1414_def : input1414 = (.seq input1413 input674) := by
  unfold input1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1413 output674)).val
theorem output1414_def : output1414 = (.seq output1413 output674) := by
  unfold output1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1414_skip : Flapjack.WordAlloc.isSkip output1414 = false := by
  rw [output1414_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1414 input671)).val
theorem input1415_def : input1415 = (.seq input1414 input671) := by
  unfold input1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1414 output671)).val
theorem output1415_def : output1415 = (.seq output1414 output671) := by
  unfold output1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1415_skip : Flapjack.WordAlloc.isSkip output1415 = false := by
  rw [output1415_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1415 input670)).val
theorem input1416_def : input1416 = (.seq input1415 input670) := by
  unfold input1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1415 output670)).val
theorem output1416_def : output1416 = (.seq output1415 output670) := by
  unfold output1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1416_skip : Flapjack.WordAlloc.isSkip output1416 = false := by
  rw [output1416_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1416 input667)).val
theorem input1417_def : input1417 = (.seq input1416 input667) := by
  unfold input1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1416 output667)).val
theorem output1417_def : output1417 = (.seq output1416 output667) := by
  unfold output1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1417_skip : Flapjack.WordAlloc.isSkip output1417 = false := by
  rw [output1417_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1417 input658)).val
theorem input1418_def : input1418 = (.seq input1417 input658) := by
  unfold input1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1417 output658)).val
theorem output1418_def : output1418 = (.seq output1417 output658) := by
  unfold output1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1418_skip : Flapjack.WordAlloc.isSkip output1418 = false := by
  rw [output1418_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1418 input657)).val
theorem input1419_def : input1419 = (.seq input1418 input657) := by
  unfold input1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1418 output657)).val
theorem output1419_def : output1419 = (.seq output1418 output657) := by
  unfold output1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1419_skip : Flapjack.WordAlloc.isSkip output1419 = false := by
  rw [output1419_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1419 input656)).val
theorem input1420_def : input1420 = (.seq input1419 input656) := by
  unfold input1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1419 output656)).val
theorem output1420_def : output1420 = (.seq output1419 output656) := by
  unfold output1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1420_skip : Flapjack.WordAlloc.isSkip output1420 = false := by
  rw [output1420_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1420 input655)).val
theorem input1421_def : input1421 = (.seq input1420 input655) := by
  unfold input1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1420 output655)).val
theorem output1421_def : output1421 = (.seq output1420 output655) := by
  unfold output1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1421_skip : Flapjack.WordAlloc.isSkip output1421 = false := by
  rw [output1421_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1421 input654)).val
theorem input1422_def : input1422 = (.seq input1421 input654) := by
  unfold input1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1421 output654)).val
theorem output1422_def : output1422 = (.seq output1421 output654) := by
  unfold output1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1422_skip : Flapjack.WordAlloc.isSkip output1422 = false := by
  rw [output1422_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1422 input653)).val
theorem input1423_def : input1423 = (.seq input1422 input653) := by
  unfold input1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1422 output653)).val
theorem output1423_def : output1423 = (.seq output1422 output653) := by
  unfold output1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1423_skip : Flapjack.WordAlloc.isSkip output1423 = false := by
  rw [output1423_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1423 input650)).val
theorem input1424_def : input1424 = (.seq input1423 input650) := by
  unfold input1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1423 output650)).val
theorem output1424_def : output1424 = (.seq output1423 output650) := by
  unfold output1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1424_skip : Flapjack.WordAlloc.isSkip output1424 = false := by
  rw [output1424_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1424 input649)).val
theorem input1425_def : input1425 = (.seq input1424 input649) := by
  unfold input1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1424 output649)).val
theorem output1425_def : output1425 = (.seq output1424 output649) := by
  unfold output1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1425_skip : Flapjack.WordAlloc.isSkip output1425 = false := by
  rw [output1425_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1425 input646)).val
theorem input1426_def : input1426 = (.seq input1425 input646) := by
  unfold input1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1425 output646)).val
theorem output1426_def : output1426 = (.seq output1425 output646) := by
  unfold output1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1426_skip : Flapjack.WordAlloc.isSkip output1426 = false := by
  rw [output1426_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1426 input645)).val
theorem input1427_def : input1427 = (.seq input1426 input645) := by
  unfold input1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1426 output645)).val
theorem output1427_def : output1427 = (.seq output1426 output645) := by
  unfold output1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1427_skip : Flapjack.WordAlloc.isSkip output1427 = false := by
  rw [output1427_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1427 input642)).val
theorem input1428_def : input1428 = (.seq input1427 input642) := by
  unfold input1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1427 output642)).val
theorem output1428_def : output1428 = (.seq output1427 output642) := by
  unfold output1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1428_skip : Flapjack.WordAlloc.isSkip output1428 = false := by
  rw [output1428_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1428 input641)).val
theorem input1429_def : input1429 = (.seq input1428 input641) := by
  unfold input1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1428 output641)).val
theorem output1429_def : output1429 = (.seq output1428 output641) := by
  unfold output1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1429_skip : Flapjack.WordAlloc.isSkip output1429 = false := by
  rw [output1429_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1429 input638)).val
theorem input1430_def : input1430 = (.seq input1429 input638) := by
  unfold input1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1429)).val
theorem output1430_def : output1430 = (output1429) := by
  unfold output1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1430_skip : Flapjack.WordAlloc.isSkip output1430 = false := by
  rw [output1430_def]
  exact output1429_skip


@[irreducible, cbv_opaque] def input1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1430 input637)).val
theorem input1431_def : input1431 = (.seq input1430 input637) := by
  unfold input1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1430 output637)).val
theorem output1431_def : output1431 = (.seq output1430 output637) := by
  unfold output1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1431_skip : Flapjack.WordAlloc.isSkip output1431 = false := by
  rw [output1431_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1431 input630)).val
theorem input1432_def : input1432 = (.seq input1431 input630) := by
  unfold input1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1431 output630)).val
theorem output1432_def : output1432 = (.seq output1431 output630) := by
  unfold output1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1432_skip : Flapjack.WordAlloc.isSkip output1432 = false := by
  rw [output1432_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1432 input629)).val
theorem input1433_def : input1433 = (.seq input1432 input629) := by
  unfold input1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1432 output629)).val
theorem output1433_def : output1433 = (.seq output1432 output629) := by
  unfold output1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1433_skip : Flapjack.WordAlloc.isSkip output1433 = false := by
  rw [output1433_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1433 input622)).val
theorem input1434_def : input1434 = (.seq input1433 input622) := by
  unfold input1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1433 output622)).val
theorem output1434_def : output1434 = (.seq output1433 output622) := by
  unfold output1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1434_skip : Flapjack.WordAlloc.isSkip output1434 = false := by
  rw [output1434_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1434 input621)).val
theorem input1435_def : input1435 = (.seq input1434 input621) := by
  unfold input1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1434 output621)).val
theorem output1435_def : output1435 = (.seq output1434 output621) := by
  unfold output1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1435_skip : Flapjack.WordAlloc.isSkip output1435 = false := by
  rw [output1435_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1435 input620)).val
theorem input1436_def : input1436 = (.seq input1435 input620) := by
  unfold input1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1435 output620)).val
theorem output1436_def : output1436 = (.seq output1435 output620) := by
  unfold output1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1436_skip : Flapjack.WordAlloc.isSkip output1436 = false := by
  rw [output1436_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1436 input617)).val
theorem input1437_def : input1437 = (.seq input1436 input617) := by
  unfold input1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1436 output617)).val
theorem output1437_def : output1437 = (.seq output1436 output617) := by
  unfold output1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1437_skip : Flapjack.WordAlloc.isSkip output1437 = false := by
  rw [output1437_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1437 input610)).val
theorem input1438_def : input1438 = (.seq input1437 input610) := by
  unfold input1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1437)).val
theorem output1438_def : output1438 = (output1437) := by
  unfold output1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1438_skip : Flapjack.WordAlloc.isSkip output1438 = false := by
  rw [output1438_def]
  exact output1437_skip


@[irreducible, cbv_opaque] def input1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1438 input609)).val
theorem input1439_def : input1439 = (.seq input1438 input609) := by
  unfold input1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1438 output609)).val
theorem output1439_def : output1439 = (.seq output1438 output609) := by
  unfold output1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1439_skip : Flapjack.WordAlloc.isSkip output1439 = false := by
  rw [output1439_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1439 input608)).val
theorem input1440_def : input1440 = (.seq input1439 input608) := by
  unfold input1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1439 output608)).val
theorem output1440_def : output1440 = (.seq output1439 output608) := by
  unfold output1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1440_skip : Flapjack.WordAlloc.isSkip output1440 = false := by
  rw [output1440_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1440 input605)).val
theorem input1441_def : input1441 = (.seq input1440 input605) := by
  unfold input1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1440 output605)).val
theorem output1441_def : output1441 = (.seq output1440 output605) := by
  unfold output1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1441_skip : Flapjack.WordAlloc.isSkip output1441 = false := by
  rw [output1441_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1441 input596)).val
theorem input1442_def : input1442 = (.seq input1441 input596) := by
  unfold input1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1441)).val
theorem output1442_def : output1442 = (output1441) := by
  unfold output1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1442_skip : Flapjack.WordAlloc.isSkip output1442 = false := by
  rw [output1442_def]
  exact output1441_skip


@[irreducible, cbv_opaque] def input1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1442 input595)).val
theorem input1443_def : input1443 = (.seq input1442 input595) := by
  unfold input1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1442 output595)).val
theorem output1443_def : output1443 = (.seq output1442 output595) := by
  unfold output1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1443_skip : Flapjack.WordAlloc.isSkip output1443 = false := by
  rw [output1443_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1443 input594)).val
theorem input1444_def : input1444 = (.seq input1443 input594) := by
  unfold input1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1443 output594)).val
theorem output1444_def : output1444 = (.seq output1443 output594) := by
  unfold output1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1444_skip : Flapjack.WordAlloc.isSkip output1444 = false := by
  rw [output1444_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1444 input591)).val
theorem input1445_def : input1445 = (.seq input1444 input591) := by
  unfold input1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1444 output591)).val
theorem output1445_def : output1445 = (.seq output1444 output591) := by
  unfold output1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1445_skip : Flapjack.WordAlloc.isSkip output1445 = false := by
  rw [output1445_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1445 input582)).val
theorem input1446_def : input1446 = (.seq input1445 input582) := by
  unfold input1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1445)).val
theorem output1446_def : output1446 = (output1445) := by
  unfold output1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1446_skip : Flapjack.WordAlloc.isSkip output1446 = false := by
  rw [output1446_def]
  exact output1445_skip


@[irreducible, cbv_opaque] def input1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1446 input581)).val
theorem input1447_def : input1447 = (.seq input1446 input581) := by
  unfold input1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1446 output581)).val
theorem output1447_def : output1447 = (.seq output1446 output581) := by
  unfold output1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1447_skip : Flapjack.WordAlloc.isSkip output1447 = false := by
  rw [output1447_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1447 input580)).val
theorem input1448_def : input1448 = (.seq input1447 input580) := by
  unfold input1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1447 output580)).val
theorem output1448_def : output1448 = (.seq output1447 output580) := by
  unfold output1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1448_skip : Flapjack.WordAlloc.isSkip output1448 = false := by
  rw [output1448_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1448 input577)).val
theorem input1449_def : input1449 = (.seq input1448 input577) := by
  unfold input1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1448 output577)).val
theorem output1449_def : output1449 = (.seq output1448 output577) := by
  unfold output1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1449_skip : Flapjack.WordAlloc.isSkip output1449 = false := by
  rw [output1449_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1449 input568)).val
theorem input1450_def : input1450 = (.seq input1449 input568) := by
  unfold input1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1449)).val
theorem output1450_def : output1450 = (output1449) := by
  unfold output1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1450_skip : Flapjack.WordAlloc.isSkip output1450 = false := by
  rw [output1450_def]
  exact output1449_skip


@[irreducible, cbv_opaque] def input1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1450 input567)).val
theorem input1451_def : input1451 = (.seq input1450 input567) := by
  unfold input1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1450 output567)).val
theorem output1451_def : output1451 = (.seq output1450 output567) := by
  unfold output1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1451_skip : Flapjack.WordAlloc.isSkip output1451 = false := by
  rw [output1451_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1451 input566)).val
theorem input1452_def : input1452 = (.seq input1451 input566) := by
  unfold input1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1451 output566)).val
theorem output1452_def : output1452 = (.seq output1451 output566) := by
  unfold output1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1452_skip : Flapjack.WordAlloc.isSkip output1452 = false := by
  rw [output1452_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1452 input563)).val
theorem input1453_def : input1453 = (.seq input1452 input563) := by
  unfold input1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1452 output563)).val
theorem output1453_def : output1453 = (.seq output1452 output563) := by
  unfold output1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1453_skip : Flapjack.WordAlloc.isSkip output1453 = false := by
  rw [output1453_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1453 input554)).val
theorem input1454_def : input1454 = (.seq input1453 input554) := by
  unfold input1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1453)).val
theorem output1454_def : output1454 = (output1453) := by
  unfold output1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1454_skip : Flapjack.WordAlloc.isSkip output1454 = false := by
  rw [output1454_def]
  exact output1453_skip


@[irreducible, cbv_opaque] def input1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1454 input553)).val
theorem input1455_def : input1455 = (.seq input1454 input553) := by
  unfold input1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1454 output553)).val
theorem output1455_def : output1455 = (.seq output1454 output553) := by
  unfold output1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1455_skip : Flapjack.WordAlloc.isSkip output1455 = false := by
  rw [output1455_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1455 input552)).val
theorem input1456_def : input1456 = (.seq input1455 input552) := by
  unfold input1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1455 output552)).val
theorem output1456_def : output1456 = (.seq output1455 output552) := by
  unfold output1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1456_skip : Flapjack.WordAlloc.isSkip output1456 = false := by
  rw [output1456_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1456 input549)).val
theorem input1457_def : input1457 = (.seq input1456 input549) := by
  unfold input1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1456 output549)).val
theorem output1457_def : output1457 = (.seq output1456 output549) := by
  unfold output1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1457_skip : Flapjack.WordAlloc.isSkip output1457 = false := by
  rw [output1457_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1457 input540)).val
theorem input1458_def : input1458 = (.seq input1457 input540) := by
  unfold input1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1457)).val
theorem output1458_def : output1458 = (output1457) := by
  unfold output1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1458_skip : Flapjack.WordAlloc.isSkip output1458 = false := by
  rw [output1458_def]
  exact output1457_skip


@[irreducible, cbv_opaque] def input1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1458 input539)).val
theorem input1459_def : input1459 = (.seq input1458 input539) := by
  unfold input1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1458 output539)).val
theorem output1459_def : output1459 = (.seq output1458 output539) := by
  unfold output1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1459_skip : Flapjack.WordAlloc.isSkip output1459 = false := by
  rw [output1459_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1459 input538)).val
theorem input1460_def : input1460 = (.seq input1459 input538) := by
  unfold input1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1459 output538)).val
theorem output1460_def : output1460 = (.seq output1459 output538) := by
  unfold output1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1460_skip : Flapjack.WordAlloc.isSkip output1460 = false := by
  rw [output1460_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1460 input535)).val
theorem input1461_def : input1461 = (.seq input1460 input535) := by
  unfold input1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1460 output535)).val
theorem output1461_def : output1461 = (.seq output1460 output535) := by
  unfold output1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1461_skip : Flapjack.WordAlloc.isSkip output1461 = false := by
  rw [output1461_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1461 input526)).val
theorem input1462_def : input1462 = (.seq input1461 input526) := by
  unfold input1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1461)).val
theorem output1462_def : output1462 = (output1461) := by
  unfold output1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1462_skip : Flapjack.WordAlloc.isSkip output1462 = false := by
  rw [output1462_def]
  exact output1461_skip


@[irreducible, cbv_opaque] def input1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1462 input525)).val
theorem input1463_def : input1463 = (.seq input1462 input525) := by
  unfold input1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1462 output525)).val
theorem output1463_def : output1463 = (.seq output1462 output525) := by
  unfold output1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1463_skip : Flapjack.WordAlloc.isSkip output1463 = false := by
  rw [output1463_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1463 input524)).val
theorem input1464_def : input1464 = (.seq input1463 input524) := by
  unfold input1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1463 output524)).val
theorem output1464_def : output1464 = (.seq output1463 output524) := by
  unfold output1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1464_skip : Flapjack.WordAlloc.isSkip output1464 = false := by
  rw [output1464_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1464 input521)).val
theorem input1465_def : input1465 = (.seq input1464 input521) := by
  unfold input1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1464 output521)).val
theorem output1465_def : output1465 = (.seq output1464 output521) := by
  unfold output1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1465_skip : Flapjack.WordAlloc.isSkip output1465 = false := by
  rw [output1465_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1465 input512)).val
theorem input1466_def : input1466 = (.seq input1465 input512) := by
  unfold input1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1465)).val
theorem output1466_def : output1466 = (output1465) := by
  unfold output1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1466_skip : Flapjack.WordAlloc.isSkip output1466 = false := by
  rw [output1466_def]
  exact output1465_skip


@[irreducible, cbv_opaque] def input1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1466 input511)).val
theorem input1467_def : input1467 = (.seq input1466 input511) := by
  unfold input1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1466 output511)).val
theorem output1467_def : output1467 = (.seq output1466 output511) := by
  unfold output1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1467_skip : Flapjack.WordAlloc.isSkip output1467 = false := by
  rw [output1467_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1467 input510)).val
theorem input1468_def : input1468 = (.seq input1467 input510) := by
  unfold input1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1467 output510)).val
theorem output1468_def : output1468 = (.seq output1467 output510) := by
  unfold output1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1468_skip : Flapjack.WordAlloc.isSkip output1468 = false := by
  rw [output1468_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1468 input507)).val
theorem input1469_def : input1469 = (.seq input1468 input507) := by
  unfold input1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1468 output507)).val
theorem output1469_def : output1469 = (.seq output1468 output507) := by
  unfold output1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1469_skip : Flapjack.WordAlloc.isSkip output1469 = false := by
  rw [output1469_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1469 input498)).val
theorem input1470_def : input1470 = (.seq input1469 input498) := by
  unfold input1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1469)).val
theorem output1470_def : output1470 = (output1469) := by
  unfold output1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1470_skip : Flapjack.WordAlloc.isSkip output1470 = false := by
  rw [output1470_def]
  exact output1469_skip


@[irreducible, cbv_opaque] def input1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1470 input497)).val
theorem input1471_def : input1471 = (.seq input1470 input497) := by
  unfold input1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1470 output497)).val
theorem output1471_def : output1471 = (.seq output1470 output497) := by
  unfold output1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1471_skip : Flapjack.WordAlloc.isSkip output1471 = false := by
  rw [output1471_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1471 input496)).val
theorem input1472_def : input1472 = (.seq input1471 input496) := by
  unfold input1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1471 output496)).val
theorem output1472_def : output1472 = (.seq output1471 output496) := by
  unfold output1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1472_skip : Flapjack.WordAlloc.isSkip output1472 = false := by
  rw [output1472_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1472 input493)).val
theorem input1473_def : input1473 = (.seq input1472 input493) := by
  unfold input1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1472 output493)).val
theorem output1473_def : output1473 = (.seq output1472 output493) := by
  unfold output1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1473_skip : Flapjack.WordAlloc.isSkip output1473 = false := by
  rw [output1473_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1473 input484)).val
theorem input1474_def : input1474 = (.seq input1473 input484) := by
  unfold input1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1473)).val
theorem output1474_def : output1474 = (output1473) := by
  unfold output1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1474_skip : Flapjack.WordAlloc.isSkip output1474 = false := by
  rw [output1474_def]
  exact output1473_skip


@[irreducible, cbv_opaque] def input1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1474 input483)).val
theorem input1475_def : input1475 = (.seq input1474 input483) := by
  unfold input1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1474 output483)).val
theorem output1475_def : output1475 = (.seq output1474 output483) := by
  unfold output1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1475_skip : Flapjack.WordAlloc.isSkip output1475 = false := by
  rw [output1475_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1475 input482)).val
theorem input1476_def : input1476 = (.seq input1475 input482) := by
  unfold input1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1475 output482)).val
theorem output1476_def : output1476 = (.seq output1475 output482) := by
  unfold output1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1476_skip : Flapjack.WordAlloc.isSkip output1476 = false := by
  rw [output1476_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1476 input479)).val
theorem input1477_def : input1477 = (.seq input1476 input479) := by
  unfold input1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1476 output479)).val
theorem output1477_def : output1477 = (.seq output1476 output479) := by
  unfold output1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1477_skip : Flapjack.WordAlloc.isSkip output1477 = false := by
  rw [output1477_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1477 input470)).val
theorem input1478_def : input1478 = (.seq input1477 input470) := by
  unfold input1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1477)).val
theorem output1478_def : output1478 = (output1477) := by
  unfold output1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1478_skip : Flapjack.WordAlloc.isSkip output1478 = false := by
  rw [output1478_def]
  exact output1477_skip


@[irreducible, cbv_opaque] def input1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1478 input469)).val
theorem input1479_def : input1479 = (.seq input1478 input469) := by
  unfold input1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1478 output469)).val
theorem output1479_def : output1479 = (.seq output1478 output469) := by
  unfold output1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1479_skip : Flapjack.WordAlloc.isSkip output1479 = false := by
  rw [output1479_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1479 input468)).val
theorem input1480_def : input1480 = (.seq input1479 input468) := by
  unfold input1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1479 output468)).val
theorem output1480_def : output1480 = (.seq output1479 output468) := by
  unfold output1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1480_skip : Flapjack.WordAlloc.isSkip output1480 = false := by
  rw [output1480_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1480 input465)).val
theorem input1481_def : input1481 = (.seq input1480 input465) := by
  unfold input1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1480 output465)).val
theorem output1481_def : output1481 = (.seq output1480 output465) := by
  unfold output1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1481_skip : Flapjack.WordAlloc.isSkip output1481 = false := by
  rw [output1481_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1481 input456)).val
theorem input1482_def : input1482 = (.seq input1481 input456) := by
  unfold input1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1481)).val
theorem output1482_def : output1482 = (output1481) := by
  unfold output1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1482_skip : Flapjack.WordAlloc.isSkip output1482 = false := by
  rw [output1482_def]
  exact output1481_skip


@[irreducible, cbv_opaque] def input1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1482 input455)).val
theorem input1483_def : input1483 = (.seq input1482 input455) := by
  unfold input1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1482 output455)).val
theorem output1483_def : output1483 = (.seq output1482 output455) := by
  unfold output1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1483_skip : Flapjack.WordAlloc.isSkip output1483 = false := by
  rw [output1483_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1483 input454)).val
theorem input1484_def : input1484 = (.seq input1483 input454) := by
  unfold input1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1483 output454)).val
theorem output1484_def : output1484 = (.seq output1483 output454) := by
  unfold output1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1484_skip : Flapjack.WordAlloc.isSkip output1484 = false := by
  rw [output1484_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1484 input451)).val
theorem input1485_def : input1485 = (.seq input1484 input451) := by
  unfold input1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1484 output451)).val
theorem output1485_def : output1485 = (.seq output1484 output451) := by
  unfold output1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1485_skip : Flapjack.WordAlloc.isSkip output1485 = false := by
  rw [output1485_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1485 input442)).val
theorem input1486_def : input1486 = (.seq input1485 input442) := by
  unfold input1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1485)).val
theorem output1486_def : output1486 = (output1485) := by
  unfold output1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1486_skip : Flapjack.WordAlloc.isSkip output1486 = false := by
  rw [output1486_def]
  exact output1485_skip


@[irreducible, cbv_opaque] def input1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1486 input441)).val
theorem input1487_def : input1487 = (.seq input1486 input441) := by
  unfold input1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1486 output441)).val
theorem output1487_def : output1487 = (.seq output1486 output441) := by
  unfold output1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1487_skip : Flapjack.WordAlloc.isSkip output1487 = false := by
  rw [output1487_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1487 input440)).val
theorem input1488_def : input1488 = (.seq input1487 input440) := by
  unfold input1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1487 output440)).val
theorem output1488_def : output1488 = (.seq output1487 output440) := by
  unfold output1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1488_skip : Flapjack.WordAlloc.isSkip output1488 = false := by
  rw [output1488_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1488 input437)).val
theorem input1489_def : input1489 = (.seq input1488 input437) := by
  unfold input1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1488 output437)).val
theorem output1489_def : output1489 = (.seq output1488 output437) := by
  unfold output1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1489_skip : Flapjack.WordAlloc.isSkip output1489 = false := by
  rw [output1489_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1489 input428)).val
theorem input1490_def : input1490 = (.seq input1489 input428) := by
  unfold input1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1489)).val
theorem output1490_def : output1490 = (output1489) := by
  unfold output1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1490_skip : Flapjack.WordAlloc.isSkip output1490 = false := by
  rw [output1490_def]
  exact output1489_skip


@[irreducible, cbv_opaque] def input1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1490 input427)).val
theorem input1491_def : input1491 = (.seq input1490 input427) := by
  unfold input1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1490 output427)).val
theorem output1491_def : output1491 = (.seq output1490 output427) := by
  unfold output1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1491_skip : Flapjack.WordAlloc.isSkip output1491 = false := by
  rw [output1491_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1491 input426)).val
theorem input1492_def : input1492 = (.seq input1491 input426) := by
  unfold input1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1491 output426)).val
theorem output1492_def : output1492 = (.seq output1491 output426) := by
  unfold output1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1492_skip : Flapjack.WordAlloc.isSkip output1492 = false := by
  rw [output1492_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1492 input423)).val
theorem input1493_def : input1493 = (.seq input1492 input423) := by
  unfold input1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1492 output423)).val
theorem output1493_def : output1493 = (.seq output1492 output423) := by
  unfold output1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1493_skip : Flapjack.WordAlloc.isSkip output1493 = false := by
  rw [output1493_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1493 input414)).val
theorem input1494_def : input1494 = (.seq input1493 input414) := by
  unfold input1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1493)).val
theorem output1494_def : output1494 = (output1493) := by
  unfold output1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1494_skip : Flapjack.WordAlloc.isSkip output1494 = false := by
  rw [output1494_def]
  exact output1493_skip


@[irreducible, cbv_opaque] def input1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1494 input413)).val
theorem input1495_def : input1495 = (.seq input1494 input413) := by
  unfold input1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1494 output413)).val
theorem output1495_def : output1495 = (.seq output1494 output413) := by
  unfold output1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1495_skip : Flapjack.WordAlloc.isSkip output1495 = false := by
  rw [output1495_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1495 input412)).val
theorem input1496_def : input1496 = (.seq input1495 input412) := by
  unfold input1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1495 output412)).val
theorem output1496_def : output1496 = (.seq output1495 output412) := by
  unfold output1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1496_skip : Flapjack.WordAlloc.isSkip output1496 = false := by
  rw [output1496_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1496 input409)).val
theorem input1497_def : input1497 = (.seq input1496 input409) := by
  unfold input1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1496 output409)).val
theorem output1497_def : output1497 = (.seq output1496 output409) := by
  unfold output1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1497_skip : Flapjack.WordAlloc.isSkip output1497 = false := by
  rw [output1497_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1497 input400)).val
theorem input1498_def : input1498 = (.seq input1497 input400) := by
  unfold input1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1497)).val
theorem output1498_def : output1498 = (output1497) := by
  unfold output1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1498_skip : Flapjack.WordAlloc.isSkip output1498 = false := by
  rw [output1498_def]
  exact output1497_skip


@[irreducible, cbv_opaque] def input1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1498 input399)).val
theorem input1499_def : input1499 = (.seq input1498 input399) := by
  unfold input1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1498 output399)).val
theorem output1499_def : output1499 = (.seq output1498 output399) := by
  unfold output1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1499_skip : Flapjack.WordAlloc.isSkip output1499 = false := by
  rw [output1499_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1499 input398)).val
theorem input1500_def : input1500 = (.seq input1499 input398) := by
  unfold input1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1499 output398)).val
theorem output1500_def : output1500 = (.seq output1499 output398) := by
  unfold output1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1500_skip : Flapjack.WordAlloc.isSkip output1500 = false := by
  rw [output1500_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1500 input395)).val
theorem input1501_def : input1501 = (.seq input1500 input395) := by
  unfold input1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1500 output395)).val
theorem output1501_def : output1501 = (.seq output1500 output395) := by
  unfold output1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1501_skip : Flapjack.WordAlloc.isSkip output1501 = false := by
  rw [output1501_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1501 input386)).val
theorem input1502_def : input1502 = (.seq input1501 input386) := by
  unfold input1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1501)).val
theorem output1502_def : output1502 = (output1501) := by
  unfold output1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1502_skip : Flapjack.WordAlloc.isSkip output1502 = false := by
  rw [output1502_def]
  exact output1501_skip


@[irreducible, cbv_opaque] def input1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1502 input385)).val
theorem input1503_def : input1503 = (.seq input1502 input385) := by
  unfold input1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1502 output385)).val
theorem output1503_def : output1503 = (.seq output1502 output385) := by
  unfold output1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1503_skip : Flapjack.WordAlloc.isSkip output1503 = false := by
  rw [output1503_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1503 input384)).val
theorem input1504_def : input1504 = (.seq input1503 input384) := by
  unfold input1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1503 output384)).val
theorem output1504_def : output1504 = (.seq output1503 output384) := by
  unfold output1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1504_skip : Flapjack.WordAlloc.isSkip output1504 = false := by
  rw [output1504_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1504 input381)).val
theorem input1505_def : input1505 = (.seq input1504 input381) := by
  unfold input1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1504 output381)).val
theorem output1505_def : output1505 = (.seq output1504 output381) := by
  unfold output1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1505_skip : Flapjack.WordAlloc.isSkip output1505 = false := by
  rw [output1505_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1505 input372)).val
theorem input1506_def : input1506 = (.seq input1505 input372) := by
  unfold input1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1505)).val
theorem output1506_def : output1506 = (output1505) := by
  unfold output1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1506_skip : Flapjack.WordAlloc.isSkip output1506 = false := by
  rw [output1506_def]
  exact output1505_skip


@[irreducible, cbv_opaque] def input1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1506 input371)).val
theorem input1507_def : input1507 = (.seq input1506 input371) := by
  unfold input1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1506 output371)).val
theorem output1507_def : output1507 = (.seq output1506 output371) := by
  unfold output1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1507_skip : Flapjack.WordAlloc.isSkip output1507 = false := by
  rw [output1507_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1507 input370)).val
theorem input1508_def : input1508 = (.seq input1507 input370) := by
  unfold input1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1507 output370)).val
theorem output1508_def : output1508 = (.seq output1507 output370) := by
  unfold output1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1508_skip : Flapjack.WordAlloc.isSkip output1508 = false := by
  rw [output1508_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1508 input367)).val
theorem input1509_def : input1509 = (.seq input1508 input367) := by
  unfold input1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1508 output367)).val
theorem output1509_def : output1509 = (.seq output1508 output367) := by
  unfold output1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1509_skip : Flapjack.WordAlloc.isSkip output1509 = false := by
  rw [output1509_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1509 input358)).val
theorem input1510_def : input1510 = (.seq input1509 input358) := by
  unfold input1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1509)).val
theorem output1510_def : output1510 = (output1509) := by
  unfold output1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1510_skip : Flapjack.WordAlloc.isSkip output1510 = false := by
  rw [output1510_def]
  exact output1509_skip


@[irreducible, cbv_opaque] def input1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1510 input357)).val
theorem input1511_def : input1511 = (.seq input1510 input357) := by
  unfold input1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1510 output357)).val
theorem output1511_def : output1511 = (.seq output1510 output357) := by
  unfold output1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1511_skip : Flapjack.WordAlloc.isSkip output1511 = false := by
  rw [output1511_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1511 input356)).val
theorem input1512_def : input1512 = (.seq input1511 input356) := by
  unfold input1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1511 output356)).val
theorem output1512_def : output1512 = (.seq output1511 output356) := by
  unfold output1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1512_skip : Flapjack.WordAlloc.isSkip output1512 = false := by
  rw [output1512_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1512 input353)).val
theorem input1513_def : input1513 = (.seq input1512 input353) := by
  unfold input1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1512 output353)).val
theorem output1513_def : output1513 = (.seq output1512 output353) := by
  unfold output1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1513_skip : Flapjack.WordAlloc.isSkip output1513 = false := by
  rw [output1513_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1513 input344)).val
theorem input1514_def : input1514 = (.seq input1513 input344) := by
  unfold input1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1513)).val
theorem output1514_def : output1514 = (output1513) := by
  unfold output1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1514_skip : Flapjack.WordAlloc.isSkip output1514 = false := by
  rw [output1514_def]
  exact output1513_skip


@[irreducible, cbv_opaque] def input1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1514 input343)).val
theorem input1515_def : input1515 = (.seq input1514 input343) := by
  unfold input1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1514 output343)).val
theorem output1515_def : output1515 = (.seq output1514 output343) := by
  unfold output1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1515_skip : Flapjack.WordAlloc.isSkip output1515 = false := by
  rw [output1515_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1515 input342)).val
theorem input1516_def : input1516 = (.seq input1515 input342) := by
  unfold input1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1515 output342)).val
theorem output1516_def : output1516 = (.seq output1515 output342) := by
  unfold output1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1516_skip : Flapjack.WordAlloc.isSkip output1516 = false := by
  rw [output1516_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1516 input339)).val
theorem input1517_def : input1517 = (.seq input1516 input339) := by
  unfold input1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1516 output339)).val
theorem output1517_def : output1517 = (.seq output1516 output339) := by
  unfold output1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1517_skip : Flapjack.WordAlloc.isSkip output1517 = false := by
  rw [output1517_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1517 input330)).val
theorem input1518_def : input1518 = (.seq input1517 input330) := by
  unfold input1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1517)).val
theorem output1518_def : output1518 = (output1517) := by
  unfold output1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1518_skip : Flapjack.WordAlloc.isSkip output1518 = false := by
  rw [output1518_def]
  exact output1517_skip


@[irreducible, cbv_opaque] def input1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1518 input329)).val
theorem input1519_def : input1519 = (.seq input1518 input329) := by
  unfold input1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1518 output329)).val
theorem output1519_def : output1519 = (.seq output1518 output329) := by
  unfold output1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1519_skip : Flapjack.WordAlloc.isSkip output1519 = false := by
  rw [output1519_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1519 input328)).val
theorem input1520_def : input1520 = (.seq input1519 input328) := by
  unfold input1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1519 output328)).val
theorem output1520_def : output1520 = (.seq output1519 output328) := by
  unfold output1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1520_skip : Flapjack.WordAlloc.isSkip output1520 = false := by
  rw [output1520_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1520 input325)).val
theorem input1521_def : input1521 = (.seq input1520 input325) := by
  unfold input1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1520 output325)).val
theorem output1521_def : output1521 = (.seq output1520 output325) := by
  unfold output1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1521_skip : Flapjack.WordAlloc.isSkip output1521 = false := by
  rw [output1521_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1521 input316)).val
theorem input1522_def : input1522 = (.seq input1521 input316) := by
  unfold input1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1521)).val
theorem output1522_def : output1522 = (output1521) := by
  unfold output1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1522_skip : Flapjack.WordAlloc.isSkip output1522 = false := by
  rw [output1522_def]
  exact output1521_skip


@[irreducible, cbv_opaque] def input1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1522 input315)).val
theorem input1523_def : input1523 = (.seq input1522 input315) := by
  unfold input1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1522 output315)).val
theorem output1523_def : output1523 = (.seq output1522 output315) := by
  unfold output1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1523_skip : Flapjack.WordAlloc.isSkip output1523 = false := by
  rw [output1523_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1523 input314)).val
theorem input1524_def : input1524 = (.seq input1523 input314) := by
  unfold input1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1523 output314)).val
theorem output1524_def : output1524 = (.seq output1523 output314) := by
  unfold output1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1524_skip : Flapjack.WordAlloc.isSkip output1524 = false := by
  rw [output1524_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1524 input311)).val
theorem input1525_def : input1525 = (.seq input1524 input311) := by
  unfold input1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1524 output311)).val
theorem output1525_def : output1525 = (.seq output1524 output311) := by
  unfold output1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1525_skip : Flapjack.WordAlloc.isSkip output1525 = false := by
  rw [output1525_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1525 input302)).val
theorem input1526_def : input1526 = (.seq input1525 input302) := by
  unfold input1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1525)).val
theorem output1526_def : output1526 = (output1525) := by
  unfold output1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1526_skip : Flapjack.WordAlloc.isSkip output1526 = false := by
  rw [output1526_def]
  exact output1525_skip


@[irreducible, cbv_opaque] def input1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1526 input301)).val
theorem input1527_def : input1527 = (.seq input1526 input301) := by
  unfold input1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1526 output301)).val
theorem output1527_def : output1527 = (.seq output1526 output301) := by
  unfold output1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1527_skip : Flapjack.WordAlloc.isSkip output1527 = false := by
  rw [output1527_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1527 input300)).val
theorem input1528_def : input1528 = (.seq input1527 input300) := by
  unfold input1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1527 output300)).val
theorem output1528_def : output1528 = (.seq output1527 output300) := by
  unfold output1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1528_skip : Flapjack.WordAlloc.isSkip output1528 = false := by
  rw [output1528_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1528 input297)).val
theorem input1529_def : input1529 = (.seq input1528 input297) := by
  unfold input1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1528 output297)).val
theorem output1529_def : output1529 = (.seq output1528 output297) := by
  unfold output1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1529_skip : Flapjack.WordAlloc.isSkip output1529 = false := by
  rw [output1529_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1529 input288)).val
theorem input1530_def : input1530 = (.seq input1529 input288) := by
  unfold input1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1529)).val
theorem output1530_def : output1530 = (output1529) := by
  unfold output1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1530_skip : Flapjack.WordAlloc.isSkip output1530 = false := by
  rw [output1530_def]
  exact output1529_skip


@[irreducible, cbv_opaque] def input1531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1530 input287)).val
theorem input1531_def : input1531 = (.seq input1530 input287) := by
  unfold input1531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1530 output287)).val
theorem output1531_def : output1531 = (.seq output1530 output287) := by
  unfold output1531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1531_skip : Flapjack.WordAlloc.isSkip output1531 = false := by
  rw [output1531_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1531 input286)).val
theorem input1532_def : input1532 = (.seq input1531 input286) := by
  unfold input1532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1531 output286)).val
theorem output1532_def : output1532 = (.seq output1531 output286) := by
  unfold output1532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1532_skip : Flapjack.WordAlloc.isSkip output1532 = false := by
  rw [output1532_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1532 input283)).val
theorem input1533_def : input1533 = (.seq input1532 input283) := by
  unfold input1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1532 output283)).val
theorem output1533_def : output1533 = (.seq output1532 output283) := by
  unfold output1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1533_skip : Flapjack.WordAlloc.isSkip output1533 = false := by
  rw [output1533_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1533 input274)).val
theorem input1534_def : input1534 = (.seq input1533 input274) := by
  unfold input1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1533)).val
theorem output1534_def : output1534 = (output1533) := by
  unfold output1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1534_skip : Flapjack.WordAlloc.isSkip output1534 = false := by
  rw [output1534_def]
  exact output1533_skip


@[irreducible, cbv_opaque] def input1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1534 input273)).val
theorem input1535_def : input1535 = (.seq input1534 input273) := by
  unfold input1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1534 output273)).val
theorem output1535_def : output1535 = (.seq output1534 output273) := by
  unfold output1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1535_skip : Flapjack.WordAlloc.isSkip output1535 = false := by
  rw [output1535_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages664.Parallel
