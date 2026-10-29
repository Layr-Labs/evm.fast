import InitECandidate.Proofs.DeadStages782.Chunk004
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages782
@[irreducible, cbv_opaque] def input1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1279 input1278)).val
theorem input1280_def : input1280 = (.seq input1279 input1278) := by
  unfold input1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1279 output1278)).val
theorem output1280_def : output1280 = (.seq output1279 output1278) := by
  unfold output1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1280_skip : Flapjack.WordAlloc.isSkip output1280 = false := by
  rw [output1280_def]
  conv => lhs; cbv
  try rfl
theorem node1280_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value770 value1 value2 = (output1280, value772, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1278_eq]
  try dsimp only
  rw [node1279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value773 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 24#64)))).val
theorem input1281_def : input1281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 24#64))) := by
  unfold input1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 24#64)))).val
theorem output1281_def : output1281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 265 (Flapjack.WordLangAddr.addr 261 24#64))) := by
  unfold output1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1281_skip : Flapjack.WordAlloc.isSkip output1281 = false := by
  rw [output1281_def]
  conv => lhs; cbv
  try rfl
theorem node1281_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value772 value1 value2 = (output1281, value773, value1) := by
  rw [input1281_def, output1281_def]
  try (conv => lhs; cbv)
  try rfl

def value774 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 253)])).val
theorem input1282_def : input1282 = (Flapjack.WordLangProgHOL.move 0 [(261, 253)]) := by
  unfold input1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 253)])).val
theorem output1282_def : output1282 = (Flapjack.WordLangProgHOL.move 0 [(261, 253)]) := by
  unfold output1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1282_skip : Flapjack.WordAlloc.isSkip output1282 = false := by
  rw [output1282_def]
  conv => lhs; cbv
  try rfl
theorem node1282_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value773 value1 value2 = (output1282, value774, value1) := by
  rw [input1282_def, output1282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1282 input1281)).val
theorem input1283_def : input1283 = (.seq input1282 input1281) := by
  unfold input1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1282 output1281)).val
theorem output1283_def : output1283 = (.seq output1282 output1281) := by
  unfold output1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1283_skip : Flapjack.WordAlloc.isSkip output1283 = false := by
  rw [output1283_def]
  conv => lhs; cbv
  try rfl
theorem node1283_eq : Flapjack.WordAlloc.removeDeadStructural input1283 value772 value1 value2 = (output1283, value774, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1281_eq]
  try dsimp only
  rw [node1282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value775 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 16#64)))).val
theorem input1284_def : input1284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 16#64))) := by
  unfold input1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 16#64)))).val
theorem output1284_def : output1284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 257 (Flapjack.WordLangAddr.addr 253 16#64))) := by
  unfold output1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1284_skip : Flapjack.WordAlloc.isSkip output1284 = false := by
  rw [output1284_def]
  conv => lhs; cbv
  try rfl
theorem node1284_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value774 value1 value2 = (output1284, value775, value1) := by
  rw [input1284_def, output1284_def]
  try (conv => lhs; cbv)
  try rfl

def value776 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 245)])).val
theorem input1285_def : input1285 = (Flapjack.WordLangProgHOL.move 0 [(253, 245)]) := by
  unfold input1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 245)])).val
theorem output1285_def : output1285 = (Flapjack.WordLangProgHOL.move 0 [(253, 245)]) := by
  unfold output1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1285_skip : Flapjack.WordAlloc.isSkip output1285 = false := by
  rw [output1285_def]
  conv => lhs; cbv
  try rfl
theorem node1285_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value775 value1 value2 = (output1285, value776, value1) := by
  rw [input1285_def, output1285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1285 input1284)).val
theorem input1286_def : input1286 = (.seq input1285 input1284) := by
  unfold input1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1285 output1284)).val
theorem output1286_def : output1286 = (.seq output1285 output1284) := by
  unfold output1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1286_skip : Flapjack.WordAlloc.isSkip output1286 = false := by
  rw [output1286_def]
  conv => lhs; cbv
  try rfl
theorem node1286_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value774 value1 value2 = (output1286, value776, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1284_eq]
  try dsimp only
  rw [node1285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value777 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64)))).val
theorem input1287_def : input1287 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))) := by
  unfold input1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64)))).val
theorem output1287_def : output1287 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 249 (Flapjack.WordLangAddr.addr 245 8#64))) := by
  unfold output1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1287_skip : Flapjack.WordAlloc.isSkip output1287 = false := by
  rw [output1287_def]
  conv => lhs; cbv
  try rfl
theorem node1287_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value776 value1 value2 = (output1287, value777, value1) := by
  rw [input1287_def, output1287_def]
  try (conv => lhs; cbv)
  try rfl

def value778 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(245, 237)])).val
theorem input1288_def : input1288 = (Flapjack.WordLangProgHOL.move 0 [(245, 237)]) := by
  unfold input1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(245, 237)])).val
theorem output1288_def : output1288 = (Flapjack.WordLangProgHOL.move 0 [(245, 237)]) := by
  unfold output1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1288_skip : Flapjack.WordAlloc.isSkip output1288 = false := by
  rw [output1288_def]
  conv => lhs; cbv
  try rfl
theorem node1288_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value777 value1 value2 = (output1288, value778, value1) := by
  rw [input1288_def, output1288_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1288 input1287)).val
theorem input1289_def : input1289 = (.seq input1288 input1287) := by
  unfold input1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1288 output1287)).val
theorem output1289_def : output1289 = (.seq output1288 output1287) := by
  unfold output1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1289_skip : Flapjack.WordAlloc.isSkip output1289 = false := by
  rw [output1289_def]
  conv => lhs; cbv
  try rfl
theorem node1289_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value776 value1 value2 = (output1289, value778, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1287_eq]
  try dsimp only
  rw [node1288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value779 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 0#64)))).val
theorem input1290_def : input1290 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 0#64))) := by
  unfold input1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 0#64)))).val
theorem output1290_def : output1290 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 241 (Flapjack.WordLangAddr.addr 237 0#64))) := by
  unfold output1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1290_skip : Flapjack.WordAlloc.isSkip output1290 = false := by
  rw [output1290_def]
  conv => lhs; cbv
  try rfl
theorem node1290_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value778 value1 value2 = (output1290, value779, value1) := by
  rw [input1290_def, output1290_def]
  try (conv => lhs; cbv)
  try rfl

def value780 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(237, 233)])).val
theorem input1291_def : input1291 = (Flapjack.WordLangProgHOL.move 0 [(237, 233)]) := by
  unfold input1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(237, 233)])).val
theorem output1291_def : output1291 = (Flapjack.WordLangProgHOL.move 0 [(237, 233)]) := by
  unfold output1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1291_skip : Flapjack.WordAlloc.isSkip output1291 = false := by
  rw [output1291_def]
  conv => lhs; cbv
  try rfl
theorem node1291_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value779 value1 value2 = (output1291, value780, value1) := by
  rw [input1291_def, output1291_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1291 input1290)).val
theorem input1292_def : input1292 = (.seq input1291 input1290) := by
  unfold input1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1291 output1290)).val
theorem output1292_def : output1292 = (.seq output1291 output1290) := by
  unfold output1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1292_skip : Flapjack.WordAlloc.isSkip output1292 = false := by
  rw [output1292_def]
  conv => lhs; cbv
  try rfl
theorem node1292_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value778 value1 value2 = (output1292, value780, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1290_eq]
  try dsimp only
  rw [node1291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1292 input1289)).val
theorem input1293_def : input1293 = (.seq input1292 input1289) := by
  unfold input1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1292 output1289)).val
theorem output1293_def : output1293 = (.seq output1292 output1289) := by
  unfold output1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1293_skip : Flapjack.WordAlloc.isSkip output1293 = false := by
  rw [output1293_def]
  conv => lhs; cbv
  try rfl
theorem node1293_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value776 value1 value2 = (output1293, value780, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1289_eq]
  try dsimp only
  rw [node1292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1293 input1286)).val
theorem input1294_def : input1294 = (.seq input1293 input1286) := by
  unfold input1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1293 output1286)).val
theorem output1294_def : output1294 = (.seq output1293 output1286) := by
  unfold output1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1294_skip : Flapjack.WordAlloc.isSkip output1294 = false := by
  rw [output1294_def]
  conv => lhs; cbv
  try rfl
theorem node1294_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value774 value1 value2 = (output1294, value780, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1286_eq]
  try dsimp only
  rw [node1293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1294 input1283)).val
theorem input1295_def : input1295 = (.seq input1294 input1283) := by
  unfold input1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1294 output1283)).val
theorem output1295_def : output1295 = (.seq output1294 output1283) := by
  unfold output1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1295_skip : Flapjack.WordAlloc.isSkip output1295 = false := by
  rw [output1295_def]
  conv => lhs; cbv
  try rfl
theorem node1295_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value772 value1 value2 = (output1295, value780, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1283_eq]
  try dsimp only
  rw [node1294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1295 input1280)).val
theorem input1296_def : input1296 = (.seq input1295 input1280) := by
  unfold input1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1295 output1280)).val
theorem output1296_def : output1296 = (.seq output1295 output1280) := by
  unfold output1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1296_skip : Flapjack.WordAlloc.isSkip output1296 = false := by
  rw [output1296_def]
  conv => lhs; cbv
  try rfl
theorem node1296_eq : Flapjack.WordAlloc.removeDeadStructural input1296 value770 value1 value2 = (output1296, value780, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1280_eq]
  try dsimp only
  rw [node1295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1296 input1277)).val
theorem input1297_def : input1297 = (.seq input1296 input1277) := by
  unfold input1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1296 output1277)).val
theorem output1297_def : output1297 = (.seq output1296 output1277) := by
  unfold output1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1297_skip : Flapjack.WordAlloc.isSkip output1297 = false := by
  rw [output1297_def]
  conv => lhs; cbv
  try rfl
theorem node1297_eq : Flapjack.WordAlloc.removeDeadStructural input1297 value768 value1 value2 = (output1297, value780, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1277_eq]
  try dsimp only
  rw [node1296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1297 input1274)).val
theorem input1298_def : input1298 = (.seq input1297 input1274) := by
  unfold input1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1297 output1274)).val
theorem output1298_def : output1298 = (.seq output1297 output1274) := by
  unfold output1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1298_skip : Flapjack.WordAlloc.isSkip output1298 = false := by
  rw [output1298_def]
  conv => lhs; cbv
  try rfl
theorem node1298_eq : Flapjack.WordAlloc.removeDeadStructural input1298 value766 value1 value2 = (output1298, value780, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1274_eq]
  try dsimp only
  rw [node1297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1298 input1271)).val
theorem input1299_def : input1299 = (.seq input1298 input1271) := by
  unfold input1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1298 output1271)).val
theorem output1299_def : output1299 = (.seq output1298 output1271) := by
  unfold output1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1299_skip : Flapjack.WordAlloc.isSkip output1299 = false := by
  rw [output1299_def]
  conv => lhs; cbv
  try rfl
theorem node1299_eq : Flapjack.WordAlloc.removeDeadStructural input1299 value764 value1 value2 = (output1299, value780, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1271_eq]
  try dsimp only
  rw [node1298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1299 input1268)).val
theorem input1300_def : input1300 = (.seq input1299 input1268) := by
  unfold input1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1299 output1268)).val
theorem output1300_def : output1300 = (.seq output1299 output1268) := by
  unfold output1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1300_skip : Flapjack.WordAlloc.isSkip output1300 = false := by
  rw [output1300_def]
  conv => lhs; cbv
  try rfl
theorem node1300_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value762 value1 value2 = (output1300, value780, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1268_eq]
  try dsimp only
  rw [node1299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1300 input1265)).val
theorem input1301_def : input1301 = (.seq input1300 input1265) := by
  unfold input1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1300 output1265)).val
theorem output1301_def : output1301 = (.seq output1300 output1265) := by
  unfold output1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1301_skip : Flapjack.WordAlloc.isSkip output1301 = false := by
  rw [output1301_def]
  conv => lhs; cbv
  try rfl
theorem node1301_eq : Flapjack.WordAlloc.removeDeadStructural input1301 value760 value1 value2 = (output1301, value780, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1265_eq]
  try dsimp only
  rw [node1300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1301 input1262)).val
theorem input1302_def : input1302 = (.seq input1301 input1262) := by
  unfold input1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1301 output1262)).val
theorem output1302_def : output1302 = (.seq output1301 output1262) := by
  unfold output1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1302_skip : Flapjack.WordAlloc.isSkip output1302 = false := by
  rw [output1302_def]
  conv => lhs; cbv
  try rfl
theorem node1302_eq : Flapjack.WordAlloc.removeDeadStructural input1302 value758 value1 value2 = (output1302, value780, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1262_eq]
  try dsimp only
  rw [node1301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1302 input1259)).val
theorem input1303_def : input1303 = (.seq input1302 input1259) := by
  unfold input1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1302 output1259)).val
theorem output1303_def : output1303 = (.seq output1302 output1259) := by
  unfold output1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1303_skip : Flapjack.WordAlloc.isSkip output1303 = false := by
  rw [output1303_def]
  conv => lhs; cbv
  try rfl
theorem node1303_eq : Flapjack.WordAlloc.removeDeadStructural input1303 value756 value1 value2 = (output1303, value780, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1259_eq]
  try dsimp only
  rw [node1302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1303 input1256)).val
theorem input1304_def : input1304 = (.seq input1303 input1256) := by
  unfold input1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1303 output1256)).val
theorem output1304_def : output1304 = (.seq output1303 output1256) := by
  unfold output1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1304_skip : Flapjack.WordAlloc.isSkip output1304 = false := by
  rw [output1304_def]
  conv => lhs; cbv
  try rfl
theorem node1304_eq : Flapjack.WordAlloc.removeDeadStructural input1304 value754 value1 value2 = (output1304, value780, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1256_eq]
  try dsimp only
  rw [node1303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1304 input1253)).val
theorem input1305_def : input1305 = (.seq input1304 input1253) := by
  unfold input1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1304 output1253)).val
theorem output1305_def : output1305 = (.seq output1304 output1253) := by
  unfold output1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1305_skip : Flapjack.WordAlloc.isSkip output1305 = false := by
  rw [output1305_def]
  conv => lhs; cbv
  try rfl
theorem node1305_eq : Flapjack.WordAlloc.removeDeadStructural input1305 value752 value1 value2 = (output1305, value780, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1253_eq]
  try dsimp only
  rw [node1304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1305 input1250)).val
theorem input1306_def : input1306 = (.seq input1305 input1250) := by
  unfold input1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1305 output1250)).val
theorem output1306_def : output1306 = (.seq output1305 output1250) := by
  unfold output1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1306_skip : Flapjack.WordAlloc.isSkip output1306 = false := by
  rw [output1306_def]
  conv => lhs; cbv
  try rfl
theorem node1306_eq : Flapjack.WordAlloc.removeDeadStructural input1306 value750 value1 value2 = (output1306, value780, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1250_eq]
  try dsimp only
  rw [node1305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1306 input1247)).val
theorem input1307_def : input1307 = (.seq input1306 input1247) := by
  unfold input1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1306 output1247)).val
theorem output1307_def : output1307 = (.seq output1306 output1247) := by
  unfold output1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1307_skip : Flapjack.WordAlloc.isSkip output1307 = false := by
  rw [output1307_def]
  conv => lhs; cbv
  try rfl
theorem node1307_eq : Flapjack.WordAlloc.removeDeadStructural input1307 value748 value1 value2 = (output1307, value780, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1247_eq]
  try dsimp only
  rw [node1306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1307 input1244)).val
theorem input1308_def : input1308 = (.seq input1307 input1244) := by
  unfold input1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1307 output1244)).val
theorem output1308_def : output1308 = (.seq output1307 output1244) := by
  unfold output1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1308_skip : Flapjack.WordAlloc.isSkip output1308 = false := by
  rw [output1308_def]
  conv => lhs; cbv
  try rfl
theorem node1308_eq : Flapjack.WordAlloc.removeDeadStructural input1308 value746 value1 value2 = (output1308, value780, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1244_eq]
  try dsimp only
  rw [node1307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1308 input1241)).val
theorem input1309_def : input1309 = (.seq input1308 input1241) := by
  unfold input1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1308 output1241)).val
theorem output1309_def : output1309 = (.seq output1308 output1241) := by
  unfold output1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1309_skip : Flapjack.WordAlloc.isSkip output1309 = false := by
  rw [output1309_def]
  conv => lhs; cbv
  try rfl
theorem node1309_eq : Flapjack.WordAlloc.removeDeadStructural input1309 value744 value1 value2 = (output1309, value780, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1241_eq]
  try dsimp only
  rw [node1308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1309 input1238)).val
theorem input1310_def : input1310 = (.seq input1309 input1238) := by
  unfold input1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1309 output1238)).val
theorem output1310_def : output1310 = (.seq output1309 output1238) := by
  unfold output1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1310_skip : Flapjack.WordAlloc.isSkip output1310 = false := by
  rw [output1310_def]
  conv => lhs; cbv
  try rfl
theorem node1310_eq : Flapjack.WordAlloc.removeDeadStructural input1310 value743 value1 value2 = (output1310, value780, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1238_eq]
  try dsimp only
  rw [node1309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1310 input1237)).val
theorem input1311_def : input1311 = (.seq input1310 input1237) := by
  unfold input1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1310 output1237)).val
theorem output1311_def : output1311 = (.seq output1310 output1237) := by
  unfold output1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1311_skip : Flapjack.WordAlloc.isSkip output1311 = false := by
  rw [output1311_def]
  conv => lhs; cbv
  try rfl
