import InitECandidate.Proofs.DeadStages64.Chunk020
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input671 input670)).val
theorem input672_def : input672 = (.seq input671 input670) := by
  unfold input672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output671 output670)).val
theorem output672_def : output672 = (.seq output671 output670) := by
  unfold output672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output672_skip : Flapjack.WordAlloc.isSkip output672 = false := by
  rw [output672_def]
  conv => lhs; cbv
  try rfl
theorem node672_eq : Flapjack.WordAlloc.removeDeadStructural input672 value339 value1 value2 = (output672, value4, value1) := by
  rw [input672_def, output672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node670_eq]
  dsimp only
  rw [node671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input672 input669)).val
theorem input673_def : input673 = (.seq input672 input669) := by
  unfold input673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output672 output669)).val
theorem output673_def : output673 = (.seq output672 output669) := by
  unfold output673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output673_skip : Flapjack.WordAlloc.isSkip output673 = false := by
  rw [output673_def]
  conv => lhs; cbv
  try rfl
theorem node673_eq : Flapjack.WordAlloc.removeDeadStructural input673 value338 value1 value2 = (output673, value4, value1) := by
  rw [input673_def, output673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  dsimp only
  rw [node672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input673 input668)).val
theorem input674_def : input674 = (.seq input673 input668) := by
  unfold input674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output673 output668)).val
theorem output674_def : output674 = (.seq output673 output668) := by
  unfold output674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output674_skip : Flapjack.WordAlloc.isSkip output674 = false := by
  rw [output674_def]
  conv => lhs; cbv
  try rfl
theorem node674_eq : Flapjack.WordAlloc.removeDeadStructural input674 value337 value1 value2 = (output674, value4, value1) := by
  rw [input674_def, output674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node668_eq]
  dsimp only
  rw [node673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value341 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1041 (Flapjack.WordLangAddr.addr 1045 0#64)))).val
theorem input675_def : input675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1041 (Flapjack.WordLangAddr.addr 1045 0#64))) := by
  unfold input675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1041 (Flapjack.WordLangAddr.addr 1045 0#64)))).val
theorem output675_def : output675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1041 (Flapjack.WordLangAddr.addr 1045 0#64))) := by
  unfold output675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output675_skip : Flapjack.WordAlloc.isSkip output675 = false := by
  rw [output675_def]
  conv => lhs; cbv
  try rfl
theorem node675_eq : Flapjack.WordAlloc.removeDeadStructural input675 value4 value1 value2 = (output675, value341, value1) := by
  rw [input675_def, output675_def]
  try (conv => lhs; cbv)
  try rfl

def value342 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1045, 1033)])).val
theorem input676_def : input676 = (Flapjack.WordLangProgHOL.move 0 [(1045, 1033)]) := by
  unfold input676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1045, 1033)])).val
theorem output676_def : output676 = (Flapjack.WordLangProgHOL.move 0 [(1045, 1033)]) := by
  unfold output676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output676_skip : Flapjack.WordAlloc.isSkip output676 = false := by
  rw [output676_def]
  conv => lhs; cbv
  try rfl
theorem node676_eq : Flapjack.WordAlloc.removeDeadStructural input676 value341 value1 value2 = (output676, value342, value1) := by
  rw [input676_def, output676_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input676 input675)).val
theorem input677_def : input677 = (.seq input676 input675) := by
  unfold input677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output676 output675)).val
theorem output677_def : output677 = (.seq output676 output675) := by
  unfold output677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output677_skip : Flapjack.WordAlloc.isSkip output677 = false := by
  rw [output677_def]
  conv => lhs; cbv
  try rfl
theorem node677_eq : Flapjack.WordAlloc.removeDeadStructural input677 value4 value1 value2 = (output677, value342, value1) := by
  rw [input677_def, output677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node675_eq]
  dsimp only
  rw [node676_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value343 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64))).val
theorem input678_def : input678 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)) := by
  unfold input678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64))).val
theorem output678_def : output678 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)) := by
  unfold output678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output678_skip : Flapjack.WordAlloc.isSkip output678 = false := by
  rw [output678_def]
  conv => lhs; cbv
  try rfl
theorem node678_eq : Flapjack.WordAlloc.removeDeadStructural input678 value342 value1 value2 = (output678, value343, value1) := by
  rw [input678_def, output678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1037 0#64))).val
theorem input679_def : input679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1037 0#64)) := by
  unfold input679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output679_def : output679 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output679_skip : Flapjack.WordAlloc.isSkip output679 = true := by
  rw [output679_def]
  conv => lhs; cbv
  try rfl
theorem node679_eq : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value343, value1) := by
  rw [input679_def, output679_def]
  try (conv => lhs; cbv)
  try rfl

