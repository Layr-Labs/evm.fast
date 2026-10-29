import InitECandidate.Proofs.DeadStages64.Chunk038
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1247 input726)).val
theorem input1248_def : input1248 = (.seq input1247 input726) := by
  unfold input1248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1247 output726)).val
theorem output1248_def : output1248 = (.seq output1247 output726) := by
  unfold output1248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1248_skip : Flapjack.WordAlloc.isSkip output1248 = false := by
  rw [output1248_def]
  conv => lhs; cbv
  try rfl
theorem node1248_eq : Flapjack.WordAlloc.removeDeadStructural input1248 value366 value1 value2 = (output1248, value4, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node726_eq]
  dsimp only
  rw [node1247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1248 input725)).val
theorem input1249_def : input1249 = (.seq input1248 input725) := by
  unfold input1249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1248 output725)).val
theorem output1249_def : output1249 = (.seq output1248 output725) := by
  unfold output1249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1249_skip : Flapjack.WordAlloc.isSkip output1249 = false := by
  rw [output1249_def]
  conv => lhs; cbv
  try rfl
theorem node1249_eq : Flapjack.WordAlloc.removeDeadStructural input1249 value4 value1 value2 = (output1249, value4, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node725_eq]
  dsimp only
  rw [node1248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1249 input722)).val
theorem input1250_def : input1250 = (.seq input1249 input722) := by
  unfold input1250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1249 output722)).val
theorem output1250_def : output1250 = (.seq output1249 output722) := by
  unfold output1250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1250_skip : Flapjack.WordAlloc.isSkip output1250 = false := by
  rw [output1250_def]
  conv => lhs; cbv
  try rfl
theorem node1250_eq : Flapjack.WordAlloc.removeDeadStructural input1250 value361 value1 value2 = (output1250, value4, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node722_eq]
  dsimp only
  rw [node1249_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1250 input715)).val
theorem input1251_def : input1251 = (.seq input1250 input715) := by
  unfold input1251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1250)).val
theorem output1251_def : output1251 = (output1250) := by
  unfold output1251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1251_skip : Flapjack.WordAlloc.isSkip output1251 = false := by
  rw [output1251_def]
  conv => lhs; cbv
  try rfl
theorem node1251_eq : Flapjack.WordAlloc.removeDeadStructural input1251 value361 value1 value2 = (output1251, value4, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node715_eq]
  dsimp only
  rw [node1250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1251 input714)).val
theorem input1252_def : input1252 = (.seq input1251 input714) := by
  unfold input1252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1251 output714)).val
theorem output1252_def : output1252 = (.seq output1251 output714) := by
  unfold output1252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1252_skip : Flapjack.WordAlloc.isSkip output1252 = false := by
  rw [output1252_def]
  conv => lhs; cbv
  try rfl
theorem node1252_eq : Flapjack.WordAlloc.removeDeadStructural input1252 value360 value1 value2 = (output1252, value4, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node714_eq]
  dsimp only
  rw [node1251_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1252 input713)).val
theorem input1253_def : input1253 = (.seq input1252 input713) := by
  unfold input1253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1252 output713)).val
theorem output1253_def : output1253 = (.seq output1252 output713) := by
  unfold output1253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1253_skip : Flapjack.WordAlloc.isSkip output1253 = false := by
  rw [output1253_def]
  conv => lhs; cbv
  try rfl
theorem node1253_eq : Flapjack.WordAlloc.removeDeadStructural input1253 value4 value1 value2 = (output1253, value4, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node713_eq]
  dsimp only
  rw [node1252_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1253 input710)).val
theorem input1254_def : input1254 = (.seq input1253 input710) := by
  unfold input1254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1253 output710)).val
theorem output1254_def : output1254 = (.seq output1253 output710) := by
  unfold output1254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1254_skip : Flapjack.WordAlloc.isSkip output1254 = false := by
  rw [output1254_def]
  conv => lhs; cbv
  try rfl
theorem node1254_eq : Flapjack.WordAlloc.removeDeadStructural input1254 value355 value1 value2 = (output1254, value4, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node710_eq]
  dsimp only
  rw [node1253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1254 input703)).val
theorem input1255_def : input1255 = (.seq input1254 input703) := by
  unfold input1255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1254)).val
theorem output1255_def : output1255 = (output1254) := by
  unfold output1255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1255_skip : Flapjack.WordAlloc.isSkip output1255 = false := by
  rw [output1255_def]
  conv => lhs; cbv
  try rfl
theorem node1255_eq : Flapjack.WordAlloc.removeDeadStructural input1255 value355 value1 value2 = (output1255, value4, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node703_eq]
  dsimp only
  rw [node1254_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1255 input702)).val
