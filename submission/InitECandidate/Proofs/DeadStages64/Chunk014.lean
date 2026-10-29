import InitECandidate.Proofs.DeadStages64.Chunk013
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value228 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1577, 1565)])).val
theorem input448_def : input448 = (Flapjack.WordLangProgHOL.move 0 [(1577, 1565)]) := by
  unfold input448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1577, 1565)])).val
theorem output448_def : output448 = (Flapjack.WordLangProgHOL.move 0 [(1577, 1565)]) := by
  unfold output448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output448_skip : Flapjack.WordAlloc.isSkip output448 = false := by
  rw [output448_def]
  conv => lhs; cbv
  try rfl
theorem node448_eq : Flapjack.WordAlloc.removeDeadStructural input448 value227 value1 value2 = (output448, value228, value1) := by
  rw [input448_def, output448_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input448 input447)).val
theorem input449_def : input449 = (.seq input448 input447) := by
  unfold input449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output448 output447)).val
theorem output449_def : output449 = (.seq output448 output447) := by
  unfold output449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output449_skip : Flapjack.WordAlloc.isSkip output449 = false := by
  rw [output449_def]
  conv => lhs; cbv
  try rfl
theorem node449_eq : Flapjack.WordAlloc.removeDeadStructural input449 value4 value1 value2 = (output449, value228, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node447_eq]
  dsimp only
  rw [node448_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value229 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64))).val
theorem input450_def : input450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)) := by
  unfold input450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64))).val
theorem output450_def : output450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1573 0#64)) := by
  unfold output450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output450_skip : Flapjack.WordAlloc.isSkip output450 = false := by
  rw [output450_def]
  conv => lhs; cbv
  try rfl
theorem node450_eq : Flapjack.WordAlloc.removeDeadStructural input450 value228 value1 value2 = (output450, value229, value1) := by
  rw [input450_def, output450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1569 0#64))).val
theorem input451_def : input451 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1569 0#64)) := by
  unfold input451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output451_def : output451 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output451_skip : Flapjack.WordAlloc.isSkip output451 = true := by
  rw [output451_def]
  conv => lhs; cbv
  try rfl
theorem node451_eq : Flapjack.WordAlloc.removeDeadStructural input451 value229 value1 value2 = (output451, value229, value1) := by
  rw [input451_def, output451_def]
  try (conv => lhs; cbv)
  try rfl

def value230 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1565 1561 (Flapjack.WordRegImm.imm 18446744073709551168#64))))).val
theorem input452_def : input452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1565 1561 (Flapjack.WordRegImm.imm 18446744073709551168#64)))) := by
  unfold input452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1565 1561 (Flapjack.WordRegImm.imm 18446744073709551168#64))))).val
theorem output452_def : output452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1565 1561 (Flapjack.WordRegImm.imm 18446744073709551168#64)))) := by
  unfold output452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output452_skip : Flapjack.WordAlloc.isSkip output452 = false := by
  rw [output452_def]
  conv => lhs; cbv
  try rfl
theorem node452_eq : Flapjack.WordAlloc.removeDeadStructural input452 value229 value1 value2 = (output452, value230, value1) := by
  rw [input452_def, output452_def]
  try (conv => lhs; cbv)
  try rfl

def value231 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1561 1557)).val
theorem input453_def : input453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1561 1557) := by
  unfold input453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1561 1557)).val
theorem output453_def : output453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1561 1557) := by
  unfold output453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output453_skip : Flapjack.WordAlloc.isSkip output453 = false := by
  rw [output453_def]
  conv => lhs; cbv
  try rfl
theorem node453_eq : Flapjack.WordAlloc.removeDeadStructural input453 value230 value1 value2 = (output453, value231, value1) := by
  rw [input453_def, output453_def]
  try (conv => lhs; cbv)
  try rfl