def value344 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1033 1029 (Flapjack.WordRegImm.imm 18446744073709551320#64))))).val
theorem input680_def : input680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1033 1029 (Flapjack.WordRegImm.imm 18446744073709551320#64)))) := by
  unfold input680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1033 1029 (Flapjack.WordRegImm.imm 18446744073709551320#64))))).val
theorem output680_def : output680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1033 1029 (Flapjack.WordRegImm.imm 18446744073709551320#64)))) := by
  unfold output680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output680_skip : Flapjack.WordAlloc.isSkip output680 = false := by
  rw [output680_def]
  conv => lhs; cbv
  try rfl
theorem node680_eq : Flapjack.WordAlloc.removeDeadStructural input680 value343 value1 value2 = (output680, value344, value1) := by
  rw [input680_def, output680_def]
  try (conv => lhs; cbv)
  try rfl

def value345 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1029 1025)).val
theorem input681_def : input681 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1029 1025) := by
  unfold input681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1029 1025)).val
theorem output681_def : output681 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1029 1025) := by
  unfold output681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output681_skip : Flapjack.WordAlloc.isSkip output681 = false := by
  rw [output681_def]
  conv => lhs; cbv
  try rfl
theorem node681_eq : Flapjack.WordAlloc.removeDeadStructural input681 value344 value1 value2 = (output681, value345, value1) := by
  rw [input681_def, output681_def]
  try (conv => lhs; cbv)
  try rfl

def value346 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1025 1021 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input682_def : input682 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1025 1021 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1025 1021 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output682_def : output682 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1025 1021 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output682_skip : Flapjack.WordAlloc.isSkip output682 = false := by
  rw [output682_def]
  conv => lhs; cbv
  try rfl
theorem node682_eq : Flapjack.WordAlloc.removeDeadStructural input682 value345 value1 value2 = (output682, value346, value1) := by
  rw [input682_def, output682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1021 Flapjack.WordStore.heapLength)).val
theorem input683_def : input683 = (Flapjack.WordLangProgHOL.get 1021 Flapjack.WordStore.heapLength) := by
  unfold input683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1021 Flapjack.WordStore.heapLength)).val
theorem output683_def : output683 = (Flapjack.WordLangProgHOL.get 1021 Flapjack.WordStore.heapLength) := by
  unfold output683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output683_skip : Flapjack.WordAlloc.isSkip output683 = false := by
  rw [output683_def]
  conv => lhs; cbv
  try rfl
theorem node683_eq : Flapjack.WordAlloc.removeDeadStructural input683 value346 value1 value2 = (output683, value4, value1) := by
  rw [input683_def, output683_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input683 input682)).val
theorem input684_def : input684 = (.seq input683 input682) := by
  unfold input684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output683 output682)).val
theorem output684_def : output684 = (.seq output683 output682) := by
  unfold output684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output684_skip : Flapjack.WordAlloc.isSkip output684 = false := by
  rw [output684_def]
  conv => lhs; cbv
  try rfl
theorem node684_eq : Flapjack.WordAlloc.removeDeadStructural input684 value345 value1 value2 = (output684, value4, value1) := by
  rw [input684_def, output684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node682_eq]
  dsimp only
  rw [node683_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input684 input681)).val
theorem input685_def : input685 = (.seq input684 input681) := by
  unfold input685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output684 output681)).val
theorem output685_def : output685 = (.seq output684 output681) := by
  unfold output685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output685_skip : Flapjack.WordAlloc.isSkip output685 = false := by
  rw [output685_def]
  conv => lhs; cbv
  try rfl
theorem node685_eq : Flapjack.WordAlloc.removeDeadStructural input685 value344 value1 value2 = (output685, value4, value1) := by
  rw [input685_def, output685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node681_eq]
  dsimp only
  rw [node684_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input685 input680)).val
theorem input686_def : input686 = (.seq input685 input680) := by
  unfold input686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output685 output680)).val
theorem output686_def : output686 = (.seq output685 output680) := by
  unfold output686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output686_skip : Flapjack.WordAlloc.isSkip output686 = false := by
  rw [output686_def]
  conv => lhs; cbv
  try rfl