theorem input1256_def : input1256 = (.seq input1255 input702) := by
  unfold input1256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1255 output702)).val
theorem output1256_def : output1256 = (.seq output1255 output702) := by
  unfold output1256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1256_skip : Flapjack.WordAlloc.isSkip output1256 = false := by
  rw [output1256_def]
  conv => lhs; cbv
  try rfl
theorem node1256_eq : Flapjack.WordAlloc.removeDeadStructural input1256 value354 value1 value2 = (output1256, value4, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  dsimp only
  rw [node1255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1256 input701)).val
theorem input1257_def : input1257 = (.seq input1256 input701) := by
  unfold input1257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1256 output701)).val
theorem output1257_def : output1257 = (.seq output1256 output701) := by
  unfold output1257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1257_skip : Flapjack.WordAlloc.isSkip output1257 = false := by
  rw [output1257_def]
  conv => lhs; cbv
  try rfl
theorem node1257_eq : Flapjack.WordAlloc.removeDeadStructural input1257 value4 value1 value2 = (output1257, value4, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node701_eq]
  dsimp only
  rw [node1256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1257 input698)).val
theorem input1258_def : input1258 = (.seq input1257 input698) := by
  unfold input1258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1257 output698)).val
theorem output1258_def : output1258 = (.seq output1257 output698) := by
  unfold output1258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1258_skip : Flapjack.WordAlloc.isSkip output1258 = false := by
  rw [output1258_def]
  conv => lhs; cbv
  try rfl
theorem node1258_eq : Flapjack.WordAlloc.removeDeadStructural input1258 value349 value1 value2 = (output1258, value4, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node698_eq]
  dsimp only
  rw [node1257_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1258 input691)).val
theorem input1259_def : input1259 = (.seq input1258 input691) := by
  unfold input1259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1258)).val
theorem output1259_def : output1259 = (output1258) := by
  unfold output1259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1259_skip : Flapjack.WordAlloc.isSkip output1259 = false := by
  rw [output1259_def]
  conv => lhs; cbv
  try rfl
theorem node1259_eq : Flapjack.WordAlloc.removeDeadStructural input1259 value349 value1 value2 = (output1259, value4, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node691_eq]
  dsimp only
  rw [node1258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1259 input690)).val
theorem input1260_def : input1260 = (.seq input1259 input690) := by
  unfold input1260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1259 output690)).val
theorem output1260_def : output1260 = (.seq output1259 output690) := by
  unfold output1260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1260_skip : Flapjack.WordAlloc.isSkip output1260 = false := by
  rw [output1260_def]
  conv => lhs; cbv
  try rfl
theorem node1260_eq : Flapjack.WordAlloc.removeDeadStructural input1260 value348 value1 value2 = (output1260, value4, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node690_eq]
  dsimp only
  rw [node1259_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1260 input689)).val
theorem input1261_def : input1261 = (.seq input1260 input689) := by
  unfold input1261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1260 output689)).val
theorem output1261_def : output1261 = (.seq output1260 output689) := by
  unfold output1261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1261_skip : Flapjack.WordAlloc.isSkip output1261 = false := by
  rw [output1261_def]
  conv => lhs; cbv
  try rfl
theorem node1261_eq : Flapjack.WordAlloc.removeDeadStructural input1261 value4 value1 value2 = (output1261, value4, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node689_eq]
  dsimp only
  rw [node1260_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1261 input686)).val
theorem input1262_def : input1262 = (.seq input1261 input686) := by
  unfold input1262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1261 output686)).val
theorem output1262_def : output1262 = (.seq output1261 output686) := by
  unfold output1262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1262_skip : Flapjack.WordAlloc.isSkip output1262 = false := by
  rw [output1262_def]
  conv => lhs; cbv
  try rfl
theorem node1262_eq : Flapjack.WordAlloc.removeDeadStructural input1262 value343 value1 value2 = (output1262, value4, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node686_eq]
  dsimp only
  rw [node1261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1262 input679)).val
theorem input1263_def : input1263 = (.seq input1262 input679) := by
  unfold input1263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1262)).val
theorem output1263_def : output1263 = (output1262) := by
  unfold output1263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1263_skip : Flapjack.WordAlloc.isSkip output1263 = false := by
  rw [output1263_def]
  conv => lhs; cbv
  try rfl
theorem node1263_eq : Flapjack.WordAlloc.removeDeadStructural input1263 value343 value1 value2 = (output1263, value4, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node679_eq]
  dsimp only
  rw [node1262_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1263 input678)).val
theorem input1264_def : input1264 = (.seq input1263 input678) := by
  unfold input1264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1263 output678)).val
