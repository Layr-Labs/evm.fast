import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64.Parallel
def value516 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(233, 221)])).val
theorem input1024_def : input1024 = (Flapjack.WordLangProgHOL.move 0 [(233, 221)]) := by
  unfold input1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(233, 221)])).val
theorem output1024_def : output1024 = (Flapjack.WordLangProgHOL.move 0 [(233, 221)]) := by
  unfold output1024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1024_skip : Flapjack.WordAlloc.isSkip output1024 = false := by
  rw [output1024_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1024 input1023)).val
theorem input1025_def : input1025 = (.seq input1024 input1023) := by
  unfold input1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1024 output1023)).val
theorem output1025_def : output1025 = (.seq output1024 output1023) := by
  unfold output1025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1025_skip : Flapjack.WordAlloc.isSkip output1025 = false := by
  rw [output1025_def]
  conv => lhs; cbv
  try rfl


def value517 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64))).val
theorem input1026_def : input1026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)) := by
  unfold input1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64))).val
theorem output1026_def : output1026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 229 0#64)) := by
  unfold output1026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1026_skip : Flapjack.WordAlloc.isSkip output1026 = false := by
  rw [output1026_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64))).val
theorem input1027_def : input1027 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)) := by
  unfold input1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1027_def : output1027 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1027_skip : Flapjack.WordAlloc.isSkip output1027 = true := by
  rw [output1027_def]
  conv => lhs; cbv
  try rfl


def value518 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 221 217 (Flapjack.WordRegImm.imm 18446744073709551552#64))))).val
theorem input1028_def : input1028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 221 217 (Flapjack.WordRegImm.imm 18446744073709551552#64)))) := by
  unfold input1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 221 217 (Flapjack.WordRegImm.imm 18446744073709551552#64))))).val
theorem output1028_def : output1028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 221 217 (Flapjack.WordRegImm.imm 18446744073709551552#64)))) := by
  unfold output1028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1028_skip : Flapjack.WordAlloc.isSkip output1028 = false := by
  rw [output1028_def]
  conv => lhs; cbv
  try rfl


def value519 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213)).val
theorem input1029_def : input1029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213) := by
  unfold input1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213)).val
theorem output1029_def : output1029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213) := by
  unfold output1029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1029_skip : Flapjack.WordAlloc.isSkip output1029 = false := by
  rw [output1029_def]
  conv => lhs; cbv
  try rfl


def value520 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1030_def : input1030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1030_def : output1030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1030_skip : Flapjack.WordAlloc.isSkip output1030 = false := by
  rw [output1030_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength)).val
theorem input1031_def : input1031 = (Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength) := by
  unfold input1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength)).val
theorem output1031_def : output1031 = (Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength) := by
  unfold output1031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1031_skip : Flapjack.WordAlloc.isSkip output1031 = false := by
  rw [output1031_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1031 input1030)).val
theorem input1032_def : input1032 = (.seq input1031 input1030) := by
  unfold input1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1031 output1030)).val
theorem output1032_def : output1032 = (.seq output1031 output1030) := by
  unfold output1032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1032_skip : Flapjack.WordAlloc.isSkip output1032 = false := by
  rw [output1032_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1032 input1029)).val
theorem input1033_def : input1033 = (.seq input1032 input1029) := by
  unfold input1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1032 output1029)).val
theorem output1033_def : output1033 = (.seq output1032 output1029) := by
  unfold output1033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1033_skip : Flapjack.WordAlloc.isSkip output1033 = false := by
  rw [output1033_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1033 input1028)).val
theorem input1034_def : input1034 = (.seq input1033 input1028) := by
  unfold input1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1033 output1028)).val
theorem output1034_def : output1034 = (.seq output1033 output1028) := by
  unfold output1034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1034_skip : Flapjack.WordAlloc.isSkip output1034 = false := by
  rw [output1034_def]
  conv => lhs; cbv
  try rfl


def value521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 201 (Flapjack.WordLangAddr.addr 205 0#64)))).val
theorem input1035_def : input1035 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 201 (Flapjack.WordLangAddr.addr 205 0#64))) := by
  unfold input1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 201 (Flapjack.WordLangAddr.addr 205 0#64)))).val
theorem output1035_def : output1035 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 201 (Flapjack.WordLangAddr.addr 205 0#64))) := by
  unfold output1035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1035_skip : Flapjack.WordAlloc.isSkip output1035 = false := by
  rw [output1035_def]
  conv => lhs; cbv
  try rfl


def value522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(205, 193)])).val
theorem input1036_def : input1036 = (Flapjack.WordLangProgHOL.move 0 [(205, 193)]) := by
  unfold input1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(205, 193)])).val
theorem output1036_def : output1036 = (Flapjack.WordLangProgHOL.move 0 [(205, 193)]) := by
  unfold output1036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1036_skip : Flapjack.WordAlloc.isSkip output1036 = false := by
  rw [output1036_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1036 input1035)).val
theorem input1037_def : input1037 = (.seq input1036 input1035) := by
  unfold input1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1036 output1035)).val
theorem output1037_def : output1037 = (.seq output1036 output1035) := by
  unfold output1037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1037_skip : Flapjack.WordAlloc.isSkip output1037 = false := by
  rw [output1037_def]
  conv => lhs; cbv
  try rfl


def value523 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64))).val
theorem input1038_def : input1038 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)) := by
  unfold input1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64))).val
theorem output1038_def : output1038 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 0#64)) := by
  unfold output1038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1038_skip : Flapjack.WordAlloc.isSkip output1038 = false := by
  rw [output1038_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64))).val
theorem input1039_def : input1039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)) := by
  unfold input1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1039_def : output1039 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1039_skip : Flapjack.WordAlloc.isSkip output1039 = true := by
  rw [output1039_def]
  conv => lhs; cbv
  try rfl


def value524 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 189 (Flapjack.WordRegImm.imm 18446744073709551560#64))))).val
theorem input1040_def : input1040 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 189 (Flapjack.WordRegImm.imm 18446744073709551560#64)))) := by
  unfold input1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 189 (Flapjack.WordRegImm.imm 18446744073709551560#64))))).val
theorem output1040_def : output1040 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 193 189 (Flapjack.WordRegImm.imm 18446744073709551560#64)))) := by
  unfold output1040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1040_skip : Flapjack.WordAlloc.isSkip output1040 = false := by
  rw [output1040_def]
  conv => lhs; cbv
  try rfl


def value525 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 189 185)).val
theorem input1041_def : input1041 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 189 185) := by
  unfold input1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 189 185)).val
theorem output1041_def : output1041 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 189 185) := by
  unfold output1041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1041_skip : Flapjack.WordAlloc.isSkip output1041 = false := by
  rw [output1041_def]
  conv => lhs; cbv
  try rfl


def value526 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 185 181 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1042_def : input1042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 185 181 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 185 181 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1042_def : output1042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 185 181 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1042_skip : Flapjack.WordAlloc.isSkip output1042 = false := by
  rw [output1042_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 181 Flapjack.WordStore.heapLength)).val
theorem input1043_def : input1043 = (Flapjack.WordLangProgHOL.get 181 Flapjack.WordStore.heapLength) := by
  unfold input1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 181 Flapjack.WordStore.heapLength)).val
theorem output1043_def : output1043 = (Flapjack.WordLangProgHOL.get 181 Flapjack.WordStore.heapLength) := by
  unfold output1043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1043_skip : Flapjack.WordAlloc.isSkip output1043 = false := by
  rw [output1043_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1043 input1042)).val
theorem input1044_def : input1044 = (.seq input1043 input1042) := by
  unfold input1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1043 output1042)).val
theorem output1044_def : output1044 = (.seq output1043 output1042) := by
  unfold output1044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1044_skip : Flapjack.WordAlloc.isSkip output1044 = false := by
  rw [output1044_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1044 input1041)).val
theorem input1045_def : input1045 = (.seq input1044 input1041) := by
  unfold input1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1044 output1041)).val
theorem output1045_def : output1045 = (.seq output1044 output1041) := by
  unfold output1045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1045_skip : Flapjack.WordAlloc.isSkip output1045 = false := by
  rw [output1045_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1045 input1040)).val
