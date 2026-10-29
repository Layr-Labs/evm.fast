import InitECandidate.Proofs.DeadStages64.Chunk032
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1055 input1054)).val
theorem input1056_def : input1056 = (.seq input1055 input1054) := by
  unfold input1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1055 output1054)).val
theorem output1056_def : output1056 = (.seq output1055 output1054) := by
  unfold output1056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1056_skip : Flapjack.WordAlloc.isSkip output1056 = false := by
  rw [output1056_def]
  conv => lhs; cbv
  try rfl
theorem node1056_eq : Flapjack.WordAlloc.removeDeadStructural input1056 value531 value1 value2 = (output1056, value4, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1054_eq]
  dsimp only
  rw [node1055_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1056 input1053)).val
theorem input1057_def : input1057 = (.seq input1056 input1053) := by
  unfold input1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1056 output1053)).val
theorem output1057_def : output1057 = (.seq output1056 output1053) := by
  unfold output1057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1057_skip : Flapjack.WordAlloc.isSkip output1057 = false := by
  rw [output1057_def]
  conv => lhs; cbv
  try rfl
theorem node1057_eq : Flapjack.WordAlloc.removeDeadStructural input1057 value530 value1 value2 = (output1057, value4, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1053_eq]
  dsimp only
  rw [node1056_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1057 input1052)).val
theorem input1058_def : input1058 = (.seq input1057 input1052) := by
  unfold input1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1057 output1052)).val
theorem output1058_def : output1058 = (.seq output1057 output1052) := by
  unfold output1058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1058_skip : Flapjack.WordAlloc.isSkip output1058 = false := by
  rw [output1058_def]
  conv => lhs; cbv
  try rfl
theorem node1058_eq : Flapjack.WordAlloc.removeDeadStructural input1058 value529 value1 value2 = (output1058, value4, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1052_eq]
  dsimp only
  rw [node1057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value533 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 145 (Flapjack.WordLangAddr.addr 149 0#64)))).val
theorem input1059_def : input1059 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 145 (Flapjack.WordLangAddr.addr 149 0#64))) := by
  unfold input1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 145 (Flapjack.WordLangAddr.addr 149 0#64)))).val
theorem output1059_def : output1059 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 145 (Flapjack.WordLangAddr.addr 149 0#64))) := by
  unfold output1059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1059_skip : Flapjack.WordAlloc.isSkip output1059 = false := by
  rw [output1059_def]
  conv => lhs; cbv
  try rfl
theorem node1059_eq : Flapjack.WordAlloc.removeDeadStructural input1059 value4 value1 value2 = (output1059, value533, value1) := by
  rw [input1059_def, output1059_def]
  try (conv => lhs; cbv)
  try rfl

def value534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(149, 137)])).val
theorem input1060_def : input1060 = (Flapjack.WordLangProgHOL.move 0 [(149, 137)]) := by
  unfold input1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(149, 137)])).val
theorem output1060_def : output1060 = (Flapjack.WordLangProgHOL.move 0 [(149, 137)]) := by
  unfold output1060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1060_skip : Flapjack.WordAlloc.isSkip output1060 = false := by
  rw [output1060_def]
  conv => lhs; cbv
  try rfl
theorem node1060_eq : Flapjack.WordAlloc.removeDeadStructural input1060 value533 value1 value2 = (output1060, value534, value1) := by
  rw [input1060_def, output1060_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1060 input1059)).val
theorem input1061_def : input1061 = (.seq input1060 input1059) := by
  unfold input1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1060 output1059)).val
theorem output1061_def : output1061 = (.seq output1060 output1059) := by
  unfold output1061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1061_skip : Flapjack.WordAlloc.isSkip output1061 = false := by
  rw [output1061_def]
  conv => lhs; cbv
  try rfl
theorem node1061_eq : Flapjack.WordAlloc.removeDeadStructural input1061 value4 value1 value2 = (output1061, value534, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1059_eq]
  dsimp only
  rw [node1060_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value535 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64))).val
theorem input1062_def : input1062 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)) := by
  unfold input1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64))).val
theorem output1062_def : output1062 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 145 0#64)) := by
  unfold output1062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1062_skip : Flapjack.WordAlloc.isSkip output1062 = false := by
  rw [output1062_def]
  conv => lhs; cbv
  try rfl
theorem node1062_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value534 value1 value2 = (output1062, value535, value1) := by
  rw [input1062_def, output1062_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64))).val
theorem input1063_def : input1063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 141 0#64)) := by
  unfold input1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1063_def : output1063 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1063_skip : Flapjack.WordAlloc.isSkip output1063 = true := by
  rw [output1063_def]
  conv => lhs; cbv
  try rfl