theorem node1311_eq : Flapjack.WordAlloc.removeDeadStructural input1311 value742 value1 value2 = (output1311, value780, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1237_eq]
  try dsimp only
  rw [node1310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1311 input1236)).val
theorem input1312_def : input1312 = (.seq input1311 input1236) := by
  unfold input1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1311 output1236)).val
theorem output1312_def : output1312 = (.seq output1311 output1236) := by
  unfold output1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1312_skip : Flapjack.WordAlloc.isSkip output1312 = false := by
  rw [output1312_def]
  conv => lhs; cbv
  try rfl
theorem node1312_eq : Flapjack.WordAlloc.removeDeadStructural input1312 value741 value1 value2 = (output1312, value780, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1236_eq]
  try dsimp only
  rw [node1311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1312 input1235)).val
theorem input1313_def : input1313 = (.seq input1312 input1235) := by
  unfold input1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1312 output1235)).val
theorem output1313_def : output1313 = (.seq output1312 output1235) := by
  unfold output1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1313_skip : Flapjack.WordAlloc.isSkip output1313 = false := by
  rw [output1313_def]
  conv => lhs; cbv
  try rfl
theorem node1313_eq : Flapjack.WordAlloc.removeDeadStructural input1313 value740 value1 value2 = (output1313, value780, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1235_eq]
  try dsimp only
  rw [node1312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1313 input1234)).val
theorem input1314_def : input1314 = (.seq input1313 input1234) := by
  unfold input1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1313 output1234)).val
theorem output1314_def : output1314 = (.seq output1313 output1234) := by
  unfold output1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1314_skip : Flapjack.WordAlloc.isSkip output1314 = false := by
  rw [output1314_def]
  conv => lhs; cbv
  try rfl
theorem node1314_eq : Flapjack.WordAlloc.removeDeadStructural input1314 value739 value1 value2 = (output1314, value780, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1234_eq]
  try dsimp only
  rw [node1313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1314 input1233)).val
theorem input1315_def : input1315 = (.seq input1314 input1233) := by
  unfold input1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1314 output1233)).val
theorem output1315_def : output1315 = (.seq output1314 output1233) := by
  unfold output1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1315_skip : Flapjack.WordAlloc.isSkip output1315 = false := by
  rw [output1315_def]
  conv => lhs; cbv
  try rfl
theorem node1315_eq : Flapjack.WordAlloc.removeDeadStructural input1315 value738 value1 value2 = (output1315, value780, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1233_eq]
  try dsimp only
  rw [node1314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1315 input1232)).val
theorem input1316_def : input1316 = (.seq input1315 input1232) := by
  unfold input1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1315)).val
theorem output1316_def : output1316 = (output1315) := by
  unfold output1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1316_skip : Flapjack.WordAlloc.isSkip output1316 = false := by
  rw [output1316_def]
  conv => lhs; cbv
  try rfl
theorem node1316_eq : Flapjack.WordAlloc.removeDeadStructural input1316 value738 value1 value2 = (output1316, value780, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1232_eq]
  try dsimp only
  rw [node1315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1316 input1231)).val
theorem input1317_def : input1317 = (.seq input1316 input1231) := by
  unfold input1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1316)).val
theorem output1317_def : output1317 = (output1316) := by
  unfold output1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1317_skip : Flapjack.WordAlloc.isSkip output1317 = false := by
  rw [output1317_def]
  conv => lhs; cbv
  try rfl
theorem node1317_eq : Flapjack.WordAlloc.removeDeadStructural input1317 value738 value1 value2 = (output1317, value780, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1231_eq]
  try dsimp only
  rw [node1316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1317 input1230)).val
theorem input1318_def : input1318 = (.seq input1317 input1230) := by
  unfold input1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1317)).val
theorem output1318_def : output1318 = (output1317) := by
  unfold output1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1318_skip : Flapjack.WordAlloc.isSkip output1318 = false := by
  rw [output1318_def]
  conv => lhs; cbv
  try rfl
theorem node1318_eq : Flapjack.WordAlloc.removeDeadStructural input1318 value738 value1 value2 = (output1318, value780, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1230_eq]
  try dsimp only
  rw [node1317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1318 input1229)).val
theorem input1319_def : input1319 = (.seq input1318 input1229) := by
  unfold input1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1318)).val
theorem output1319_def : output1319 = (output1318) := by
  unfold output1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1319_skip : Flapjack.WordAlloc.isSkip output1319 = false := by
  rw [output1319_def]
  conv => lhs; cbv
  try rfl
theorem node1319_eq : Flapjack.WordAlloc.removeDeadStructural input1319 value738 value1 value2 = (output1319, value780, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1229_eq]
  try dsimp only
  rw [node1318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1319 input1228)).val
theorem input1320_def : input1320 = (.seq input1319 input1228) := by
  unfold input1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1319)).val
theorem output1320_def : output1320 = (output1319) := by
  unfold output1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1320_skip : Flapjack.WordAlloc.isSkip output1320 = false := by
  rw [output1320_def]
  conv => lhs; cbv
  try rfl
theorem node1320_eq : Flapjack.WordAlloc.removeDeadStructural input1320 value738 value1 value2 = (output1320, value780, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1228_eq]
  try dsimp only
  rw [node1319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1320 input1227)).val
theorem input1321_def : input1321 = (.seq input1320 input1227) := by
  unfold input1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1320)).val
theorem output1321_def : output1321 = (output1320) := by
  unfold output1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1321_skip : Flapjack.WordAlloc.isSkip output1321 = false := by
  rw [output1321_def]
  conv => lhs; cbv
  try rfl
theorem node1321_eq : Flapjack.WordAlloc.removeDeadStructural input1321 value738 value1 value2 = (output1321, value780, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1227_eq]
  try dsimp only
  rw [node1320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1321 input1226)).val
theorem input1322_def : input1322 = (.seq input1321 input1226) := by
  unfold input1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1321 output1226)).val
theorem output1322_def : output1322 = (.seq output1321 output1226) := by
  unfold output1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1322_skip : Flapjack.WordAlloc.isSkip output1322 = false := by
  rw [output1322_def]
  conv => lhs; cbv
  try rfl
theorem node1322_eq : Flapjack.WordAlloc.removeDeadStructural input1322 value737 value1 value2 = (output1322, value780, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1226_eq]
  try dsimp only
  rw [node1321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1322 input1225)).val
theorem input1323_def : input1323 = (.seq input1322 input1225) := by
  unfold input1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1322 output1225)).val
theorem output1323_def : output1323 = (.seq output1322 output1225) := by
  unfold output1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1323_skip : Flapjack.WordAlloc.isSkip output1323 = false := by
  rw [output1323_def]
  conv => lhs; cbv
  try rfl
theorem node1323_eq : Flapjack.WordAlloc.removeDeadStructural input1323 value736 value1 value2 = (output1323, value780, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1225_eq]
  try dsimp only
  rw [node1322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1323 input1224)).val
theorem input1324_def : input1324 = (.seq input1323 input1224) := by
  unfold input1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1323 output1224)).val
theorem output1324_def : output1324 = (.seq output1323 output1224) := by
  unfold output1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1324_skip : Flapjack.WordAlloc.isSkip output1324 = false := by
  rw [output1324_def]
  conv => lhs; cbv
  try rfl
theorem node1324_eq : Flapjack.WordAlloc.removeDeadStructural input1324 value735 value1 value2 = (output1324, value780, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1224_eq]
  try dsimp only
  rw [node1323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1324 input1223)).val
theorem input1325_def : input1325 = (.seq input1324 input1223) := by
  unfold input1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1324 output1223)).val
theorem output1325_def : output1325 = (.seq output1324 output1223) := by
  unfold output1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1325_skip : Flapjack.WordAlloc.isSkip output1325 = false := by
  rw [output1325_def]
  conv => lhs; cbv
  try rfl
theorem node1325_eq : Flapjack.WordAlloc.removeDeadStructural input1325 value734 value1 value2 = (output1325, value780, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1223_eq]
  try dsimp only
  rw [node1324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1325 input1222)).val
theorem input1326_def : input1326 = (.seq input1325 input1222) := by
  unfold input1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1325 output1222)).val
theorem output1326_def : output1326 = (.seq output1325 output1222) := by
  unfold output1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1326_skip : Flapjack.WordAlloc.isSkip output1326 = false := by
  rw [output1326_def]
  conv => lhs; cbv
  try rfl
theorem node1326_eq : Flapjack.WordAlloc.removeDeadStructural input1326 value733 value1 value2 = (output1326, value780, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1222_eq]
  try dsimp only
  rw [node1325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1326 input1221)).val
theorem input1327_def : input1327 = (.seq input1326 input1221) := by
  unfold input1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1326 output1221)).val
theorem output1327_def : output1327 = (.seq output1326 output1221) := by
  unfold output1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1327_skip : Flapjack.WordAlloc.isSkip output1327 = false := by
  rw [output1327_def]
  conv => lhs; cbv
  try rfl
theorem node1327_eq : Flapjack.WordAlloc.removeDeadStructural input1327 value732 value1 value2 = (output1327, value780, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1221_eq]
  try dsimp only
  rw [node1326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1327 input1220)).val
theorem input1328_def : input1328 = (.seq input1327 input1220) := by
  unfold input1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1327 output1220)).val
theorem output1328_def : output1328 = (.seq output1327 output1220) := by
  unfold output1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1328_skip : Flapjack.WordAlloc.isSkip output1328 = false := by
  rw [output1328_def]
  conv => lhs; cbv
  try rfl
theorem node1328_eq : Flapjack.WordAlloc.removeDeadStructural input1328 value729 value1 value2 = (output1328, value780, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1220_eq]
  try dsimp only
  rw [node1327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1328 input1215)).val
theorem input1329_def : input1329 = (.seq input1328 input1215) := by
  unfold input1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1328 output1215)).val
theorem output1329_def : output1329 = (.seq output1328 output1215) := by
  unfold output1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1329_skip : Flapjack.WordAlloc.isSkip output1329 = false := by
  rw [output1329_def]
  conv => lhs; cbv
  try rfl
theorem node1329_eq : Flapjack.WordAlloc.removeDeadStructural input1329 value729 value1 value2 = (output1329, value780, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1215_eq]
  try dsimp only
  rw [node1328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1329 input1214)).val
theorem input1330_def : input1330 = (.seq input1329 input1214) := by
  unfold input1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1329 output1214)).val
theorem output1330_def : output1330 = (.seq output1329 output1214) := by
  unfold output1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1330_skip : Flapjack.WordAlloc.isSkip output1330 = false := by
  rw [output1330_def]
  conv => lhs; cbv
  try rfl
theorem node1330_eq : Flapjack.WordAlloc.removeDeadStructural input1330 value728 value1 value2 = (output1330, value780, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1214_eq]
  try dsimp only
  rw [node1329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1330 input1213)).val
theorem input1331_def : input1331 = (.seq input1330 input1213) := by
  unfold input1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1330 output1213)).val
theorem output1331_def : output1331 = (.seq output1330 output1213) := by
  unfold output1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1331_skip : Flapjack.WordAlloc.isSkip output1331 = false := by
  rw [output1331_def]
  conv => lhs; cbv
  try rfl
theorem node1331_eq : Flapjack.WordAlloc.removeDeadStructural input1331 value727 value1 value2 = (output1331, value780, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1213_eq]
  try dsimp only
  rw [node1330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1331 input1212)).val
theorem input1332_def : input1332 = (.seq input1331 input1212) := by
  unfold input1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1331 output1212)).val
theorem output1332_def : output1332 = (.seq output1331 output1212) := by
  unfold output1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1332_skip : Flapjack.WordAlloc.isSkip output1332 = false := by
  rw [output1332_def]
  conv => lhs; cbv
  try rfl
theorem node1332_eq : Flapjack.WordAlloc.removeDeadStructural input1332 value448 value1 value2 = (output1332, value780, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1212_eq]
  try dsimp only
  rw [node1331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1332 input545)).val
theorem input1333_def : input1333 = (.seq input1332 input545) := by
  unfold input1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1332 output545)).val
theorem output1333_def : output1333 = (.seq output1332 output545) := by
  unfold output1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1333_skip : Flapjack.WordAlloc.isSkip output1333 = false := by
  rw [output1333_def]
  conv => lhs; cbv
  try rfl
theorem node1333_eq : Flapjack.WordAlloc.removeDeadStructural input1333 value448 value1 value2 = (output1333, value780, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node545_eq]
  try dsimp only
  rw [node1332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1333 input544)).val
theorem input1334_def : input1334 = (.seq input1333 input544) := by
  unfold input1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1333 output544)).val
theorem output1334_def : output1334 = (.seq output1333 output544) := by
  unfold output1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1334_skip : Flapjack.WordAlloc.isSkip output1334 = false := by
  rw [output1334_def]
  conv => lhs; cbv
  try rfl
theorem node1334_eq : Flapjack.WordAlloc.removeDeadStructural input1334 value447 value1 value2 = (output1334, value780, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node544_eq]
  try dsimp only
  rw [node1333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1334 input543)).val
theorem input1335_def : input1335 = (.seq input1334 input543) := by
  unfold input1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1334 output543)).val
theorem output1335_def : output1335 = (.seq output1334 output543) := by
  unfold output1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1335_skip : Flapjack.WordAlloc.isSkip output1335 = false := by
  rw [output1335_def]
  conv => lhs; cbv
  try rfl
theorem node1335_eq : Flapjack.WordAlloc.removeDeadStructural input1335 value446 value1 value2 = (output1335, value780, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  try dsimp only
  rw [node1334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1335 input542)).val
theorem input1336_def : input1336 = (.seq input1335 input542) := by
  unfold input1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1335 output542)).val
theorem output1336_def : output1336 = (.seq output1335 output542) := by
  unfold output1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1336_skip : Flapjack.WordAlloc.isSkip output1336 = false := by
  rw [output1336_def]
  conv => lhs; cbv
  try rfl
theorem node1336_eq : Flapjack.WordAlloc.removeDeadStructural input1336 value445 value1 value2 = (output1336, value780, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node542_eq]
  try dsimp only
  rw [node1335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1336 input541)).val
theorem input1337_def : input1337 = (.seq input1336 input541) := by
  unfold input1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1336 output541)).val
theorem output1337_def : output1337 = (.seq output1336 output541) := by
  unfold output1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1337_skip : Flapjack.WordAlloc.isSkip output1337 = false := by
  rw [output1337_def]
  conv => lhs; cbv
  try rfl
theorem node1337_eq : Flapjack.WordAlloc.removeDeadStructural input1337 value444 value1 value2 = (output1337, value780, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node541_eq]
  try dsimp only
  rw [node1336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1337 input540)).val
theorem input1338_def : input1338 = (.seq input1337 input540) := by
  unfold input1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1337 output540)).val
theorem output1338_def : output1338 = (.seq output1337 output540) := by
  unfold output1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1338_skip : Flapjack.WordAlloc.isSkip output1338 = false := by
  rw [output1338_def]
  conv => lhs; cbv
  try rfl
theorem node1338_eq : Flapjack.WordAlloc.removeDeadStructural input1338 value443 value1 value2 = (output1338, value780, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node540_eq]
  try dsimp only
  rw [node1337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1338 input539)).val
theorem input1339_def : input1339 = (.seq input1338 input539) := by
  unfold input1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1338 output539)).val
theorem output1339_def : output1339 = (.seq output1338 output539) := by
  unfold output1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1339_skip : Flapjack.WordAlloc.isSkip output1339 = false := by
  rw [output1339_def]
  conv => lhs; cbv
  try rfl
theorem node1339_eq : Flapjack.WordAlloc.removeDeadStructural input1339 value442 value1 value2 = (output1339, value780, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node539_eq]
  try dsimp only
  rw [node1338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1339 input538)).val
theorem input1340_def : input1340 = (.seq input1339 input538) := by
  unfold input1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1339 output538)).val
theorem output1340_def : output1340 = (.seq output1339 output538) := by
  unfold output1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1340_skip : Flapjack.WordAlloc.isSkip output1340 = false := by
  rw [output1340_def]
  conv => lhs; cbv
  try rfl
theorem node1340_eq : Flapjack.WordAlloc.removeDeadStructural input1340 value439 value1 value2 = (output1340, value780, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node538_eq]
  try dsimp only
  rw [node1339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1340 input533)).val
theorem input1341_def : input1341 = (.seq input1340 input533) := by
  unfold input1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1340 output533)).val
theorem output1341_def : output1341 = (.seq output1340 output533) := by
  unfold output1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1341_skip : Flapjack.WordAlloc.isSkip output1341 = false := by
  rw [output1341_def]
  conv => lhs; cbv
  try rfl
theorem node1341_eq : Flapjack.WordAlloc.removeDeadStructural input1341 value439 value1 value2 = (output1341, value780, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node533_eq]
  try dsimp only
  rw [node1340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1341 input532)).val
theorem input1342_def : input1342 = (.seq input1341 input532) := by
  unfold input1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1341 output532)).val
theorem output1342_def : output1342 = (.seq output1341 output532) := by
  unfold output1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1342_skip : Flapjack.WordAlloc.isSkip output1342 = false := by
  rw [output1342_def]
  conv => lhs; cbv
  try rfl
theorem node1342_eq : Flapjack.WordAlloc.removeDeadStructural input1342 value438 value1 value2 = (output1342, value780, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node532_eq]
  try dsimp only
  rw [node1341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1342 input531)).val
theorem input1343_def : input1343 = (.seq input1342 input531) := by
  unfold input1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1342 output531)).val