theorem input1046_def : input1046 = (.seq input1045 input1040) := by
  unfold input1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1045 output1040)).val
theorem output1046_def : output1046 = (.seq output1045 output1040) := by
  unfold output1046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1046_skip : Flapjack.WordAlloc.isSkip output1046 = false := by
  rw [output1046_def]
  conv => lhs; cbv
  try rfl


def value527 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 173 (Flapjack.WordLangAddr.addr 177 0#64)))).val
theorem input1047_def : input1047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 173 (Flapjack.WordLangAddr.addr 177 0#64))) := by
  unfold input1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 173 (Flapjack.WordLangAddr.addr 177 0#64)))).val
theorem output1047_def : output1047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 173 (Flapjack.WordLangAddr.addr 177 0#64))) := by
  unfold output1047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1047_skip : Flapjack.WordAlloc.isSkip output1047 = false := by
  rw [output1047_def]
  conv => lhs; cbv
  try rfl


def value528 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(177, 165)])).val
theorem input1048_def : input1048 = (Flapjack.WordLangProgHOL.move 0 [(177, 165)]) := by
  unfold input1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(177, 165)])).val
theorem output1048_def : output1048 = (Flapjack.WordLangProgHOL.move 0 [(177, 165)]) := by
  unfold output1048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1048_skip : Flapjack.WordAlloc.isSkip output1048 = false := by
  rw [output1048_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1048 input1047)).val
theorem input1049_def : input1049 = (.seq input1048 input1047) := by
  unfold input1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1048 output1047)).val
theorem output1049_def : output1049 = (.seq output1048 output1047) := by
  unfold output1049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1049_skip : Flapjack.WordAlloc.isSkip output1049 = false := by
  rw [output1049_def]
  conv => lhs; cbv
  try rfl


def value529 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64))).val
theorem input1050_def : input1050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)) := by
  unfold input1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64))).val
theorem output1050_def : output1050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 173 0#64)) := by
  unfold output1050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1050_skip : Flapjack.WordAlloc.isSkip output1050 = false := by
  rw [output1050_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64))).val
theorem input1051_def : input1051 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 169 0#64)) := by
  unfold input1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1051_def : output1051 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1051_skip : Flapjack.WordAlloc.isSkip output1051 = true := by
  rw [output1051_def]
  conv => lhs; cbv
  try rfl


def value530 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 165 161 (Flapjack.WordRegImm.imm 18446744073709551568#64))))).val
theorem input1052_def : input1052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 165 161 (Flapjack.WordRegImm.imm 18446744073709551568#64)))) := by
  unfold input1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 165 161 (Flapjack.WordRegImm.imm 18446744073709551568#64))))).val
theorem output1052_def : output1052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 165 161 (Flapjack.WordRegImm.imm 18446744073709551568#64)))) := by
  unfold output1052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1052_skip : Flapjack.WordAlloc.isSkip output1052 = false := by
  rw [output1052_def]
  conv => lhs; cbv
  try rfl


def value531 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157)).val
theorem input1053_def : input1053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157) := by
  unfold input1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157)).val
theorem output1053_def : output1053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 161 157) := by
  unfold output1053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1053_skip : Flapjack.WordAlloc.isSkip output1053 = false := by
  rw [output1053_def]
  conv => lhs; cbv
  try rfl


def value532 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1054_def : input1054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1054_def : output1054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 157 153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1054_skip : Flapjack.WordAlloc.isSkip output1054 = false := by
  rw [output1054_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength)).val
theorem input1055_def : input1055 = (Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength) := by
  unfold input1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength)).val
theorem output1055_def : output1055 = (Flapjack.WordLangProgHOL.get 153 Flapjack.WordStore.heapLength) := by
  unfold output1055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1055_skip : Flapjack.WordAlloc.isSkip output1055 = false := by
  rw [output1055_def]
  conv => lhs; cbv
  try rfl


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


def value548 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 81 77 (Flapjack.WordRegImm.imm 18446744073709551592#64))))).val
theorem input1088_def : input1088 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 81 77 (Flapjack.WordRegImm.imm 18446744073709551592#64)))) := by
  unfold input1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 81 77 (Flapjack.WordRegImm.imm 18446744073709551592#64))))).val
theorem output1088_def : output1088 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 81 77 (Flapjack.WordRegImm.imm 18446744073709551592#64)))) := by
  unfold output1088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1088_skip : Flapjack.WordAlloc.isSkip output1088 = false := by
  rw [output1088_def]
  conv => lhs; cbv
  try rfl


def value549 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 77 73)).val
theorem input1089_def : input1089 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 77 73) := by
  unfold input1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 77 73)).val
theorem output1089_def : output1089 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 77 73) := by
  unfold output1089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1089_skip : Flapjack.WordAlloc.isSkip output1089 = false := by
  rw [output1089_def]
  conv => lhs; cbv
  try rfl


def value550 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 73 69 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1090_def : input1090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 73 69 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 73 69 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1090_def : output1090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 73 69 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1090_skip : Flapjack.WordAlloc.isSkip output1090 = false := by
  rw [output1090_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 69 Flapjack.WordStore.heapLength)).val
theorem input1091_def : input1091 = (Flapjack.WordLangProgHOL.get 69 Flapjack.WordStore.heapLength) := by
  unfold input1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 69 Flapjack.WordStore.heapLength)).val
theorem output1091_def : output1091 = (Flapjack.WordLangProgHOL.get 69 Flapjack.WordStore.heapLength) := by
  unfold output1091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1091_skip : Flapjack.WordAlloc.isSkip output1091 = false := by
  rw [output1091_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1091 input1090)).val
theorem input1092_def : input1092 = (.seq input1091 input1090) := by
  unfold input1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1091 output1090)).val
theorem output1092_def : output1092 = (.seq output1091 output1090) := by
  unfold output1092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1092_skip : Flapjack.WordAlloc.isSkip output1092 = false := by
  rw [output1092_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1092 input1089)).val
theorem input1093_def : input1093 = (.seq input1092 input1089) := by
  unfold input1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1092 output1089)).val
theorem output1093_def : output1093 = (.seq output1092 output1089) := by
  unfold output1093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1093_skip : Flapjack.WordAlloc.isSkip output1093 = false := by
  rw [output1093_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1093 input1088)).val
theorem input1094_def : input1094 = (.seq input1093 input1088) := by
  unfold input1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1093 output1088)).val
theorem output1094_def : output1094 = (.seq output1093 output1088) := by
  unfold output1094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1094_skip : Flapjack.WordAlloc.isSkip output1094 = false := by
  rw [output1094_def]
  conv => lhs; cbv
  try rfl


def value551 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 61 (Flapjack.WordLangAddr.addr 65 0#64)))).val
theorem input1095_def : input1095 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 61 (Flapjack.WordLangAddr.addr 65 0#64))) := by
  unfold input1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 61 (Flapjack.WordLangAddr.addr 65 0#64)))).val
theorem output1095_def : output1095 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 61 (Flapjack.WordLangAddr.addr 65 0#64))) := by
  unfold output1095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1095_skip : Flapjack.WordAlloc.isSkip output1095 = false := by
  rw [output1095_def]
  conv => lhs; cbv
  try rfl


def value552 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(65, 53)])).val
theorem input1096_def : input1096 = (Flapjack.WordLangProgHOL.move 0 [(65, 53)]) := by
  unfold input1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(65, 53)])).val
theorem output1096_def : output1096 = (Flapjack.WordLangProgHOL.move 0 [(65, 53)]) := by
  unfold output1096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1096_skip : Flapjack.WordAlloc.isSkip output1096 = false := by
  rw [output1096_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1096 input1095)).val
theorem input1097_def : input1097 = (.seq input1096 input1095) := by
  unfold input1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1096 output1095)).val
theorem output1097_def : output1097 = (.seq output1096 output1095) := by
  unfold output1097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1097_skip : Flapjack.WordAlloc.isSkip output1097 = false := by
  rw [output1097_def]
  conv => lhs; cbv
  try rfl


def value553 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem input1098_def : input1098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold input1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem output1098_def : output1098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold output1098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1098_skip : Flapjack.WordAlloc.isSkip output1098 = false := by
  rw [output1098_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64))).val