theorem node686_eq : Flapjack.WordAlloc.removeDeadStructural input686 value343 value1 value2 = (output686, value4, value1) := by
  rw [input686_def, output686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node680_eq]
  dsimp only
  rw [node685_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value347 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1013 (Flapjack.WordLangAddr.addr 1017 0#64)))).val
theorem input687_def : input687 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1013 (Flapjack.WordLangAddr.addr 1017 0#64))) := by
  unfold input687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1013 (Flapjack.WordLangAddr.addr 1017 0#64)))).val
theorem output687_def : output687 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1013 (Flapjack.WordLangAddr.addr 1017 0#64))) := by
  unfold output687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output687_skip : Flapjack.WordAlloc.isSkip output687 = false := by
  rw [output687_def]
  conv => lhs; cbv
  try rfl
theorem node687_eq : Flapjack.WordAlloc.removeDeadStructural input687 value4 value1 value2 = (output687, value347, value1) := by
  rw [input687_def, output687_def]
  try (conv => lhs; cbv)
  try rfl

def value348 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1017, 1005)])).val
theorem input688_def : input688 = (Flapjack.WordLangProgHOL.move 0 [(1017, 1005)]) := by
  unfold input688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1017, 1005)])).val
theorem output688_def : output688 = (Flapjack.WordLangProgHOL.move 0 [(1017, 1005)]) := by
  unfold output688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output688_skip : Flapjack.WordAlloc.isSkip output688 = false := by
  rw [output688_def]
  conv => lhs; cbv
  try rfl
theorem node688_eq : Flapjack.WordAlloc.removeDeadStructural input688 value347 value1 value2 = (output688, value348, value1) := by
  rw [input688_def, output688_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input688 input687)).val
theorem input689_def : input689 = (.seq input688 input687) := by
  unfold input689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output688 output687)).val
theorem output689_def : output689 = (.seq output688 output687) := by
  unfold output689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output689_skip : Flapjack.WordAlloc.isSkip output689 = false := by
  rw [output689_def]
  conv => lhs; cbv
  try rfl
theorem node689_eq : Flapjack.WordAlloc.removeDeadStructural input689 value4 value1 value2 = (output689, value348, value1) := by
  rw [input689_def, output689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node687_eq]
  dsimp only
  rw [node688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value349 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64))).val
theorem input690_def : input690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64)) := by
  unfold input690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64))).val
theorem output690_def : output690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64)) := by
  unfold output690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output690_skip : Flapjack.WordAlloc.isSkip output690 = false := by
  rw [output690_def]
  conv => lhs; cbv
  try rfl
theorem node690_eq : Flapjack.WordAlloc.removeDeadStructural input690 value348 value1 value2 = (output690, value349, value1) := by
  rw [input690_def, output690_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 0#64))).val
theorem input691_def : input691 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 0#64)) := by
  unfold input691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output691_def : output691 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output691_skip : Flapjack.WordAlloc.isSkip output691 = true := by
  rw [output691_def]
  conv => lhs; cbv
  try rfl
theorem node691_eq : Flapjack.WordAlloc.removeDeadStructural input691 value349 value1 value2 = (output691, value349, value1) := by
  rw [input691_def, output691_def]
  try (conv => lhs; cbv)
  try rfl

def value350 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1005 1001 (Flapjack.WordRegImm.imm 18446744073709551328#64))))).val
theorem input692_def : input692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1005 1001 (Flapjack.WordRegImm.imm 18446744073709551328#64)))) := by
  unfold input692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1005 1001 (Flapjack.WordRegImm.imm 18446744073709551328#64))))).val
theorem output692_def : output692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1005 1001 (Flapjack.WordRegImm.imm 18446744073709551328#64)))) := by
  unfold output692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output692_skip : Flapjack.WordAlloc.isSkip output692 = false := by
  rw [output692_def]
  conv => lhs; cbv
  try rfl
theorem node692_eq : Flapjack.WordAlloc.removeDeadStructural input692 value349 value1 value2 = (output692, value350, value1) := by
  rw [input692_def, output692_def]
  try (conv => lhs; cbv)
  try rfl

def value351 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997)).val
theorem input693_def : input693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997) := by
  unfold input693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997)).val
theorem output693_def : output693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997) := by
  unfold output693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output693_skip : Flapjack.WordAlloc.isSkip output693 = false := by
  rw [output693_def]
  conv => lhs; cbv
  try rfl
theorem node693_eq : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1) := by
  rw [input693_def, output693_def]
  try (conv => lhs; cbv)
  try rfl

def value352 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input694_def : input694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output694_def : output694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output694_skip : Flapjack.WordAlloc.isSkip output694 = false := by
  rw [output694_def]
  conv => lhs; cbv
  try rfl
theorem node694_eq : Flapjack.WordAlloc.removeDeadStructural input694 value351 value1 value2 = (output694, value352, value1) := by
  rw [input694_def, output694_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength)).val
theorem input695_def : input695 = (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength) := by
  unfold input695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength)).val
theorem output695_def : output695 = (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength) := by
  unfold output695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output695_skip : Flapjack.WordAlloc.isSkip output695 = false := by
  rw [output695_def]
  conv => lhs; cbv
  try rfl