def value232 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1557 1553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input454_def : input454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1557 1553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1557 1553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output454_def : output454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1557 1553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output454_skip : Flapjack.WordAlloc.isSkip output454 = false := by
  rw [output454_def]
  conv => lhs; cbv
  try rfl
theorem node454_eq : Flapjack.WordAlloc.removeDeadStructural input454 value231 value1 value2 = (output454, value232, value1) := by
  rw [input454_def, output454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1553 Flapjack.WordStore.heapLength)).val
theorem input455_def : input455 = (Flapjack.WordLangProgHOL.get 1553 Flapjack.WordStore.heapLength) := by
  unfold input455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1553 Flapjack.WordStore.heapLength)).val
theorem output455_def : output455 = (Flapjack.WordLangProgHOL.get 1553 Flapjack.WordStore.heapLength) := by
  unfold output455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output455_skip : Flapjack.WordAlloc.isSkip output455 = false := by
  rw [output455_def]
  conv => lhs; cbv
  try rfl
theorem node455_eq : Flapjack.WordAlloc.removeDeadStructural input455 value232 value1 value2 = (output455, value4, value1) := by
  rw [input455_def, output455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input455 input454)).val
theorem input456_def : input456 = (.seq input455 input454) := by
  unfold input456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output455 output454)).val
theorem output456_def : output456 = (.seq output455 output454) := by
  unfold output456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output456_skip : Flapjack.WordAlloc.isSkip output456 = false := by
  rw [output456_def]
  conv => lhs; cbv
  try rfl
theorem node456_eq : Flapjack.WordAlloc.removeDeadStructural input456 value231 value1 value2 = (output456, value4, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node454_eq]
  dsimp only
  rw [node455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input456 input453)).val
theorem input457_def : input457 = (.seq input456 input453) := by
  unfold input457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output456 output453)).val
theorem output457_def : output457 = (.seq output456 output453) := by
  unfold output457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output457_skip : Flapjack.WordAlloc.isSkip output457 = false := by
  rw [output457_def]
  conv => lhs; cbv
  try rfl
theorem node457_eq : Flapjack.WordAlloc.removeDeadStructural input457 value230 value1 value2 = (output457, value4, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node453_eq]
  dsimp only
  rw [node456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input457 input452)).val
theorem input458_def : input458 = (.seq input457 input452) := by
  unfold input458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output457 output452)).val
theorem output458_def : output458 = (.seq output457 output452) := by
  unfold output458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output458_skip : Flapjack.WordAlloc.isSkip output458 = false := by
  rw [output458_def]
  conv => lhs; cbv
  try rfl
theorem node458_eq : Flapjack.WordAlloc.removeDeadStructural input458 value229 value1 value2 = (output458, value4, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node452_eq]
  dsimp only
  rw [node457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value233 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1545 (Flapjack.WordLangAddr.addr 1549 0#64)))).val
theorem input459_def : input459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1545 (Flapjack.WordLangAddr.addr 1549 0#64))) := by
  unfold input459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1545 (Flapjack.WordLangAddr.addr 1549 0#64)))).val
theorem output459_def : output459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1545 (Flapjack.WordLangAddr.addr 1549 0#64))) := by
  unfold output459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output459_skip : Flapjack.WordAlloc.isSkip output459 = false := by
  rw [output459_def]
  conv => lhs; cbv
  try rfl
theorem node459_eq : Flapjack.WordAlloc.removeDeadStructural input459 value4 value1 value2 = (output459, value233, value1) := by
  rw [input459_def, output459_def]
  try (conv => lhs; cbv)
  try rfl

def value234 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1549, 1537)])).val
theorem input460_def : input460 = (Flapjack.WordLangProgHOL.move 0 [(1549, 1537)]) := by
  unfold input460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1549, 1537)])).val
theorem output460_def : output460 = (Flapjack.WordLangProgHOL.move 0 [(1549, 1537)]) := by
  unfold output460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output460_skip : Flapjack.WordAlloc.isSkip output460 = false := by
  rw [output460_def]
  conv => lhs; cbv
  try rfl