theorem input1099_def : input1099 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)) := by
  unfold input1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1099_def : output1099 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1099_skip : Flapjack.WordAlloc.isSkip output1099 = true := by
  rw [output1099_def]
  conv => lhs; cbv
  try rfl


def value554 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 49 (Flapjack.WordRegImm.imm 18446744073709551600#64))))).val
theorem input1100_def : input1100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 49 (Flapjack.WordRegImm.imm 18446744073709551600#64)))) := by
  unfold input1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 49 (Flapjack.WordRegImm.imm 18446744073709551600#64))))).val
theorem output1100_def : output1100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 53 49 (Flapjack.WordRegImm.imm 18446744073709551600#64)))) := by
  unfold output1100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1100_skip : Flapjack.WordAlloc.isSkip output1100 = false := by
  rw [output1100_def]
  conv => lhs; cbv
  try rfl


def value555 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45)).val
theorem input1101_def : input1101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45) := by
  unfold input1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45)).val
theorem output1101_def : output1101 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 49 45) := by
  unfold output1101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1101_skip : Flapjack.WordAlloc.isSkip output1101 = false := by
  rw [output1101_def]
  conv => lhs; cbv
  try rfl


def value556 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1102_def : input1102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1102_def : output1102 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 41 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1102_skip : Flapjack.WordAlloc.isSkip output1102 = false := by
  rw [output1102_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength)).val
theorem input1103_def : input1103 = (Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength) := by
  unfold input1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength)).val
theorem output1103_def : output1103 = (Flapjack.WordLangProgHOL.get 41 Flapjack.WordStore.heapLength) := by
  unfold output1103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1103_skip : Flapjack.WordAlloc.isSkip output1103 = false := by
  rw [output1103_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1103 input1102)).val
theorem input1104_def : input1104 = (.seq input1103 input1102) := by
  unfold input1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1103 output1102)).val
theorem output1104_def : output1104 = (.seq output1103 output1102) := by
  unfold output1104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1104_skip : Flapjack.WordAlloc.isSkip output1104 = false := by
  rw [output1104_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1104 input1101)).val
theorem input1105_def : input1105 = (.seq input1104 input1101) := by
  unfold input1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1104 output1101)).val
theorem output1105_def : output1105 = (.seq output1104 output1101) := by
  unfold output1105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1105_skip : Flapjack.WordAlloc.isSkip output1105 = false := by
  rw [output1105_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1105 input1100)).val
theorem input1106_def : input1106 = (.seq input1105 input1100) := by
  unfold input1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1105 output1100)).val
theorem output1106_def : output1106 = (.seq output1105 output1100) := by
  unfold output1106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1106_skip : Flapjack.WordAlloc.isSkip output1106 = false := by
  rw [output1106_def]
  conv => lhs; cbv
  try rfl


def value557 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 33 (Flapjack.WordLangAddr.addr 37 0#64)))).val
theorem input1107_def : input1107 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 33 (Flapjack.WordLangAddr.addr 37 0#64))) := by
  unfold input1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 33 (Flapjack.WordLangAddr.addr 37 0#64)))).val
theorem output1107_def : output1107 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 33 (Flapjack.WordLangAddr.addr 37 0#64))) := by
  unfold output1107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1107_skip : Flapjack.WordAlloc.isSkip output1107 = false := by
  rw [output1107_def]
  conv => lhs; cbv
  try rfl


def value558 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(37, 25)])).val
theorem input1108_def : input1108 = (Flapjack.WordLangProgHOL.move 0 [(37, 25)]) := by
  unfold input1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(37, 25)])).val
theorem output1108_def : output1108 = (Flapjack.WordLangProgHOL.move 0 [(37, 25)]) := by
  unfold output1108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1108_skip : Flapjack.WordAlloc.isSkip output1108 = false := by
  rw [output1108_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1108 input1107)).val
theorem input1109_def : input1109 = (.seq input1108 input1107) := by
  unfold input1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1108 output1107)).val
theorem output1109_def : output1109 = (.seq output1108 output1107) := by
  unfold output1109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1109_skip : Flapjack.WordAlloc.isSkip output1109 = false := by
  rw [output1109_def]
  conv => lhs; cbv
  try rfl


def value559 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem input1110_def : input1110 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold input1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem output1110_def : output1110 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold output1110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1110_skip : Flapjack.WordAlloc.isSkip output1110 = false := by
  rw [output1110_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64))).val
theorem input1111_def : input1111 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 0#64)) := by
  unfold input1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1111_def : output1111 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1111_skip : Flapjack.WordAlloc.isSkip output1111 = true := by
  rw [output1111_def]
  conv => lhs; cbv
  try rfl


def value560 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25 21 (Flapjack.WordRegImm.imm 18446744073709551608#64))))).val
theorem input1112_def : input1112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25 21 (Flapjack.WordRegImm.imm 18446744073709551608#64)))) := by
  unfold input1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25 21 (Flapjack.WordRegImm.imm 18446744073709551608#64))))).val
theorem output1112_def : output1112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25 21 (Flapjack.WordRegImm.imm 18446744073709551608#64)))) := by
  unfold output1112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1112_skip : Flapjack.WordAlloc.isSkip output1112 = false := by
  rw [output1112_def]
  conv => lhs; cbv
  try rfl


def value561 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21 17)).val
theorem input1113_def : input1113 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21 17) := by
  unfold input1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21 17)).val
theorem output1113_def : output1113 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21 17) := by
  unfold output1113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1113_skip : Flapjack.WordAlloc.isSkip output1113 = false := by
  rw [output1113_def]
  conv => lhs; cbv
  try rfl


def value562 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17 13 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1114_def : input1114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17 13 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17 13 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1114_def : output1114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17 13 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1114_skip : Flapjack.WordAlloc.isSkip output1114 = false := by
  rw [output1114_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13 Flapjack.WordStore.heapLength)).val
theorem input1115_def : input1115 = (Flapjack.WordLangProgHOL.get 13 Flapjack.WordStore.heapLength) := by
  unfold input1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13 Flapjack.WordStore.heapLength)).val
theorem output1115_def : output1115 = (Flapjack.WordLangProgHOL.get 13 Flapjack.WordStore.heapLength) := by
  unfold output1115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1115_skip : Flapjack.WordAlloc.isSkip output1115 = false := by
  rw [output1115_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1115 input1114)).val
theorem input1116_def : input1116 = (.seq input1115 input1114) := by
  unfold input1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1115 output1114)).val
theorem output1116_def : output1116 = (.seq output1115 output1114) := by
  unfold output1116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1116_skip : Flapjack.WordAlloc.isSkip output1116 = false := by
  rw [output1116_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1116 input1113)).val
theorem input1117_def : input1117 = (.seq input1116 input1113) := by
  unfold input1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1116 output1113)).val
theorem output1117_def : output1117 = (.seq output1116 output1113) := by
  unfold output1117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1117_skip : Flapjack.WordAlloc.isSkip output1117 = false := by
  rw [output1117_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1117 input1112)).val
theorem input1118_def : input1118 = (.seq input1117 input1112) := by
  unfold input1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1117 output1112)).val
theorem output1118_def : output1118 = (.seq output1117 output1112) := by
  unfold output1118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1118_skip : Flapjack.WordAlloc.isSkip output1118 = false := by
  rw [output1118_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1118 input1111)).val
theorem input1119_def : input1119 = (.seq input1118 input1111) := by
  unfold input1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1118)).val
theorem output1119_def : output1119 = (output1118) := by
  unfold output1119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1119_skip : Flapjack.WordAlloc.isSkip output1119 = false := by
  rw [output1119_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1119 input1110)).val
theorem input1120_def : input1120 = (.seq input1119 input1110) := by
  unfold input1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1119 output1110)).val
theorem output1120_def : output1120 = (.seq output1119 output1110) := by
  unfold output1120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1120_skip : Flapjack.WordAlloc.isSkip output1120 = false := by
  rw [output1120_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1120 input1109)).val
theorem input1121_def : input1121 = (.seq input1120 input1109) := by
  unfold input1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1120 output1109)).val