theorem output1264_def : output1264 = (.seq output1263 output678) := by
  unfold output1264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1264_skip : Flapjack.WordAlloc.isSkip output1264 = false := by
  rw [output1264_def]
  conv => lhs; cbv
  try rfl
theorem node1264_eq : Flapjack.WordAlloc.removeDeadStructural input1264 value342 value1 value2 = (output1264, value4, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node678_eq]
  dsimp only
  rw [node1263_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1264 input677)).val
theorem input1265_def : input1265 = (.seq input1264 input677) := by
  unfold input1265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1264 output677)).val
theorem output1265_def : output1265 = (.seq output1264 output677) := by
  unfold output1265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1265_skip : Flapjack.WordAlloc.isSkip output1265 = false := by
  rw [output1265_def]
  conv => lhs; cbv
  try rfl
theorem node1265_eq : Flapjack.WordAlloc.removeDeadStructural input1265 value4 value1 value2 = (output1265, value4, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node677_eq]
  dsimp only
  rw [node1264_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1265 input674)).val
theorem input1266_def : input1266 = (.seq input1265 input674) := by
  unfold input1266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1265 output674)).val
theorem output1266_def : output1266 = (.seq output1265 output674) := by
  unfold output1266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1266_skip : Flapjack.WordAlloc.isSkip output1266 = false := by
  rw [output1266_def]
  conv => lhs; cbv
  try rfl
theorem node1266_eq : Flapjack.WordAlloc.removeDeadStructural input1266 value337 value1 value2 = (output1266, value4, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node674_eq]
  dsimp only
  rw [node1265_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1266 input667)).val
theorem input1267_def : input1267 = (.seq input1266 input667) := by
  unfold input1267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1266)).val
theorem output1267_def : output1267 = (output1266) := by
  unfold output1267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1267_skip : Flapjack.WordAlloc.isSkip output1267 = false := by
  rw [output1267_def]
  conv => lhs; cbv
  try rfl
theorem node1267_eq : Flapjack.WordAlloc.removeDeadStructural input1267 value337 value1 value2 = (output1267, value4, value1) := by
  rw [input1267_def, output1267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node667_eq]
  dsimp only
  rw [node1266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1267 input666)).val
theorem input1268_def : input1268 = (.seq input1267 input666) := by
  unfold input1268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1267 output666)).val
theorem output1268_def : output1268 = (.seq output1267 output666) := by
  unfold output1268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1268_skip : Flapjack.WordAlloc.isSkip output1268 = false := by
  rw [output1268_def]
  conv => lhs; cbv
  try rfl
theorem node1268_eq : Flapjack.WordAlloc.removeDeadStructural input1268 value336 value1 value2 = (output1268, value4, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node666_eq]
  dsimp only
  rw [node1267_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1268 input665)).val
theorem input1269_def : input1269 = (.seq input1268 input665) := by
  unfold input1269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1268 output665)).val
theorem output1269_def : output1269 = (.seq output1268 output665) := by
  unfold output1269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1269_skip : Flapjack.WordAlloc.isSkip output1269 = false := by
  rw [output1269_def]
  conv => lhs; cbv
  try rfl
theorem node1269_eq : Flapjack.WordAlloc.removeDeadStructural input1269 value4 value1 value2 = (output1269, value4, value1) := by
  rw [input1269_def, output1269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node665_eq]
  dsimp only
  rw [node1268_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1269 input662)).val
theorem input1270_def : input1270 = (.seq input1269 input662) := by
  unfold input1270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1269 output662)).val
theorem output1270_def : output1270 = (.seq output1269 output662) := by
  unfold output1270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1270_skip : Flapjack.WordAlloc.isSkip output1270 = false := by
  rw [output1270_def]
  conv => lhs; cbv
  try rfl
theorem node1270_eq : Flapjack.WordAlloc.removeDeadStructural input1270 value331 value1 value2 = (output1270, value4, value1) := by
  rw [input1270_def, output1270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node662_eq]
  dsimp only
  rw [node1269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1270 input655)).val
theorem input1271_def : input1271 = (.seq input1270 input655) := by
  unfold input1271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1270)).val
theorem output1271_def : output1271 = (output1270) := by
  unfold output1271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1271_skip : Flapjack.WordAlloc.isSkip output1271 = false := by
  rw [output1271_def]
  conv => lhs; cbv
  try rfl
theorem node1271_eq : Flapjack.WordAlloc.removeDeadStructural input1271 value331 value1 value2 = (output1271, value4, value1) := by
  rw [input1271_def, output1271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node655_eq]
  dsimp only
  rw [node1270_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1271 input654)).val
theorem input1272_def : input1272 = (.seq input1271 input654) := by
  unfold input1272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1271 output654)).val