theorem node460_eq : Flapjack.WordAlloc.removeDeadStructural input460 value233 value1 value2 = (output460, value234, value1) := by
  rw [input460_def, output460_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input460 input459)).val
theorem input461_def : input461 = (.seq input460 input459) := by
  unfold input461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output460 output459)).val
theorem output461_def : output461 = (.seq output460 output459) := by
  unfold output461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output461_skip : Flapjack.WordAlloc.isSkip output461 = false := by
  rw [output461_def]
  conv => lhs; cbv
  try rfl
theorem node461_eq : Flapjack.WordAlloc.removeDeadStructural input461 value4 value1 value2 = (output461, value234, value1) := by
  rw [input461_def, output461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node459_eq]
  dsimp only
  rw [node460_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value235 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64))).val
theorem input462_def : input462 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64)) := by
  unfold input462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64))).val
theorem output462_def : output462 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1545 0#64)) := by
  unfold output462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output462_skip : Flapjack.WordAlloc.isSkip output462 = false := by
  rw [output462_def]
  conv => lhs; cbv
  try rfl
theorem node462_eq : Flapjack.WordAlloc.removeDeadStructural input462 value234 value1 value2 = (output462, value235, value1) := by
  rw [input462_def, output462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1541 0#64))).val
theorem input463_def : input463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1541 0#64)) := by
  unfold input463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output463_def : output463 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output463_skip : Flapjack.WordAlloc.isSkip output463 = true := by
  rw [output463_def]
  conv => lhs; cbv
  try rfl
theorem node463_eq : Flapjack.WordAlloc.removeDeadStructural input463 value235 value1 value2 = (output463, value235, value1) := by
  rw [input463_def, output463_def]
  try (conv => lhs; cbv)
  try rfl

def value236 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1537 1533 (Flapjack.WordRegImm.imm 18446744073709551176#64))))).val
theorem input464_def : input464 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1537 1533 (Flapjack.WordRegImm.imm 18446744073709551176#64)))) := by
  unfold input464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1537 1533 (Flapjack.WordRegImm.imm 18446744073709551176#64))))).val
theorem output464_def : output464 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1537 1533 (Flapjack.WordRegImm.imm 18446744073709551176#64)))) := by
  unfold output464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output464_skip : Flapjack.WordAlloc.isSkip output464 = false := by
  rw [output464_def]
  conv => lhs; cbv
  try rfl
theorem node464_eq : Flapjack.WordAlloc.removeDeadStructural input464 value235 value1 value2 = (output464, value236, value1) := by
  rw [input464_def, output464_def]
  try (conv => lhs; cbv)
  try rfl

def value237 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1533 1529)).val
theorem input465_def : input465 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1533 1529) := by
  unfold input465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1533 1529)).val
theorem output465_def : output465 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1533 1529) := by
  unfold output465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output465_skip : Flapjack.WordAlloc.isSkip output465 = false := by
  rw [output465_def]
  conv => lhs; cbv
  try rfl
theorem node465_eq : Flapjack.WordAlloc.removeDeadStructural input465 value236 value1 value2 = (output465, value237, value1) := by
  rw [input465_def, output465_def]
  try (conv => lhs; cbv)
  try rfl

def value238 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1529 1525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input466_def : input466 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1529 1525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1529 1525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output466_def : output466 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1529 1525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output466_skip : Flapjack.WordAlloc.isSkip output466 = false := by
  rw [output466_def]
  conv => lhs; cbv
  try rfl
theorem node466_eq : Flapjack.WordAlloc.removeDeadStructural input466 value237 value1 value2 = (output466, value238, value1) := by
  rw [input466_def, output466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1525 Flapjack.WordStore.heapLength)).val
theorem input467_def : input467 = (Flapjack.WordLangProgHOL.get 1525 Flapjack.WordStore.heapLength) := by
  unfold input467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1525 Flapjack.WordStore.heapLength)).val