theorem output1121_def : output1121 = (.seq output1120 output1109) := by
  unfold output1121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1121_skip : Flapjack.WordAlloc.isSkip output1121 = false := by
  rw [output1121_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1121 input1106)).val
theorem input1122_def : input1122 = (.seq input1121 input1106) := by
  unfold input1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1121 output1106)).val
theorem output1122_def : output1122 = (.seq output1121 output1106) := by
  unfold output1122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1122_skip : Flapjack.WordAlloc.isSkip output1122 = false := by
  rw [output1122_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1122 input1099)).val
theorem input1123_def : input1123 = (.seq input1122 input1099) := by
  unfold input1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1122)).val
theorem output1123_def : output1123 = (output1122) := by
  unfold output1123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1123_skip : Flapjack.WordAlloc.isSkip output1123 = false := by
  rw [output1123_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1123 input1098)).val
theorem input1124_def : input1124 = (.seq input1123 input1098) := by
  unfold input1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1123 output1098)).val
theorem output1124_def : output1124 = (.seq output1123 output1098) := by
  unfold output1124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1124_skip : Flapjack.WordAlloc.isSkip output1124 = false := by
  rw [output1124_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1124 input1097)).val
theorem input1125_def : input1125 = (.seq input1124 input1097) := by
  unfold input1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1124 output1097)).val
theorem output1125_def : output1125 = (.seq output1124 output1097) := by
  unfold output1125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1125_skip : Flapjack.WordAlloc.isSkip output1125 = false := by
  rw [output1125_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1125 input1094)).val
theorem input1126_def : input1126 = (.seq input1125 input1094) := by
  unfold input1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1125 output1094)).val
theorem output1126_def : output1126 = (.seq output1125 output1094) := by
  unfold output1126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1126_skip : Flapjack.WordAlloc.isSkip output1126 = false := by
  rw [output1126_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1126 input1087)).val
theorem input1127_def : input1127 = (.seq input1126 input1087) := by
  unfold input1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1126)).val
theorem output1127_def : output1127 = (output1126) := by
  unfold output1127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1127_skip : Flapjack.WordAlloc.isSkip output1127 = false := by
  rw [output1127_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1127 input1086)).val
theorem input1128_def : input1128 = (.seq input1127 input1086) := by
  unfold input1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1127 output1086)).val
theorem output1128_def : output1128 = (.seq output1127 output1086) := by
  unfold output1128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1128_skip : Flapjack.WordAlloc.isSkip output1128 = false := by
  rw [output1128_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1128 input1085)).val
theorem input1129_def : input1129 = (.seq input1128 input1085) := by
  unfold input1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1128 output1085)).val
theorem output1129_def : output1129 = (.seq output1128 output1085) := by
  unfold output1129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1129_skip : Flapjack.WordAlloc.isSkip output1129 = false := by
  rw [output1129_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1129 input1082)).val
theorem input1130_def : input1130 = (.seq input1129 input1082) := by
  unfold input1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1129 output1082)).val
theorem output1130_def : output1130 = (.seq output1129 output1082) := by
  unfold output1130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1130_skip : Flapjack.WordAlloc.isSkip output1130 = false := by
  rw [output1130_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1130 input1075)).val
theorem input1131_def : input1131 = (.seq input1130 input1075) := by
  unfold input1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1130)).val
theorem output1131_def : output1131 = (output1130) := by
  unfold output1131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1131_skip : Flapjack.WordAlloc.isSkip output1131 = false := by
  rw [output1131_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1131 input1074)).val
theorem input1132_def : input1132 = (.seq input1131 input1074) := by
  unfold input1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1131 output1074)).val
theorem output1132_def : output1132 = (.seq output1131 output1074) := by
  unfold output1132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1132_skip : Flapjack.WordAlloc.isSkip output1132 = false := by
  rw [output1132_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1132 input1073)).val
theorem input1133_def : input1133 = (.seq input1132 input1073) := by
  unfold input1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1132 output1073)).val
theorem output1133_def : output1133 = (.seq output1132 output1073) := by
  unfold output1133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1133_skip : Flapjack.WordAlloc.isSkip output1133 = false := by
  rw [output1133_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1133 input1070)).val
theorem input1134_def : input1134 = (.seq input1133 input1070) := by
  unfold input1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1133 output1070)).val
theorem output1134_def : output1134 = (.seq output1133 output1070) := by
  unfold output1134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1134_skip : Flapjack.WordAlloc.isSkip output1134 = false := by
  rw [output1134_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1134 input1063)).val
theorem input1135_def : input1135 = (.seq input1134 input1063) := by
  unfold input1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1134)).val
theorem output1135_def : output1135 = (output1134) := by
  unfold output1135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1135_skip : Flapjack.WordAlloc.isSkip output1135 = false := by
  rw [output1135_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1135 input1062)).val
theorem input1136_def : input1136 = (.seq input1135 input1062) := by
  unfold input1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1135 output1062)).val
theorem output1136_def : output1136 = (.seq output1135 output1062) := by
  unfold output1136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1136_skip : Flapjack.WordAlloc.isSkip output1136 = false := by
  rw [output1136_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1136 input1061)).val
theorem input1137_def : input1137 = (.seq input1136 input1061) := by
  unfold input1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1136 output1061)).val
theorem output1137_def : output1137 = (.seq output1136 output1061) := by
  unfold output1137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1137_skip : Flapjack.WordAlloc.isSkip output1137 = false := by
  rw [output1137_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1137 input1058)).val
theorem input1138_def : input1138 = (.seq input1137 input1058) := by
  unfold input1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1137 output1058)).val
theorem output1138_def : output1138 = (.seq output1137 output1058) := by
  unfold output1138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1138_skip : Flapjack.WordAlloc.isSkip output1138 = false := by
  rw [output1138_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1138 input1051)).val
theorem input1139_def : input1139 = (.seq input1138 input1051) := by
  unfold input1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1138)).val
theorem output1139_def : output1139 = (output1138) := by
  unfold output1139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1139_skip : Flapjack.WordAlloc.isSkip output1139 = false := by
  rw [output1139_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1139 input1050)).val
theorem input1140_def : input1140 = (.seq input1139 input1050) := by
  unfold input1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1139 output1050)).val
theorem output1140_def : output1140 = (.seq output1139 output1050) := by
  unfold output1140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1140_skip : Flapjack.WordAlloc.isSkip output1140 = false := by
  rw [output1140_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1140 input1049)).val
theorem input1141_def : input1141 = (.seq input1140 input1049) := by
  unfold input1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1140 output1049)).val
theorem output1141_def : output1141 = (.seq output1140 output1049) := by
  unfold output1141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1141_skip : Flapjack.WordAlloc.isSkip output1141 = false := by
  rw [output1141_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1141 input1046)).val
theorem input1142_def : input1142 = (.seq input1141 input1046) := by
  unfold input1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1141 output1046)).val
theorem output1142_def : output1142 = (.seq output1141 output1046) := by
  unfold output1142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1142_skip : Flapjack.WordAlloc.isSkip output1142 = false := by
  rw [output1142_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1142 input1039)).val
theorem input1143_def : input1143 = (.seq input1142 input1039) := by
  unfold input1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1142)).val
theorem output1143_def : output1143 = (output1142) := by
  unfold output1143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1143_skip : Flapjack.WordAlloc.isSkip output1143 = false := by
  rw [output1143_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1143 input1038)).val
theorem input1144_def : input1144 = (.seq input1143 input1038) := by
  unfold input1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1143 output1038)).val
theorem output1144_def : output1144 = (.seq output1143 output1038) := by
  unfold output1144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1144_skip : Flapjack.WordAlloc.isSkip output1144 = false := by
  rw [output1144_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1144 input1037)).val
theorem input1145_def : input1145 = (.seq input1144 input1037) := by
  unfold input1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1144 output1037)).val
theorem output1145_def : output1145 = (.seq output1144 output1037) := by
  unfold output1145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1145_skip : Flapjack.WordAlloc.isSkip output1145 = false := by
  rw [output1145_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1145 input1034)).val
theorem input1146_def : input1146 = (.seq input1145 input1034) := by
  unfold input1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1145 output1034)).val