theorem output1343_def : output1343 = (.seq output1342 output531) := by
  unfold output1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1343_skip : Flapjack.WordAlloc.isSkip output1343 = false := by
  rw [output1343_def]
  conv => lhs; cbv
  try rfl
theorem node1343_eq : Flapjack.WordAlloc.removeDeadStructural input1343 value437 value1 value2 = (output1343, value780, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node531_eq]
  try dsimp only
  rw [node1342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1343 input530)).val
theorem input1344_def : input1344 = (.seq input1343 input530) := by
  unfold input1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1343 output530)).val
theorem output1344_def : output1344 = (.seq output1343 output530) := by
  unfold output1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1344_skip : Flapjack.WordAlloc.isSkip output1344 = false := by
  rw [output1344_def]
  conv => lhs; cbv
  try rfl
theorem node1344_eq : Flapjack.WordAlloc.removeDeadStructural input1344 value436 value1 value2 = (output1344, value780, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node530_eq]
  try dsimp only
  rw [node1343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1344 input529)).val
theorem input1345_def : input1345 = (.seq input1344 input529) := by
  unfold input1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1344 output529)).val
theorem output1345_def : output1345 = (.seq output1344 output529) := by
  unfold output1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1345_skip : Flapjack.WordAlloc.isSkip output1345 = false := by
  rw [output1345_def]
  conv => lhs; cbv
  try rfl
theorem node1345_eq : Flapjack.WordAlloc.removeDeadStructural input1345 value435 value1 value2 = (output1345, value780, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node529_eq]
  try dsimp only
  rw [node1344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1345 input528)).val
theorem input1346_def : input1346 = (.seq input1345 input528) := by
  unfold input1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1345 output528)).val
theorem output1346_def : output1346 = (.seq output1345 output528) := by
  unfold output1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1346_skip : Flapjack.WordAlloc.isSkip output1346 = false := by
  rw [output1346_def]
  conv => lhs; cbv
  try rfl
theorem node1346_eq : Flapjack.WordAlloc.removeDeadStructural input1346 value434 value1 value2 = (output1346, value780, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node528_eq]
  try dsimp only
  rw [node1345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1346 input527)).val
theorem input1347_def : input1347 = (.seq input1346 input527) := by
  unfold input1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1346 output527)).val
theorem output1347_def : output1347 = (.seq output1346 output527) := by
  unfold output1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1347_skip : Flapjack.WordAlloc.isSkip output1347 = false := by
  rw [output1347_def]
  conv => lhs; cbv
  try rfl
theorem node1347_eq : Flapjack.WordAlloc.removeDeadStructural input1347 value433 value1 value2 = (output1347, value780, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node527_eq]
  try dsimp only
  rw [node1346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1347 input526)).val
theorem input1348_def : input1348 = (.seq input1347 input526) := by
  unfold input1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1347 output526)).val
theorem output1348_def : output1348 = (.seq output1347 output526) := by
  unfold output1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1348_skip : Flapjack.WordAlloc.isSkip output1348 = false := by
  rw [output1348_def]
  conv => lhs; cbv
  try rfl
theorem node1348_eq : Flapjack.WordAlloc.removeDeadStructural input1348 value432 value1 value2 = (output1348, value780, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node526_eq]
  try dsimp only
  rw [node1347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1348 input525)).val
theorem input1349_def : input1349 = (.seq input1348 input525) := by
  unfold input1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1348 output525)).val
theorem output1349_def : output1349 = (.seq output1348 output525) := by
  unfold output1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1349_skip : Flapjack.WordAlloc.isSkip output1349 = false := by
  rw [output1349_def]
  conv => lhs; cbv
  try rfl
theorem node1349_eq : Flapjack.WordAlloc.removeDeadStructural input1349 value431 value1 value2 = (output1349, value780, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node525_eq]
  try dsimp only
  rw [node1348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1349 input524)).val
theorem input1350_def : input1350 = (.seq input1349 input524) := by
  unfold input1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1349 output524)).val
theorem output1350_def : output1350 = (.seq output1349 output524) := by
  unfold output1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1350_skip : Flapjack.WordAlloc.isSkip output1350 = false := by
  rw [output1350_def]
  conv => lhs; cbv
  try rfl
theorem node1350_eq : Flapjack.WordAlloc.removeDeadStructural input1350 value430 value1 value2 = (output1350, value780, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node524_eq]
  try dsimp only
  rw [node1349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1350 input523)).val
theorem input1351_def : input1351 = (.seq input1350 input523) := by
  unfold input1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1350 output523)).val
theorem output1351_def : output1351 = (.seq output1350 output523) := by
  unfold output1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1351_skip : Flapjack.WordAlloc.isSkip output1351 = false := by
  rw [output1351_def]
  conv => lhs; cbv
  try rfl
theorem node1351_eq : Flapjack.WordAlloc.removeDeadStructural input1351 value429 value1 value2 = (output1351, value780, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node1350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1351 input522)).val
theorem input1352_def : input1352 = (.seq input1351 input522) := by
  unfold input1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1351 output522)).val
theorem output1352_def : output1352 = (.seq output1351 output522) := by
  unfold output1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1352_skip : Flapjack.WordAlloc.isSkip output1352 = false := by
  rw [output1352_def]
  conv => lhs; cbv
  try rfl
theorem node1352_eq : Flapjack.WordAlloc.removeDeadStructural input1352 value428 value1 value2 = (output1352, value780, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node522_eq]
  try dsimp only
  rw [node1351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1352 input521)).val
theorem input1353_def : input1353 = (.seq input1352 input521) := by
  unfold input1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1352 output521)).val
theorem output1353_def : output1353 = (.seq output1352 output521) := by
  unfold output1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1353_skip : Flapjack.WordAlloc.isSkip output1353 = false := by
  rw [output1353_def]
  conv => lhs; cbv
  try rfl
theorem node1353_eq : Flapjack.WordAlloc.removeDeadStructural input1353 value427 value1 value2 = (output1353, value780, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node521_eq]
  try dsimp only
  rw [node1352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1353 input520)).val
theorem input1354_def : input1354 = (.seq input1353 input520) := by
  unfold input1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1353 output520)).val
theorem output1354_def : output1354 = (.seq output1353 output520) := by
  unfold output1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1354_skip : Flapjack.WordAlloc.isSkip output1354 = false := by
  rw [output1354_def]
  conv => lhs; cbv
  try rfl
theorem node1354_eq : Flapjack.WordAlloc.removeDeadStructural input1354 value424 value1 value2 = (output1354, value780, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node520_eq]
  try dsimp only
  rw [node1353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1354 input515)).val
theorem input1355_def : input1355 = (.seq input1354 input515) := by
  unfold input1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1354 output515)).val
theorem output1355_def : output1355 = (.seq output1354 output515) := by
  unfold output1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1355_skip : Flapjack.WordAlloc.isSkip output1355 = false := by
  rw [output1355_def]
  conv => lhs; cbv
  try rfl
theorem node1355_eq : Flapjack.WordAlloc.removeDeadStructural input1355 value424 value1 value2 = (output1355, value780, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node515_eq]
  try dsimp only
  rw [node1354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1355 input514)).val
theorem input1356_def : input1356 = (.seq input1355 input514) := by
  unfold input1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1355 output514)).val
theorem output1356_def : output1356 = (.seq output1355 output514) := by
  unfold output1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1356_skip : Flapjack.WordAlloc.isSkip output1356 = false := by
  rw [output1356_def]
  conv => lhs; cbv
  try rfl
theorem node1356_eq : Flapjack.WordAlloc.removeDeadStructural input1356 value423 value1 value2 = (output1356, value780, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node514_eq]
  try dsimp only
  rw [node1355_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1356 input513)).val
theorem input1357_def : input1357 = (.seq input1356 input513) := by
  unfold input1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1356 output513)).val
theorem output1357_def : output1357 = (.seq output1356 output513) := by
  unfold output1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1357_skip : Flapjack.WordAlloc.isSkip output1357 = false := by
  rw [output1357_def]
  conv => lhs; cbv
  try rfl
theorem node1357_eq : Flapjack.WordAlloc.removeDeadStructural input1357 value422 value1 value2 = (output1357, value780, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node513_eq]
  try dsimp only
  rw [node1356_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1357 input512)).val
theorem input1358_def : input1358 = (.seq input1357 input512) := by
  unfold input1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1357 output512)).val
theorem output1358_def : output1358 = (.seq output1357 output512) := by
  unfold output1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1358_skip : Flapjack.WordAlloc.isSkip output1358 = false := by
  rw [output1358_def]
  conv => lhs; cbv
  try rfl
theorem node1358_eq : Flapjack.WordAlloc.removeDeadStructural input1358 value421 value1 value2 = (output1358, value780, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node512_eq]
  try dsimp only
  rw [node1357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1358 input511)).val
theorem input1359_def : input1359 = (.seq input1358 input511) := by
  unfold input1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1358 output511)).val
theorem output1359_def : output1359 = (.seq output1358 output511) := by
  unfold output1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1359_skip : Flapjack.WordAlloc.isSkip output1359 = false := by
  rw [output1359_def]
  conv => lhs; cbv
  try rfl
theorem node1359_eq : Flapjack.WordAlloc.removeDeadStructural input1359 value420 value1 value2 = (output1359, value780, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node511_eq]
  try dsimp only
  rw [node1358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1359 input510)).val
theorem input1360_def : input1360 = (.seq input1359 input510) := by
  unfold input1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1359 output510)).val
theorem output1360_def : output1360 = (.seq output1359 output510) := by
  unfold output1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1360_skip : Flapjack.WordAlloc.isSkip output1360 = false := by
  rw [output1360_def]
  conv => lhs; cbv
  try rfl
theorem node1360_eq : Flapjack.WordAlloc.removeDeadStructural input1360 value419 value1 value2 = (output1360, value780, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node510_eq]
  try dsimp only
  rw [node1359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1360 input509)).val
theorem input1361_def : input1361 = (.seq input1360 input509) := by
  unfold input1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1360 output509)).val
theorem output1361_def : output1361 = (.seq output1360 output509) := by
  unfold output1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1361_skip : Flapjack.WordAlloc.isSkip output1361 = false := by
  rw [output1361_def]
  conv => lhs; cbv
  try rfl
theorem node1361_eq : Flapjack.WordAlloc.removeDeadStructural input1361 value418 value1 value2 = (output1361, value780, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node509_eq]
  try dsimp only
  rw [node1360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1361 input508)).val
theorem input1362_def : input1362 = (.seq input1361 input508) := by
  unfold input1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1361 output508)).val
theorem output1362_def : output1362 = (.seq output1361 output508) := by
  unfold output1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1362_skip : Flapjack.WordAlloc.isSkip output1362 = false := by
  rw [output1362_def]
  conv => lhs; cbv
  try rfl
theorem node1362_eq : Flapjack.WordAlloc.removeDeadStructural input1362 value417 value1 value2 = (output1362, value780, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node508_eq]
  try dsimp only
  rw [node1361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1362 input507)).val
theorem input1363_def : input1363 = (.seq input1362 input507) := by
  unfold input1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1362 output507)).val
theorem output1363_def : output1363 = (.seq output1362 output507) := by
  unfold output1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1363_skip : Flapjack.WordAlloc.isSkip output1363 = false := by
  rw [output1363_def]
  conv => lhs; cbv
  try rfl
theorem node1363_eq : Flapjack.WordAlloc.removeDeadStructural input1363 value416 value1 value2 = (output1363, value780, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  try dsimp only
  rw [node1362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1363 input506)).val
theorem input1364_def : input1364 = (.seq input1363 input506) := by
  unfold input1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1363 output506)).val
theorem output1364_def : output1364 = (.seq output1363 output506) := by
  unfold output1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1364_skip : Flapjack.WordAlloc.isSkip output1364 = false := by
  rw [output1364_def]
  conv => lhs; cbv
  try rfl
theorem node1364_eq : Flapjack.WordAlloc.removeDeadStructural input1364 value415 value1 value2 = (output1364, value780, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node506_eq]
  try dsimp only
  rw [node1363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1364 input505)).val
theorem input1365_def : input1365 = (.seq input1364 input505) := by
  unfold input1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1364 output505)).val
theorem output1365_def : output1365 = (.seq output1364 output505) := by
  unfold output1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1365_skip : Flapjack.WordAlloc.isSkip output1365 = false := by
  rw [output1365_def]
  conv => lhs; cbv
  try rfl
theorem node1365_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value414 value1 value2 = (output1365, value780, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node505_eq]
  try dsimp only
  rw [node1364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1365 input504)).val
theorem input1366_def : input1366 = (.seq input1365 input504) := by
  unfold input1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1365 output504)).val
theorem output1366_def : output1366 = (.seq output1365 output504) := by
  unfold output1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1366_skip : Flapjack.WordAlloc.isSkip output1366 = false := by
  rw [output1366_def]
  conv => lhs; cbv
  try rfl
theorem node1366_eq : Flapjack.WordAlloc.removeDeadStructural input1366 value413 value1 value2 = (output1366, value780, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node504_eq]
  try dsimp only
  rw [node1365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1366 input503)).val
theorem input1367_def : input1367 = (.seq input1366 input503) := by
  unfold input1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1366 output503)).val
theorem output1367_def : output1367 = (.seq output1366 output503) := by
  unfold output1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1367_skip : Flapjack.WordAlloc.isSkip output1367 = false := by
  rw [output1367_def]
  conv => lhs; cbv
  try rfl
theorem node1367_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value412 value1 value2 = (output1367, value780, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node503_eq]
  try dsimp only
  rw [node1366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1367 input502)).val
theorem input1368_def : input1368 = (.seq input1367 input502) := by
  unfold input1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1367 output502)).val
theorem output1368_def : output1368 = (.seq output1367 output502) := by
  unfold output1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1368_skip : Flapjack.WordAlloc.isSkip output1368 = false := by
  rw [output1368_def]
  conv => lhs; cbv
  try rfl
theorem node1368_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value409 value1 value2 = (output1368, value780, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node502_eq]
  try dsimp only
  rw [node1367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1368 input497)).val
theorem input1369_def : input1369 = (.seq input1368 input497) := by
  unfold input1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1368 output497)).val
theorem output1369_def : output1369 = (.seq output1368 output497) := by
  unfold output1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1369_skip : Flapjack.WordAlloc.isSkip output1369 = false := by
  rw [output1369_def]
  conv => lhs; cbv
  try rfl
theorem node1369_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value409 value1 value2 = (output1369, value780, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node497_eq]
  try dsimp only
  rw [node1368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1369 input496)).val
theorem input1370_def : input1370 = (.seq input1369 input496) := by
  unfold input1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1369 output496)).val
theorem output1370_def : output1370 = (.seq output1369 output496) := by
  unfold output1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1370_skip : Flapjack.WordAlloc.isSkip output1370 = false := by
  rw [output1370_def]
  conv => lhs; cbv
  try rfl
theorem node1370_eq : Flapjack.WordAlloc.removeDeadStructural input1370 value408 value1 value2 = (output1370, value780, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node496_eq]
  try dsimp only
  rw [node1369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1370 input495)).val
theorem input1371_def : input1371 = (.seq input1370 input495) := by
  unfold input1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1370 output495)).val
theorem output1371_def : output1371 = (.seq output1370 output495) := by
  unfold output1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1371_skip : Flapjack.WordAlloc.isSkip output1371 = false := by
  rw [output1371_def]
  conv => lhs; cbv
  try rfl
theorem node1371_eq : Flapjack.WordAlloc.removeDeadStructural input1371 value407 value1 value2 = (output1371, value780, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node495_eq]
  try dsimp only
  rw [node1370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1371 input494)).val
theorem input1372_def : input1372 = (.seq input1371 input494) := by
  unfold input1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1371 output494)).val
theorem output1372_def : output1372 = (.seq output1371 output494) := by
  unfold output1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1372_skip : Flapjack.WordAlloc.isSkip output1372 = false := by
  rw [output1372_def]
  conv => lhs; cbv
  try rfl
theorem node1372_eq : Flapjack.WordAlloc.removeDeadStructural input1372 value406 value1 value2 = (output1372, value780, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node494_eq]
  try dsimp only
  rw [node1371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1372 input493)).val
theorem input1373_def : input1373 = (.seq input1372 input493) := by
  unfold input1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1372 output493)).val
theorem output1373_def : output1373 = (.seq output1372 output493) := by
  unfold output1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1373_skip : Flapjack.WordAlloc.isSkip output1373 = false := by
  rw [output1373_def]
  conv => lhs; cbv
  try rfl
theorem node1373_eq : Flapjack.WordAlloc.removeDeadStructural input1373 value405 value1 value2 = (output1373, value780, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node493_eq]
  try dsimp only
  rw [node1372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1373 input492)).val
theorem input1374_def : input1374 = (.seq input1373 input492) := by
  unfold input1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1373 output492)).val
theorem output1374_def : output1374 = (.seq output1373 output492) := by
  unfold output1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1374_skip : Flapjack.WordAlloc.isSkip output1374 = false := by
  rw [output1374_def]
  conv => lhs; cbv
  try rfl
theorem node1374_eq : Flapjack.WordAlloc.removeDeadStructural input1374 value404 value1 value2 = (output1374, value780, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node492_eq]
  try dsimp only
  rw [node1373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1374 input491)).val
theorem input1375_def : input1375 = (.seq input1374 input491) := by
  unfold input1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1374 output491)).val