theorem output1272_def : output1272 = (.seq output1271 output654) := by
  unfold output1272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1272_skip : Flapjack.WordAlloc.isSkip output1272 = false := by
  rw [output1272_def]
  conv => lhs; cbv
  try rfl
theorem node1272_eq : Flapjack.WordAlloc.removeDeadStructural input1272 value330 value1 value2 = (output1272, value4, value1) := by
  rw [input1272_def, output1272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node654_eq]
  dsimp only
  rw [node1271_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1272 input653)).val
theorem input1273_def : input1273 = (.seq input1272 input653) := by
  unfold input1273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1272 output653)).val
theorem output1273_def : output1273 = (.seq output1272 output653) := by
  unfold output1273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1273_skip : Flapjack.WordAlloc.isSkip output1273 = false := by
  rw [output1273_def]
  conv => lhs; cbv
  try rfl
theorem node1273_eq : Flapjack.WordAlloc.removeDeadStructural input1273 value4 value1 value2 = (output1273, value4, value1) := by
  rw [input1273_def, output1273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node653_eq]
  dsimp only
  rw [node1272_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1273 input650)).val
theorem input1274_def : input1274 = (.seq input1273 input650) := by
  unfold input1274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1273 output650)).val
theorem output1274_def : output1274 = (.seq output1273 output650) := by
  unfold output1274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1274_skip : Flapjack.WordAlloc.isSkip output1274 = false := by
  rw [output1274_def]
  conv => lhs; cbv
  try rfl
theorem node1274_eq : Flapjack.WordAlloc.removeDeadStructural input1274 value325 value1 value2 = (output1274, value4, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node650_eq]
  dsimp only
  rw [node1273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1274 input643)).val
theorem input1275_def : input1275 = (.seq input1274 input643) := by
  unfold input1275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1274)).val
theorem output1275_def : output1275 = (output1274) := by
  unfold output1275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1275_skip : Flapjack.WordAlloc.isSkip output1275 = false := by
  rw [output1275_def]
  conv => lhs; cbv
  try rfl
theorem node1275_eq : Flapjack.WordAlloc.removeDeadStructural input1275 value325 value1 value2 = (output1275, value4, value1) := by
  rw [input1275_def, output1275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node643_eq]
  dsimp only
  rw [node1274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1275 input642)).val
theorem input1276_def : input1276 = (.seq input1275 input642) := by
  unfold input1276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1275 output642)).val
theorem output1276_def : output1276 = (.seq output1275 output642) := by
  unfold output1276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1276_skip : Flapjack.WordAlloc.isSkip output1276 = false := by
  rw [output1276_def]
  conv => lhs; cbv
  try rfl
theorem node1276_eq : Flapjack.WordAlloc.removeDeadStructural input1276 value324 value1 value2 = (output1276, value4, value1) := by
  rw [input1276_def, output1276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node642_eq]
  dsimp only
  rw [node1275_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1276 input641)).val
theorem input1277_def : input1277 = (.seq input1276 input641) := by
  unfold input1277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1276 output641)).val
theorem output1277_def : output1277 = (.seq output1276 output641) := by
  unfold output1277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1277_skip : Flapjack.WordAlloc.isSkip output1277 = false := by
  rw [output1277_def]
  conv => lhs; cbv
  try rfl
theorem node1277_eq : Flapjack.WordAlloc.removeDeadStructural input1277 value4 value1 value2 = (output1277, value4, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node641_eq]
  dsimp only
  rw [node1276_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1277 input638)).val
theorem input1278_def : input1278 = (.seq input1277 input638) := by
  unfold input1278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1277 output638)).val
theorem output1278_def : output1278 = (.seq output1277 output638) := by
  unfold output1278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1278_skip : Flapjack.WordAlloc.isSkip output1278 = false := by
  rw [output1278_def]
  conv => lhs; cbv
  try rfl
theorem node1278_eq : Flapjack.WordAlloc.removeDeadStructural input1278 value319 value1 value2 = (output1278, value4, value1) := by
  rw [input1278_def, output1278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node638_eq]
  dsimp only
  rw [node1277_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1278 input631)).val
theorem input1279_def : input1279 = (.seq input1278 input631) := by
  unfold input1279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1278)).val
theorem output1279_def : output1279 = (output1278) := by
  unfold output1279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1279_skip : Flapjack.WordAlloc.isSkip output1279 = false := by
  rw [output1279_def]
  conv => lhs; cbv
  try rfl
theorem node1279_eq : Flapjack.WordAlloc.removeDeadStructural input1279 value319 value1 value2 = (output1279, value4, value1) := by
  rw [input1279_def, output1279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node631_eq]
  dsimp only
  rw [node1278_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1279_eq
end InitECandidate.Proofs.DeadStages64