theorem output1146_def : output1146 = (.seq output1145 output1034) := by
  unfold output1146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1146_skip : Flapjack.WordAlloc.isSkip output1146 = false := by
  rw [output1146_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1146 input1027)).val
theorem input1147_def : input1147 = (.seq input1146 input1027) := by
  unfold input1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1146)).val
theorem output1147_def : output1147 = (output1146) := by
  unfold output1147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1147_skip : Flapjack.WordAlloc.isSkip output1147 = false := by
  rw [output1147_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1147 input1026)).val
theorem input1148_def : input1148 = (.seq input1147 input1026) := by
  unfold input1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1147 output1026)).val
theorem output1148_def : output1148 = (.seq output1147 output1026) := by
  unfold output1148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1148_skip : Flapjack.WordAlloc.isSkip output1148 = false := by
  rw [output1148_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1148 input1025)).val
theorem input1149_def : input1149 = (.seq input1148 input1025) := by
  unfold input1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1148 output1025)).val
theorem output1149_def : output1149 = (.seq output1148 output1025) := by
  unfold output1149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1149_skip : Flapjack.WordAlloc.isSkip output1149 = false := by
  rw [output1149_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1149 input1022)).val
theorem input1150_def : input1150 = (.seq input1149 input1022) := by
  unfold input1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1149 output1022)).val
theorem output1150_def : output1150 = (.seq output1149 output1022) := by
  unfold output1150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1150_skip : Flapjack.WordAlloc.isSkip output1150 = false := by
  rw [output1150_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1150 input1015)).val
theorem input1151_def : input1151 = (.seq input1150 input1015) := by
  unfold input1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1150)).val
theorem output1151_def : output1151 = (output1150) := by
  unfold output1151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1151_skip : Flapjack.WordAlloc.isSkip output1151 = false := by
  rw [output1151_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1151 input1014)).val
theorem input1152_def : input1152 = (.seq input1151 input1014) := by
  unfold input1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1151 output1014)).val
theorem output1152_def : output1152 = (.seq output1151 output1014) := by
  unfold output1152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1152_skip : Flapjack.WordAlloc.isSkip output1152 = false := by
  rw [output1152_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1152 input1013)).val
theorem input1153_def : input1153 = (.seq input1152 input1013) := by
  unfold input1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1152 output1013)).val
theorem output1153_def : output1153 = (.seq output1152 output1013) := by
  unfold output1153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1153_skip : Flapjack.WordAlloc.isSkip output1153 = false := by
  rw [output1153_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1153 input1010)).val
theorem input1154_def : input1154 = (.seq input1153 input1010) := by
  unfold input1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1153 output1010)).val
theorem output1154_def : output1154 = (.seq output1153 output1010) := by
  unfold output1154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1154_skip : Flapjack.WordAlloc.isSkip output1154 = false := by
  rw [output1154_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1154 input1003)).val
theorem input1155_def : input1155 = (.seq input1154 input1003) := by
  unfold input1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1154)).val
theorem output1155_def : output1155 = (output1154) := by
  unfold output1155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1155_skip : Flapjack.WordAlloc.isSkip output1155 = false := by
  rw [output1155_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1155 input1002)).val
theorem input1156_def : input1156 = (.seq input1155 input1002) := by
  unfold input1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1155 output1002)).val
theorem output1156_def : output1156 = (.seq output1155 output1002) := by
  unfold output1156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1156_skip : Flapjack.WordAlloc.isSkip output1156 = false := by
  rw [output1156_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1156 input1001)).val
theorem input1157_def : input1157 = (.seq input1156 input1001) := by
  unfold input1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1156 output1001)).val
theorem output1157_def : output1157 = (.seq output1156 output1001) := by
  unfold output1157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1157_skip : Flapjack.WordAlloc.isSkip output1157 = false := by
  rw [output1157_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1157 input998)).val
theorem input1158_def : input1158 = (.seq input1157 input998) := by
  unfold input1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1157 output998)).val
theorem output1158_def : output1158 = (.seq output1157 output998) := by
  unfold output1158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1158_skip : Flapjack.WordAlloc.isSkip output1158 = false := by
  rw [output1158_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1158 input991)).val
theorem input1159_def : input1159 = (.seq input1158 input991) := by
  unfold input1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1158)).val
theorem output1159_def : output1159 = (output1158) := by
  unfold output1159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1159_skip : Flapjack.WordAlloc.isSkip output1159 = false := by
  rw [output1159_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1159 input990)).val
theorem input1160_def : input1160 = (.seq input1159 input990) := by
  unfold input1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1159 output990)).val
theorem output1160_def : output1160 = (.seq output1159 output990) := by
  unfold output1160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1160_skip : Flapjack.WordAlloc.isSkip output1160 = false := by
  rw [output1160_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1160 input989)).val
theorem input1161_def : input1161 = (.seq input1160 input989) := by
  unfold input1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1160 output989)).val
theorem output1161_def : output1161 = (.seq output1160 output989) := by
  unfold output1161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1161_skip : Flapjack.WordAlloc.isSkip output1161 = false := by
  rw [output1161_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1161 input986)).val
theorem input1162_def : input1162 = (.seq input1161 input986) := by
  unfold input1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1161 output986)).val
theorem output1162_def : output1162 = (.seq output1161 output986) := by
  unfold output1162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1162_skip : Flapjack.WordAlloc.isSkip output1162 = false := by
  rw [output1162_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1162 input979)).val
theorem input1163_def : input1163 = (.seq input1162 input979) := by
  unfold input1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1162)).val
theorem output1163_def : output1163 = (output1162) := by
  unfold output1163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1163_skip : Flapjack.WordAlloc.isSkip output1163 = false := by
  rw [output1163_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1163 input978)).val
theorem input1164_def : input1164 = (.seq input1163 input978) := by
  unfold input1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1163 output978)).val
theorem output1164_def : output1164 = (.seq output1163 output978) := by
  unfold output1164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1164_skip : Flapjack.WordAlloc.isSkip output1164 = false := by
  rw [output1164_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1164 input977)).val
theorem input1165_def : input1165 = (.seq input1164 input977) := by
  unfold input1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1164 output977)).val
theorem output1165_def : output1165 = (.seq output1164 output977) := by
  unfold output1165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1165_skip : Flapjack.WordAlloc.isSkip output1165 = false := by
  rw [output1165_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1165 input974)).val
theorem input1166_def : input1166 = (.seq input1165 input974) := by
  unfold input1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1165 output974)).val
theorem output1166_def : output1166 = (.seq output1165 output974) := by
  unfold output1166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1166_skip : Flapjack.WordAlloc.isSkip output1166 = false := by
  rw [output1166_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1166 input967)).val
theorem input1167_def : input1167 = (.seq input1166 input967) := by
  unfold input1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1166)).val
theorem output1167_def : output1167 = (output1166) := by
  unfold output1167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1167_skip : Flapjack.WordAlloc.isSkip output1167 = false := by
  rw [output1167_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1167 input966)).val
theorem input1168_def : input1168 = (.seq input1167 input966) := by
  unfold input1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1167 output966)).val
theorem output1168_def : output1168 = (.seq output1167 output966) := by
  unfold output1168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1168_skip : Flapjack.WordAlloc.isSkip output1168 = false := by
  rw [output1168_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1168 input965)).val
theorem input1169_def : input1169 = (.seq input1168 input965) := by
  unfold input1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1168 output965)).val
theorem output1169_def : output1169 = (.seq output1168 output965) := by
  unfold output1169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1169_skip : Flapjack.WordAlloc.isSkip output1169 = false := by
  rw [output1169_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1169 input962)).val
theorem input1170_def : input1170 = (.seq input1169 input962) := by
  unfold input1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1169 output962)).val
theorem output1170_def : output1170 = (.seq output1169 output962) := by
  unfold output1170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1170_skip : Flapjack.WordAlloc.isSkip output1170 = false := by
  rw [output1170_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1170 input955)).val
theorem input1171_def : input1171 = (.seq input1170 input955) := by
  unfold input1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1170)).val
theorem output1171_def : output1171 = (output1170) := by
  unfold output1171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1171_skip : Flapjack.WordAlloc.isSkip output1171 = false := by
  rw [output1171_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1171 input954)).val