theorem node1063_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value535 value1 value2 = (output1063, value535, value1) := by
  rw [input1063_def, output1063_def]
  try (conv => lhs; cbv)
  try rfl

def value536 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 133 (Flapjack.WordRegImm.imm 18446744073709551576#64))))).val
theorem input1064_def : input1064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 133 (Flapjack.WordRegImm.imm 18446744073709551576#64)))) := by
  unfold input1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 133 (Flapjack.WordRegImm.imm 18446744073709551576#64))))).val
theorem output1064_def : output1064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 137 133 (Flapjack.WordRegImm.imm 18446744073709551576#64)))) := by
  unfold output1064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1064_skip : Flapjack.WordAlloc.isSkip output1064 = false := by
  rw [output1064_def]
  conv => lhs; cbv
  try rfl
theorem node1064_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value535 value1 value2 = (output1064, value536, value1) := by
  rw [input1064_def, output1064_def]
  try (conv => lhs; cbv)
  try rfl

def value537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 133 129)).val
theorem input1065_def : input1065 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 133 129) := by
  unfold input1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 133 129)).val
theorem output1065_def : output1065 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 133 129) := by
  unfold output1065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1065_skip : Flapjack.WordAlloc.isSkip output1065 = false := by
  rw [output1065_def]
  conv => lhs; cbv
  try rfl
theorem node1065_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value536 value1 value2 = (output1065, value537, value1) := by
  rw [input1065_def, output1065_def]
  try (conv => lhs; cbv)
  try rfl

def value538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1066_def : input1066 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1066_def : output1066 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 129 125 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1066_skip : Flapjack.WordAlloc.isSkip output1066 = false := by
  rw [output1066_def]
  conv => lhs; cbv
  try rfl
theorem node1066_eq : Flapjack.WordAlloc.removeDeadStructural input1066 value537 value1 value2 = (output1066, value538, value1) := by
  rw [input1066_def, output1066_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 125 Flapjack.WordStore.heapLength)).val
theorem input1067_def : input1067 = (Flapjack.WordLangProgHOL.get 125 Flapjack.WordStore.heapLength) := by
  unfold input1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 125 Flapjack.WordStore.heapLength)).val
theorem output1067_def : output1067 = (Flapjack.WordLangProgHOL.get 125 Flapjack.WordStore.heapLength) := by
  unfold output1067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1067_skip : Flapjack.WordAlloc.isSkip output1067 = false := by
  rw [output1067_def]
  conv => lhs; cbv
  try rfl
theorem node1067_eq : Flapjack.WordAlloc.removeDeadStructural input1067 value538 value1 value2 = (output1067, value4, value1) := by
  rw [input1067_def, output1067_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1067 input1066)).val
theorem input1068_def : input1068 = (.seq input1067 input1066) := by
  unfold input1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1067 output1066)).val
theorem output1068_def : output1068 = (.seq output1067 output1066) := by
  unfold output1068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1068_skip : Flapjack.WordAlloc.isSkip output1068 = false := by
  rw [output1068_def]
  conv => lhs; cbv
  try rfl
theorem node1068_eq : Flapjack.WordAlloc.removeDeadStructural input1068 value537 value1 value2 = (output1068, value4, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1066_eq]
  dsimp only
  rw [node1067_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1068 input1065)).val
theorem input1069_def : input1069 = (.seq input1068 input1065) := by
  unfold input1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1068 output1065)).val
theorem output1069_def : output1069 = (.seq output1068 output1065) := by
  unfold output1069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1069_skip : Flapjack.WordAlloc.isSkip output1069 = false := by
  rw [output1069_def]
  conv => lhs; cbv
  try rfl
theorem node1069_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value536 value1 value2 = (output1069, value4, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1065_eq]
  dsimp only
  rw [node1068_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1069 input1064)).val
theorem input1070_def : input1070 = (.seq input1069 input1064) := by
  unfold input1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1069 output1064)).val
theorem output1070_def : output1070 = (.seq output1069 output1064) := by
  unfold output1070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1070_skip : Flapjack.WordAlloc.isSkip output1070 = false := by
  rw [output1070_def]
  conv => lhs; cbv
  try rfl
theorem node1070_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value535 value1 value2 = (output1070, value4, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1064_eq]
  dsimp only
  rw [node1069_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value539 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 117 (Flapjack.WordLangAddr.addr 121 0#64)))).val
theorem input1071_def : input1071 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 117 (Flapjack.WordLangAddr.addr 121 0#64))) := by
  unfold input1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 117 (Flapjack.WordLangAddr.addr 121 0#64)))).val
theorem output1071_def : output1071 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 117 (Flapjack.WordLangAddr.addr 121 0#64))) := by
  unfold output1071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1071_skip : Flapjack.WordAlloc.isSkip output1071 = false := by
  rw [output1071_def]
  conv => lhs; cbv
  try rfl
theorem node1071_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value4 value1 value2 = (output1071, value539, value1) := by
  rw [input1071_def, output1071_def]
  try (conv => lhs; cbv)
  try rfl

def value540 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 109)])).val
theorem input1072_def : input1072 = (Flapjack.WordLangProgHOL.move 0 [(121, 109)]) := by
  unfold input1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 109)])).val