theorem output467_def : output467 = (Flapjack.WordLangProgHOL.get 1525 Flapjack.WordStore.heapLength) := by
  unfold output467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output467_skip : Flapjack.WordAlloc.isSkip output467 = false := by
  rw [output467_def]
  conv => lhs; cbv
  try rfl
theorem node467_eq : Flapjack.WordAlloc.removeDeadStructural input467 value238 value1 value2 = (output467, value4, value1) := by
  rw [input467_def, output467_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input467 input466)).val
theorem input468_def : input468 = (.seq input467 input466) := by
  unfold input468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output467 output466)).val
theorem output468_def : output468 = (.seq output467 output466) := by
  unfold output468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output468_skip : Flapjack.WordAlloc.isSkip output468 = false := by
  rw [output468_def]
  conv => lhs; cbv
  try rfl
theorem node468_eq : Flapjack.WordAlloc.removeDeadStructural input468 value237 value1 value2 = (output468, value4, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node466_eq]
  dsimp only
  rw [node467_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input468 input465)).val
theorem input469_def : input469 = (.seq input468 input465) := by
  unfold input469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output468 output465)).val
theorem output469_def : output469 = (.seq output468 output465) := by
  unfold output469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output469_skip : Flapjack.WordAlloc.isSkip output469 = false := by
  rw [output469_def]
  conv => lhs; cbv
  try rfl
theorem node469_eq : Flapjack.WordAlloc.removeDeadStructural input469 value236 value1 value2 = (output469, value4, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  dsimp only
  rw [node468_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input469 input464)).val
theorem input470_def : input470 = (.seq input469 input464) := by
  unfold input470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output469 output464)).val
theorem output470_def : output470 = (.seq output469 output464) := by
  unfold output470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output470_skip : Flapjack.WordAlloc.isSkip output470 = false := by
  rw [output470_def]
  conv => lhs; cbv
  try rfl
theorem node470_eq : Flapjack.WordAlloc.removeDeadStructural input470 value235 value1 value2 = (output470, value4, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node464_eq]
  dsimp only
  rw [node469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value239 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1517 (Flapjack.WordLangAddr.addr 1521 0#64)))).val
theorem input471_def : input471 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1517 (Flapjack.WordLangAddr.addr 1521 0#64))) := by
  unfold input471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1517 (Flapjack.WordLangAddr.addr 1521 0#64)))).val
theorem output471_def : output471 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1517 (Flapjack.WordLangAddr.addr 1521 0#64))) := by
  unfold output471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output471_skip : Flapjack.WordAlloc.isSkip output471 = false := by
  rw [output471_def]
  conv => lhs; cbv
  try rfl
theorem node471_eq : Flapjack.WordAlloc.removeDeadStructural input471 value4 value1 value2 = (output471, value239, value1) := by
  rw [input471_def, output471_def]
  try (conv => lhs; cbv)
  try rfl

def value240 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1521, 1509)])).val
theorem input472_def : input472 = (Flapjack.WordLangProgHOL.move 0 [(1521, 1509)]) := by
  unfold input472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1521, 1509)])).val
theorem output472_def : output472 = (Flapjack.WordLangProgHOL.move 0 [(1521, 1509)]) := by
  unfold output472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output472_skip : Flapjack.WordAlloc.isSkip output472 = false := by
  rw [output472_def]
  conv => lhs; cbv
  try rfl
theorem node472_eq : Flapjack.WordAlloc.removeDeadStructural input472 value239 value1 value2 = (output472, value240, value1) := by
  rw [input472_def, output472_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input472 input471)).val
theorem input473_def : input473 = (.seq input472 input471) := by
  unfold input473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output472 output471)).val
theorem output473_def : output473 = (.seq output472 output471) := by
  unfold output473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output473_skip : Flapjack.WordAlloc.isSkip output473 = false := by
  rw [output473_def]
  conv => lhs; cbv
  try rfl