theorem input1172_def : input1172 = (.seq input1171 input954) := by
  unfold input1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1171 output954)).val
theorem output1172_def : output1172 = (.seq output1171 output954) := by
  unfold output1172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1172_skip : Flapjack.WordAlloc.isSkip output1172 = false := by
  rw [output1172_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1172 input953)).val
theorem input1173_def : input1173 = (.seq input1172 input953) := by
  unfold input1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1172 output953)).val
theorem output1173_def : output1173 = (.seq output1172 output953) := by
  unfold output1173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1173_skip : Flapjack.WordAlloc.isSkip output1173 = false := by
  rw [output1173_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1173 input950)).val
theorem input1174_def : input1174 = (.seq input1173 input950) := by
  unfold input1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1173 output950)).val
theorem output1174_def : output1174 = (.seq output1173 output950) := by
  unfold output1174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1174_skip : Flapjack.WordAlloc.isSkip output1174 = false := by
  rw [output1174_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1174 input943)).val
theorem input1175_def : input1175 = (.seq input1174 input943) := by
  unfold input1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1174)).val
theorem output1175_def : output1175 = (output1174) := by
  unfold output1175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1175_skip : Flapjack.WordAlloc.isSkip output1175 = false := by
  rw [output1175_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1175 input942)).val
theorem input1176_def : input1176 = (.seq input1175 input942) := by
  unfold input1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1175 output942)).val
theorem output1176_def : output1176 = (.seq output1175 output942) := by
  unfold output1176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1176_skip : Flapjack.WordAlloc.isSkip output1176 = false := by
  rw [output1176_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1176 input941)).val
theorem input1177_def : input1177 = (.seq input1176 input941) := by
  unfold input1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1176 output941)).val
theorem output1177_def : output1177 = (.seq output1176 output941) := by
  unfold output1177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1177_skip : Flapjack.WordAlloc.isSkip output1177 = false := by
  rw [output1177_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1177 input938)).val
theorem input1178_def : input1178 = (.seq input1177 input938) := by
  unfold input1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1177 output938)).val
theorem output1178_def : output1178 = (.seq output1177 output938) := by
  unfold output1178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1178_skip : Flapjack.WordAlloc.isSkip output1178 = false := by
  rw [output1178_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1178 input931)).val
theorem input1179_def : input1179 = (.seq input1178 input931) := by
  unfold input1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1178)).val
theorem output1179_def : output1179 = (output1178) := by
  unfold output1179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1179_skip : Flapjack.WordAlloc.isSkip output1179 = false := by
  rw [output1179_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1179 input930)).val
theorem input1180_def : input1180 = (.seq input1179 input930) := by
  unfold input1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1179 output930)).val
theorem output1180_def : output1180 = (.seq output1179 output930) := by
  unfold output1180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1180_skip : Flapjack.WordAlloc.isSkip output1180 = false := by
  rw [output1180_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1180 input929)).val
theorem input1181_def : input1181 = (.seq input1180 input929) := by
  unfold input1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1180 output929)).val
theorem output1181_def : output1181 = (.seq output1180 output929) := by
  unfold output1181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1181_skip : Flapjack.WordAlloc.isSkip output1181 = false := by
  rw [output1181_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1181 input926)).val
theorem input1182_def : input1182 = (.seq input1181 input926) := by
  unfold input1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1181 output926)).val
theorem output1182_def : output1182 = (.seq output1181 output926) := by
  unfold output1182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1182_skip : Flapjack.WordAlloc.isSkip output1182 = false := by
  rw [output1182_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1182 input919)).val
theorem input1183_def : input1183 = (.seq input1182 input919) := by
  unfold input1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1182)).val
theorem output1183_def : output1183 = (output1182) := by
  unfold output1183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1183_skip : Flapjack.WordAlloc.isSkip output1183 = false := by
  rw [output1183_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1183 input918)).val
theorem input1184_def : input1184 = (.seq input1183 input918) := by
  unfold input1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1183 output918)).val
theorem output1184_def : output1184 = (.seq output1183 output918) := by
  unfold output1184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1184_skip : Flapjack.WordAlloc.isSkip output1184 = false := by
  rw [output1184_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1184 input917)).val
theorem input1185_def : input1185 = (.seq input1184 input917) := by
  unfold input1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1184 output917)).val
theorem output1185_def : output1185 = (.seq output1184 output917) := by
  unfold output1185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1185_skip : Flapjack.WordAlloc.isSkip output1185 = false := by
  rw [output1185_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1185 input914)).val
theorem input1186_def : input1186 = (.seq input1185 input914) := by
  unfold input1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1185 output914)).val
theorem output1186_def : output1186 = (.seq output1185 output914) := by
  unfold output1186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1186_skip : Flapjack.WordAlloc.isSkip output1186 = false := by
  rw [output1186_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1186 input907)).val
theorem input1187_def : input1187 = (.seq input1186 input907) := by
  unfold input1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1186)).val
theorem output1187_def : output1187 = (output1186) := by
  unfold output1187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1187_skip : Flapjack.WordAlloc.isSkip output1187 = false := by
  rw [output1187_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1187 input906)).val
theorem input1188_def : input1188 = (.seq input1187 input906) := by
  unfold input1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1187 output906)).val
theorem output1188_def : output1188 = (.seq output1187 output906) := by
  unfold output1188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1188_skip : Flapjack.WordAlloc.isSkip output1188 = false := by
  rw [output1188_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1188 input905)).val
theorem input1189_def : input1189 = (.seq input1188 input905) := by
  unfold input1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1188 output905)).val
theorem output1189_def : output1189 = (.seq output1188 output905) := by
  unfold output1189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1189_skip : Flapjack.WordAlloc.isSkip output1189 = false := by
  rw [output1189_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1189 input902)).val
theorem input1190_def : input1190 = (.seq input1189 input902) := by
  unfold input1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1189 output902)).val
theorem output1190_def : output1190 = (.seq output1189 output902) := by
  unfold output1190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1190_skip : Flapjack.WordAlloc.isSkip output1190 = false := by
  rw [output1190_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1190 input895)).val
theorem input1191_def : input1191 = (.seq input1190 input895) := by
  unfold input1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1190)).val
theorem output1191_def : output1191 = (output1190) := by
  unfold output1191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1191_skip : Flapjack.WordAlloc.isSkip output1191 = false := by
  rw [output1191_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1191 input894)).val
theorem input1192_def : input1192 = (.seq input1191 input894) := by
  unfold input1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1191 output894)).val
theorem output1192_def : output1192 = (.seq output1191 output894) := by
  unfold output1192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1192_skip : Flapjack.WordAlloc.isSkip output1192 = false := by
  rw [output1192_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1192 input893)).val
theorem input1193_def : input1193 = (.seq input1192 input893) := by
  unfold input1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1192 output893)).val
theorem output1193_def : output1193 = (.seq output1192 output893) := by
  unfold output1193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1193_skip : Flapjack.WordAlloc.isSkip output1193 = false := by
  rw [output1193_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1193 input890)).val
theorem input1194_def : input1194 = (.seq input1193 input890) := by
  unfold input1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1193 output890)).val
theorem output1194_def : output1194 = (.seq output1193 output890) := by
  unfold output1194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1194_skip : Flapjack.WordAlloc.isSkip output1194 = false := by
  rw [output1194_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1194 input883)).val
theorem input1195_def : input1195 = (.seq input1194 input883) := by
  unfold input1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1194)).val
theorem output1195_def : output1195 = (output1194) := by
  unfold output1195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1195_skip : Flapjack.WordAlloc.isSkip output1195 = false := by
  rw [output1195_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1195 input882)).val
theorem input1196_def : input1196 = (.seq input1195 input882) := by
  unfold input1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1195 output882)).val
theorem output1196_def : output1196 = (.seq output1195 output882) := by
  unfold output1196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1196_skip : Flapjack.WordAlloc.isSkip output1196 = false := by
  rw [output1196_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1196 input881)).val
theorem input1197_def : input1197 = (.seq input1196 input881) := by
  unfold input1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1196 output881)).val