theorem output1375_def : output1375 = (.seq output1374 output491) := by
  unfold output1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1375_skip : Flapjack.WordAlloc.isSkip output1375 = false := by
  rw [output1375_def]
  conv => lhs; cbv
  try rfl
theorem node1375_eq : Flapjack.WordAlloc.removeDeadStructural input1375 value403 value1 value2 = (output1375, value780, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node491_eq]
  try dsimp only
  rw [node1374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1375 input490)).val
theorem input1376_def : input1376 = (.seq input1375 input490) := by
  unfold input1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1375 output490)).val
theorem output1376_def : output1376 = (.seq output1375 output490) := by
  unfold output1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1376_skip : Flapjack.WordAlloc.isSkip output1376 = false := by
  rw [output1376_def]
  conv => lhs; cbv
  try rfl
theorem node1376_eq : Flapjack.WordAlloc.removeDeadStructural input1376 value402 value1 value2 = (output1376, value780, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node490_eq]
  try dsimp only
  rw [node1375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1376 input489)).val
theorem input1377_def : input1377 = (.seq input1376 input489) := by
  unfold input1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1376 output489)).val
theorem output1377_def : output1377 = (.seq output1376 output489) := by
  unfold output1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1377_skip : Flapjack.WordAlloc.isSkip output1377 = false := by
  rw [output1377_def]
  conv => lhs; cbv
  try rfl
theorem node1377_eq : Flapjack.WordAlloc.removeDeadStructural input1377 value401 value1 value2 = (output1377, value780, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node489_eq]
  try dsimp only
  rw [node1376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1377 input488)).val
theorem input1378_def : input1378 = (.seq input1377 input488) := by
  unfold input1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1377 output488)).val
theorem output1378_def : output1378 = (.seq output1377 output488) := by
  unfold output1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1378_skip : Flapjack.WordAlloc.isSkip output1378 = false := by
  rw [output1378_def]
  conv => lhs; cbv
  try rfl
theorem node1378_eq : Flapjack.WordAlloc.removeDeadStructural input1378 value400 value1 value2 = (output1378, value780, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node488_eq]
  try dsimp only
  rw [node1377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1378 input487)).val
theorem input1379_def : input1379 = (.seq input1378 input487) := by
  unfold input1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1378 output487)).val
theorem output1379_def : output1379 = (.seq output1378 output487) := by
  unfold output1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1379_skip : Flapjack.WordAlloc.isSkip output1379 = false := by
  rw [output1379_def]
  conv => lhs; cbv
  try rfl
theorem node1379_eq : Flapjack.WordAlloc.removeDeadStructural input1379 value399 value1 value2 = (output1379, value780, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node487_eq]
  try dsimp only
  rw [node1378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1379 input486)).val
theorem input1380_def : input1380 = (.seq input1379 input486) := by
  unfold input1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1379 output486)).val
theorem output1380_def : output1380 = (.seq output1379 output486) := by
  unfold output1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1380_skip : Flapjack.WordAlloc.isSkip output1380 = false := by
  rw [output1380_def]
  conv => lhs; cbv
  try rfl
theorem node1380_eq : Flapjack.WordAlloc.removeDeadStructural input1380 value398 value1 value2 = (output1380, value780, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node486_eq]
  try dsimp only
  rw [node1379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1380 input485)).val
theorem input1381_def : input1381 = (.seq input1380 input485) := by
  unfold input1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1380 output485)).val
theorem output1381_def : output1381 = (.seq output1380 output485) := by
  unfold output1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1381_skip : Flapjack.WordAlloc.isSkip output1381 = false := by
  rw [output1381_def]
  conv => lhs; cbv
  try rfl
theorem node1381_eq : Flapjack.WordAlloc.removeDeadStructural input1381 value397 value1 value2 = (output1381, value780, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node485_eq]
  try dsimp only
  rw [node1380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1381 input484)).val
theorem input1382_def : input1382 = (.seq input1381 input484) := by
  unfold input1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1381 output484)).val
theorem output1382_def : output1382 = (.seq output1381 output484) := by
  unfold output1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1382_skip : Flapjack.WordAlloc.isSkip output1382 = false := by
  rw [output1382_def]
  conv => lhs; cbv
  try rfl
theorem node1382_eq : Flapjack.WordAlloc.removeDeadStructural input1382 value394 value1 value2 = (output1382, value780, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node484_eq]
  try dsimp only
  rw [node1381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1382 input479)).val
theorem input1383_def : input1383 = (.seq input1382 input479) := by
  unfold input1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1382 output479)).val
theorem output1383_def : output1383 = (.seq output1382 output479) := by
  unfold output1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1383_skip : Flapjack.WordAlloc.isSkip output1383 = false := by
  rw [output1383_def]
  conv => lhs; cbv
  try rfl
theorem node1383_eq : Flapjack.WordAlloc.removeDeadStructural input1383 value394 value1 value2 = (output1383, value780, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node479_eq]
  try dsimp only
  rw [node1382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1383 input478)).val
theorem input1384_def : input1384 = (.seq input1383 input478) := by
  unfold input1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1383 output478)).val
theorem output1384_def : output1384 = (.seq output1383 output478) := by
  unfold output1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1384_skip : Flapjack.WordAlloc.isSkip output1384 = false := by
  rw [output1384_def]
  conv => lhs; cbv
  try rfl
theorem node1384_eq : Flapjack.WordAlloc.removeDeadStructural input1384 value393 value1 value2 = (output1384, value780, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node478_eq]
  try dsimp only
  rw [node1383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1384 input477)).val
theorem input1385_def : input1385 = (.seq input1384 input477) := by
  unfold input1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1384 output477)).val
theorem output1385_def : output1385 = (.seq output1384 output477) := by
  unfold output1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1385_skip : Flapjack.WordAlloc.isSkip output1385 = false := by
  rw [output1385_def]
  conv => lhs; cbv
  try rfl
theorem node1385_eq : Flapjack.WordAlloc.removeDeadStructural input1385 value392 value1 value2 = (output1385, value780, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node477_eq]
  try dsimp only
  rw [node1384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1385 input476)).val
theorem input1386_def : input1386 = (.seq input1385 input476) := by
  unfold input1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1385 output476)).val
theorem output1386_def : output1386 = (.seq output1385 output476) := by
  unfold output1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1386_skip : Flapjack.WordAlloc.isSkip output1386 = false := by
  rw [output1386_def]
  conv => lhs; cbv
  try rfl
theorem node1386_eq : Flapjack.WordAlloc.removeDeadStructural input1386 value391 value1 value2 = (output1386, value780, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node476_eq]
  try dsimp only
  rw [node1385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1386 input475)).val
theorem input1387_def : input1387 = (.seq input1386 input475) := by
  unfold input1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1386 output475)).val
theorem output1387_def : output1387 = (.seq output1386 output475) := by
  unfold output1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1387_skip : Flapjack.WordAlloc.isSkip output1387 = false := by
  rw [output1387_def]
  conv => lhs; cbv
  try rfl
theorem node1387_eq : Flapjack.WordAlloc.removeDeadStructural input1387 value390 value1 value2 = (output1387, value780, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node475_eq]
  try dsimp only
  rw [node1386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1387 input474)).val
theorem input1388_def : input1388 = (.seq input1387 input474) := by
  unfold input1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1387 output474)).val
theorem output1388_def : output1388 = (.seq output1387 output474) := by
  unfold output1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1388_skip : Flapjack.WordAlloc.isSkip output1388 = false := by
  rw [output1388_def]
  conv => lhs; cbv
  try rfl
theorem node1388_eq : Flapjack.WordAlloc.removeDeadStructural input1388 value389 value1 value2 = (output1388, value780, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node474_eq]
  try dsimp only
  rw [node1387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1388 input473)).val
theorem input1389_def : input1389 = (.seq input1388 input473) := by
  unfold input1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1388 output473)).val
theorem output1389_def : output1389 = (.seq output1388 output473) := by
  unfold output1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1389_skip : Flapjack.WordAlloc.isSkip output1389 = false := by
  rw [output1389_def]
  conv => lhs; cbv
  try rfl
theorem node1389_eq : Flapjack.WordAlloc.removeDeadStructural input1389 value388 value1 value2 = (output1389, value780, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node473_eq]
  try dsimp only
  rw [node1388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1389 input472)).val
theorem input1390_def : input1390 = (.seq input1389 input472) := by
  unfold input1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1389 output472)).val
theorem output1390_def : output1390 = (.seq output1389 output472) := by
  unfold output1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1390_skip : Flapjack.WordAlloc.isSkip output1390 = false := by
  rw [output1390_def]
  conv => lhs; cbv
  try rfl
theorem node1390_eq : Flapjack.WordAlloc.removeDeadStructural input1390 value387 value1 value2 = (output1390, value780, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node472_eq]
  try dsimp only
  rw [node1389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1390 input471)).val
theorem input1391_def : input1391 = (.seq input1390 input471) := by
  unfold input1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1390 output471)).val
theorem output1391_def : output1391 = (.seq output1390 output471) := by
  unfold output1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1391_skip : Flapjack.WordAlloc.isSkip output1391 = false := by
  rw [output1391_def]
  conv => lhs; cbv
  try rfl
theorem node1391_eq : Flapjack.WordAlloc.removeDeadStructural input1391 value386 value1 value2 = (output1391, value780, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node471_eq]
  try dsimp only
  rw [node1390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1391 input470)).val
theorem input1392_def : input1392 = (.seq input1391 input470) := by
  unfold input1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1391 output470)).val
theorem output1392_def : output1392 = (.seq output1391 output470) := by
  unfold output1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1392_skip : Flapjack.WordAlloc.isSkip output1392 = false := by
  rw [output1392_def]
  conv => lhs; cbv
  try rfl
theorem node1392_eq : Flapjack.WordAlloc.removeDeadStructural input1392 value385 value1 value2 = (output1392, value780, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node470_eq]
  try dsimp only
  rw [node1391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1392 input469)).val
theorem input1393_def : input1393 = (.seq input1392 input469) := by
  unfold input1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1392 output469)).val
theorem output1393_def : output1393 = (.seq output1392 output469) := by
  unfold output1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1393_skip : Flapjack.WordAlloc.isSkip output1393 = false := by
  rw [output1393_def]
  conv => lhs; cbv
  try rfl
theorem node1393_eq : Flapjack.WordAlloc.removeDeadStructural input1393 value384 value1 value2 = (output1393, value780, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node469_eq]
  try dsimp only
  rw [node1392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1393 input468)).val
theorem input1394_def : input1394 = (.seq input1393 input468) := by
  unfold input1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1393 output468)).val
theorem output1394_def : output1394 = (.seq output1393 output468) := by
  unfold output1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1394_skip : Flapjack.WordAlloc.isSkip output1394 = false := by
  rw [output1394_def]
  conv => lhs; cbv
  try rfl
theorem node1394_eq : Flapjack.WordAlloc.removeDeadStructural input1394 value383 value1 value2 = (output1394, value780, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node468_eq]
  try dsimp only
  rw [node1393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1394 input467)).val
theorem input1395_def : input1395 = (.seq input1394 input467) := by
  unfold input1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1394 output467)).val
theorem output1395_def : output1395 = (.seq output1394 output467) := by
  unfold output1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1395_skip : Flapjack.WordAlloc.isSkip output1395 = false := by
  rw [output1395_def]
  conv => lhs; cbv
  try rfl
theorem node1395_eq : Flapjack.WordAlloc.removeDeadStructural input1395 value382 value1 value2 = (output1395, value780, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node467_eq]
  try dsimp only
  rw [node1394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1395 input466)).val
theorem input1396_def : input1396 = (.seq input1395 input466) := by
  unfold input1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1395 output466)).val
theorem output1396_def : output1396 = (.seq output1395 output466) := by
  unfold output1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1396_skip : Flapjack.WordAlloc.isSkip output1396 = false := by
  rw [output1396_def]
  conv => lhs; cbv
  try rfl
theorem node1396_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value379 value1 value2 = (output1396, value780, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node466_eq]
  try dsimp only
  rw [node1395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1396 input461)).val
theorem input1397_def : input1397 = (.seq input1396 input461) := by
  unfold input1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1396 output461)).val
theorem output1397_def : output1397 = (.seq output1396 output461) := by
  unfold output1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1397_skip : Flapjack.WordAlloc.isSkip output1397 = false := by
  rw [output1397_def]
  conv => lhs; cbv
  try rfl
theorem node1397_eq : Flapjack.WordAlloc.removeDeadStructural input1397 value379 value1 value2 = (output1397, value780, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node461_eq]
  try dsimp only
  rw [node1396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1397 input460)).val
theorem input1398_def : input1398 = (.seq input1397 input460) := by
  unfold input1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1397 output460)).val
theorem output1398_def : output1398 = (.seq output1397 output460) := by
  unfold output1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1398_skip : Flapjack.WordAlloc.isSkip output1398 = false := by
  rw [output1398_def]
  conv => lhs; cbv
  try rfl
theorem node1398_eq : Flapjack.WordAlloc.removeDeadStructural input1398 value378 value1 value2 = (output1398, value780, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node460_eq]
  try dsimp only
  rw [node1397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1398 input459)).val
theorem input1399_def : input1399 = (.seq input1398 input459) := by
  unfold input1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1398 output459)).val
theorem output1399_def : output1399 = (.seq output1398 output459) := by
  unfold output1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1399_skip : Flapjack.WordAlloc.isSkip output1399 = false := by
  rw [output1399_def]
  conv => lhs; cbv
  try rfl
theorem node1399_eq : Flapjack.WordAlloc.removeDeadStructural input1399 value377 value1 value2 = (output1399, value780, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node459_eq]
  try dsimp only
  rw [node1398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1399 input458)).val
theorem input1400_def : input1400 = (.seq input1399 input458) := by
  unfold input1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1399 output458)).val
theorem output1400_def : output1400 = (.seq output1399 output458) := by
  unfold output1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1400_skip : Flapjack.WordAlloc.isSkip output1400 = false := by
  rw [output1400_def]
  conv => lhs; cbv
  try rfl
theorem node1400_eq : Flapjack.WordAlloc.removeDeadStructural input1400 value376 value1 value2 = (output1400, value780, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node458_eq]
  try dsimp only
  rw [node1399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1400 input457)).val
theorem input1401_def : input1401 = (.seq input1400 input457) := by
  unfold input1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1400 output457)).val
theorem output1401_def : output1401 = (.seq output1400 output457) := by
  unfold output1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1401_skip : Flapjack.WordAlloc.isSkip output1401 = false := by
  rw [output1401_def]
  conv => lhs; cbv
  try rfl
theorem node1401_eq : Flapjack.WordAlloc.removeDeadStructural input1401 value375 value1 value2 = (output1401, value780, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node457_eq]
  try dsimp only
  rw [node1400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1401 input456)).val
theorem input1402_def : input1402 = (.seq input1401 input456) := by
  unfold input1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1401 output456)).val
theorem output1402_def : output1402 = (.seq output1401 output456) := by
  unfold output1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1402_skip : Flapjack.WordAlloc.isSkip output1402 = false := by
  rw [output1402_def]
  conv => lhs; cbv
  try rfl
theorem node1402_eq : Flapjack.WordAlloc.removeDeadStructural input1402 value374 value1 value2 = (output1402, value780, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node456_eq]
  try dsimp only
  rw [node1401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1402 input455)).val
theorem input1403_def : input1403 = (.seq input1402 input455) := by
  unfold input1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1402 output455)).val
theorem output1403_def : output1403 = (.seq output1402 output455) := by
  unfold output1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1403_skip : Flapjack.WordAlloc.isSkip output1403 = false := by
  rw [output1403_def]
  conv => lhs; cbv
  try rfl
theorem node1403_eq : Flapjack.WordAlloc.removeDeadStructural input1403 value373 value1 value2 = (output1403, value780, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node455_eq]
  try dsimp only
  rw [node1402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1403 input454)).val
theorem input1404_def : input1404 = (.seq input1403 input454) := by
  unfold input1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1403 output454)).val
theorem output1404_def : output1404 = (.seq output1403 output454) := by
  unfold output1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1404_skip : Flapjack.WordAlloc.isSkip output1404 = false := by
  rw [output1404_def]
  conv => lhs; cbv
  try rfl
theorem node1404_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value372 value1 value2 = (output1404, value780, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node454_eq]
  try dsimp only
  rw [node1403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1404 input453)).val
theorem input1405_def : input1405 = (.seq input1404 input453) := by
  unfold input1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1404 output453)).val
theorem output1405_def : output1405 = (.seq output1404 output453) := by
  unfold output1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1405_skip : Flapjack.WordAlloc.isSkip output1405 = false := by
  rw [output1405_def]
  conv => lhs; cbv
  try rfl
theorem node1405_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value371 value1 value2 = (output1405, value780, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node453_eq]
  try dsimp only
  rw [node1404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1405 input452)).val
theorem input1406_def : input1406 = (.seq input1405 input452) := by
  unfold input1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1405 output452)).val
theorem output1406_def : output1406 = (.seq output1405 output452) := by
  unfold output1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1406_skip : Flapjack.WordAlloc.isSkip output1406 = false := by
  rw [output1406_def]
  conv => lhs; cbv
  try rfl
theorem node1406_eq : Flapjack.WordAlloc.removeDeadStructural input1406 value370 value1 value2 = (output1406, value780, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node452_eq]
  try dsimp only
  rw [node1405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1406 input451)).val
theorem input1407_def : input1407 = (.seq input1406 input451) := by
  unfold input1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1406 output451)).val