theorem node473_eq : Flapjack.WordAlloc.removeDeadStructural input473 value4 value1 value2 = (output473, value240, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node471_eq]
  dsimp only
  rw [node472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value241 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1517 0#64))).val
theorem input474_def : input474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1517 0#64)) := by
  unfold input474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1517 0#64))).val
theorem output474_def : output474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1517 0#64)) := by
  unfold output474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output474_skip : Flapjack.WordAlloc.isSkip output474 = false := by
  rw [output474_def]
  conv => lhs; cbv
  try rfl
theorem node474_eq : Flapjack.WordAlloc.removeDeadStructural input474 value240 value1 value2 = (output474, value241, value1) := by
  rw [input474_def, output474_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1513 0#64))).val
theorem input475_def : input475 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1513 0#64)) := by
  unfold input475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output475_def : output475 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output475_skip : Flapjack.WordAlloc.isSkip output475 = true := by
  rw [output475_def]
  conv => lhs; cbv
  try rfl
theorem node475_eq : Flapjack.WordAlloc.removeDeadStructural input475 value241 value1 value2 = (output475, value241, value1) := by
  rw [input475_def, output475_def]
  try (conv => lhs; cbv)
  try rfl

def value242 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1509 1505 (Flapjack.WordRegImm.imm 18446744073709551184#64))))).val
theorem input476_def : input476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1509 1505 (Flapjack.WordRegImm.imm 18446744073709551184#64)))) := by
  unfold input476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1509 1505 (Flapjack.WordRegImm.imm 18446744073709551184#64))))).val
theorem output476_def : output476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1509 1505 (Flapjack.WordRegImm.imm 18446744073709551184#64)))) := by
  unfold output476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output476_skip : Flapjack.WordAlloc.isSkip output476 = false := by
  rw [output476_def]
  conv => lhs; cbv
  try rfl
theorem node476_eq : Flapjack.WordAlloc.removeDeadStructural input476 value241 value1 value2 = (output476, value242, value1) := by
  rw [input476_def, output476_def]
  try (conv => lhs; cbv)
  try rfl

def value243 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1505 1501)).val
theorem input477_def : input477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1505 1501) := by
  unfold input477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1505 1501)).val
theorem output477_def : output477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1505 1501) := by
  unfold output477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output477_skip : Flapjack.WordAlloc.isSkip output477 = false := by
  rw [output477_def]
  conv => lhs; cbv
  try rfl
theorem node477_eq : Flapjack.WordAlloc.removeDeadStructural input477 value242 value1 value2 = (output477, value243, value1) := by
  rw [input477_def, output477_def]
  try (conv => lhs; cbv)
  try rfl

def value244 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1501 1497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input478_def : input478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1501 1497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1501 1497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output478_def : output478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1501 1497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output478_skip : Flapjack.WordAlloc.isSkip output478 = false := by
  rw [output478_def]
  conv => lhs; cbv
  try rfl
theorem node478_eq : Flapjack.WordAlloc.removeDeadStructural input478 value243 value1 value2 = (output478, value244, value1) := by
  rw [input478_def, output478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1497 Flapjack.WordStore.heapLength)).val
theorem input479_def : input479 = (Flapjack.WordLangProgHOL.get 1497 Flapjack.WordStore.heapLength) := by
  unfold input479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1497 Flapjack.WordStore.heapLength)).val
theorem output479_def : output479 = (Flapjack.WordLangProgHOL.get 1497 Flapjack.WordStore.heapLength) := by
  unfold output479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output479_skip : Flapjack.WordAlloc.isSkip output479 = false := by
  rw [output479_def]
  conv => lhs; cbv
  try rfl
theorem node479_eq : Flapjack.WordAlloc.removeDeadStructural input479 value244 value1 value2 = (output479, value4, value1) := by
  rw [input479_def, output479_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node479_eq
end InitECandidate.Proofs.DeadStages64