theorem output1197_def : output1197 = (.seq output1196 output881) := by
  unfold output1197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1197_skip : Flapjack.WordAlloc.isSkip output1197 = false := by
  rw [output1197_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1197 input878)).val
theorem input1198_def : input1198 = (.seq input1197 input878) := by
  unfold input1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1197 output878)).val
theorem output1198_def : output1198 = (.seq output1197 output878) := by
  unfold output1198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1198_skip : Flapjack.WordAlloc.isSkip output1198 = false := by
  rw [output1198_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1198 input871)).val
theorem input1199_def : input1199 = (.seq input1198 input871) := by
  unfold input1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1198)).val
theorem output1199_def : output1199 = (output1198) := by
  unfold output1199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1199_skip : Flapjack.WordAlloc.isSkip output1199 = false := by
  rw [output1199_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1199 input870)).val
theorem input1200_def : input1200 = (.seq input1199 input870) := by
  unfold input1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1199 output870)).val
theorem output1200_def : output1200 = (.seq output1199 output870) := by
  unfold output1200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1200_skip : Flapjack.WordAlloc.isSkip output1200 = false := by
  rw [output1200_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1200 input869)).val
theorem input1201_def : input1201 = (.seq input1200 input869) := by
  unfold input1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1200 output869)).val
theorem output1201_def : output1201 = (.seq output1200 output869) := by
  unfold output1201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1201_skip : Flapjack.WordAlloc.isSkip output1201 = false := by
  rw [output1201_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1201 input866)).val
theorem input1202_def : input1202 = (.seq input1201 input866) := by
  unfold input1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1201 output866)).val
theorem output1202_def : output1202 = (.seq output1201 output866) := by
  unfold output1202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1202_skip : Flapjack.WordAlloc.isSkip output1202 = false := by
  rw [output1202_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1202 input859)).val
theorem input1203_def : input1203 = (.seq input1202 input859) := by
  unfold input1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1202)).val
theorem output1203_def : output1203 = (output1202) := by
  unfold output1203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1203_skip : Flapjack.WordAlloc.isSkip output1203 = false := by
  rw [output1203_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1203 input858)).val
theorem input1204_def : input1204 = (.seq input1203 input858) := by
  unfold input1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1203 output858)).val
theorem output1204_def : output1204 = (.seq output1203 output858) := by
  unfold output1204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1204_skip : Flapjack.WordAlloc.isSkip output1204 = false := by
  rw [output1204_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1204 input857)).val
theorem input1205_def : input1205 = (.seq input1204 input857) := by
  unfold input1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1204 output857)).val
theorem output1205_def : output1205 = (.seq output1204 output857) := by
  unfold output1205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1205_skip : Flapjack.WordAlloc.isSkip output1205 = false := by
  rw [output1205_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1205 input854)).val
theorem input1206_def : input1206 = (.seq input1205 input854) := by
  unfold input1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1205 output854)).val
theorem output1206_def : output1206 = (.seq output1205 output854) := by
  unfold output1206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1206_skip : Flapjack.WordAlloc.isSkip output1206 = false := by
  rw [output1206_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1206 input847)).val
theorem input1207_def : input1207 = (.seq input1206 input847) := by
  unfold input1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1206)).val
theorem output1207_def : output1207 = (output1206) := by
  unfold output1207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1207_skip : Flapjack.WordAlloc.isSkip output1207 = false := by
  rw [output1207_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1207 input846)).val
theorem input1208_def : input1208 = (.seq input1207 input846) := by
  unfold input1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1207 output846)).val
theorem output1208_def : output1208 = (.seq output1207 output846) := by
  unfold output1208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1208_skip : Flapjack.WordAlloc.isSkip output1208 = false := by
  rw [output1208_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1208 input845)).val
theorem input1209_def : input1209 = (.seq input1208 input845) := by
  unfold input1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1208 output845)).val
theorem output1209_def : output1209 = (.seq output1208 output845) := by
  unfold output1209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1209_skip : Flapjack.WordAlloc.isSkip output1209 = false := by
  rw [output1209_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1209 input842)).val
theorem input1210_def : input1210 = (.seq input1209 input842) := by
  unfold input1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1209 output842)).val
theorem output1210_def : output1210 = (.seq output1209 output842) := by
  unfold output1210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1210_skip : Flapjack.WordAlloc.isSkip output1210 = false := by
  rw [output1210_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1210 input835)).val
theorem input1211_def : input1211 = (.seq input1210 input835) := by
  unfold input1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1210)).val
theorem output1211_def : output1211 = (output1210) := by
  unfold output1211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1211_skip : Flapjack.WordAlloc.isSkip output1211 = false := by
  rw [output1211_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1211 input834)).val
theorem input1212_def : input1212 = (.seq input1211 input834) := by
  unfold input1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1211 output834)).val
theorem output1212_def : output1212 = (.seq output1211 output834) := by
  unfold output1212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1212_skip : Flapjack.WordAlloc.isSkip output1212 = false := by
  rw [output1212_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1212 input833)).val
theorem input1213_def : input1213 = (.seq input1212 input833) := by
  unfold input1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1212 output833)).val
theorem output1213_def : output1213 = (.seq output1212 output833) := by
  unfold output1213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1213_skip : Flapjack.WordAlloc.isSkip output1213 = false := by
  rw [output1213_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1213 input830)).val
theorem input1214_def : input1214 = (.seq input1213 input830) := by
  unfold input1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1213 output830)).val
theorem output1214_def : output1214 = (.seq output1213 output830) := by
  unfold output1214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1214_skip : Flapjack.WordAlloc.isSkip output1214 = false := by
  rw [output1214_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1214 input823)).val
theorem input1215_def : input1215 = (.seq input1214 input823) := by
  unfold input1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1214)).val
theorem output1215_def : output1215 = (output1214) := by
  unfold output1215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1215_skip : Flapjack.WordAlloc.isSkip output1215 = false := by
  rw [output1215_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1215 input822)).val
theorem input1216_def : input1216 = (.seq input1215 input822) := by
  unfold input1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1215 output822)).val
theorem output1216_def : output1216 = (.seq output1215 output822) := by
  unfold output1216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1216_skip : Flapjack.WordAlloc.isSkip output1216 = false := by
  rw [output1216_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1216 input821)).val
theorem input1217_def : input1217 = (.seq input1216 input821) := by
  unfold input1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1216 output821)).val
theorem output1217_def : output1217 = (.seq output1216 output821) := by
  unfold output1217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1217_skip : Flapjack.WordAlloc.isSkip output1217 = false := by
  rw [output1217_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1217 input818)).val
theorem input1218_def : input1218 = (.seq input1217 input818) := by
  unfold input1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1217 output818)).val
theorem output1218_def : output1218 = (.seq output1217 output818) := by
  unfold output1218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1218_skip : Flapjack.WordAlloc.isSkip output1218 = false := by
  rw [output1218_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1218 input811)).val
theorem input1219_def : input1219 = (.seq input1218 input811) := by
  unfold input1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1218)).val
theorem output1219_def : output1219 = (output1218) := by
  unfold output1219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1219_skip : Flapjack.WordAlloc.isSkip output1219 = false := by
  rw [output1219_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1219 input810)).val
theorem input1220_def : input1220 = (.seq input1219 input810) := by
  unfold input1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1219 output810)).val
theorem output1220_def : output1220 = (.seq output1219 output810) := by
  unfold output1220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1220_skip : Flapjack.WordAlloc.isSkip output1220 = false := by
  rw [output1220_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1220 input809)).val
theorem input1221_def : input1221 = (.seq input1220 input809) := by
  unfold input1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1220 output809)).val
theorem output1221_def : output1221 = (.seq output1220 output809) := by
  unfold output1221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1221_skip : Flapjack.WordAlloc.isSkip output1221 = false := by
  rw [output1221_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1221 input806)).val
theorem input1222_def : input1222 = (.seq input1221 input806) := by
  unfold input1222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1221 output806)).val
theorem output1222_def : output1222 = (.seq output1221 output806) := by
  unfold output1222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1222_skip : Flapjack.WordAlloc.isSkip output1222 = false := by
  rw [output1222_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1222 input799)).val