theorem output1407_def : output1407 = (.seq output1406 output451) := by
  unfold output1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1407_skip : Flapjack.WordAlloc.isSkip output1407 = false := by
  rw [output1407_def]
  conv => lhs; cbv
  try rfl
theorem node1407_eq : Flapjack.WordAlloc.removeDeadStructural input1407 value369 value1 value2 = (output1407, value780, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node451_eq]
  try dsimp only
  rw [node1406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1407 input450)).val
theorem input1408_def : input1408 = (.seq input1407 input450) := by
  unfold input1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1407 output450)).val
theorem output1408_def : output1408 = (.seq output1407 output450) := by
  unfold output1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1408_skip : Flapjack.WordAlloc.isSkip output1408 = false := by
  rw [output1408_def]
  conv => lhs; cbv
  try rfl
theorem node1408_eq : Flapjack.WordAlloc.removeDeadStructural input1408 value368 value1 value2 = (output1408, value780, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node450_eq]
  try dsimp only
  rw [node1407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1408 input449)).val
theorem input1409_def : input1409 = (.seq input1408 input449) := by
  unfold input1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1408 output449)).val
theorem output1409_def : output1409 = (.seq output1408 output449) := by
  unfold output1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1409_skip : Flapjack.WordAlloc.isSkip output1409 = false := by
  rw [output1409_def]
  conv => lhs; cbv
  try rfl
theorem node1409_eq : Flapjack.WordAlloc.removeDeadStructural input1409 value367 value1 value2 = (output1409, value780, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node449_eq]
  try dsimp only
  rw [node1408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1409 input448)).val
theorem input1410_def : input1410 = (.seq input1409 input448) := by
  unfold input1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1409 output448)).val
theorem output1410_def : output1410 = (.seq output1409 output448) := by
  unfold output1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1410_skip : Flapjack.WordAlloc.isSkip output1410 = false := by
  rw [output1410_def]
  conv => lhs; cbv
  try rfl
theorem node1410_eq : Flapjack.WordAlloc.removeDeadStructural input1410 value364 value1 value2 = (output1410, value780, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node448_eq]
  try dsimp only
  rw [node1409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1410 input443)).val
theorem input1411_def : input1411 = (.seq input1410 input443) := by
  unfold input1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1410 output443)).val
theorem output1411_def : output1411 = (.seq output1410 output443) := by
  unfold output1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1411_skip : Flapjack.WordAlloc.isSkip output1411 = false := by
  rw [output1411_def]
  conv => lhs; cbv
  try rfl
theorem node1411_eq : Flapjack.WordAlloc.removeDeadStructural input1411 value364 value1 value2 = (output1411, value780, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node443_eq]
  try dsimp only
  rw [node1410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1411 input442)).val
theorem input1412_def : input1412 = (.seq input1411 input442) := by
  unfold input1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1411 output442)).val
theorem output1412_def : output1412 = (.seq output1411 output442) := by
  unfold output1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1412_skip : Flapjack.WordAlloc.isSkip output1412 = false := by
  rw [output1412_def]
  conv => lhs; cbv
  try rfl
theorem node1412_eq : Flapjack.WordAlloc.removeDeadStructural input1412 value363 value1 value2 = (output1412, value780, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node442_eq]
  try dsimp only
  rw [node1411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1412 input441)).val
theorem input1413_def : input1413 = (.seq input1412 input441) := by
  unfold input1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1412 output441)).val
theorem output1413_def : output1413 = (.seq output1412 output441) := by
  unfold output1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1413_skip : Flapjack.WordAlloc.isSkip output1413 = false := by
  rw [output1413_def]
  conv => lhs; cbv
  try rfl
theorem node1413_eq : Flapjack.WordAlloc.removeDeadStructural input1413 value362 value1 value2 = (output1413, value780, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node441_eq]
  try dsimp only
  rw [node1412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1413 input440)).val
theorem input1414_def : input1414 = (.seq input1413 input440) := by
  unfold input1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1413 output440)).val
theorem output1414_def : output1414 = (.seq output1413 output440) := by
  unfold output1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1414_skip : Flapjack.WordAlloc.isSkip output1414 = false := by
  rw [output1414_def]
  conv => lhs; cbv
  try rfl
theorem node1414_eq : Flapjack.WordAlloc.removeDeadStructural input1414 value361 value1 value2 = (output1414, value780, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node440_eq]
  try dsimp only
  rw [node1413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1414 input439)).val
theorem input1415_def : input1415 = (.seq input1414 input439) := by
  unfold input1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1414 output439)).val
theorem output1415_def : output1415 = (.seq output1414 output439) := by
  unfold output1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1415_skip : Flapjack.WordAlloc.isSkip output1415 = false := by
  rw [output1415_def]
  conv => lhs; cbv
  try rfl
theorem node1415_eq : Flapjack.WordAlloc.removeDeadStructural input1415 value360 value1 value2 = (output1415, value780, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node439_eq]
  try dsimp only
  rw [node1414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1415 input438)).val
theorem input1416_def : input1416 = (.seq input1415 input438) := by
  unfold input1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1415 output438)).val
theorem output1416_def : output1416 = (.seq output1415 output438) := by
  unfold output1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1416_skip : Flapjack.WordAlloc.isSkip output1416 = false := by
  rw [output1416_def]
  conv => lhs; cbv
  try rfl
theorem node1416_eq : Flapjack.WordAlloc.removeDeadStructural input1416 value359 value1 value2 = (output1416, value780, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node438_eq]
  try dsimp only
  rw [node1415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1416 input437)).val
theorem input1417_def : input1417 = (.seq input1416 input437) := by
  unfold input1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1416 output437)).val
theorem output1417_def : output1417 = (.seq output1416 output437) := by
  unfold output1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1417_skip : Flapjack.WordAlloc.isSkip output1417 = false := by
  rw [output1417_def]
  conv => lhs; cbv
  try rfl
theorem node1417_eq : Flapjack.WordAlloc.removeDeadStructural input1417 value358 value1 value2 = (output1417, value780, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node437_eq]
  try dsimp only
  rw [node1416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1417 input436)).val
theorem input1418_def : input1418 = (.seq input1417 input436) := by
  unfold input1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1417 output436)).val
theorem output1418_def : output1418 = (.seq output1417 output436) := by
  unfold output1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1418_skip : Flapjack.WordAlloc.isSkip output1418 = false := by
  rw [output1418_def]
  conv => lhs; cbv
  try rfl
theorem node1418_eq : Flapjack.WordAlloc.removeDeadStructural input1418 value357 value1 value2 = (output1418, value780, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node436_eq]
  try dsimp only
  rw [node1417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1418 input435)).val
theorem input1419_def : input1419 = (.seq input1418 input435) := by
  unfold input1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1418 output435)).val
theorem output1419_def : output1419 = (.seq output1418 output435) := by
  unfold output1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1419_skip : Flapjack.WordAlloc.isSkip output1419 = false := by
  rw [output1419_def]
  conv => lhs; cbv
  try rfl
theorem node1419_eq : Flapjack.WordAlloc.removeDeadStructural input1419 value356 value1 value2 = (output1419, value780, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node435_eq]
  try dsimp only
  rw [node1418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1419 input434)).val
theorem input1420_def : input1420 = (.seq input1419 input434) := by
  unfold input1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1419 output434)).val
theorem output1420_def : output1420 = (.seq output1419 output434) := by
  unfold output1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1420_skip : Flapjack.WordAlloc.isSkip output1420 = false := by
  rw [output1420_def]
  conv => lhs; cbv
  try rfl
theorem node1420_eq : Flapjack.WordAlloc.removeDeadStructural input1420 value355 value1 value2 = (output1420, value780, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node434_eq]
  try dsimp only
  rw [node1419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1420 input433)).val
theorem input1421_def : input1421 = (.seq input1420 input433) := by
  unfold input1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1420 output433)).val
theorem output1421_def : output1421 = (.seq output1420 output433) := by
  unfold output1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1421_skip : Flapjack.WordAlloc.isSkip output1421 = false := by
  rw [output1421_def]
  conv => lhs; cbv
  try rfl
theorem node1421_eq : Flapjack.WordAlloc.removeDeadStructural input1421 value354 value1 value2 = (output1421, value780, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node433_eq]
  try dsimp only
  rw [node1420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1421 input432)).val
theorem input1422_def : input1422 = (.seq input1421 input432) := by
  unfold input1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1421 output432)).val
theorem output1422_def : output1422 = (.seq output1421 output432) := by
  unfold output1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1422_skip : Flapjack.WordAlloc.isSkip output1422 = false := by
  rw [output1422_def]
  conv => lhs; cbv
  try rfl
theorem node1422_eq : Flapjack.WordAlloc.removeDeadStructural input1422 value353 value1 value2 = (output1422, value780, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node432_eq]
  try dsimp only
  rw [node1421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1422 input431)).val
theorem input1423_def : input1423 = (.seq input1422 input431) := by
  unfold input1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1422 output431)).val
theorem output1423_def : output1423 = (.seq output1422 output431) := by
  unfold output1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1423_skip : Flapjack.WordAlloc.isSkip output1423 = false := by
  rw [output1423_def]
  conv => lhs; cbv
  try rfl
theorem node1423_eq : Flapjack.WordAlloc.removeDeadStructural input1423 value352 value1 value2 = (output1423, value780, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node431_eq]
  try dsimp only
  rw [node1422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1423 input430)).val
theorem input1424_def : input1424 = (.seq input1423 input430) := by
  unfold input1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1423 output430)).val
theorem output1424_def : output1424 = (.seq output1423 output430) := by
  unfold output1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1424_skip : Flapjack.WordAlloc.isSkip output1424 = false := by
  rw [output1424_def]
  conv => lhs; cbv
  try rfl
theorem node1424_eq : Flapjack.WordAlloc.removeDeadStructural input1424 value349 value1 value2 = (output1424, value780, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node430_eq]
  try dsimp only
  rw [node1423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1424 input425)).val
theorem input1425_def : input1425 = (.seq input1424 input425) := by
  unfold input1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1424 output425)).val
theorem output1425_def : output1425 = (.seq output1424 output425) := by
  unfold output1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1425_skip : Flapjack.WordAlloc.isSkip output1425 = false := by
  rw [output1425_def]
  conv => lhs; cbv
  try rfl
theorem node1425_eq : Flapjack.WordAlloc.removeDeadStructural input1425 value349 value1 value2 = (output1425, value780, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node425_eq]
  try dsimp only
  rw [node1424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1425 input424)).val
theorem input1426_def : input1426 = (.seq input1425 input424) := by
  unfold input1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1425 output424)).val
theorem output1426_def : output1426 = (.seq output1425 output424) := by
  unfold output1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1426_skip : Flapjack.WordAlloc.isSkip output1426 = false := by
  rw [output1426_def]
  conv => lhs; cbv
  try rfl
theorem node1426_eq : Flapjack.WordAlloc.removeDeadStructural input1426 value348 value1 value2 = (output1426, value780, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node424_eq]
  try dsimp only
  rw [node1425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1426 input423)).val
theorem input1427_def : input1427 = (.seq input1426 input423) := by
  unfold input1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1426 output423)).val
theorem output1427_def : output1427 = (.seq output1426 output423) := by
  unfold output1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1427_skip : Flapjack.WordAlloc.isSkip output1427 = false := by
  rw [output1427_def]
  conv => lhs; cbv
  try rfl
theorem node1427_eq : Flapjack.WordAlloc.removeDeadStructural input1427 value347 value1 value2 = (output1427, value780, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node423_eq]
  try dsimp only
  rw [node1426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1427 input422)).val
theorem input1428_def : input1428 = (.seq input1427 input422) := by
  unfold input1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1427 output422)).val
theorem output1428_def : output1428 = (.seq output1427 output422) := by
  unfold output1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1428_skip : Flapjack.WordAlloc.isSkip output1428 = false := by
  rw [output1428_def]
  conv => lhs; cbv
  try rfl
theorem node1428_eq : Flapjack.WordAlloc.removeDeadStructural input1428 value346 value1 value2 = (output1428, value780, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node422_eq]
  try dsimp only
  rw [node1427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1428 input421)).val
theorem input1429_def : input1429 = (.seq input1428 input421) := by
  unfold input1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1428 output421)).val
theorem output1429_def : output1429 = (.seq output1428 output421) := by
  unfold output1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1429_skip : Flapjack.WordAlloc.isSkip output1429 = false := by
  rw [output1429_def]
  conv => lhs; cbv
  try rfl
theorem node1429_eq : Flapjack.WordAlloc.removeDeadStructural input1429 value345 value1 value2 = (output1429, value780, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node421_eq]
  try dsimp only
  rw [node1428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1429 input420)).val
theorem input1430_def : input1430 = (.seq input1429 input420) := by
  unfold input1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1429 output420)).val
theorem output1430_def : output1430 = (.seq output1429 output420) := by
  unfold output1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1430_skip : Flapjack.WordAlloc.isSkip output1430 = false := by
  rw [output1430_def]
  conv => lhs; cbv
  try rfl
theorem node1430_eq : Flapjack.WordAlloc.removeDeadStructural input1430 value344 value1 value2 = (output1430, value780, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node420_eq]
  try dsimp only
  rw [node1429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1430 input419)).val
theorem input1431_def : input1431 = (.seq input1430 input419) := by
  unfold input1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1430 output419)).val
theorem output1431_def : output1431 = (.seq output1430 output419) := by
  unfold output1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1431_skip : Flapjack.WordAlloc.isSkip output1431 = false := by
  rw [output1431_def]
  conv => lhs; cbv
  try rfl
theorem node1431_eq : Flapjack.WordAlloc.removeDeadStructural input1431 value343 value1 value2 = (output1431, value780, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node419_eq]
  try dsimp only
  rw [node1430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1431 input418)).val
theorem input1432_def : input1432 = (.seq input1431 input418) := by
  unfold input1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1431 output418)).val
theorem output1432_def : output1432 = (.seq output1431 output418) := by
  unfold output1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1432_skip : Flapjack.WordAlloc.isSkip output1432 = false := by
  rw [output1432_def]
  conv => lhs; cbv
  try rfl
theorem node1432_eq : Flapjack.WordAlloc.removeDeadStructural input1432 value342 value1 value2 = (output1432, value780, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node418_eq]
  try dsimp only
  rw [node1431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1432 input417)).val
theorem input1433_def : input1433 = (.seq input1432 input417) := by
  unfold input1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1432 output417)).val
theorem output1433_def : output1433 = (.seq output1432 output417) := by
  unfold output1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1433_skip : Flapjack.WordAlloc.isSkip output1433 = false := by
  rw [output1433_def]
  conv => lhs; cbv
  try rfl
theorem node1433_eq : Flapjack.WordAlloc.removeDeadStructural input1433 value341 value1 value2 = (output1433, value780, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node417_eq]
  try dsimp only
  rw [node1432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1433 input416)).val
theorem input1434_def : input1434 = (.seq input1433 input416) := by
  unfold input1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1433 output416)).val
theorem output1434_def : output1434 = (.seq output1433 output416) := by
  unfold output1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1434_skip : Flapjack.WordAlloc.isSkip output1434 = false := by
  rw [output1434_def]
  conv => lhs; cbv
  try rfl
theorem node1434_eq : Flapjack.WordAlloc.removeDeadStructural input1434 value340 value1 value2 = (output1434, value780, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node416_eq]
  try dsimp only
  rw [node1433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1434 input415)).val
theorem input1435_def : input1435 = (.seq input1434 input415) := by
  unfold input1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1434 output415)).val
theorem output1435_def : output1435 = (.seq output1434 output415) := by
  unfold output1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1435_skip : Flapjack.WordAlloc.isSkip output1435 = false := by
  rw [output1435_def]
  conv => lhs; cbv
  try rfl
theorem node1435_eq : Flapjack.WordAlloc.removeDeadStructural input1435 value339 value1 value2 = (output1435, value780, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node415_eq]
  try dsimp only
  rw [node1434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1435 input414)).val
theorem input1436_def : input1436 = (.seq input1435 input414) := by
  unfold input1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1435 output414)).val
theorem output1436_def : output1436 = (.seq output1435 output414) := by
  unfold output1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1436_skip : Flapjack.WordAlloc.isSkip output1436 = false := by
  rw [output1436_def]
  conv => lhs; cbv
  try rfl
theorem node1436_eq : Flapjack.WordAlloc.removeDeadStructural input1436 value338 value1 value2 = (output1436, value780, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node414_eq]
  try dsimp only
  rw [node1435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1436 input413)).val
theorem input1437_def : input1437 = (.seq input1436 input413) := by
  unfold input1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1436 output413)).val
theorem output1437_def : output1437 = (.seq output1436 output413) := by
  unfold output1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1437_skip : Flapjack.WordAlloc.isSkip output1437 = false := by
  rw [output1437_def]
  conv => lhs; cbv
  try rfl
theorem node1437_eq : Flapjack.WordAlloc.removeDeadStructural input1437 value337 value1 value2 = (output1437, value780, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node413_eq]
  try dsimp only
  rw [node1436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1437 input412)).val
theorem input1438_def : input1438 = (.seq input1437 input412) := by
  unfold input1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1437 output412)).val
theorem output1438_def : output1438 = (.seq output1437 output412) := by
  unfold output1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1438_skip : Flapjack.WordAlloc.isSkip output1438 = false := by
  rw [output1438_def]
  conv => lhs; cbv
  try rfl
theorem node1438_eq : Flapjack.WordAlloc.removeDeadStructural input1438 value334 value1 value2 = (output1438, value780, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node412_eq]
  try dsimp only
  rw [node1437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1438 input407)).val