theorem output1072_def : output1072 = (Flapjack.WordLangProgHOL.move 0 [(121, 109)]) := by
  unfold output1072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1072_skip : Flapjack.WordAlloc.isSkip output1072 = false := by
  rw [output1072_def]
  conv => lhs; cbv
  try rfl
theorem node1072_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value539 value1 value2 = (output1072, value540, value1) := by
  rw [input1072_def, output1072_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1072 input1071)).val
theorem input1073_def : input1073 = (.seq input1072 input1071) := by
  unfold input1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1072 output1071)).val
theorem output1073_def : output1073 = (.seq output1072 output1071) := by
  unfold output1073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1073_skip : Flapjack.WordAlloc.isSkip output1073 = false := by
  rw [output1073_def]
  conv => lhs; cbv
  try rfl
theorem node1073_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value4 value1 value2 = (output1073, value540, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1071_eq]
  dsimp only
  rw [node1072_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value541 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64))).val
theorem input1074_def : input1074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)) := by
  unfold input1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64))).val
theorem output1074_def : output1074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 117 0#64)) := by
  unfold output1074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1074_skip : Flapjack.WordAlloc.isSkip output1074 = false := by
  rw [output1074_def]
  conv => lhs; cbv
  try rfl
theorem node1074_eq : Flapjack.WordAlloc.removeDeadStructural input1074 value540 value1 value2 = (output1074, value541, value1) := by
  rw [input1074_def, output1074_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64))).val
theorem input1075_def : input1075 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 113 0#64)) := by
  unfold input1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1075_def : output1075 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1075_skip : Flapjack.WordAlloc.isSkip output1075 = true := by
  rw [output1075_def]
  conv => lhs; cbv
  try rfl
theorem node1075_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value541 value1 value2 = (output1075, value541, value1) := by
  rw [input1075_def, output1075_def]
  try (conv => lhs; cbv)
  try rfl

def value542 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 109 105 (Flapjack.WordRegImm.imm 18446744073709551584#64))))).val
theorem input1076_def : input1076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 109 105 (Flapjack.WordRegImm.imm 18446744073709551584#64)))) := by
  unfold input1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 109 105 (Flapjack.WordRegImm.imm 18446744073709551584#64))))).val
theorem output1076_def : output1076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 109 105 (Flapjack.WordRegImm.imm 18446744073709551584#64)))) := by
  unfold output1076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1076_skip : Flapjack.WordAlloc.isSkip output1076 = false := by
  rw [output1076_def]
  conv => lhs; cbv
  try rfl
theorem node1076_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value541 value1 value2 = (output1076, value542, value1) := by
  rw [input1076_def, output1076_def]
  try (conv => lhs; cbv)
  try rfl

def value543 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 105 101)).val
theorem input1077_def : input1077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 105 101) := by
  unfold input1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 105 101)).val
theorem output1077_def : output1077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 105 101) := by
  unfold output1077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1077_skip : Flapjack.WordAlloc.isSkip output1077 = false := by
  rw [output1077_def]
  conv => lhs; cbv
  try rfl
theorem node1077_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value542 value1 value2 = (output1077, value543, value1) := by
  rw [input1077_def, output1077_def]
  try (conv => lhs; cbv)
  try rfl

def value544 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 101 97 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1078_def : input1078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 101 97 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 101 97 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1078_def : output1078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 101 97 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1078_skip : Flapjack.WordAlloc.isSkip output1078 = false := by
  rw [output1078_def]
  conv => lhs; cbv
  try rfl
theorem node1078_eq : Flapjack.WordAlloc.removeDeadStructural input1078 value543 value1 value2 = (output1078, value544, value1) := by
  rw [input1078_def, output1078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 97 Flapjack.WordStore.heapLength)).val
theorem input1079_def : input1079 = (Flapjack.WordLangProgHOL.get 97 Flapjack.WordStore.heapLength) := by
  unfold input1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 97 Flapjack.WordStore.heapLength)).val
theorem output1079_def : output1079 = (Flapjack.WordLangProgHOL.get 97 Flapjack.WordStore.heapLength) := by
  unfold output1079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1079_skip : Flapjack.WordAlloc.isSkip output1079 = false := by
  rw [output1079_def]
  conv => lhs; cbv
  try rfl