theorem input1223_def : input1223 = (.seq input1222 input799) := by
  unfold input1223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1222)).val
theorem output1223_def : output1223 = (output1222) := by
  unfold output1223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1223_skip : Flapjack.WordAlloc.isSkip output1223 = false := by
  rw [output1223_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1223 input798)).val
theorem input1224_def : input1224 = (.seq input1223 input798) := by
  unfold input1224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1223 output798)).val
theorem output1224_def : output1224 = (.seq output1223 output798) := by
  unfold output1224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1224_skip : Flapjack.WordAlloc.isSkip output1224 = false := by
  rw [output1224_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1224 input797)).val
theorem input1225_def : input1225 = (.seq input1224 input797) := by
  unfold input1225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1224 output797)).val
theorem output1225_def : output1225 = (.seq output1224 output797) := by
  unfold output1225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1225_skip : Flapjack.WordAlloc.isSkip output1225 = false := by
  rw [output1225_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1225 input794)).val
theorem input1226_def : input1226 = (.seq input1225 input794) := by
  unfold input1226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1225 output794)).val
theorem output1226_def : output1226 = (.seq output1225 output794) := by
  unfold output1226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1226_skip : Flapjack.WordAlloc.isSkip output1226 = false := by
  rw [output1226_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1226 input787)).val
theorem input1227_def : input1227 = (.seq input1226 input787) := by
  unfold input1227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1226)).val
theorem output1227_def : output1227 = (output1226) := by
  unfold output1227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1227_skip : Flapjack.WordAlloc.isSkip output1227 = false := by
  rw [output1227_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1227 input786)).val
theorem input1228_def : input1228 = (.seq input1227 input786) := by
  unfold input1228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1227 output786)).val
theorem output1228_def : output1228 = (.seq output1227 output786) := by
  unfold output1228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1228_skip : Flapjack.WordAlloc.isSkip output1228 = false := by
  rw [output1228_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1228 input785)).val
theorem input1229_def : input1229 = (.seq input1228 input785) := by
  unfold input1229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1228 output785)).val
theorem output1229_def : output1229 = (.seq output1228 output785) := by
  unfold output1229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1229_skip : Flapjack.WordAlloc.isSkip output1229 = false := by
  rw [output1229_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1229 input782)).val
theorem input1230_def : input1230 = (.seq input1229 input782) := by
  unfold input1230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1229 output782)).val
theorem output1230_def : output1230 = (.seq output1229 output782) := by
  unfold output1230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1230_skip : Flapjack.WordAlloc.isSkip output1230 = false := by
  rw [output1230_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1230 input775)).val
theorem input1231_def : input1231 = (.seq input1230 input775) := by
  unfold input1231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1230)).val
theorem output1231_def : output1231 = (output1230) := by
  unfold output1231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1231_skip : Flapjack.WordAlloc.isSkip output1231 = false := by
  rw [output1231_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1231 input774)).val
theorem input1232_def : input1232 = (.seq input1231 input774) := by
  unfold input1232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1231 output774)).val
theorem output1232_def : output1232 = (.seq output1231 output774) := by
  unfold output1232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1232_skip : Flapjack.WordAlloc.isSkip output1232 = false := by
  rw [output1232_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1232 input773)).val
theorem input1233_def : input1233 = (.seq input1232 input773) := by
  unfold input1233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1232 output773)).val
theorem output1233_def : output1233 = (.seq output1232 output773) := by
  unfold output1233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1233_skip : Flapjack.WordAlloc.isSkip output1233 = false := by
  rw [output1233_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1233 input770)).val
theorem input1234_def : input1234 = (.seq input1233 input770) := by
  unfold input1234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1233 output770)).val
theorem output1234_def : output1234 = (.seq output1233 output770) := by
  unfold output1234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1234_skip : Flapjack.WordAlloc.isSkip output1234 = false := by
  rw [output1234_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1234 input763)).val
theorem input1235_def : input1235 = (.seq input1234 input763) := by
  unfold input1235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1234)).val
theorem output1235_def : output1235 = (output1234) := by
  unfold output1235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1235_skip : Flapjack.WordAlloc.isSkip output1235 = false := by
  rw [output1235_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1235 input762)).val
theorem input1236_def : input1236 = (.seq input1235 input762) := by
  unfold input1236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1235 output762)).val
theorem output1236_def : output1236 = (.seq output1235 output762) := by
  unfold output1236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1236_skip : Flapjack.WordAlloc.isSkip output1236 = false := by
  rw [output1236_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1236 input761)).val
theorem input1237_def : input1237 = (.seq input1236 input761) := by
  unfold input1237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1236 output761)).val
theorem output1237_def : output1237 = (.seq output1236 output761) := by
  unfold output1237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1237_skip : Flapjack.WordAlloc.isSkip output1237 = false := by
  rw [output1237_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1237 input758)).val
theorem input1238_def : input1238 = (.seq input1237 input758) := by
  unfold input1238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1237 output758)).val
theorem output1238_def : output1238 = (.seq output1237 output758) := by
  unfold output1238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1238_skip : Flapjack.WordAlloc.isSkip output1238 = false := by
  rw [output1238_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1238 input751)).val
theorem input1239_def : input1239 = (.seq input1238 input751) := by
  unfold input1239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1238)).val
theorem output1239_def : output1239 = (output1238) := by
  unfold output1239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1239_skip : Flapjack.WordAlloc.isSkip output1239 = false := by
  rw [output1239_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1239 input750)).val
theorem input1240_def : input1240 = (.seq input1239 input750) := by
  unfold input1240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1239 output750)).val
theorem output1240_def : output1240 = (.seq output1239 output750) := by
  unfold output1240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1240_skip : Flapjack.WordAlloc.isSkip output1240 = false := by
  rw [output1240_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1240 input749)).val
theorem input1241_def : input1241 = (.seq input1240 input749) := by
  unfold input1241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1240 output749)).val
theorem output1241_def : output1241 = (.seq output1240 output749) := by
  unfold output1241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1241_skip : Flapjack.WordAlloc.isSkip output1241 = false := by
  rw [output1241_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1241 input746)).val
theorem input1242_def : input1242 = (.seq input1241 input746) := by
  unfold input1242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1241 output746)).val
theorem output1242_def : output1242 = (.seq output1241 output746) := by
  unfold output1242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1242_skip : Flapjack.WordAlloc.isSkip output1242 = false := by
  rw [output1242_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1242 input739)).val
theorem input1243_def : input1243 = (.seq input1242 input739) := by
  unfold input1243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1242)).val
theorem output1243_def : output1243 = (output1242) := by
  unfold output1243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1243_skip : Flapjack.WordAlloc.isSkip output1243 = false := by
  rw [output1243_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1243 input738)).val
theorem input1244_def : input1244 = (.seq input1243 input738) := by
  unfold input1244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1243 output738)).val
theorem output1244_def : output1244 = (.seq output1243 output738) := by
  unfold output1244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1244_skip : Flapjack.WordAlloc.isSkip output1244 = false := by
  rw [output1244_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1244 input737)).val
theorem input1245_def : input1245 = (.seq input1244 input737) := by
  unfold input1245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1244 output737)).val
theorem output1245_def : output1245 = (.seq output1244 output737) := by
  unfold output1245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1245_skip : Flapjack.WordAlloc.isSkip output1245 = false := by
  rw [output1245_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1245 input734)).val
theorem input1246_def : input1246 = (.seq input1245 input734) := by
  unfold input1246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1245 output734)).val
theorem output1246_def : output1246 = (.seq output1245 output734) := by
  unfold output1246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1246_skip : Flapjack.WordAlloc.isSkip output1246 = false := by
  rw [output1246_def]
  conv => lhs; cbv
  try rfl


@[irreducible, cbv_opaque] def input1247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1246 input727)).val
theorem input1247_def : input1247 = (.seq input1246 input727) := by
  unfold input1247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1246)).val
theorem output1247_def : output1247 = (output1246) := by
  unfold output1247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1247_skip : Flapjack.WordAlloc.isSkip output1247 = false := by
  rw [output1247_def]
  conv => lhs; cbv
  try rfl


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



end InitECandidate.Proofs.DeadStages64.Parallel