theorem input1439_def : input1439 = (.seq input1438 input407) := by
  unfold input1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1438 output407)).val
theorem output1439_def : output1439 = (.seq output1438 output407) := by
  unfold output1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1439_skip : Flapjack.WordAlloc.isSkip output1439 = false := by
  rw [output1439_def]
  conv => lhs; cbv
  try rfl
theorem node1439_eq : Flapjack.WordAlloc.removeDeadStructural input1439 value334 value1 value2 = (output1439, value780, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node407_eq]
  try dsimp only
  rw [node1438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1439 input406)).val
theorem input1440_def : input1440 = (.seq input1439 input406) := by
  unfold input1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1439 output406)).val
theorem output1440_def : output1440 = (.seq output1439 output406) := by
  unfold output1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1440_skip : Flapjack.WordAlloc.isSkip output1440 = false := by
  rw [output1440_def]
  conv => lhs; cbv
  try rfl
theorem node1440_eq : Flapjack.WordAlloc.removeDeadStructural input1440 value333 value1 value2 = (output1440, value780, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node406_eq]
  try dsimp only
  rw [node1439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1440 input405)).val
theorem input1441_def : input1441 = (.seq input1440 input405) := by
  unfold input1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1440 output405)).val
theorem output1441_def : output1441 = (.seq output1440 output405) := by
  unfold output1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1441_skip : Flapjack.WordAlloc.isSkip output1441 = false := by
  rw [output1441_def]
  conv => lhs; cbv
  try rfl
theorem node1441_eq : Flapjack.WordAlloc.removeDeadStructural input1441 value332 value1 value2 = (output1441, value780, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node405_eq]
  try dsimp only
  rw [node1440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1441 input404)).val
theorem input1442_def : input1442 = (.seq input1441 input404) := by
  unfold input1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1441 output404)).val
theorem output1442_def : output1442 = (.seq output1441 output404) := by
  unfold output1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1442_skip : Flapjack.WordAlloc.isSkip output1442 = false := by
  rw [output1442_def]
  conv => lhs; cbv
  try rfl
theorem node1442_eq : Flapjack.WordAlloc.removeDeadStructural input1442 value331 value1 value2 = (output1442, value780, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node404_eq]
  try dsimp only
  rw [node1441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1442 input403)).val
theorem input1443_def : input1443 = (.seq input1442 input403) := by
  unfold input1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1442 output403)).val
theorem output1443_def : output1443 = (.seq output1442 output403) := by
  unfold output1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1443_skip : Flapjack.WordAlloc.isSkip output1443 = false := by
  rw [output1443_def]
  conv => lhs; cbv
  try rfl
theorem node1443_eq : Flapjack.WordAlloc.removeDeadStructural input1443 value330 value1 value2 = (output1443, value780, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node403_eq]
  try dsimp only
  rw [node1442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1443 input402)).val
theorem input1444_def : input1444 = (.seq input1443 input402) := by
  unfold input1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1443 output402)).val
theorem output1444_def : output1444 = (.seq output1443 output402) := by
  unfold output1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1444_skip : Flapjack.WordAlloc.isSkip output1444 = false := by
  rw [output1444_def]
  conv => lhs; cbv
  try rfl
theorem node1444_eq : Flapjack.WordAlloc.removeDeadStructural input1444 value329 value1 value2 = (output1444, value780, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node402_eq]
  try dsimp only
  rw [node1443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1444 input401)).val
theorem input1445_def : input1445 = (.seq input1444 input401) := by
  unfold input1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1444 output401)).val
theorem output1445_def : output1445 = (.seq output1444 output401) := by
  unfold output1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1445_skip : Flapjack.WordAlloc.isSkip output1445 = false := by
  rw [output1445_def]
  conv => lhs; cbv
  try rfl
theorem node1445_eq : Flapjack.WordAlloc.removeDeadStructural input1445 value328 value1 value2 = (output1445, value780, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node401_eq]
  try dsimp only
  rw [node1444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1445 input400)).val
theorem input1446_def : input1446 = (.seq input1445 input400) := by
  unfold input1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1445 output400)).val
theorem output1446_def : output1446 = (.seq output1445 output400) := by
  unfold output1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1446_skip : Flapjack.WordAlloc.isSkip output1446 = false := by
  rw [output1446_def]
  conv => lhs; cbv
  try rfl
theorem node1446_eq : Flapjack.WordAlloc.removeDeadStructural input1446 value327 value1 value2 = (output1446, value780, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node400_eq]
  try dsimp only
  rw [node1445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1446 input399)).val
theorem input1447_def : input1447 = (.seq input1446 input399) := by
  unfold input1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1446 output399)).val
theorem output1447_def : output1447 = (.seq output1446 output399) := by
  unfold output1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1447_skip : Flapjack.WordAlloc.isSkip output1447 = false := by
  rw [output1447_def]
  conv => lhs; cbv
  try rfl
theorem node1447_eq : Flapjack.WordAlloc.removeDeadStructural input1447 value326 value1 value2 = (output1447, value780, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node399_eq]
  try dsimp only
  rw [node1446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1447 input398)).val
theorem input1448_def : input1448 = (.seq input1447 input398) := by
  unfold input1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1447 output398)).val
theorem output1448_def : output1448 = (.seq output1447 output398) := by
  unfold output1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1448_skip : Flapjack.WordAlloc.isSkip output1448 = false := by
  rw [output1448_def]
  conv => lhs; cbv
  try rfl
theorem node1448_eq : Flapjack.WordAlloc.removeDeadStructural input1448 value325 value1 value2 = (output1448, value780, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node398_eq]
  try dsimp only
  rw [node1447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1448 input397)).val
theorem input1449_def : input1449 = (.seq input1448 input397) := by
  unfold input1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1448 output397)).val
theorem output1449_def : output1449 = (.seq output1448 output397) := by
  unfold output1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1449_skip : Flapjack.WordAlloc.isSkip output1449 = false := by
  rw [output1449_def]
  conv => lhs; cbv
  try rfl
theorem node1449_eq : Flapjack.WordAlloc.removeDeadStructural input1449 value324 value1 value2 = (output1449, value780, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node397_eq]
  try dsimp only
  rw [node1448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1449 input396)).val
theorem input1450_def : input1450 = (.seq input1449 input396) := by
  unfold input1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1449 output396)).val
theorem output1450_def : output1450 = (.seq output1449 output396) := by
  unfold output1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1450_skip : Flapjack.WordAlloc.isSkip output1450 = false := by
  rw [output1450_def]
  conv => lhs; cbv
  try rfl
theorem node1450_eq : Flapjack.WordAlloc.removeDeadStructural input1450 value323 value1 value2 = (output1450, value780, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node396_eq]
  try dsimp only
  rw [node1449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1450 input395)).val
theorem input1451_def : input1451 = (.seq input1450 input395) := by
  unfold input1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1450 output395)).val
theorem output1451_def : output1451 = (.seq output1450 output395) := by
  unfold output1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1451_skip : Flapjack.WordAlloc.isSkip output1451 = false := by
  rw [output1451_def]
  conv => lhs; cbv
  try rfl
theorem node1451_eq : Flapjack.WordAlloc.removeDeadStructural input1451 value322 value1 value2 = (output1451, value780, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node395_eq]
  try dsimp only
  rw [node1450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1451 input394)).val
theorem input1452_def : input1452 = (.seq input1451 input394) := by
  unfold input1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1451 output394)).val
theorem output1452_def : output1452 = (.seq output1451 output394) := by
  unfold output1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1452_skip : Flapjack.WordAlloc.isSkip output1452 = false := by
  rw [output1452_def]
  conv => lhs; cbv
  try rfl
theorem node1452_eq : Flapjack.WordAlloc.removeDeadStructural input1452 value319 value1 value2 = (output1452, value780, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node394_eq]
  try dsimp only
  rw [node1451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1452 input389)).val
theorem input1453_def : input1453 = (.seq input1452 input389) := by
  unfold input1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1452 output389)).val
theorem output1453_def : output1453 = (.seq output1452 output389) := by
  unfold output1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1453_skip : Flapjack.WordAlloc.isSkip output1453 = false := by
  rw [output1453_def]
  conv => lhs; cbv
  try rfl
theorem node1453_eq : Flapjack.WordAlloc.removeDeadStructural input1453 value319 value1 value2 = (output1453, value780, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node389_eq]
  try dsimp only
  rw [node1452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1453 input388)).val
theorem input1454_def : input1454 = (.seq input1453 input388) := by
  unfold input1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1453 output388)).val
theorem output1454_def : output1454 = (.seq output1453 output388) := by
  unfold output1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1454_skip : Flapjack.WordAlloc.isSkip output1454 = false := by
  rw [output1454_def]
  conv => lhs; cbv
  try rfl
theorem node1454_eq : Flapjack.WordAlloc.removeDeadStructural input1454 value318 value1 value2 = (output1454, value780, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node388_eq]
  try dsimp only
  rw [node1453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1454 input387)).val
theorem input1455_def : input1455 = (.seq input1454 input387) := by
  unfold input1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1454 output387)).val
theorem output1455_def : output1455 = (.seq output1454 output387) := by
  unfold output1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1455_skip : Flapjack.WordAlloc.isSkip output1455 = false := by
  rw [output1455_def]
  conv => lhs; cbv
  try rfl
theorem node1455_eq : Flapjack.WordAlloc.removeDeadStructural input1455 value317 value1 value2 = (output1455, value780, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node387_eq]
  try dsimp only
  rw [node1454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1455 input386)).val
theorem input1456_def : input1456 = (.seq input1455 input386) := by
  unfold input1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1455 output386)).val
theorem output1456_def : output1456 = (.seq output1455 output386) := by
  unfold output1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1456_skip : Flapjack.WordAlloc.isSkip output1456 = false := by
  rw [output1456_def]
  conv => lhs; cbv
  try rfl
theorem node1456_eq : Flapjack.WordAlloc.removeDeadStructural input1456 value316 value1 value2 = (output1456, value780, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node386_eq]
  try dsimp only
  rw [node1455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1456 input385)).val
theorem input1457_def : input1457 = (.seq input1456 input385) := by
  unfold input1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1456 output385)).val
theorem output1457_def : output1457 = (.seq output1456 output385) := by
  unfold output1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1457_skip : Flapjack.WordAlloc.isSkip output1457 = false := by
  rw [output1457_def]
  conv => lhs; cbv
  try rfl
theorem node1457_eq : Flapjack.WordAlloc.removeDeadStructural input1457 value315 value1 value2 = (output1457, value780, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node385_eq]
  try dsimp only
  rw [node1456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1457 input384)).val
theorem input1458_def : input1458 = (.seq input1457 input384) := by
  unfold input1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1457 output384)).val
theorem output1458_def : output1458 = (.seq output1457 output384) := by
  unfold output1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1458_skip : Flapjack.WordAlloc.isSkip output1458 = false := by
  rw [output1458_def]
  conv => lhs; cbv
  try rfl
theorem node1458_eq : Flapjack.WordAlloc.removeDeadStructural input1458 value314 value1 value2 = (output1458, value780, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node384_eq]
  try dsimp only
  rw [node1457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1458 input383)).val
theorem input1459_def : input1459 = (.seq input1458 input383) := by
  unfold input1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1458 output383)).val
theorem output1459_def : output1459 = (.seq output1458 output383) := by
  unfold output1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1459_skip : Flapjack.WordAlloc.isSkip output1459 = false := by
  rw [output1459_def]
  conv => lhs; cbv
  try rfl
theorem node1459_eq : Flapjack.WordAlloc.removeDeadStructural input1459 value313 value1 value2 = (output1459, value780, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node383_eq]
  try dsimp only
  rw [node1458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1459 input382)).val
theorem input1460_def : input1460 = (.seq input1459 input382) := by
  unfold input1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1459 output382)).val
theorem output1460_def : output1460 = (.seq output1459 output382) := by
  unfold output1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1460_skip : Flapjack.WordAlloc.isSkip output1460 = false := by
  rw [output1460_def]
  conv => lhs; cbv
  try rfl
theorem node1460_eq : Flapjack.WordAlloc.removeDeadStructural input1460 value310 value1 value2 = (output1460, value780, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node382_eq]
  try dsimp only
  rw [node1459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1460 input377)).val
theorem input1461_def : input1461 = (.seq input1460 input377) := by
  unfold input1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1460 output377)).val
theorem output1461_def : output1461 = (.seq output1460 output377) := by
  unfold output1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1461_skip : Flapjack.WordAlloc.isSkip output1461 = false := by
  rw [output1461_def]
  conv => lhs; cbv
  try rfl
theorem node1461_eq : Flapjack.WordAlloc.removeDeadStructural input1461 value310 value1 value2 = (output1461, value780, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node377_eq]
  try dsimp only
  rw [node1460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1461 input376)).val
theorem input1462_def : input1462 = (.seq input1461 input376) := by
  unfold input1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1461 output376)).val
theorem output1462_def : output1462 = (.seq output1461 output376) := by
  unfold output1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1462_skip : Flapjack.WordAlloc.isSkip output1462 = false := by
  rw [output1462_def]
  conv => lhs; cbv
  try rfl
theorem node1462_eq : Flapjack.WordAlloc.removeDeadStructural input1462 value309 value1 value2 = (output1462, value780, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node376_eq]
  try dsimp only
  rw [node1461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1462 input375)).val
theorem input1463_def : input1463 = (.seq input1462 input375) := by
  unfold input1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1462 output375)).val
theorem output1463_def : output1463 = (.seq output1462 output375) := by
  unfold output1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1463_skip : Flapjack.WordAlloc.isSkip output1463 = false := by
  rw [output1463_def]
  conv => lhs; cbv
  try rfl
theorem node1463_eq : Flapjack.WordAlloc.removeDeadStructural input1463 value308 value1 value2 = (output1463, value780, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node375_eq]
  try dsimp only
  rw [node1462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1463 input374)).val
theorem input1464_def : input1464 = (.seq input1463 input374) := by
  unfold input1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1463 output374)).val
theorem output1464_def : output1464 = (.seq output1463 output374) := by
  unfold output1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1464_skip : Flapjack.WordAlloc.isSkip output1464 = false := by
  rw [output1464_def]
  conv => lhs; cbv
  try rfl
theorem node1464_eq : Flapjack.WordAlloc.removeDeadStructural input1464 value307 value1 value2 = (output1464, value780, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node374_eq]
  try dsimp only
  rw [node1463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1464 input373)).val
theorem input1465_def : input1465 = (.seq input1464 input373) := by
  unfold input1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1464 output373)).val
theorem output1465_def : output1465 = (.seq output1464 output373) := by
  unfold output1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1465_skip : Flapjack.WordAlloc.isSkip output1465 = false := by
  rw [output1465_def]
  conv => lhs; cbv
  try rfl
theorem node1465_eq : Flapjack.WordAlloc.removeDeadStructural input1465 value306 value1 value2 = (output1465, value780, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node1464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1465 input372)).val
theorem input1466_def : input1466 = (.seq input1465 input372) := by
  unfold input1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1465 output372)).val
theorem output1466_def : output1466 = (.seq output1465 output372) := by
  unfold output1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1466_skip : Flapjack.WordAlloc.isSkip output1466 = false := by
  rw [output1466_def]
  conv => lhs; cbv
  try rfl
theorem node1466_eq : Flapjack.WordAlloc.removeDeadStructural input1466 value305 value1 value2 = (output1466, value780, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node372_eq]
  try dsimp only
  rw [node1465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1466 input371)).val
theorem input1467_def : input1467 = (.seq input1466 input371) := by
  unfold input1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1466 output371)).val
theorem output1467_def : output1467 = (.seq output1466 output371) := by
  unfold output1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1467_skip : Flapjack.WordAlloc.isSkip output1467 = false := by
  rw [output1467_def]
  conv => lhs; cbv
  try rfl
theorem node1467_eq : Flapjack.WordAlloc.removeDeadStructural input1467 value304 value1 value2 = (output1467, value780, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node371_eq]
  try dsimp only
  rw [node1466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1467 input370)).val
theorem input1468_def : input1468 = (.seq input1467 input370) := by
  unfold input1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1467 output370)).val
theorem output1468_def : output1468 = (.seq output1467 output370) := by
  unfold output1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1468_skip : Flapjack.WordAlloc.isSkip output1468 = false := by
  rw [output1468_def]
  conv => lhs; cbv
  try rfl
theorem node1468_eq : Flapjack.WordAlloc.removeDeadStructural input1468 value303 value1 value2 = (output1468, value780, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node370_eq]
  try dsimp only
  rw [node1467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1468 input369)).val
theorem input1469_def : input1469 = (.seq input1468 input369) := by
  unfold input1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1468 output369)).val
theorem output1469_def : output1469 = (.seq output1468 output369) := by
  unfold output1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1469_skip : Flapjack.WordAlloc.isSkip output1469 = false := by
  rw [output1469_def]
  conv => lhs; cbv
  try rfl
theorem node1469_eq : Flapjack.WordAlloc.removeDeadStructural input1469 value302 value1 value2 = (output1469, value780, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node369_eq]
  try dsimp only
  rw [node1468_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1469 input368)).val
theorem input1470_def : input1470 = (.seq input1469 input368) := by
  unfold input1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1469 output368)).val
theorem output1470_def : output1470 = (.seq output1469 output368) := by
  unfold output1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1470_skip : Flapjack.WordAlloc.isSkip output1470 = false := by
  rw [output1470_def]
  conv => lhs; cbv
  try rfl
theorem node1470_eq : Flapjack.WordAlloc.removeDeadStructural input1470 value301 value1 value2 = (output1470, value780, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node368_eq]
  try dsimp only
  rw [node1469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1470 input367)).val