theorem node695_eq : Flapjack.WordAlloc.removeDeadStructural input695 value352 value1 value2 = (output695, value4, value1) := by
  rw [input695_def, output695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input695 input694)).val
theorem input696_def : input696 = (.seq input695 input694) := by
  unfold input696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output695 output694)).val
theorem output696_def : output696 = (.seq output695 output694) := by
  unfold output696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output696_skip : Flapjack.WordAlloc.isSkip output696 = false := by
  rw [output696_def]
  conv => lhs; cbv
  try rfl
theorem node696_eq : Flapjack.WordAlloc.removeDeadStructural input696 value351 value1 value2 = (output696, value4, value1) := by
  rw [input696_def, output696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node694_eq]
  dsimp only
  rw [node695_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input696 input693)).val
theorem input697_def : input697 = (.seq input696 input693) := by
  unfold input697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output696 output693)).val
theorem output697_def : output697 = (.seq output696 output693) := by
  unfold output697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output697_skip : Flapjack.WordAlloc.isSkip output697 = false := by
  rw [output697_def]
  conv => lhs; cbv
  try rfl
theorem node697_eq : Flapjack.WordAlloc.removeDeadStructural input697 value350 value1 value2 = (output697, value4, value1) := by
  rw [input697_def, output697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node693_eq]
  dsimp only
  rw [node696_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input697 input692)).val
theorem input698_def : input698 = (.seq input697 input692) := by
  unfold input698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output697 output692)).val
theorem output698_def : output698 = (.seq output697 output692) := by
  unfold output698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output698_skip : Flapjack.WordAlloc.isSkip output698 = false := by
  rw [output698_def]
  conv => lhs; cbv
  try rfl
theorem node698_eq : Flapjack.WordAlloc.removeDeadStructural input698 value349 value1 value2 = (output698, value4, value1) := by
  rw [input698_def, output698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  dsimp only
  rw [node697_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value353 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64)))).val
theorem input699_def : input699 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64))) := by
  unfold input699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64)))).val
theorem output699_def : output699 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64))) := by
  unfold output699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output699_skip : Flapjack.WordAlloc.isSkip output699 = false := by
  rw [output699_def]
  conv => lhs; cbv
  try rfl
theorem node699_eq : Flapjack.WordAlloc.removeDeadStructural input699 value4 value1 value2 = (output699, value353, value1) := by
  rw [input699_def, output699_def]
  try (conv => lhs; cbv)
  try rfl

def value354 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 977)])).val
theorem input700_def : input700 = (Flapjack.WordLangProgHOL.move 0 [(989, 977)]) := by
  unfold input700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 977)])).val
theorem output700_def : output700 = (Flapjack.WordLangProgHOL.move 0 [(989, 977)]) := by
  unfold output700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output700_skip : Flapjack.WordAlloc.isSkip output700 = false := by
  rw [output700_def]
  conv => lhs; cbv
  try rfl
theorem node700_eq : Flapjack.WordAlloc.removeDeadStructural input700 value353 value1 value2 = (output700, value354, value1) := by
  rw [input700_def, output700_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input700 input699)).val
theorem input701_def : input701 = (.seq input700 input699) := by
  unfold input701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output700 output699)).val
theorem output701_def : output701 = (.seq output700 output699) := by
  unfold output701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output701_skip : Flapjack.WordAlloc.isSkip output701 = false := by
  rw [output701_def]
  conv => lhs; cbv
  try rfl
theorem node701_eq : Flapjack.WordAlloc.removeDeadStructural input701 value4 value1 value2 = (output701, value354, value1) := by
  rw [input701_def, output701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node699_eq]
  dsimp only
  rw [node700_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value355 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 0#64))).val
theorem input702_def : input702 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 0#64)) := by
  unfold input702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 0#64))).val
theorem output702_def : output702 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 0#64)) := by
  unfold output702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output702_skip : Flapjack.WordAlloc.isSkip output702 = false := by
  rw [output702_def]
  conv => lhs; cbv
  try rfl
theorem node702_eq : Flapjack.WordAlloc.removeDeadStructural input702 value354 value1 value2 = (output702, value355, value1) := by
  rw [input702_def, output702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 981 0#64))).val
theorem input703_def : input703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 981 0#64)) := by
  unfold input703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output703_def : output703 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output703_skip : Flapjack.WordAlloc.isSkip output703 = true := by
  rw [output703_def]
  conv => lhs; cbv
  try rfl
theorem node703_eq : Flapjack.WordAlloc.removeDeadStructural input703 value355 value1 value2 = (output703, value355, value1) := by
  rw [input703_def, output703_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node703_eq
end InitECandidate.Proofs.DeadStages64