theorem node1079_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value544 value1 value2 = (output1079, value4, value1) := by
  rw [input1079_def, output1079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1079 input1078)).val
theorem input1080_def : input1080 = (.seq input1079 input1078) := by
  unfold input1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1079 output1078)).val
theorem output1080_def : output1080 = (.seq output1079 output1078) := by
  unfold output1080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1080_skip : Flapjack.WordAlloc.isSkip output1080 = false := by
  rw [output1080_def]
  conv => lhs; cbv
  try rfl
theorem node1080_eq : Flapjack.WordAlloc.removeDeadStructural input1080 value543 value1 value2 = (output1080, value4, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1078_eq]
  dsimp only
  rw [node1079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1080 input1077)).val
theorem input1081_def : input1081 = (.seq input1080 input1077) := by
  unfold input1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1080 output1077)).val
theorem output1081_def : output1081 = (.seq output1080 output1077) := by
  unfold output1081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1081_skip : Flapjack.WordAlloc.isSkip output1081 = false := by
  rw [output1081_def]
  conv => lhs; cbv
  try rfl
theorem node1081_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value542 value1 value2 = (output1081, value4, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1077_eq]
  dsimp only
  rw [node1080_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1081 input1076)).val
theorem input1082_def : input1082 = (.seq input1081 input1076) := by
  unfold input1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1081 output1076)).val
theorem output1082_def : output1082 = (.seq output1081 output1076) := by
  unfold output1082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1082_skip : Flapjack.WordAlloc.isSkip output1082 = false := by
  rw [output1082_def]
  conv => lhs; cbv
  try rfl
theorem node1082_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value541 value1 value2 = (output1082, value4, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1076_eq]
  dsimp only
  rw [node1081_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value545 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 89 (Flapjack.WordLangAddr.addr 93 0#64)))).val
theorem input1083_def : input1083 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 89 (Flapjack.WordLangAddr.addr 93 0#64))) := by
  unfold input1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 89 (Flapjack.WordLangAddr.addr 93 0#64)))).val
theorem output1083_def : output1083 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 89 (Flapjack.WordLangAddr.addr 93 0#64))) := by
  unfold output1083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1083_skip : Flapjack.WordAlloc.isSkip output1083 = false := by
  rw [output1083_def]
  conv => lhs; cbv
  try rfl
theorem node1083_eq : Flapjack.WordAlloc.removeDeadStructural input1083 value4 value1 value2 = (output1083, value545, value1) := by
  rw [input1083_def, output1083_def]
  try (conv => lhs; cbv)
  try rfl

def value546 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(93, 81)])).val
theorem input1084_def : input1084 = (Flapjack.WordLangProgHOL.move 0 [(93, 81)]) := by
  unfold input1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(93, 81)])).val
theorem output1084_def : output1084 = (Flapjack.WordLangProgHOL.move 0 [(93, 81)]) := by
  unfold output1084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1084_skip : Flapjack.WordAlloc.isSkip output1084 = false := by
  rw [output1084_def]
  conv => lhs; cbv
  try rfl
theorem node1084_eq : Flapjack.WordAlloc.removeDeadStructural input1084 value545 value1 value2 = (output1084, value546, value1) := by
  rw [input1084_def, output1084_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1084 input1083)).val
theorem input1085_def : input1085 = (.seq input1084 input1083) := by
  unfold input1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1084 output1083)).val
theorem output1085_def : output1085 = (.seq output1084 output1083) := by
  unfold output1085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1085_skip : Flapjack.WordAlloc.isSkip output1085 = false := by
  rw [output1085_def]
  conv => lhs; cbv
  try rfl
theorem node1085_eq : Flapjack.WordAlloc.removeDeadStructural input1085 value4 value1 value2 = (output1085, value546, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1083_eq]
  dsimp only
  rw [node1084_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value547 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64))).val
theorem input1086_def : input1086 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)) := by
  unfold input1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64))).val
theorem output1086_def : output1086 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)) := by
  unfold output1086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1086_skip : Flapjack.WordAlloc.isSkip output1086 = false := by
  rw [output1086_def]
  conv => lhs; cbv
  try rfl
theorem node1086_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value546 value1 value2 = (output1086, value547, value1) := by
  rw [input1086_def, output1086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64))).val
theorem input1087_def : input1087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)) := by
  unfold input1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1087_def : output1087 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1087_skip : Flapjack.WordAlloc.isSkip output1087 = true := by
  rw [output1087_def]
  conv => lhs; cbv
  try rfl
theorem node1087_eq : Flapjack.WordAlloc.removeDeadStructural input1087 value547 value1 value2 = (output1087, value547, value1) := by
  rw [input1087_def, output1087_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node1087_eq
end InitECandidate.Proofs.DeadStages64