theorem input1471_def : input1471 = (.seq input1470 input367) := by
  unfold input1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1470 output367)).val
theorem output1471_def : output1471 = (.seq output1470 output367) := by
  unfold output1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1471_skip : Flapjack.WordAlloc.isSkip output1471 = false := by
  rw [output1471_def]
  conv => lhs; cbv
  try rfl
theorem node1471_eq : Flapjack.WordAlloc.removeDeadStructural input1471 value300 value1 value2 = (output1471, value780, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node367_eq]
  try dsimp only
  rw [node1470_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1471 input366)).val
theorem input1472_def : input1472 = (.seq input1471 input366) := by
  unfold input1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1471 output366)).val
theorem output1472_def : output1472 = (.seq output1471 output366) := by
  unfold output1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1472_skip : Flapjack.WordAlloc.isSkip output1472 = false := by
  rw [output1472_def]
  conv => lhs; cbv
  try rfl
theorem node1472_eq : Flapjack.WordAlloc.removeDeadStructural input1472 value299 value1 value2 = (output1472, value780, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node366_eq]
  try dsimp only
  rw [node1471_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1472 input365)).val
theorem input1473_def : input1473 = (.seq input1472 input365) := by
  unfold input1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1472 output365)).val
theorem output1473_def : output1473 = (.seq output1472 output365) := by
  unfold output1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1473_skip : Flapjack.WordAlloc.isSkip output1473 = false := by
  rw [output1473_def]
  conv => lhs; cbv
  try rfl
theorem node1473_eq : Flapjack.WordAlloc.removeDeadStructural input1473 value298 value1 value2 = (output1473, value780, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  try dsimp only
  rw [node1472_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1473 input364)).val
theorem input1474_def : input1474 = (.seq input1473 input364) := by
  unfold input1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1473 output364)).val
theorem output1474_def : output1474 = (.seq output1473 output364) := by
  unfold output1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1474_skip : Flapjack.WordAlloc.isSkip output1474 = false := by
  rw [output1474_def]
  conv => lhs; cbv
  try rfl
theorem node1474_eq : Flapjack.WordAlloc.removeDeadStructural input1474 value295 value1 value2 = (output1474, value780, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node364_eq]
  try dsimp only
  rw [node1473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1474 input359)).val
theorem input1475_def : input1475 = (.seq input1474 input359) := by
  unfold input1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1474 output359)).val
theorem output1475_def : output1475 = (.seq output1474 output359) := by
  unfold output1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1475_skip : Flapjack.WordAlloc.isSkip output1475 = false := by
  rw [output1475_def]
  conv => lhs; cbv
  try rfl
theorem node1475_eq : Flapjack.WordAlloc.removeDeadStructural input1475 value295 value1 value2 = (output1475, value780, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node359_eq]
  try dsimp only
  rw [node1474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1475 input358)).val
theorem input1476_def : input1476 = (.seq input1475 input358) := by
  unfold input1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1475 output358)).val
theorem output1476_def : output1476 = (.seq output1475 output358) := by
  unfold output1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1476_skip : Flapjack.WordAlloc.isSkip output1476 = false := by
  rw [output1476_def]
  conv => lhs; cbv
  try rfl
theorem node1476_eq : Flapjack.WordAlloc.removeDeadStructural input1476 value294 value1 value2 = (output1476, value780, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node358_eq]
  try dsimp only
  rw [node1475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1476 input357)).val
theorem input1477_def : input1477 = (.seq input1476 input357) := by
  unfold input1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1476 output357)).val
theorem output1477_def : output1477 = (.seq output1476 output357) := by
  unfold output1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1477_skip : Flapjack.WordAlloc.isSkip output1477 = false := by
  rw [output1477_def]
  conv => lhs; cbv
  try rfl
theorem node1477_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value293 value1 value2 = (output1477, value780, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node357_eq]
  try dsimp only
  rw [node1476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1477 input356)).val
theorem input1478_def : input1478 = (.seq input1477 input356) := by
  unfold input1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1477 output356)).val
theorem output1478_def : output1478 = (.seq output1477 output356) := by
  unfold output1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1478_skip : Flapjack.WordAlloc.isSkip output1478 = false := by
  rw [output1478_def]
  conv => lhs; cbv
  try rfl
theorem node1478_eq : Flapjack.WordAlloc.removeDeadStructural input1478 value292 value1 value2 = (output1478, value780, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node356_eq]
  try dsimp only
  rw [node1477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1478 input355)).val
theorem input1479_def : input1479 = (.seq input1478 input355) := by
  unfold input1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1478 output355)).val
theorem output1479_def : output1479 = (.seq output1478 output355) := by
  unfold output1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1479_skip : Flapjack.WordAlloc.isSkip output1479 = false := by
  rw [output1479_def]
  conv => lhs; cbv
  try rfl
theorem node1479_eq : Flapjack.WordAlloc.removeDeadStructural input1479 value291 value1 value2 = (output1479, value780, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  try dsimp only
  rw [node1478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1479 input354)).val
theorem input1480_def : input1480 = (.seq input1479 input354) := by
  unfold input1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1479 output354)).val
theorem output1480_def : output1480 = (.seq output1479 output354) := by
  unfold output1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1480_skip : Flapjack.WordAlloc.isSkip output1480 = false := by
  rw [output1480_def]
  conv => lhs; cbv
  try rfl
theorem node1480_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value290 value1 value2 = (output1480, value780, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node354_eq]
  try dsimp only
  rw [node1479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1480 input353)).val
theorem input1481_def : input1481 = (.seq input1480 input353) := by
  unfold input1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1480 output353)).val
theorem output1481_def : output1481 = (.seq output1480 output353) := by
  unfold output1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1481_skip : Flapjack.WordAlloc.isSkip output1481 = false := by
  rw [output1481_def]
  conv => lhs; cbv
  try rfl
theorem node1481_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value289 value1 value2 = (output1481, value780, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  try dsimp only
  rw [node1480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1481 input352)).val
theorem input1482_def : input1482 = (.seq input1481 input352) := by
  unfold input1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1481 output352)).val
theorem output1482_def : output1482 = (.seq output1481 output352) := by
  unfold output1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1482_skip : Flapjack.WordAlloc.isSkip output1482 = false := by
  rw [output1482_def]
  conv => lhs; cbv
  try rfl
theorem node1482_eq : Flapjack.WordAlloc.removeDeadStructural input1482 value286 value1 value2 = (output1482, value780, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node1481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1482 input347)).val
theorem input1483_def : input1483 = (.seq input1482 input347) := by
  unfold input1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1482 output347)).val
theorem output1483_def : output1483 = (.seq output1482 output347) := by
  unfold output1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1483_skip : Flapjack.WordAlloc.isSkip output1483 = false := by
  rw [output1483_def]
  conv => lhs; cbv
  try rfl
theorem node1483_eq : Flapjack.WordAlloc.removeDeadStructural input1483 value286 value1 value2 = (output1483, value780, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node347_eq]
  try dsimp only
  rw [node1482_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1483 input346)).val
theorem input1484_def : input1484 = (.seq input1483 input346) := by
  unfold input1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1483 output346)).val
theorem output1484_def : output1484 = (.seq output1483 output346) := by
  unfold output1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1484_skip : Flapjack.WordAlloc.isSkip output1484 = false := by
  rw [output1484_def]
  conv => lhs; cbv
  try rfl
theorem node1484_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value285 value1 value2 = (output1484, value780, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node346_eq]
  try dsimp only
  rw [node1483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1484 input345)).val
theorem input1485_def : input1485 = (.seq input1484 input345) := by
  unfold input1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1484 output345)).val
theorem output1485_def : output1485 = (.seq output1484 output345) := by
  unfold output1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1485_skip : Flapjack.WordAlloc.isSkip output1485 = false := by
  rw [output1485_def]
  conv => lhs; cbv
  try rfl
theorem node1485_eq : Flapjack.WordAlloc.removeDeadStructural input1485 value284 value1 value2 = (output1485, value780, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node345_eq]
  try dsimp only
  rw [node1484_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1485 input344)).val
theorem input1486_def : input1486 = (.seq input1485 input344) := by
  unfold input1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1485 output344)).val
theorem output1486_def : output1486 = (.seq output1485 output344) := by
  unfold output1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1486_skip : Flapjack.WordAlloc.isSkip output1486 = false := by
  rw [output1486_def]
  conv => lhs; cbv
  try rfl
theorem node1486_eq : Flapjack.WordAlloc.removeDeadStructural input1486 value283 value1 value2 = (output1486, value780, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node344_eq]
  try dsimp only
  rw [node1485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1486 input343)).val
theorem input1487_def : input1487 = (.seq input1486 input343) := by
  unfold input1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1486 output343)).val
theorem output1487_def : output1487 = (.seq output1486 output343) := by
  unfold output1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1487_skip : Flapjack.WordAlloc.isSkip output1487 = false := by
  rw [output1487_def]
  conv => lhs; cbv
  try rfl
theorem node1487_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value282 value1 value2 = (output1487, value780, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node343_eq]
  try dsimp only
  rw [node1486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1487 input342)).val
theorem input1488_def : input1488 = (.seq input1487 input342) := by
  unfold input1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1487 output342)).val
theorem output1488_def : output1488 = (.seq output1487 output342) := by
  unfold output1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1488_skip : Flapjack.WordAlloc.isSkip output1488 = false := by
  rw [output1488_def]
  conv => lhs; cbv
  try rfl
theorem node1488_eq : Flapjack.WordAlloc.removeDeadStructural input1488 value281 value1 value2 = (output1488, value780, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node1487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1488 input341)).val
theorem input1489_def : input1489 = (.seq input1488 input341) := by
  unfold input1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1488 output341)).val
theorem output1489_def : output1489 = (.seq output1488 output341) := by
  unfold output1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1489_skip : Flapjack.WordAlloc.isSkip output1489 = false := by
  rw [output1489_def]
  conv => lhs; cbv
  try rfl
theorem node1489_eq : Flapjack.WordAlloc.removeDeadStructural input1489 value280 value1 value2 = (output1489, value780, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node341_eq]
  try dsimp only
  rw [node1488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1489 input340)).val
theorem input1490_def : input1490 = (.seq input1489 input340) := by
  unfold input1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1489 output340)).val
theorem output1490_def : output1490 = (.seq output1489 output340) := by
  unfold output1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1490_skip : Flapjack.WordAlloc.isSkip output1490 = false := by
  rw [output1490_def]
  conv => lhs; cbv
  try rfl
theorem node1490_eq : Flapjack.WordAlloc.removeDeadStructural input1490 value279 value1 value2 = (output1490, value780, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node340_eq]
  try dsimp only
  rw [node1489_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1490 input339)).val
theorem input1491_def : input1491 = (.seq input1490 input339) := by
  unfold input1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1490 output339)).val
theorem output1491_def : output1491 = (.seq output1490 output339) := by
  unfold output1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1491_skip : Flapjack.WordAlloc.isSkip output1491 = false := by
  rw [output1491_def]
  conv => lhs; cbv
  try rfl
theorem node1491_eq : Flapjack.WordAlloc.removeDeadStructural input1491 value278 value1 value2 = (output1491, value780, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  try dsimp only
  rw [node1490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1491 input338)).val
theorem input1492_def : input1492 = (.seq input1491 input338) := by
  unfold input1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1491 output338)).val
theorem output1492_def : output1492 = (.seq output1491 output338) := by
  unfold output1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1492_skip : Flapjack.WordAlloc.isSkip output1492 = false := by
  rw [output1492_def]
  conv => lhs; cbv
  try rfl
theorem node1492_eq : Flapjack.WordAlloc.removeDeadStructural input1492 value277 value1 value2 = (output1492, value780, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node338_eq]
  try dsimp only
  rw [node1491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1492 input337)).val
theorem input1493_def : input1493 = (.seq input1492 input337) := by
  unfold input1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1492 output337)).val
theorem output1493_def : output1493 = (.seq output1492 output337) := by
  unfold output1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1493_skip : Flapjack.WordAlloc.isSkip output1493 = false := by
  rw [output1493_def]
  conv => lhs; cbv
  try rfl
theorem node1493_eq : Flapjack.WordAlloc.removeDeadStructural input1493 value276 value1 value2 = (output1493, value780, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node337_eq]
  try dsimp only
  rw [node1492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1493 input336)).val
theorem input1494_def : input1494 = (.seq input1493 input336) := by
  unfold input1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1493 output336)).val
theorem output1494_def : output1494 = (.seq output1493 output336) := by
  unfold output1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1494_skip : Flapjack.WordAlloc.isSkip output1494 = false := by
  rw [output1494_def]
  conv => lhs; cbv
  try rfl
theorem node1494_eq : Flapjack.WordAlloc.removeDeadStructural input1494 value275 value1 value2 = (output1494, value780, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node336_eq]
  try dsimp only
  rw [node1493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1494 input335)).val
theorem input1495_def : input1495 = (.seq input1494 input335) := by
  unfold input1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1494 output335)).val
theorem output1495_def : output1495 = (.seq output1494 output335) := by
  unfold output1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1495_skip : Flapjack.WordAlloc.isSkip output1495 = false := by
  rw [output1495_def]
  conv => lhs; cbv
  try rfl
theorem node1495_eq : Flapjack.WordAlloc.removeDeadStructural input1495 value274 value1 value2 = (output1495, value780, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node335_eq]
  try dsimp only
  rw [node1494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1495 input334)).val
theorem input1496_def : input1496 = (.seq input1495 input334) := by
  unfold input1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1495 output334)).val
theorem output1496_def : output1496 = (.seq output1495 output334) := by
  unfold output1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1496_skip : Flapjack.WordAlloc.isSkip output1496 = false := by
  rw [output1496_def]
  conv => lhs; cbv
  try rfl
theorem node1496_eq : Flapjack.WordAlloc.removeDeadStructural input1496 value271 value1 value2 = (output1496, value780, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node334_eq]
  try dsimp only
  rw [node1495_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1496 input329)).val
theorem input1497_def : input1497 = (.seq input1496 input329) := by
  unfold input1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1496 output329)).val
theorem output1497_def : output1497 = (.seq output1496 output329) := by
  unfold output1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1497_skip : Flapjack.WordAlloc.isSkip output1497 = false := by
  rw [output1497_def]
  conv => lhs; cbv
  try rfl
theorem node1497_eq : Flapjack.WordAlloc.removeDeadStructural input1497 value271 value1 value2 = (output1497, value780, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node1496_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1497 input328)).val
theorem input1498_def : input1498 = (.seq input1497 input328) := by
  unfold input1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1497 output328)).val
theorem output1498_def : output1498 = (.seq output1497 output328) := by
  unfold output1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1498_skip : Flapjack.WordAlloc.isSkip output1498 = false := by
  rw [output1498_def]
  conv => lhs; cbv
  try rfl
theorem node1498_eq : Flapjack.WordAlloc.removeDeadStructural input1498 value270 value1 value2 = (output1498, value780, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node328_eq]
  try dsimp only
  rw [node1497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1498 input327)).val
theorem input1499_def : input1499 = (.seq input1498 input327) := by
  unfold input1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1498 output327)).val
theorem output1499_def : output1499 = (.seq output1498 output327) := by
  unfold output1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1499_skip : Flapjack.WordAlloc.isSkip output1499 = false := by
  rw [output1499_def]
  conv => lhs; cbv
  try rfl
theorem node1499_eq : Flapjack.WordAlloc.removeDeadStructural input1499 value269 value1 value2 = (output1499, value780, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node327_eq]
  try dsimp only
  rw [node1498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1499 input326)).val
theorem input1500_def : input1500 = (.seq input1499 input326) := by
  unfold input1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1499 output326)).val
theorem output1500_def : output1500 = (.seq output1499 output326) := by
  unfold output1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1500_skip : Flapjack.WordAlloc.isSkip output1500 = false := by
  rw [output1500_def]
  conv => lhs; cbv
  try rfl
theorem node1500_eq : Flapjack.WordAlloc.removeDeadStructural input1500 value268 value1 value2 = (output1500, value780, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  try dsimp only
  rw [node1499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1500 input325)).val
theorem input1501_def : input1501 = (.seq input1500 input325) := by
  unfold input1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1500 output325)).val
theorem output1501_def : output1501 = (.seq output1500 output325) := by
  unfold output1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1501_skip : Flapjack.WordAlloc.isSkip output1501 = false := by
  rw [output1501_def]
  conv => lhs; cbv
  try rfl
theorem node1501_eq : Flapjack.WordAlloc.removeDeadStructural input1501 value267 value1 value2 = (output1501, value780, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node325_eq]
  try dsimp only
  rw [node1500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1501 input324)).val
theorem input1502_def : input1502 = (.seq input1501 input324) := by
  unfold input1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1501 output324)).val
theorem output1502_def : output1502 = (.seq output1501 output324) := by
  unfold output1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1502_skip : Flapjack.WordAlloc.isSkip output1502 = false := by
  rw [output1502_def]
  conv => lhs; cbv
  try rfl
theorem node1502_eq : Flapjack.WordAlloc.removeDeadStructural input1502 value266 value1 value2 = (output1502, value780, value1) := by
  rw [input1502_def, output1502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node324_eq]
  try dsimp only
  rw [node1501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1502 input323)).val
theorem input1503_def : input1503 = (.seq input1502 input323) := by
  unfold input1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1502 output323)).val
theorem output1503_def : output1503 = (.seq output1502 output323) := by
  unfold output1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1503_skip : Flapjack.WordAlloc.isSkip output1503 = false := by
  rw [output1503_def]
  conv => lhs; cbv
  try rfl
theorem node1503_eq : Flapjack.WordAlloc.removeDeadStructural input1503 value265 value1 value2 = (output1503, value780, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node323_eq]
  try dsimp only
  rw [node1502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1503 input322)).val
theorem input1504_def : input1504 = (.seq input1503 input322) := by
  unfold input1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1503 output322)).val
theorem output1504_def : output1504 = (.seq output1503 output322) := by
  unfold output1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1504_skip : Flapjack.WordAlloc.isSkip output1504 = false := by
  rw [output1504_def]
  conv => lhs; cbv
  try rfl
theorem node1504_eq : Flapjack.WordAlloc.removeDeadStructural input1504 value264 value1 value2 = (output1504, value780, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node322_eq]
  try dsimp only
  rw [node1503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1504 input321)).val
theorem input1505_def : input1505 = (.seq input1504 input321) := by
  unfold input1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1504 output321)).val
theorem output1505_def : output1505 = (.seq output1504 output321) := by
  unfold output1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1505_skip : Flapjack.WordAlloc.isSkip output1505 = false := by
  rw [output1505_def]
  conv => lhs; cbv
  try rfl
theorem node1505_eq : Flapjack.WordAlloc.removeDeadStructural input1505 value263 value1 value2 = (output1505, value780, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  try dsimp only
  rw [node1504_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1505 input320)).val
theorem input1506_def : input1506 = (.seq input1505 input320) := by
  unfold input1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1505 output320)).val
theorem output1506_def : output1506 = (.seq output1505 output320) := by
  unfold output1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1506_skip : Flapjack.WordAlloc.isSkip output1506 = false := by
  rw [output1506_def]
  conv => lhs; cbv
  try rfl
theorem node1506_eq : Flapjack.WordAlloc.removeDeadStructural input1506 value262 value1 value2 = (output1506, value780, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node320_eq]
  try dsimp only
  rw [node1505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1506 input319)).val
theorem input1507_def : input1507 = (.seq input1506 input319) := by
  unfold input1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1506 output319)).val
theorem output1507_def : output1507 = (.seq output1506 output319) := by
  unfold output1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1507_skip : Flapjack.WordAlloc.isSkip output1507 = false := by
  rw [output1507_def]
  conv => lhs; cbv
  try rfl
theorem node1507_eq : Flapjack.WordAlloc.removeDeadStructural input1507 value261 value1 value2 = (output1507, value780, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node319_eq]
  try dsimp only
  rw [node1506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1507 input318)).val
theorem input1508_def : input1508 = (.seq input1507 input318) := by
  unfold input1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1507 output318)).val
theorem output1508_def : output1508 = (.seq output1507 output318) := by
  unfold output1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1508_skip : Flapjack.WordAlloc.isSkip output1508 = false := by
  rw [output1508_def]
  conv => lhs; cbv
  try rfl
theorem node1508_eq : Flapjack.WordAlloc.removeDeadStructural input1508 value260 value1 value2 = (output1508, value780, value1) := by
  rw [input1508_def, output1508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node318_eq]
  try dsimp only
  rw [node1507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1508 input317)).val
theorem input1509_def : input1509 = (.seq input1508 input317) := by
  unfold input1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1508 output317)).val
theorem output1509_def : output1509 = (.seq output1508 output317) := by
  unfold output1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1509_skip : Flapjack.WordAlloc.isSkip output1509 = false := by
  rw [output1509_def]
  conv => lhs; cbv
  try rfl
theorem node1509_eq : Flapjack.WordAlloc.removeDeadStructural input1509 value259 value1 value2 = (output1509, value780, value1) := by
  rw [input1509_def, output1509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node317_eq]
  try dsimp only
  rw [node1508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1509 input316)).val
theorem input1510_def : input1510 = (.seq input1509 input316) := by
  unfold input1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1509 output316)).val
theorem output1510_def : output1510 = (.seq output1509 output316) := by
  unfold output1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1510_skip : Flapjack.WordAlloc.isSkip output1510 = false := by
  rw [output1510_def]
  conv => lhs; cbv
  try rfl
theorem node1510_eq : Flapjack.WordAlloc.removeDeadStructural input1510 value256 value1 value2 = (output1510, value780, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node316_eq]
  try dsimp only
  rw [node1509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1510 input311)).val
theorem input1511_def : input1511 = (.seq input1510 input311) := by
  unfold input1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1510 output311)).val
theorem output1511_def : output1511 = (.seq output1510 output311) := by
  unfold output1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1511_skip : Flapjack.WordAlloc.isSkip output1511 = false := by
  rw [output1511_def]
  conv => lhs; cbv
  try rfl
theorem node1511_eq : Flapjack.WordAlloc.removeDeadStructural input1511 value256 value1 value2 = (output1511, value780, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node311_eq]
  try dsimp only
  rw [node1510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1511 input310)).val
theorem input1512_def : input1512 = (.seq input1511 input310) := by
  unfold input1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1511 output310)).val
theorem output1512_def : output1512 = (.seq output1511 output310) := by
  unfold output1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1512_skip : Flapjack.WordAlloc.isSkip output1512 = false := by
  rw [output1512_def]
  conv => lhs; cbv
  try rfl
theorem node1512_eq : Flapjack.WordAlloc.removeDeadStructural input1512 value255 value1 value2 = (output1512, value780, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node310_eq]
  try dsimp only
  rw [node1511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1512 input309)).val
theorem input1513_def : input1513 = (.seq input1512 input309) := by
  unfold input1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1512 output309)).val
theorem output1513_def : output1513 = (.seq output1512 output309) := by
  unfold output1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1513_skip : Flapjack.WordAlloc.isSkip output1513 = false := by
  rw [output1513_def]
  conv => lhs; cbv
  try rfl
theorem node1513_eq : Flapjack.WordAlloc.removeDeadStructural input1513 value254 value1 value2 = (output1513, value780, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node309_eq]
  try dsimp only
  rw [node1512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1513 input308)).val
theorem input1514_def : input1514 = (.seq input1513 input308) := by
  unfold input1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1513 output308)).val
theorem output1514_def : output1514 = (.seq output1513 output308) := by
  unfold output1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1514_skip : Flapjack.WordAlloc.isSkip output1514 = false := by
  rw [output1514_def]
  conv => lhs; cbv
  try rfl
theorem node1514_eq : Flapjack.WordAlloc.removeDeadStructural input1514 value253 value1 value2 = (output1514, value780, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node1513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1514 input307)).val
theorem input1515_def : input1515 = (.seq input1514 input307) := by
  unfold input1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1514 output307)).val
theorem output1515_def : output1515 = (.seq output1514 output307) := by
  unfold output1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1515_skip : Flapjack.WordAlloc.isSkip output1515 = false := by
  rw [output1515_def]
  conv => lhs; cbv
  try rfl
theorem node1515_eq : Flapjack.WordAlloc.removeDeadStructural input1515 value252 value1 value2 = (output1515, value780, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node307_eq]
  try dsimp only
  rw [node1514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1515 input306)).val
theorem input1516_def : input1516 = (.seq input1515 input306) := by
  unfold input1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1515 output306)).val
theorem output1516_def : output1516 = (.seq output1515 output306) := by
  unfold output1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1516_skip : Flapjack.WordAlloc.isSkip output1516 = false := by
  rw [output1516_def]
  conv => lhs; cbv
  try rfl
theorem node1516_eq : Flapjack.WordAlloc.removeDeadStructural input1516 value251 value1 value2 = (output1516, value780, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node306_eq]
  try dsimp only
  rw [node1515_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1516 input305)).val
theorem input1517_def : input1517 = (.seq input1516 input305) := by
  unfold input1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1516 output305)).val
theorem output1517_def : output1517 = (.seq output1516 output305) := by
  unfold output1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1517_skip : Flapjack.WordAlloc.isSkip output1517 = false := by
  rw [output1517_def]
  conv => lhs; cbv
  try rfl
theorem node1517_eq : Flapjack.WordAlloc.removeDeadStructural input1517 value250 value1 value2 = (output1517, value780, value1) := by
  rw [input1517_def, output1517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node305_eq]
  try dsimp only
  rw [node1516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1517 input304)).val
theorem input1518_def : input1518 = (.seq input1517 input304) := by
  unfold input1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1517 output304)).val
theorem output1518_def : output1518 = (.seq output1517 output304) := by
  unfold output1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1518_skip : Flapjack.WordAlloc.isSkip output1518 = false := by
  rw [output1518_def]
  conv => lhs; cbv
  try rfl
theorem node1518_eq : Flapjack.WordAlloc.removeDeadStructural input1518 value249 value1 value2 = (output1518, value780, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node304_eq]
  try dsimp only
  rw [node1517_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1518 input303)).val
theorem input1519_def : input1519 = (.seq input1518 input303) := by
  unfold input1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1518 output303)).val
theorem output1519_def : output1519 = (.seq output1518 output303) := by
  unfold output1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1519_skip : Flapjack.WordAlloc.isSkip output1519 = false := by
  rw [output1519_def]
  conv => lhs; cbv
  try rfl
theorem node1519_eq : Flapjack.WordAlloc.removeDeadStructural input1519 value248 value1 value2 = (output1519, value780, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node1518_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1519 input302)).val
theorem input1520_def : input1520 = (.seq input1519 input302) := by
  unfold input1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1519 output302)).val
theorem output1520_def : output1520 = (.seq output1519 output302) := by
  unfold output1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1520_skip : Flapjack.WordAlloc.isSkip output1520 = false := by
  rw [output1520_def]
  conv => lhs; cbv
  try rfl
theorem node1520_eq : Flapjack.WordAlloc.removeDeadStructural input1520 value247 value1 value2 = (output1520, value780, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node302_eq]
  try dsimp only
  rw [node1519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1520 input301)).val
theorem input1521_def : input1521 = (.seq input1520 input301) := by
  unfold input1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1520 output301)).val
theorem output1521_def : output1521 = (.seq output1520 output301) := by
  unfold output1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1521_skip : Flapjack.WordAlloc.isSkip output1521 = false := by
  rw [output1521_def]
  conv => lhs; cbv
  try rfl
theorem node1521_eq : Flapjack.WordAlloc.removeDeadStructural input1521 value246 value1 value2 = (output1521, value780, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node301_eq]
  try dsimp only
  rw [node1520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1521 input300)).val
theorem input1522_def : input1522 = (.seq input1521 input300) := by
  unfold input1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1521 output300)).val
theorem output1522_def : output1522 = (.seq output1521 output300) := by
  unfold output1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1522_skip : Flapjack.WordAlloc.isSkip output1522 = false := by
  rw [output1522_def]
  conv => lhs; cbv
  try rfl
theorem node1522_eq : Flapjack.WordAlloc.removeDeadStructural input1522 value245 value1 value2 = (output1522, value780, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node300_eq]
  try dsimp only
  rw [node1521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1522 input299)).val
theorem input1523_def : input1523 = (.seq input1522 input299) := by
  unfold input1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1522 output299)).val
theorem output1523_def : output1523 = (.seq output1522 output299) := by
  unfold output1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1523_skip : Flapjack.WordAlloc.isSkip output1523 = false := by
  rw [output1523_def]
  conv => lhs; cbv
  try rfl
theorem node1523_eq : Flapjack.WordAlloc.removeDeadStructural input1523 value244 value1 value2 = (output1523, value780, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node299_eq]
  try dsimp only
  rw [node1522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1523 input298)).val
theorem input1524_def : input1524 = (.seq input1523 input298) := by
  unfold input1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1523 output298)).val
theorem output1524_def : output1524 = (.seq output1523 output298) := by
  unfold output1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1524_skip : Flapjack.WordAlloc.isSkip output1524 = false := by
  rw [output1524_def]
  conv => lhs; cbv
  try rfl
theorem node1524_eq : Flapjack.WordAlloc.removeDeadStructural input1524 value241 value1 value2 = (output1524, value780, value1) := by
  rw [input1524_def, output1524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node298_eq]
  try dsimp only
  rw [node1523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1524 input293)).val
theorem input1525_def : input1525 = (.seq input1524 input293) := by
  unfold input1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1524 output293)).val
theorem output1525_def : output1525 = (.seq output1524 output293) := by
  unfold output1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1525_skip : Flapjack.WordAlloc.isSkip output1525 = false := by
  rw [output1525_def]
  conv => lhs; cbv
  try rfl
theorem node1525_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value241 value1 value2 = (output1525, value780, value1) := by
  rw [input1525_def, output1525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node293_eq]
  try dsimp only
  rw [node1524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1525 input292)).val
theorem input1526_def : input1526 = (.seq input1525 input292) := by
  unfold input1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1525 output292)).val
theorem output1526_def : output1526 = (.seq output1525 output292) := by
  unfold output1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1526_skip : Flapjack.WordAlloc.isSkip output1526 = false := by
  rw [output1526_def]
  conv => lhs; cbv
  try rfl
theorem node1526_eq : Flapjack.WordAlloc.removeDeadStructural input1526 value240 value1 value2 = (output1526, value780, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node292_eq]
  try dsimp only
  rw [node1525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1526 input291)).val
theorem input1527_def : input1527 = (.seq input1526 input291) := by
  unfold input1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1526 output291)).val
theorem output1527_def : output1527 = (.seq output1526 output291) := by
  unfold output1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1527_skip : Flapjack.WordAlloc.isSkip output1527 = false := by
  rw [output1527_def]
  conv => lhs; cbv
  try rfl
theorem node1527_eq : Flapjack.WordAlloc.removeDeadStructural input1527 value239 value1 value2 = (output1527, value780, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node291_eq]
  try dsimp only
  rw [node1526_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1527 input290)).val
theorem input1528_def : input1528 = (.seq input1527 input290) := by
  unfold input1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1527 output290)).val
theorem output1528_def : output1528 = (.seq output1527 output290) := by
  unfold output1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1528_skip : Flapjack.WordAlloc.isSkip output1528 = false := by
  rw [output1528_def]
  conv => lhs; cbv
  try rfl
theorem node1528_eq : Flapjack.WordAlloc.removeDeadStructural input1528 value238 value1 value2 = (output1528, value780, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node290_eq]
  try dsimp only
  rw [node1527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1528 input289)).val
theorem input1529_def : input1529 = (.seq input1528 input289) := by
  unfold input1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1528 output289)).val
theorem output1529_def : output1529 = (.seq output1528 output289) := by
  unfold output1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1529_skip : Flapjack.WordAlloc.isSkip output1529 = false := by
  rw [output1529_def]
  conv => lhs; cbv
  try rfl
theorem node1529_eq : Flapjack.WordAlloc.removeDeadStructural input1529 value237 value1 value2 = (output1529, value780, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node289_eq]
  try dsimp only
  rw [node1528_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1529 input288)).val
theorem input1530_def : input1530 = (.seq input1529 input288) := by
  unfold input1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1529 output288)).val
theorem output1530_def : output1530 = (.seq output1529 output288) := by
  unfold output1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1530_skip : Flapjack.WordAlloc.isSkip output1530 = false := by
  rw [output1530_def]
  conv => lhs; cbv
  try rfl
theorem node1530_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value236 value1 value2 = (output1530, value780, value1) := by
  rw [input1530_def, output1530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node288_eq]
  try dsimp only
  rw [node1529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node1531_eq : Flapjack.WordAlloc.removeDeadStructural input1531 value235 value1 value2 = (output1531, value780, value1) := by
  rw [input1531_def, output1531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node287_eq]
  try dsimp only
  rw [node1530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

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
  conv => lhs; cbv
  try rfl
theorem node1532_eq : Flapjack.WordAlloc.removeDeadStructural input1532 value234 value1 value2 = (output1532, value780, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  try dsimp only
  rw [node1531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1532 input285)).val
theorem input1533_def : input1533 = (.seq input1532 input285) := by
  unfold input1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1532 output285)).val
theorem output1533_def : output1533 = (.seq output1532 output285) := by
  unfold output1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1533_skip : Flapjack.WordAlloc.isSkip output1533 = false := by
  rw [output1533_def]
  conv => lhs; cbv
  try rfl
theorem node1533_eq : Flapjack.WordAlloc.removeDeadStructural input1533 value233 value1 value2 = (output1533, value780, value1) := by
  rw [input1533_def, output1533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node285_eq]
  try dsimp only
  rw [node1532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1533 input284)).val
theorem input1534_def : input1534 = (.seq input1533 input284) := by
  unfold input1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1533 output284)).val
theorem output1534_def : output1534 = (.seq output1533 output284) := by
  unfold output1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1534_skip : Flapjack.WordAlloc.isSkip output1534 = false := by
  rw [output1534_def]
  conv => lhs; cbv
  try rfl
theorem node1534_eq : Flapjack.WordAlloc.removeDeadStructural input1534 value232 value1 value2 = (output1534, value780, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node284_eq]
  try dsimp only
  rw [node1533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1534 input283)).val
theorem input1535_def : input1535 = (.seq input1534 input283) := by
  unfold input1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1534 output283)).val
theorem output1535_def : output1535 = (.seq output1534 output283) := by
  unfold output1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1535_skip : Flapjack.WordAlloc.isSkip output1535 = false := by
  rw [output1535_def]
  conv => lhs; cbv
  try rfl
theorem node1535_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value231 value1 value2 = (output1535, value780, value1) := by
  rw [input1535_def, output1535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node283_eq]
  try dsimp only
  rw [node1534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1535_eq
end InitECandidate.Proofs.DeadStages782
