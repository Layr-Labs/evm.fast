import InitECandidate.Proofs.DeadStages713.Chunk052
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input13568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64)))).val
theorem input13568_def : input13568 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64))) := by
  unfold input13568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64)))).val
theorem output13568_def : output13568 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64))) := by
  unfold output13568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13568_skip : Flapjack.WordAlloc.isSkip output13568 = false := by
  rw [output13568_def]
  conv => lhs; cbv
  try rfl
theorem node13568_eq : Flapjack.WordAlloc.removeDeadStructural input13568 value5 value1 value2 = (output13568, value6788, value1) := by
  rw [input13568_def, output13568_def]
  try (conv => lhs; cbv)
  try rfl

def value6789 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(573, 561)])).val
theorem input13569_def : input13569 = (Flapjack.WordLangProgHOL.move 0 [(573, 561)]) := by
  unfold input13569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(573, 561)])).val
theorem output13569_def : output13569 = (Flapjack.WordLangProgHOL.move 0 [(573, 561)]) := by
  unfold output13569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13569_skip : Flapjack.WordAlloc.isSkip output13569 = false := by
  rw [output13569_def]
  conv => lhs; cbv
  try rfl
theorem node13569_eq : Flapjack.WordAlloc.removeDeadStructural input13569 value6788 value1 value2 = (output13569, value6789, value1) := by
  rw [input13569_def, output13569_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13569 input13568)).val
theorem input13570_def : input13570 = (.seq input13569 input13568) := by
  unfold input13570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13569 output13568)).val
theorem output13570_def : output13570 = (.seq output13569 output13568) := by
  unfold output13570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13570_skip : Flapjack.WordAlloc.isSkip output13570 = false := by
  rw [output13570_def]
  conv => lhs; cbv
  try rfl
theorem node13570_eq : Flapjack.WordAlloc.removeDeadStructural input13570 value5 value1 value2 = (output13570, value6789, value1) := by
  rw [input13570_def, output13570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13568_eq]
  try dsimp only
  rw [node13569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6790 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 754043588434789617#64))).val
theorem input13571_def : input13571 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 754043588434789617#64)) := by
  unfold input13571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 754043588434789617#64))).val
theorem output13571_def : output13571 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 754043588434789617#64)) := by
  unfold output13571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13571_skip : Flapjack.WordAlloc.isSkip output13571 = false := by
  rw [output13571_def]
  conv => lhs; cbv
  try rfl
theorem node13571_eq : Flapjack.WordAlloc.removeDeadStructural input13571 value6789 value1 value2 = (output13571, value6790, value1) := by
  rw [input13571_def, output13571_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 754043588434789617#64))).val
theorem input13572_def : input13572 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 754043588434789617#64)) := by
  unfold input13572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13572_def : output13572 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13572_skip : Flapjack.WordAlloc.isSkip output13572 = true := by
  rw [output13572_def]
  conv => lhs; cbv
  try rfl
theorem node13572_eq : Flapjack.WordAlloc.removeDeadStructural input13572 value6790 value1 value2 = (output13572, value6790, value1) := by
  rw [input13572_def, output13572_def]
  try (conv => lhs; cbv)
  try rfl

def value6791 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 561 557 (Flapjack.WordRegImm.imm 104#64))))).val
theorem input13573_def : input13573 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 561 557 (Flapjack.WordRegImm.imm 104#64)))) := by
  unfold input13573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 561 557 (Flapjack.WordRegImm.imm 104#64))))).val
theorem output13573_def : output13573 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 561 557 (Flapjack.WordRegImm.imm 104#64)))) := by
  unfold output13573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13573_skip : Flapjack.WordAlloc.isSkip output13573 = false := by
  rw [output13573_def]
  conv => lhs; cbv
  try rfl
theorem node13573_eq : Flapjack.WordAlloc.removeDeadStructural input13573 value6790 value1 value2 = (output13573, value6791, value1) := by
  rw [input13573_def, output13573_def]
  try (conv => lhs; cbv)
  try rfl

def value6792 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 18446744073709551104#64)))).val
theorem input13574_def : input13574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 18446744073709551104#64))) := by
  unfold input13574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 18446744073709551104#64)))).val
theorem output13574_def : output13574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 18446744073709551104#64))) := by
  unfold output13574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13574_skip : Flapjack.WordAlloc.isSkip output13574 = false := by
  rw [output13574_def]
  conv => lhs; cbv
  try rfl
theorem node13574_eq : Flapjack.WordAlloc.removeDeadStructural input13574 value6791 value1 value2 = (output13574, value6792, value1) := by
  rw [input13574_def, output13574_def]
  try (conv => lhs; cbv)
  try rfl

def value6793 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549)).val
theorem input13575_def : input13575 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549) := by
  unfold input13575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549)).val
theorem output13575_def : output13575 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549) := by
  unfold output13575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13575_skip : Flapjack.WordAlloc.isSkip output13575 = false := by
  rw [output13575_def]
  conv => lhs; cbv
  try rfl
theorem node13575_eq : Flapjack.WordAlloc.removeDeadStructural input13575 value6792 value1 value2 = (output13575, value6793, value1) := by
  rw [input13575_def, output13575_def]
  try (conv => lhs; cbv)
  try rfl

def value6794 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13576_def : input13576 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13576_def : output13576 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13576_skip : Flapjack.WordAlloc.isSkip output13576 = false := by
  rw [output13576_def]
  conv => lhs; cbv
  try rfl
theorem node13576_eq : Flapjack.WordAlloc.removeDeadStructural input13576 value6793 value1 value2 = (output13576, value6794, value1) := by
  rw [input13576_def, output13576_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength)).val
theorem input13577_def : input13577 = (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength) := by
  unfold input13577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength)).val
theorem output13577_def : output13577 = (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength) := by
  unfold output13577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13577_skip : Flapjack.WordAlloc.isSkip output13577 = false := by
  rw [output13577_def]
  conv => lhs; cbv
  try rfl
theorem node13577_eq : Flapjack.WordAlloc.removeDeadStructural input13577 value6794 value1 value2 = (output13577, value5, value1) := by
  rw [input13577_def, output13577_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13577 input13576)).val
theorem input13578_def : input13578 = (.seq input13577 input13576) := by
  unfold input13578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13577 output13576)).val
theorem output13578_def : output13578 = (.seq output13577 output13576) := by
  unfold output13578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13578_skip : Flapjack.WordAlloc.isSkip output13578 = false := by
  rw [output13578_def]
  conv => lhs; cbv
  try rfl
theorem node13578_eq : Flapjack.WordAlloc.removeDeadStructural input13578 value6793 value1 value2 = (output13578, value5, value1) := by
  rw [input13578_def, output13578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13576_eq]
  try dsimp only
  rw [node13577_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13578 input13575)).val
theorem input13579_def : input13579 = (.seq input13578 input13575) := by
  unfold input13579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13578 output13575)).val
theorem output13579_def : output13579 = (.seq output13578 output13575) := by
  unfold output13579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13579_skip : Flapjack.WordAlloc.isSkip output13579 = false := by
  rw [output13579_def]
  conv => lhs; cbv
  try rfl
theorem node13579_eq : Flapjack.WordAlloc.removeDeadStructural input13579 value6792 value1 value2 = (output13579, value5, value1) := by
  rw [input13579_def, output13579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13575_eq]
  try dsimp only
  rw [node13578_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13579 input13574)).val
theorem input13580_def : input13580 = (.seq input13579 input13574) := by
  unfold input13580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13579 output13574)).val
theorem output13580_def : output13580 = (.seq output13579 output13574) := by
  unfold output13580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13580_skip : Flapjack.WordAlloc.isSkip output13580 = false := by
  rw [output13580_def]
  conv => lhs; cbv
  try rfl
theorem node13580_eq : Flapjack.WordAlloc.removeDeadStructural input13580 value6791 value1 value2 = (output13580, value5, value1) := by
  rw [input13580_def, output13580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13574_eq]
  try dsimp only
  rw [node13579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13580 input13573)).val
theorem input13581_def : input13581 = (.seq input13580 input13573) := by
  unfold input13581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13580 output13573)).val
theorem output13581_def : output13581 = (.seq output13580 output13573) := by
  unfold output13581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13581_skip : Flapjack.WordAlloc.isSkip output13581 = false := by
  rw [output13581_def]
  conv => lhs; cbv
  try rfl
theorem node13581_eq : Flapjack.WordAlloc.removeDeadStructural input13581 value6790 value1 value2 = (output13581, value5, value1) := by
  rw [input13581_def, output13581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13573_eq]
  try dsimp only
  rw [node13580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6795 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64)))).val
theorem input13582_def : input13582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64))) := by
  unfold input13582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64)))).val
theorem output13582_def : output13582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64))) := by
  unfold output13582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13582_skip : Flapjack.WordAlloc.isSkip output13582 = false := by
  rw [output13582_def]
  conv => lhs; cbv
  try rfl
theorem node13582_eq : Flapjack.WordAlloc.removeDeadStructural input13582 value5 value1 value2 = (output13582, value6795, value1) := by
  rw [input13582_def, output13582_def]
  try (conv => lhs; cbv)
  try rfl

def value6796 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(541, 529)])).val
theorem input13583_def : input13583 = (Flapjack.WordLangProgHOL.move 0 [(541, 529)]) := by
  unfold input13583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(541, 529)])).val
theorem output13583_def : output13583 = (Flapjack.WordLangProgHOL.move 0 [(541, 529)]) := by
  unfold output13583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13583_skip : Flapjack.WordAlloc.isSkip output13583 = false := by
  rw [output13583_def]
  conv => lhs; cbv
  try rfl
theorem node13583_eq : Flapjack.WordAlloc.removeDeadStructural input13583 value6795 value1 value2 = (output13583, value6796, value1) := by
  rw [input13583_def, output13583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13583 input13582)).val
theorem input13584_def : input13584 = (.seq input13583 input13582) := by
  unfold input13584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13583 output13582)).val
theorem output13584_def : output13584 = (.seq output13583 output13582) := by
  unfold output13584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13584_skip : Flapjack.WordAlloc.isSkip output13584 = false := by
  rw [output13584_def]
  conv => lhs; cbv
  try rfl
theorem node13584_eq : Flapjack.WordAlloc.removeDeadStructural input13584 value5 value1 value2 = (output13584, value6796, value1) := by
  rw [input13584_def, output13584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13582_eq]
  try dsimp only
  rw [node13583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6797 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 17644856173732828998#64))).val
theorem input13585_def : input13585 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 17644856173732828998#64)) := by
  unfold input13585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 17644856173732828998#64))).val
theorem output13585_def : output13585 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 17644856173732828998#64)) := by
  unfold output13585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13585_skip : Flapjack.WordAlloc.isSkip output13585 = false := by
  rw [output13585_def]
  conv => lhs; cbv
  try rfl
theorem node13585_eq : Flapjack.WordAlloc.removeDeadStructural input13585 value6796 value1 value2 = (output13585, value6797, value1) := by
  rw [input13585_def, output13585_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 17644856173732828998#64))).val
theorem input13586_def : input13586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 17644856173732828998#64)) := by
  unfold input13586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13586_def : output13586 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13586_skip : Flapjack.WordAlloc.isSkip output13586 = true := by
  rw [output13586_def]
  conv => lhs; cbv
  try rfl
theorem node13586_eq : Flapjack.WordAlloc.removeDeadStructural input13586 value6797 value1 value2 = (output13586, value6797, value1) := by
  rw [input13586_def, output13586_def]
  try (conv => lhs; cbv)
  try rfl

def value6798 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 96#64))))).val
theorem input13587_def : input13587 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 96#64)))) := by
  unfold input13587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 96#64))))).val
theorem output13587_def : output13587 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 96#64)))) := by
  unfold output13587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13587_skip : Flapjack.WordAlloc.isSkip output13587 = false := by
  rw [output13587_def]
  conv => lhs; cbv
  try rfl
theorem node13587_eq : Flapjack.WordAlloc.removeDeadStructural input13587 value6797 value1 value2 = (output13587, value6798, value1) := by
  rw [input13587_def, output13587_def]
  try (conv => lhs; cbv)
  try rfl

def value6799 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 525 (Flapjack.WordLangAddr.addr 521 18446744073709551104#64)))).val
theorem input13588_def : input13588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 525 (Flapjack.WordLangAddr.addr 521 18446744073709551104#64))) := by
  unfold input13588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 525 (Flapjack.WordLangAddr.addr 521 18446744073709551104#64)))).val
theorem output13588_def : output13588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 525 (Flapjack.WordLangAddr.addr 521 18446744073709551104#64))) := by
  unfold output13588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13588_skip : Flapjack.WordAlloc.isSkip output13588 = false := by
  rw [output13588_def]
  conv => lhs; cbv
  try rfl
theorem node13588_eq : Flapjack.WordAlloc.removeDeadStructural input13588 value6798 value1 value2 = (output13588, value6799, value1) := by
  rw [input13588_def, output13588_def]
  try (conv => lhs; cbv)
  try rfl

def value6800 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 521 517)).val
theorem input13589_def : input13589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 521 517) := by
  unfold input13589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 521 517)).val
theorem output13589_def : output13589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 521 517) := by
  unfold output13589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13589_skip : Flapjack.WordAlloc.isSkip output13589 = false := by
  rw [output13589_def]
  conv => lhs; cbv
  try rfl
theorem node13589_eq : Flapjack.WordAlloc.removeDeadStructural input13589 value6799 value1 value2 = (output13589, value6800, value1) := by
  rw [input13589_def, output13589_def]
  try (conv => lhs; cbv)
  try rfl

def value6801 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 517 513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13590_def : input13590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 517 513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 517 513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13590_def : output13590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 517 513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13590_skip : Flapjack.WordAlloc.isSkip output13590 = false := by
  rw [output13590_def]
  conv => lhs; cbv
  try rfl
theorem node13590_eq : Flapjack.WordAlloc.removeDeadStructural input13590 value6800 value1 value2 = (output13590, value6801, value1) := by
  rw [input13590_def, output13590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 513 Flapjack.WordStore.heapLength)).val
theorem input13591_def : input13591 = (Flapjack.WordLangProgHOL.get 513 Flapjack.WordStore.heapLength) := by
  unfold input13591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 513 Flapjack.WordStore.heapLength)).val
theorem output13591_def : output13591 = (Flapjack.WordLangProgHOL.get 513 Flapjack.WordStore.heapLength) := by
  unfold output13591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13591_skip : Flapjack.WordAlloc.isSkip output13591 = false := by
  rw [output13591_def]
  conv => lhs; cbv
  try rfl
theorem node13591_eq : Flapjack.WordAlloc.removeDeadStructural input13591 value6801 value1 value2 = (output13591, value5, value1) := by
  rw [input13591_def, output13591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13591 input13590)).val
theorem input13592_def : input13592 = (.seq input13591 input13590) := by
  unfold input13592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13591 output13590)).val
theorem output13592_def : output13592 = (.seq output13591 output13590) := by
  unfold output13592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13592_skip : Flapjack.WordAlloc.isSkip output13592 = false := by
  rw [output13592_def]
  conv => lhs; cbv
  try rfl
theorem node13592_eq : Flapjack.WordAlloc.removeDeadStructural input13592 value6800 value1 value2 = (output13592, value5, value1) := by
  rw [input13592_def, output13592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13590_eq]
  try dsimp only
  rw [node13591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13592 input13589)).val
theorem input13593_def : input13593 = (.seq input13592 input13589) := by
  unfold input13593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13592 output13589)).val
theorem output13593_def : output13593 = (.seq output13592 output13589) := by
  unfold output13593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13593_skip : Flapjack.WordAlloc.isSkip output13593 = false := by
  rw [output13593_def]
  conv => lhs; cbv
  try rfl
theorem node13593_eq : Flapjack.WordAlloc.removeDeadStructural input13593 value6799 value1 value2 = (output13593, value5, value1) := by
  rw [input13593_def, output13593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13589_eq]
  try dsimp only
  rw [node13592_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13593 input13588)).val
theorem input13594_def : input13594 = (.seq input13593 input13588) := by
  unfold input13594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13593 output13588)).val
theorem output13594_def : output13594 = (.seq output13593 output13588) := by
  unfold output13594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13594_skip : Flapjack.WordAlloc.isSkip output13594 = false := by
  rw [output13594_def]
  conv => lhs; cbv
  try rfl
theorem node13594_eq : Flapjack.WordAlloc.removeDeadStructural input13594 value6798 value1 value2 = (output13594, value5, value1) := by
  rw [input13594_def, output13594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13588_eq]
  try dsimp only
  rw [node13593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13594 input13587)).val
theorem input13595_def : input13595 = (.seq input13594 input13587) := by
  unfold input13595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13594 output13587)).val
theorem output13595_def : output13595 = (.seq output13594 output13587) := by
  unfold output13595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13595_skip : Flapjack.WordAlloc.isSkip output13595 = false := by
  rw [output13595_def]
  conv => lhs; cbv
  try rfl
theorem node13595_eq : Flapjack.WordAlloc.removeDeadStructural input13595 value6797 value1 value2 = (output13595, value5, value1) := by
  rw [input13595_def, output13595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13587_eq]
  try dsimp only
  rw [node13594_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6802 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 505 (Flapjack.WordLangAddr.addr 509 0#64)))).val
theorem input13596_def : input13596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 505 (Flapjack.WordLangAddr.addr 509 0#64))) := by
  unfold input13596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 505 (Flapjack.WordLangAddr.addr 509 0#64)))).val
theorem output13596_def : output13596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 505 (Flapjack.WordLangAddr.addr 509 0#64))) := by
  unfold output13596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13596_skip : Flapjack.WordAlloc.isSkip output13596 = false := by
  rw [output13596_def]
  conv => lhs; cbv
  try rfl
theorem node13596_eq : Flapjack.WordAlloc.removeDeadStructural input13596 value5 value1 value2 = (output13596, value6802, value1) := by
  rw [input13596_def, output13596_def]
  try (conv => lhs; cbv)
  try rfl

def value6803 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(509, 497)])).val
theorem input13597_def : input13597 = (Flapjack.WordLangProgHOL.move 0 [(509, 497)]) := by
  unfold input13597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(509, 497)])).val
theorem output13597_def : output13597 = (Flapjack.WordLangProgHOL.move 0 [(509, 497)]) := by
  unfold output13597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13597_skip : Flapjack.WordAlloc.isSkip output13597 = false := by
  rw [output13597_def]
  conv => lhs; cbv
  try rfl
theorem node13597_eq : Flapjack.WordAlloc.removeDeadStructural input13597 value6802 value1 value2 = (output13597, value6803, value1) := by
  rw [input13597_def, output13597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13597 input13596)).val
theorem input13598_def : input13598 = (.seq input13597 input13596) := by
  unfold input13598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13597 output13596)).val
theorem output13598_def : output13598 = (.seq output13597 output13596) := by
  unfold output13598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13598_skip : Flapjack.WordAlloc.isSkip output13598 = false := by
  rw [output13598_def]
  conv => lhs; cbv
  try rfl
theorem node13598_eq : Flapjack.WordAlloc.removeDeadStructural input13598 value5 value1 value2 = (output13598, value6803, value1) := by
  rw [input13598_def, output13598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13596_eq]
  try dsimp only
  rw [node13597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6804 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 1873798617647539866#64))).val
theorem input13599_def : input13599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 1873798617647539866#64)) := by
  unfold input13599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 1873798617647539866#64))).val
theorem output13599_def : output13599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 1873798617647539866#64)) := by
  unfold output13599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13599_skip : Flapjack.WordAlloc.isSkip output13599 = false := by
  rw [output13599_def]
  conv => lhs; cbv
  try rfl
theorem node13599_eq : Flapjack.WordAlloc.removeDeadStructural input13599 value6803 value1 value2 = (output13599, value6804, value1) := by
  rw [input13599_def, output13599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 1873798617647539866#64))).val
theorem input13600_def : input13600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 1873798617647539866#64)) := by
  unfold input13600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13600_def : output13600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13600_skip : Flapjack.WordAlloc.isSkip output13600 = true := by
  rw [output13600_def]
  conv => lhs; cbv
  try rfl
theorem node13600_eq : Flapjack.WordAlloc.removeDeadStructural input13600 value6804 value1 value2 = (output13600, value6804, value1) := by
  rw [input13600_def, output13600_def]
  try (conv => lhs; cbv)
  try rfl

def value6805 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 493 (Flapjack.WordRegImm.imm 88#64))))).val
theorem input13601_def : input13601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 493 (Flapjack.WordRegImm.imm 88#64)))) := by
  unfold input13601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 493 (Flapjack.WordRegImm.imm 88#64))))).val
theorem output13601_def : output13601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 497 493 (Flapjack.WordRegImm.imm 88#64)))) := by
  unfold output13601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13601_skip : Flapjack.WordAlloc.isSkip output13601 = false := by
  rw [output13601_def]
  conv => lhs; cbv
  try rfl
theorem node13601_eq : Flapjack.WordAlloc.removeDeadStructural input13601 value6804 value1 value2 = (output13601, value6805, value1) := by
  rw [input13601_def, output13601_def]
  try (conv => lhs; cbv)
  try rfl

def value6806 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 493 (Flapjack.WordLangAddr.addr 489 18446744073709551104#64)))).val
theorem input13602_def : input13602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 493 (Flapjack.WordLangAddr.addr 489 18446744073709551104#64))) := by
  unfold input13602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 493 (Flapjack.WordLangAddr.addr 489 18446744073709551104#64)))).val
theorem output13602_def : output13602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 493 (Flapjack.WordLangAddr.addr 489 18446744073709551104#64))) := by
  unfold output13602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13602_skip : Flapjack.WordAlloc.isSkip output13602 = false := by
  rw [output13602_def]
  conv => lhs; cbv
  try rfl
theorem node13602_eq : Flapjack.WordAlloc.removeDeadStructural input13602 value6805 value1 value2 = (output13602, value6806, value1) := by
  rw [input13602_def, output13602_def]
  try (conv => lhs; cbv)
  try rfl

def value6807 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 489 485)).val
theorem input13603_def : input13603 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 489 485) := by
  unfold input13603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 489 485)).val
theorem output13603_def : output13603 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 489 485) := by
  unfold output13603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13603_skip : Flapjack.WordAlloc.isSkip output13603 = false := by
  rw [output13603_def]
  conv => lhs; cbv
  try rfl
theorem node13603_eq : Flapjack.WordAlloc.removeDeadStructural input13603 value6806 value1 value2 = (output13603, value6807, value1) := by
  rw [input13603_def, output13603_def]
  try (conv => lhs; cbv)
  try rfl

def value6808 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 485 481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13604_def : input13604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 485 481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 485 481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13604_def : output13604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 485 481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13604_skip : Flapjack.WordAlloc.isSkip output13604 = false := by
  rw [output13604_def]
  conv => lhs; cbv
  try rfl
theorem node13604_eq : Flapjack.WordAlloc.removeDeadStructural input13604 value6807 value1 value2 = (output13604, value6808, value1) := by
  rw [input13604_def, output13604_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 481 Flapjack.WordStore.heapLength)).val
theorem input13605_def : input13605 = (Flapjack.WordLangProgHOL.get 481 Flapjack.WordStore.heapLength) := by
  unfold input13605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 481 Flapjack.WordStore.heapLength)).val
theorem output13605_def : output13605 = (Flapjack.WordLangProgHOL.get 481 Flapjack.WordStore.heapLength) := by
  unfold output13605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13605_skip : Flapjack.WordAlloc.isSkip output13605 = false := by
  rw [output13605_def]
  conv => lhs; cbv
  try rfl
theorem node13605_eq : Flapjack.WordAlloc.removeDeadStructural input13605 value6808 value1 value2 = (output13605, value5, value1) := by
  rw [input13605_def, output13605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13605 input13604)).val
theorem input13606_def : input13606 = (.seq input13605 input13604) := by
  unfold input13606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13605 output13604)).val
theorem output13606_def : output13606 = (.seq output13605 output13604) := by
  unfold output13606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13606_skip : Flapjack.WordAlloc.isSkip output13606 = false := by
  rw [output13606_def]
  conv => lhs; cbv
  try rfl
theorem node13606_eq : Flapjack.WordAlloc.removeDeadStructural input13606 value6807 value1 value2 = (output13606, value5, value1) := by
  rw [input13606_def, output13606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13604_eq]
  try dsimp only
  rw [node13605_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13606 input13603)).val
theorem input13607_def : input13607 = (.seq input13606 input13603) := by
  unfold input13607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13606 output13603)).val
theorem output13607_def : output13607 = (.seq output13606 output13603) := by
  unfold output13607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13607_skip : Flapjack.WordAlloc.isSkip output13607 = false := by
  rw [output13607_def]
  conv => lhs; cbv
  try rfl
theorem node13607_eq : Flapjack.WordAlloc.removeDeadStructural input13607 value6806 value1 value2 = (output13607, value5, value1) := by
  rw [input13607_def, output13607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13603_eq]
  try dsimp only
  rw [node13606_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13607 input13602)).val
theorem input13608_def : input13608 = (.seq input13607 input13602) := by
  unfold input13608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13607 output13602)).val
theorem output13608_def : output13608 = (.seq output13607 output13602) := by
  unfold output13608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13608_skip : Flapjack.WordAlloc.isSkip output13608 = false := by
  rw [output13608_def]
  conv => lhs; cbv
  try rfl
theorem node13608_eq : Flapjack.WordAlloc.removeDeadStructural input13608 value6805 value1 value2 = (output13608, value5, value1) := by
  rw [input13608_def, output13608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13602_eq]
  try dsimp only
  rw [node13607_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13608 input13601)).val
theorem input13609_def : input13609 = (.seq input13608 input13601) := by
  unfold input13609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13608 output13601)).val
theorem output13609_def : output13609 = (.seq output13608 output13601) := by
  unfold output13609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13609_skip : Flapjack.WordAlloc.isSkip output13609 = false := by
  rw [output13609_def]
  conv => lhs; cbv
  try rfl
theorem node13609_eq : Flapjack.WordAlloc.removeDeadStructural input13609 value6804 value1 value2 = (output13609, value5, value1) := by
  rw [input13609_def, output13609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13601_eq]
  try dsimp only
  rw [node13608_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6809 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 473 (Flapjack.WordLangAddr.addr 477 0#64)))).val
theorem input13610_def : input13610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 473 (Flapjack.WordLangAddr.addr 477 0#64))) := by
  unfold input13610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 473 (Flapjack.WordLangAddr.addr 477 0#64)))).val
theorem output13610_def : output13610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 473 (Flapjack.WordLangAddr.addr 477 0#64))) := by
  unfold output13610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13610_skip : Flapjack.WordAlloc.isSkip output13610 = false := by
  rw [output13610_def]
  conv => lhs; cbv
  try rfl
theorem node13610_eq : Flapjack.WordAlloc.removeDeadStructural input13610 value5 value1 value2 = (output13610, value6809, value1) := by
  rw [input13610_def, output13610_def]
  try (conv => lhs; cbv)
  try rfl

def value6810 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(477, 465)])).val
theorem input13611_def : input13611 = (Flapjack.WordLangProgHOL.move 0 [(477, 465)]) := by
  unfold input13611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(477, 465)])).val
theorem output13611_def : output13611 = (Flapjack.WordLangProgHOL.move 0 [(477, 465)]) := by
  unfold output13611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13611_skip : Flapjack.WordAlloc.isSkip output13611 = false := by
  rw [output13611_def]
  conv => lhs; cbv
  try rfl
theorem node13611_eq : Flapjack.WordAlloc.removeDeadStructural input13611 value6809 value1 value2 = (output13611, value6810, value1) := by
  rw [input13611_def, output13611_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13611 input13610)).val
theorem input13612_def : input13612 = (.seq input13611 input13610) := by
  unfold input13612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13611 output13610)).val
theorem output13612_def : output13612 = (.seq output13611 output13610) := by
  unfold output13612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13612_skip : Flapjack.WordAlloc.isSkip output13612 = false := by
  rw [output13612_def]
  conv => lhs; cbv
  try rfl
theorem node13612_eq : Flapjack.WordAlloc.removeDeadStructural input13612 value5 value1 value2 = (output13612, value6810, value1) := by
  rw [input13612_def, output13612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13610_eq]
  try dsimp only
  rw [node13611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6811 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 5412103778470702295#64))).val
theorem input13613_def : input13613 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 5412103778470702295#64)) := by
  unfold input13613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 5412103778470702295#64))).val
theorem output13613_def : output13613 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 473 5412103778470702295#64)) := by
  unfold output13613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13613_skip : Flapjack.WordAlloc.isSkip output13613 = false := by
  rw [output13613_def]
  conv => lhs; cbv
  try rfl
theorem node13613_eq : Flapjack.WordAlloc.removeDeadStructural input13613 value6810 value1 value2 = (output13613, value6811, value1) := by
  rw [input13613_def, output13613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 5412103778470702295#64))).val
theorem input13614_def : input13614 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 5412103778470702295#64)) := by
  unfold input13614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13614_def : output13614 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13614_skip : Flapjack.WordAlloc.isSkip output13614 = true := by
  rw [output13614_def]
  conv => lhs; cbv
  try rfl
theorem node13614_eq : Flapjack.WordAlloc.removeDeadStructural input13614 value6811 value1 value2 = (output13614, value6811, value1) := by
  rw [input13614_def, output13614_def]
  try (conv => lhs; cbv)
  try rfl

def value6812 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 465 461 (Flapjack.WordRegImm.imm 80#64))))).val
theorem input13615_def : input13615 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 465 461 (Flapjack.WordRegImm.imm 80#64)))) := by
  unfold input13615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 465 461 (Flapjack.WordRegImm.imm 80#64))))).val
theorem output13615_def : output13615 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 465 461 (Flapjack.WordRegImm.imm 80#64)))) := by
  unfold output13615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13615_skip : Flapjack.WordAlloc.isSkip output13615 = false := by
  rw [output13615_def]
  conv => lhs; cbv
  try rfl
theorem node13615_eq : Flapjack.WordAlloc.removeDeadStructural input13615 value6811 value1 value2 = (output13615, value6812, value1) := by
  rw [input13615_def, output13615_def]
  try (conv => lhs; cbv)
  try rfl

def value6813 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 461 (Flapjack.WordLangAddr.addr 457 18446744073709551104#64)))).val
theorem input13616_def : input13616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 461 (Flapjack.WordLangAddr.addr 457 18446744073709551104#64))) := by
  unfold input13616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 461 (Flapjack.WordLangAddr.addr 457 18446744073709551104#64)))).val
theorem output13616_def : output13616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 461 (Flapjack.WordLangAddr.addr 457 18446744073709551104#64))) := by
  unfold output13616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13616_skip : Flapjack.WordAlloc.isSkip output13616 = false := by
  rw [output13616_def]
  conv => lhs; cbv
  try rfl
theorem node13616_eq : Flapjack.WordAlloc.removeDeadStructural input13616 value6812 value1 value2 = (output13616, value6813, value1) := by
  rw [input13616_def, output13616_def]
  try (conv => lhs; cbv)
  try rfl

def value6814 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 457 453)).val
theorem input13617_def : input13617 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 457 453) := by
  unfold input13617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 457 453)).val
theorem output13617_def : output13617 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 457 453) := by
  unfold output13617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13617_skip : Flapjack.WordAlloc.isSkip output13617 = false := by
  rw [output13617_def]
  conv => lhs; cbv
  try rfl
theorem node13617_eq : Flapjack.WordAlloc.removeDeadStructural input13617 value6813 value1 value2 = (output13617, value6814, value1) := by
  rw [input13617_def, output13617_def]
  try (conv => lhs; cbv)
  try rfl

def value6815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 453 449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13618_def : input13618 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 453 449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 453 449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13618_def : output13618 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 453 449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13618_skip : Flapjack.WordAlloc.isSkip output13618 = false := by
  rw [output13618_def]
  conv => lhs; cbv
  try rfl
theorem node13618_eq : Flapjack.WordAlloc.removeDeadStructural input13618 value6814 value1 value2 = (output13618, value6815, value1) := by
  rw [input13618_def, output13618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 449 Flapjack.WordStore.heapLength)).val
theorem input13619_def : input13619 = (Flapjack.WordLangProgHOL.get 449 Flapjack.WordStore.heapLength) := by
  unfold input13619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 449 Flapjack.WordStore.heapLength)).val
theorem output13619_def : output13619 = (Flapjack.WordLangProgHOL.get 449 Flapjack.WordStore.heapLength) := by
  unfold output13619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13619_skip : Flapjack.WordAlloc.isSkip output13619 = false := by
  rw [output13619_def]
  conv => lhs; cbv
  try rfl
theorem node13619_eq : Flapjack.WordAlloc.removeDeadStructural input13619 value6815 value1 value2 = (output13619, value5, value1) := by
  rw [input13619_def, output13619_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13619 input13618)).val
theorem input13620_def : input13620 = (.seq input13619 input13618) := by
  unfold input13620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13619 output13618)).val
theorem output13620_def : output13620 = (.seq output13619 output13618) := by
  unfold output13620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13620_skip : Flapjack.WordAlloc.isSkip output13620 = false := by
  rw [output13620_def]
  conv => lhs; cbv
  try rfl
theorem node13620_eq : Flapjack.WordAlloc.removeDeadStructural input13620 value6814 value1 value2 = (output13620, value5, value1) := by
  rw [input13620_def, output13620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13618_eq]
  try dsimp only
  rw [node13619_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13620 input13617)).val
theorem input13621_def : input13621 = (.seq input13620 input13617) := by
  unfold input13621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13620 output13617)).val
theorem output13621_def : output13621 = (.seq output13620 output13617) := by
  unfold output13621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13621_skip : Flapjack.WordAlloc.isSkip output13621 = false := by
  rw [output13621_def]
  conv => lhs; cbv
  try rfl
theorem node13621_eq : Flapjack.WordAlloc.removeDeadStructural input13621 value6813 value1 value2 = (output13621, value5, value1) := by
  rw [input13621_def, output13621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13617_eq]
  try dsimp only
  rw [node13620_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13621 input13616)).val
theorem input13622_def : input13622 = (.seq input13621 input13616) := by
  unfold input13622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13621 output13616)).val
theorem output13622_def : output13622 = (.seq output13621 output13616) := by
  unfold output13622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13622_skip : Flapjack.WordAlloc.isSkip output13622 = false := by
  rw [output13622_def]
  conv => lhs; cbv
  try rfl
theorem node13622_eq : Flapjack.WordAlloc.removeDeadStructural input13622 value6812 value1 value2 = (output13622, value5, value1) := by
  rw [input13622_def, output13622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13616_eq]
  try dsimp only
  rw [node13621_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13622 input13615)).val
theorem input13623_def : input13623 = (.seq input13622 input13615) := by
  unfold input13623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13622 output13615)).val
theorem output13623_def : output13623 = (.seq output13622 output13615) := by
  unfold output13623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13623_skip : Flapjack.WordAlloc.isSkip output13623 = false := by
  rw [output13623_def]
  conv => lhs; cbv
  try rfl
theorem node13623_eq : Flapjack.WordAlloc.removeDeadStructural input13623 value6811 value1 value2 = (output13623, value5, value1) := by
  rw [input13623_def, output13623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13615_eq]
  try dsimp only
  rw [node13622_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6816 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 0#64)))).val
theorem input13624_def : input13624 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 0#64))) := by
  unfold input13624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 0#64)))).val
theorem output13624_def : output13624 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 0#64))) := by
  unfold output13624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13624_skip : Flapjack.WordAlloc.isSkip output13624 = false := by
  rw [output13624_def]
  conv => lhs; cbv
  try rfl
theorem node13624_eq : Flapjack.WordAlloc.removeDeadStructural input13624 value5 value1 value2 = (output13624, value6816, value1) := by
  rw [input13624_def, output13624_def]
  try (conv => lhs; cbv)
  try rfl

def value6817 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(445, 433)])).val
theorem input13625_def : input13625 = (Flapjack.WordLangProgHOL.move 0 [(445, 433)]) := by
  unfold input13625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(445, 433)])).val
theorem output13625_def : output13625 = (Flapjack.WordLangProgHOL.move 0 [(445, 433)]) := by
  unfold output13625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13625_skip : Flapjack.WordAlloc.isSkip output13625 = false := by
  rw [output13625_def]
  conv => lhs; cbv
  try rfl
theorem node13625_eq : Flapjack.WordAlloc.removeDeadStructural input13625 value6816 value1 value2 = (output13625, value6817, value1) := by
  rw [input13625_def, output13625_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13625 input13624)).val
theorem input13626_def : input13626 = (.seq input13625 input13624) := by
  unfold input13626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13625 output13624)).val
theorem output13626_def : output13626 = (.seq output13625 output13624) := by
  unfold output13626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13626_skip : Flapjack.WordAlloc.isSkip output13626 = false := by
  rw [output13626_def]
  conv => lhs; cbv
  try rfl
theorem node13626_eq : Flapjack.WordAlloc.removeDeadStructural input13626 value5 value1 value2 = (output13626, value6817, value1) := by
  rw [input13626_def, output13626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13624_eq]
  try dsimp only
  rw [node13625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6818 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 7239337960414712511#64))).val
theorem input13627_def : input13627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 7239337960414712511#64)) := by
  unfold input13627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 7239337960414712511#64))).val
theorem output13627_def : output13627 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 7239337960414712511#64)) := by
  unfold output13627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13627_skip : Flapjack.WordAlloc.isSkip output13627 = false := by
  rw [output13627_def]
  conv => lhs; cbv
  try rfl
theorem node13627_eq : Flapjack.WordAlloc.removeDeadStructural input13627 value6817 value1 value2 = (output13627, value6818, value1) := by
  rw [input13627_def, output13627_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 7239337960414712511#64))).val
theorem input13628_def : input13628 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 7239337960414712511#64)) := by
  unfold input13628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13628_def : output13628 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13628_skip : Flapjack.WordAlloc.isSkip output13628 = true := by
  rw [output13628_def]
  conv => lhs; cbv
  try rfl
theorem node13628_eq : Flapjack.WordAlloc.removeDeadStructural input13628 value6818 value1 value2 = (output13628, value6818, value1) := by
  rw [input13628_def, output13628_def]
  try (conv => lhs; cbv)
  try rfl

def value6819 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 433 429 (Flapjack.WordRegImm.imm 72#64))))).val
theorem input13629_def : input13629 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 433 429 (Flapjack.WordRegImm.imm 72#64)))) := by
  unfold input13629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 433 429 (Flapjack.WordRegImm.imm 72#64))))).val
theorem output13629_def : output13629 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 433 429 (Flapjack.WordRegImm.imm 72#64)))) := by
  unfold output13629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13629_skip : Flapjack.WordAlloc.isSkip output13629 = false := by
  rw [output13629_def]
  conv => lhs; cbv
  try rfl
theorem node13629_eq : Flapjack.WordAlloc.removeDeadStructural input13629 value6818 value1 value2 = (output13629, value6819, value1) := by
  rw [input13629_def, output13629_def]
  try (conv => lhs; cbv)
  try rfl

def value6820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 18446744073709551104#64)))).val
theorem input13630_def : input13630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 18446744073709551104#64))) := by
  unfold input13630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 18446744073709551104#64)))).val
theorem output13630_def : output13630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 429 (Flapjack.WordLangAddr.addr 425 18446744073709551104#64))) := by
  unfold output13630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13630_skip : Flapjack.WordAlloc.isSkip output13630 = false := by
  rw [output13630_def]
  conv => lhs; cbv
  try rfl
theorem node13630_eq : Flapjack.WordAlloc.removeDeadStructural input13630 value6819 value1 value2 = (output13630, value6820, value1) := by
  rw [input13630_def, output13630_def]
  try (conv => lhs; cbv)
  try rfl

def value6821 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 425 421)).val
theorem input13631_def : input13631 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 425 421) := by
  unfold input13631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 425 421)).val
theorem output13631_def : output13631 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 425 421) := by
  unfold output13631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13631_skip : Flapjack.WordAlloc.isSkip output13631 = false := by
  rw [output13631_def]
  conv => lhs; cbv
  try rfl
theorem node13631_eq : Flapjack.WordAlloc.removeDeadStructural input13631 value6820 value1 value2 = (output13631, value6821, value1) := by
  rw [input13631_def, output13631_def]
  try (conv => lhs; cbv)
  try rfl

def value6822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13632_def : input13632 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13632_def : output13632 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 421 417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13632_skip : Flapjack.WordAlloc.isSkip output13632 = false := by
  rw [output13632_def]
  conv => lhs; cbv
  try rfl
theorem node13632_eq : Flapjack.WordAlloc.removeDeadStructural input13632 value6821 value1 value2 = (output13632, value6822, value1) := by
  rw [input13632_def, output13632_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 417 Flapjack.WordStore.heapLength)).val
theorem input13633_def : input13633 = (Flapjack.WordLangProgHOL.get 417 Flapjack.WordStore.heapLength) := by
  unfold input13633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 417 Flapjack.WordStore.heapLength)).val
theorem output13633_def : output13633 = (Flapjack.WordLangProgHOL.get 417 Flapjack.WordStore.heapLength) := by
  unfold output13633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13633_skip : Flapjack.WordAlloc.isSkip output13633 = false := by
  rw [output13633_def]
  conv => lhs; cbv
  try rfl
theorem node13633_eq : Flapjack.WordAlloc.removeDeadStructural input13633 value6822 value1 value2 = (output13633, value5, value1) := by
  rw [input13633_def, output13633_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13633 input13632)).val
theorem input13634_def : input13634 = (.seq input13633 input13632) := by
  unfold input13634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13633 output13632)).val
theorem output13634_def : output13634 = (.seq output13633 output13632) := by
  unfold output13634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13634_skip : Flapjack.WordAlloc.isSkip output13634 = false := by
  rw [output13634_def]
  conv => lhs; cbv
  try rfl
theorem node13634_eq : Flapjack.WordAlloc.removeDeadStructural input13634 value6821 value1 value2 = (output13634, value5, value1) := by
  rw [input13634_def, output13634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13632_eq]
  try dsimp only
  rw [node13633_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13634 input13631)).val
theorem input13635_def : input13635 = (.seq input13634 input13631) := by
  unfold input13635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13634 output13631)).val
theorem output13635_def : output13635 = (.seq output13634 output13631) := by
  unfold output13635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13635_skip : Flapjack.WordAlloc.isSkip output13635 = false := by
  rw [output13635_def]
  conv => lhs; cbv
  try rfl
theorem node13635_eq : Flapjack.WordAlloc.removeDeadStructural input13635 value6820 value1 value2 = (output13635, value5, value1) := by
  rw [input13635_def, output13635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13631_eq]
  try dsimp only
  rw [node13634_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13635 input13630)).val
theorem input13636_def : input13636 = (.seq input13635 input13630) := by
  unfold input13636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13635 output13630)).val
theorem output13636_def : output13636 = (.seq output13635 output13630) := by
  unfold output13636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13636_skip : Flapjack.WordAlloc.isSkip output13636 = false := by
  rw [output13636_def]
  conv => lhs; cbv
  try rfl
theorem node13636_eq : Flapjack.WordAlloc.removeDeadStructural input13636 value6819 value1 value2 = (output13636, value5, value1) := by
  rw [input13636_def, output13636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13630_eq]
  try dsimp only
  rw [node13635_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13636 input13629)).val
theorem input13637_def : input13637 = (.seq input13636 input13629) := by
  unfold input13637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13636 output13629)).val
theorem output13637_def : output13637 = (.seq output13636 output13629) := by
  unfold output13637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13637_skip : Flapjack.WordAlloc.isSkip output13637 = false := by
  rw [output13637_def]
  conv => lhs; cbv
  try rfl
theorem node13637_eq : Flapjack.WordAlloc.removeDeadStructural input13637 value6818 value1 value2 = (output13637, value5, value1) := by
  rw [input13637_def, output13637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13629_eq]
  try dsimp only
  rw [node13636_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6823 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 409 (Flapjack.WordLangAddr.addr 413 0#64)))).val
theorem input13638_def : input13638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 409 (Flapjack.WordLangAddr.addr 413 0#64))) := by
  unfold input13638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 409 (Flapjack.WordLangAddr.addr 413 0#64)))).val
theorem output13638_def : output13638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 409 (Flapjack.WordLangAddr.addr 413 0#64))) := by
  unfold output13638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13638_skip : Flapjack.WordAlloc.isSkip output13638 = false := by
  rw [output13638_def]
  conv => lhs; cbv
  try rfl
theorem node13638_eq : Flapjack.WordAlloc.removeDeadStructural input13638 value5 value1 value2 = (output13638, value6823, value1) := by
  rw [input13638_def, output13638_def]
  try (conv => lhs; cbv)
  try rfl

def value6824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(413, 401)])).val
theorem input13639_def : input13639 = (Flapjack.WordLangProgHOL.move 0 [(413, 401)]) := by
  unfold input13639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(413, 401)])).val
theorem output13639_def : output13639 = (Flapjack.WordLangProgHOL.move 0 [(413, 401)]) := by
  unfold output13639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13639_skip : Flapjack.WordAlloc.isSkip output13639 = false := by
  rw [output13639_def]
  conv => lhs; cbv
  try rfl
theorem node13639_eq : Flapjack.WordAlloc.removeDeadStructural input13639 value6823 value1 value2 = (output13639, value6824, value1) := by
  rw [input13639_def, output13639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13639 input13638)).val
theorem input13640_def : input13640 = (.seq input13639 input13638) := by
  unfold input13640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13639 output13638)).val
theorem output13640_def : output13640 = (.seq output13639 output13638) := by
  unfold output13640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13640_skip : Flapjack.WordAlloc.isSkip output13640 = false := by
  rw [output13640_def]
  conv => lhs; cbv
  try rfl
theorem node13640_eq : Flapjack.WordAlloc.removeDeadStructural input13640 value5 value1 value2 = (output13640, value6824, value1) := by
  rw [input13640_def, output13640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13638_eq]
  try dsimp only
  rw [node13639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 7435674573564081700#64))).val
theorem input13641_def : input13641 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 7435674573564081700#64)) := by
  unfold input13641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 7435674573564081700#64))).val
theorem output13641_def : output13641 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 7435674573564081700#64)) := by
  unfold output13641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13641_skip : Flapjack.WordAlloc.isSkip output13641 = false := by
  rw [output13641_def]
  conv => lhs; cbv
  try rfl
theorem node13641_eq : Flapjack.WordAlloc.removeDeadStructural input13641 value6824 value1 value2 = (output13641, value6825, value1) := by
  rw [input13641_def, output13641_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 7435674573564081700#64))).val
theorem input13642_def : input13642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 7435674573564081700#64)) := by
  unfold input13642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13642_def : output13642 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13642_skip : Flapjack.WordAlloc.isSkip output13642 = true := by
  rw [output13642_def]
  conv => lhs; cbv
  try rfl
theorem node13642_eq : Flapjack.WordAlloc.removeDeadStructural input13642 value6825 value1 value2 = (output13642, value6825, value1) := by
  rw [input13642_def, output13642_def]
  try (conv => lhs; cbv)
  try rfl

def value6826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 401 397 (Flapjack.WordRegImm.imm 64#64))))).val
theorem input13643_def : input13643 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 401 397 (Flapjack.WordRegImm.imm 64#64)))) := by
  unfold input13643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 401 397 (Flapjack.WordRegImm.imm 64#64))))).val
theorem output13643_def : output13643 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 401 397 (Flapjack.WordRegImm.imm 64#64)))) := by
  unfold output13643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13643_skip : Flapjack.WordAlloc.isSkip output13643 = false := by
  rw [output13643_def]
  conv => lhs; cbv
  try rfl
theorem node13643_eq : Flapjack.WordAlloc.removeDeadStructural input13643 value6825 value1 value2 = (output13643, value6826, value1) := by
  rw [input13643_def, output13643_def]
  try (conv => lhs; cbv)
  try rfl

def value6827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 397 (Flapjack.WordLangAddr.addr 393 18446744073709551104#64)))).val
theorem input13644_def : input13644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 397 (Flapjack.WordLangAddr.addr 393 18446744073709551104#64))) := by
  unfold input13644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 397 (Flapjack.WordLangAddr.addr 393 18446744073709551104#64)))).val
theorem output13644_def : output13644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 397 (Flapjack.WordLangAddr.addr 393 18446744073709551104#64))) := by
  unfold output13644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13644_skip : Flapjack.WordAlloc.isSkip output13644 = false := by
  rw [output13644_def]
  conv => lhs; cbv
  try rfl
theorem node13644_eq : Flapjack.WordAlloc.removeDeadStructural input13644 value6826 value1 value2 = (output13644, value6827, value1) := by
  rw [input13644_def, output13644_def]
  try (conv => lhs; cbv)
  try rfl

def value6828 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 393 389)).val
theorem input13645_def : input13645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 393 389) := by
  unfold input13645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 393 389)).val
theorem output13645_def : output13645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 393 389) := by
  unfold output13645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13645_skip : Flapjack.WordAlloc.isSkip output13645 = false := by
  rw [output13645_def]
  conv => lhs; cbv
  try rfl
theorem node13645_eq : Flapjack.WordAlloc.removeDeadStructural input13645 value6827 value1 value2 = (output13645, value6828, value1) := by
  rw [input13645_def, output13645_def]
  try (conv => lhs; cbv)
  try rfl

def value6829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 389 385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13646_def : input13646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 389 385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 389 385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13646_def : output13646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 389 385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13646_skip : Flapjack.WordAlloc.isSkip output13646 = false := by
  rw [output13646_def]
  conv => lhs; cbv
  try rfl
theorem node13646_eq : Flapjack.WordAlloc.removeDeadStructural input13646 value6828 value1 value2 = (output13646, value6829, value1) := by
  rw [input13646_def, output13646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 385 Flapjack.WordStore.heapLength)).val
theorem input13647_def : input13647 = (Flapjack.WordLangProgHOL.get 385 Flapjack.WordStore.heapLength) := by
  unfold input13647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 385 Flapjack.WordStore.heapLength)).val
theorem output13647_def : output13647 = (Flapjack.WordLangProgHOL.get 385 Flapjack.WordStore.heapLength) := by
  unfold output13647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13647_skip : Flapjack.WordAlloc.isSkip output13647 = false := by
  rw [output13647_def]
  conv => lhs; cbv
  try rfl
theorem node13647_eq : Flapjack.WordAlloc.removeDeadStructural input13647 value6829 value1 value2 = (output13647, value5, value1) := by
  rw [input13647_def, output13647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13647 input13646)).val
theorem input13648_def : input13648 = (.seq input13647 input13646) := by
  unfold input13648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13647 output13646)).val
theorem output13648_def : output13648 = (.seq output13647 output13646) := by
  unfold output13648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13648_skip : Flapjack.WordAlloc.isSkip output13648 = false := by
  rw [output13648_def]
  conv => lhs; cbv
  try rfl
theorem node13648_eq : Flapjack.WordAlloc.removeDeadStructural input13648 value6828 value1 value2 = (output13648, value5, value1) := by
  rw [input13648_def, output13648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13646_eq]
  try dsimp only
  rw [node13647_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13648 input13645)).val
theorem input13649_def : input13649 = (.seq input13648 input13645) := by
  unfold input13649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13648 output13645)).val
theorem output13649_def : output13649 = (.seq output13648 output13645) := by
  unfold output13649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13649_skip : Flapjack.WordAlloc.isSkip output13649 = false := by
  rw [output13649_def]
  conv => lhs; cbv
  try rfl
theorem node13649_eq : Flapjack.WordAlloc.removeDeadStructural input13649 value6827 value1 value2 = (output13649, value5, value1) := by
  rw [input13649_def, output13649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13645_eq]
  try dsimp only
  rw [node13648_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13649 input13644)).val
theorem input13650_def : input13650 = (.seq input13649 input13644) := by
  unfold input13650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13649 output13644)).val
theorem output13650_def : output13650 = (.seq output13649 output13644) := by
  unfold output13650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13650_skip : Flapjack.WordAlloc.isSkip output13650 = false := by
  rw [output13650_def]
  conv => lhs; cbv
  try rfl
theorem node13650_eq : Flapjack.WordAlloc.removeDeadStructural input13650 value6826 value1 value2 = (output13650, value5, value1) := by
  rw [input13650_def, output13650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13644_eq]
  try dsimp only
  rw [node13649_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13650 input13643)).val
theorem input13651_def : input13651 = (.seq input13650 input13643) := by
  unfold input13651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13650 output13643)).val
theorem output13651_def : output13651 = (.seq output13650 output13643) := by
  unfold output13651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13651_skip : Flapjack.WordAlloc.isSkip output13651 = false := by
  rw [output13651_def]
  conv => lhs; cbv
  try rfl
theorem node13651_eq : Flapjack.WordAlloc.removeDeadStructural input13651 value6825 value1 value2 = (output13651, value5, value1) := by
  rw [input13651_def, output13651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13643_eq]
  try dsimp only
  rw [node13650_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 377 (Flapjack.WordLangAddr.addr 381 0#64)))).val
theorem input13652_def : input13652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 377 (Flapjack.WordLangAddr.addr 381 0#64))) := by
  unfold input13652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 377 (Flapjack.WordLangAddr.addr 381 0#64)))).val
theorem output13652_def : output13652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 377 (Flapjack.WordLangAddr.addr 381 0#64))) := by
  unfold output13652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13652_skip : Flapjack.WordAlloc.isSkip output13652 = false := by
  rw [output13652_def]
  conv => lhs; cbv
  try rfl
theorem node13652_eq : Flapjack.WordAlloc.removeDeadStructural input13652 value5 value1 value2 = (output13652, value6830, value1) := by
  rw [input13652_def, output13652_def]
  try (conv => lhs; cbv)
  try rfl

def value6831 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 369)])).val
theorem input13653_def : input13653 = (Flapjack.WordLangProgHOL.move 0 [(381, 369)]) := by
  unfold input13653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 369)])).val
theorem output13653_def : output13653 = (Flapjack.WordLangProgHOL.move 0 [(381, 369)]) := by
  unfold output13653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13653_skip : Flapjack.WordAlloc.isSkip output13653 = false := by
  rw [output13653_def]
  conv => lhs; cbv
  try rfl
theorem node13653_eq : Flapjack.WordAlloc.removeDeadStructural input13653 value6830 value1 value2 = (output13653, value6831, value1) := by
  rw [input13653_def, output13653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13653 input13652)).val
theorem input13654_def : input13654 = (.seq input13653 input13652) := by
  unfold input13654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13653 output13652)).val
theorem output13654_def : output13654 = (.seq output13653 output13652) := by
  unfold output13654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13654_skip : Flapjack.WordAlloc.isSkip output13654 = false := by
  rw [output13654_def]
  conv => lhs; cbv
  try rfl
theorem node13654_eq : Flapjack.WordAlloc.removeDeadStructural input13654 value5 value1 value2 = (output13654, value6831, value1) := by
  rw [input13654_def, output13654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13652_eq]
  try dsimp only
  rw [node13653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 2210141511517208575#64))).val
theorem input13655_def : input13655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 2210141511517208575#64)) := by
  unfold input13655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 2210141511517208575#64))).val
theorem output13655_def : output13655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 377 2210141511517208575#64)) := by
  unfold output13655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13655_skip : Flapjack.WordAlloc.isSkip output13655 = false := by
  rw [output13655_def]
  conv => lhs; cbv
  try rfl
theorem node13655_eq : Flapjack.WordAlloc.removeDeadStructural input13655 value6831 value1 value2 = (output13655, value6832, value1) := by
  rw [input13655_def, output13655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 2210141511517208575#64))).val
theorem input13656_def : input13656 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 2210141511517208575#64)) := by
  unfold input13656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13656_def : output13656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13656_skip : Flapjack.WordAlloc.isSkip output13656 = true := by
  rw [output13656_def]
  conv => lhs; cbv
  try rfl
theorem node13656_eq : Flapjack.WordAlloc.removeDeadStructural input13656 value6832 value1 value2 = (output13656, value6832, value1) := by
  rw [input13656_def, output13656_def]
  try (conv => lhs; cbv)
  try rfl

def value6833 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 369 365 (Flapjack.WordRegImm.imm 56#64))))).val
theorem input13657_def : input13657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 369 365 (Flapjack.WordRegImm.imm 56#64)))) := by
  unfold input13657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 369 365 (Flapjack.WordRegImm.imm 56#64))))).val
theorem output13657_def : output13657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 369 365 (Flapjack.WordRegImm.imm 56#64)))) := by
  unfold output13657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13657_skip : Flapjack.WordAlloc.isSkip output13657 = false := by
  rw [output13657_def]
  conv => lhs; cbv
  try rfl
theorem node13657_eq : Flapjack.WordAlloc.removeDeadStructural input13657 value6832 value1 value2 = (output13657, value6833, value1) := by
  rw [input13657_def, output13657_def]
  try (conv => lhs; cbv)
  try rfl

def value6834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709551104#64)))).val
theorem input13658_def : input13658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709551104#64))) := by
  unfold input13658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709551104#64)))).val
theorem output13658_def : output13658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709551104#64))) := by
  unfold output13658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13658_skip : Flapjack.WordAlloc.isSkip output13658 = false := by
  rw [output13658_def]
  conv => lhs; cbv
  try rfl
theorem node13658_eq : Flapjack.WordAlloc.removeDeadStructural input13658 value6833 value1 value2 = (output13658, value6834, value1) := by
  rw [input13658_def, output13658_def]
  try (conv => lhs; cbv)
  try rfl

def value6835 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357)).val
theorem input13659_def : input13659 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357) := by
  unfold input13659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357)).val
theorem output13659_def : output13659 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357) := by
  unfold output13659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13659_skip : Flapjack.WordAlloc.isSkip output13659 = false := by
  rw [output13659_def]
  conv => lhs; cbv
  try rfl
theorem node13659_eq : Flapjack.WordAlloc.removeDeadStructural input13659 value6834 value1 value2 = (output13659, value6835, value1) := by
  rw [input13659_def, output13659_def]
  try (conv => lhs; cbv)
  try rfl

def value6836 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13660_def : input13660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13660_def : output13660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13660_skip : Flapjack.WordAlloc.isSkip output13660 = false := by
  rw [output13660_def]
  conv => lhs; cbv
  try rfl
theorem node13660_eq : Flapjack.WordAlloc.removeDeadStructural input13660 value6835 value1 value2 = (output13660, value6836, value1) := by
  rw [input13660_def, output13660_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength)).val
theorem input13661_def : input13661 = (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength) := by
  unfold input13661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength)).val
theorem output13661_def : output13661 = (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength) := by
  unfold output13661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13661_skip : Flapjack.WordAlloc.isSkip output13661 = false := by
  rw [output13661_def]
  conv => lhs; cbv
  try rfl
theorem node13661_eq : Flapjack.WordAlloc.removeDeadStructural input13661 value6836 value1 value2 = (output13661, value5, value1) := by
  rw [input13661_def, output13661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13661 input13660)).val
theorem input13662_def : input13662 = (.seq input13661 input13660) := by
  unfold input13662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13661 output13660)).val
theorem output13662_def : output13662 = (.seq output13661 output13660) := by
  unfold output13662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13662_skip : Flapjack.WordAlloc.isSkip output13662 = false := by
  rw [output13662_def]
  conv => lhs; cbv
  try rfl
theorem node13662_eq : Flapjack.WordAlloc.removeDeadStructural input13662 value6835 value1 value2 = (output13662, value5, value1) := by
  rw [input13662_def, output13662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13660_eq]
  try dsimp only
  rw [node13661_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13662 input13659)).val
theorem input13663_def : input13663 = (.seq input13662 input13659) := by
  unfold input13663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13662 output13659)).val
theorem output13663_def : output13663 = (.seq output13662 output13659) := by
  unfold output13663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13663_skip : Flapjack.WordAlloc.isSkip output13663 = false := by
  rw [output13663_def]
  conv => lhs; cbv
  try rfl
theorem node13663_eq : Flapjack.WordAlloc.removeDeadStructural input13663 value6834 value1 value2 = (output13663, value5, value1) := by
  rw [input13663_def, output13663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13659_eq]
  try dsimp only
  rw [node13662_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13663 input13658)).val
theorem input13664_def : input13664 = (.seq input13663 input13658) := by
  unfold input13664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13663 output13658)).val
theorem output13664_def : output13664 = (.seq output13663 output13658) := by
  unfold output13664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13664_skip : Flapjack.WordAlloc.isSkip output13664 = false := by
  rw [output13664_def]
  conv => lhs; cbv
  try rfl
theorem node13664_eq : Flapjack.WordAlloc.removeDeadStructural input13664 value6833 value1 value2 = (output13664, value5, value1) := by
  rw [input13664_def, output13664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13658_eq]
  try dsimp only
  rw [node13663_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13664 input13657)).val
theorem input13665_def : input13665 = (.seq input13664 input13657) := by
  unfold input13665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13664 output13657)).val
theorem output13665_def : output13665 = (.seq output13664 output13657) := by
  unfold output13665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13665_skip : Flapjack.WordAlloc.isSkip output13665 = false := by
  rw [output13665_def]
  conv => lhs; cbv
  try rfl
theorem node13665_eq : Flapjack.WordAlloc.removeDeadStructural input13665 value6832 value1 value2 = (output13665, value5, value1) := by
  rw [input13665_def, output13665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13657_eq]
  try dsimp only
  rw [node13664_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6837 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 345 (Flapjack.WordLangAddr.addr 349 0#64)))).val
theorem input13666_def : input13666 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 345 (Flapjack.WordLangAddr.addr 349 0#64))) := by
  unfold input13666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 345 (Flapjack.WordLangAddr.addr 349 0#64)))).val
theorem output13666_def : output13666 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 345 (Flapjack.WordLangAddr.addr 349 0#64))) := by
  unfold output13666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13666_skip : Flapjack.WordAlloc.isSkip output13666 = false := by
  rw [output13666_def]
  conv => lhs; cbv
  try rfl
theorem node13666_eq : Flapjack.WordAlloc.removeDeadStructural input13666 value5 value1 value2 = (output13666, value6837, value1) := by
  rw [input13666_def, output13666_def]
  try (conv => lhs; cbv)
  try rfl

def value6838 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(349, 337)])).val
theorem input13667_def : input13667 = (Flapjack.WordLangProgHOL.move 0 [(349, 337)]) := by
  unfold input13667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(349, 337)])).val
theorem output13667_def : output13667 = (Flapjack.WordLangProgHOL.move 0 [(349, 337)]) := by
  unfold output13667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13667_skip : Flapjack.WordAlloc.isSkip output13667 = false := by
  rw [output13667_def]
  conv => lhs; cbv
  try rfl
theorem node13667_eq : Flapjack.WordAlloc.removeDeadStructural input13667 value6837 value1 value2 = (output13667, value6838, value1) := by
  rw [input13667_def, output13667_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13667 input13666)).val
theorem input13668_def : input13668 = (.seq input13667 input13666) := by
  unfold input13668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13667 output13666)).val
theorem output13668_def : output13668 = (.seq output13667 output13666) := by
  unfold output13668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13668_skip : Flapjack.WordAlloc.isSkip output13668 = false := by
  rw [output13668_def]
  conv => lhs; cbv
  try rfl
theorem node13668_eq : Flapjack.WordAlloc.removeDeadStructural input13668 value5 value1 value2 = (output13668, value6838, value1) := by
  rw [input13668_def, output13668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13666_eq]
  try dsimp only
  rw [node13667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6839 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 13402431016077863595#64))).val
theorem input13669_def : input13669 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 13402431016077863595#64)) := by
  unfold input13669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 13402431016077863595#64))).val
theorem output13669_def : output13669 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 13402431016077863595#64)) := by
  unfold output13669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13669_skip : Flapjack.WordAlloc.isSkip output13669 = false := by
  rw [output13669_def]
  conv => lhs; cbv
  try rfl
theorem node13669_eq : Flapjack.WordAlloc.removeDeadStructural input13669 value6838 value1 value2 = (output13669, value6839, value1) := by
  rw [input13669_def, output13669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 13402431016077863595#64))).val
theorem input13670_def : input13670 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 13402431016077863595#64)) := by
  unfold input13670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13670_def : output13670 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13670_skip : Flapjack.WordAlloc.isSkip output13670 = true := by
  rw [output13670_def]
  conv => lhs; cbv
  try rfl
theorem node13670_eq : Flapjack.WordAlloc.removeDeadStructural input13670 value6839 value1 value2 = (output13670, value6839, value1) := by
  rw [input13670_def, output13670_def]
  try (conv => lhs; cbv)
  try rfl

def value6840 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 337 333 (Flapjack.WordRegImm.imm 48#64))))).val
theorem input13671_def : input13671 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 337 333 (Flapjack.WordRegImm.imm 48#64)))) := by
  unfold input13671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 337 333 (Flapjack.WordRegImm.imm 48#64))))).val
theorem output13671_def : output13671 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 337 333 (Flapjack.WordRegImm.imm 48#64)))) := by
  unfold output13671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13671_skip : Flapjack.WordAlloc.isSkip output13671 = false := by
  rw [output13671_def]
  conv => lhs; cbv
  try rfl
theorem node13671_eq : Flapjack.WordAlloc.removeDeadStructural input13671 value6839 value1 value2 = (output13671, value6840, value1) := by
  rw [input13671_def, output13671_def]
  try (conv => lhs; cbv)
  try rfl

def value6841 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 18446744073709551104#64)))).val
theorem input13672_def : input13672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 18446744073709551104#64))) := by
  unfold input13672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 18446744073709551104#64)))).val
theorem output13672_def : output13672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 333 (Flapjack.WordLangAddr.addr 329 18446744073709551104#64))) := by
  unfold output13672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13672_skip : Flapjack.WordAlloc.isSkip output13672 = false := by
  rw [output13672_def]
  conv => lhs; cbv
  try rfl
theorem node13672_eq : Flapjack.WordAlloc.removeDeadStructural input13672 value6840 value1 value2 = (output13672, value6841, value1) := by
  rw [input13672_def, output13672_def]
  try (conv => lhs; cbv)
  try rfl

def value6842 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325)).val
theorem input13673_def : input13673 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325) := by
  unfold input13673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325)).val
theorem output13673_def : output13673 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325) := by
  unfold output13673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13673_skip : Flapjack.WordAlloc.isSkip output13673 = false := by
  rw [output13673_def]
  conv => lhs; cbv
  try rfl
theorem node13673_eq : Flapjack.WordAlloc.removeDeadStructural input13673 value6841 value1 value2 = (output13673, value6842, value1) := by
  rw [input13673_def, output13673_def]
  try (conv => lhs; cbv)
  try rfl

def value6843 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13674_def : input13674 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13674_def : output13674 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13674_skip : Flapjack.WordAlloc.isSkip output13674 = false := by
  rw [output13674_def]
  conv => lhs; cbv
  try rfl
theorem node13674_eq : Flapjack.WordAlloc.removeDeadStructural input13674 value6842 value1 value2 = (output13674, value6843, value1) := by
  rw [input13674_def, output13674_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength)).val
theorem input13675_def : input13675 = (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength) := by
  unfold input13675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength)).val
theorem output13675_def : output13675 = (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength) := by
  unfold output13675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13675_skip : Flapjack.WordAlloc.isSkip output13675 = false := by
  rw [output13675_def]
  conv => lhs; cbv
  try rfl
theorem node13675_eq : Flapjack.WordAlloc.removeDeadStructural input13675 value6843 value1 value2 = (output13675, value5, value1) := by
  rw [input13675_def, output13675_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13675 input13674)).val
theorem input13676_def : input13676 = (.seq input13675 input13674) := by
  unfold input13676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13675 output13674)).val
theorem output13676_def : output13676 = (.seq output13675 output13674) := by
  unfold output13676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13676_skip : Flapjack.WordAlloc.isSkip output13676 = false := by
  rw [output13676_def]
  conv => lhs; cbv
  try rfl
theorem node13676_eq : Flapjack.WordAlloc.removeDeadStructural input13676 value6842 value1 value2 = (output13676, value5, value1) := by
  rw [input13676_def, output13676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13674_eq]
  try dsimp only
  rw [node13675_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13676 input13673)).val
theorem input13677_def : input13677 = (.seq input13676 input13673) := by
  unfold input13677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13676 output13673)).val
theorem output13677_def : output13677 = (.seq output13676 output13673) := by
  unfold output13677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13677_skip : Flapjack.WordAlloc.isSkip output13677 = false := by
  rw [output13677_def]
  conv => lhs; cbv
  try rfl
theorem node13677_eq : Flapjack.WordAlloc.removeDeadStructural input13677 value6841 value1 value2 = (output13677, value5, value1) := by
  rw [input13677_def, output13677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13673_eq]
  try dsimp only
  rw [node13676_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13677 input13672)).val
theorem input13678_def : input13678 = (.seq input13677 input13672) := by
  unfold input13678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13677 output13672)).val
theorem output13678_def : output13678 = (.seq output13677 output13672) := by
  unfold output13678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13678_skip : Flapjack.WordAlloc.isSkip output13678 = false := by
  rw [output13678_def]
  conv => lhs; cbv
  try rfl
theorem node13678_eq : Flapjack.WordAlloc.removeDeadStructural input13678 value6840 value1 value2 = (output13678, value5, value1) := by
  rw [input13678_def, output13678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13672_eq]
  try dsimp only
  rw [node13677_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13678 input13671)).val
theorem input13679_def : input13679 = (.seq input13678 input13671) := by
  unfold input13679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13678 output13671)).val
theorem output13679_def : output13679 = (.seq output13678 output13671) := by
  unfold output13679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13679_skip : Flapjack.WordAlloc.isSkip output13679 = false := by
  rw [output13679_def]
  conv => lhs; cbv
  try rfl
theorem node13679_eq : Flapjack.WordAlloc.removeDeadStructural input13679 value6839 value1 value2 = (output13679, value5, value1) := by
  rw [input13679_def, output13679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13671_eq]
  try dsimp only
  rw [node13678_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6844 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem input13680_def : input13680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold input13680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem output13680_def : output13680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold output13680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13680_skip : Flapjack.WordAlloc.isSkip output13680 = false := by
  rw [output13680_def]
  conv => lhs; cbv
  try rfl
theorem node13680_eq : Flapjack.WordAlloc.removeDeadStructural input13680 value5 value1 value2 = (output13680, value6844, value1) := by
  rw [input13680_def, output13680_def]
  try (conv => lhs; cbv)
  try rfl

def value6845 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(317, 305)])).val
theorem input13681_def : input13681 = (Flapjack.WordLangProgHOL.move 0 [(317, 305)]) := by
  unfold input13681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(317, 305)])).val
theorem output13681_def : output13681 = (Flapjack.WordLangProgHOL.move 0 [(317, 305)]) := by
  unfold output13681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13681_skip : Flapjack.WordAlloc.isSkip output13681 = false := by
  rw [output13681_def]
  conv => lhs; cbv
  try rfl
theorem node13681_eq : Flapjack.WordAlloc.removeDeadStructural input13681 value6844 value1 value2 = (output13681, value6845, value1) := by
  rw [input13681_def, output13681_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13681 input13680)).val
theorem input13682_def : input13682 = (.seq input13681 input13680) := by
  unfold input13682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13681 output13680)).val
theorem output13682_def : output13682 = (.seq output13681 output13680) := by
  unfold output13682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13682_skip : Flapjack.WordAlloc.isSkip output13682 = false := by
  rw [output13682_def]
  conv => lhs; cbv
  try rfl
theorem node13682_eq : Flapjack.WordAlloc.removeDeadStructural input13682 value5 value1 value2 = (output13682, value6845, value1) := by
  rw [input13682_def, output13682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13680_eq]
  try dsimp only
  rw [node13681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6846 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64))).val
theorem input13683_def : input13683 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)) := by
  unfold input13683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64))).val
theorem output13683_def : output13683 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)) := by
  unfold output13683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13683_skip : Flapjack.WordAlloc.isSkip output13683 = false := by
  rw [output13683_def]
  conv => lhs; cbv
  try rfl
theorem node13683_eq : Flapjack.WordAlloc.removeDeadStructural input13683 value6845 value1 value2 = (output13683, value6846, value1) := by
  rw [input13683_def, output13683_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64))).val
theorem input13684_def : input13684 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64)) := by
  unfold input13684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13684_def : output13684 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13684_skip : Flapjack.WordAlloc.isSkip output13684 = true := by
  rw [output13684_def]
  conv => lhs; cbv
  try rfl
theorem node13684_eq : Flapjack.WordAlloc.removeDeadStructural input13684 value6846 value1 value2 = (output13684, value6846, value1) := by
  rw [input13684_def, output13684_def]
  try (conv => lhs; cbv)
  try rfl

def value6847 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 40#64))))).val
theorem input13685_def : input13685 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 40#64)))) := by
  unfold input13685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 40#64))))).val
theorem output13685_def : output13685 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 40#64)))) := by
  unfold output13685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13685_skip : Flapjack.WordAlloc.isSkip output13685 = false := by
  rw [output13685_def]
  conv => lhs; cbv
  try rfl
theorem node13685_eq : Flapjack.WordAlloc.removeDeadStructural input13685 value6846 value1 value2 = (output13685, value6847, value1) := by
  rw [input13685_def, output13685_def]
  try (conv => lhs; cbv)
  try rfl

def value6848 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 18446744073709551104#64)))).val
theorem input13686_def : input13686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 18446744073709551104#64))) := by
  unfold input13686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 18446744073709551104#64)))).val
theorem output13686_def : output13686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 301 (Flapjack.WordLangAddr.addr 297 18446744073709551104#64))) := by
  unfold output13686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13686_skip : Flapjack.WordAlloc.isSkip output13686 = false := by
  rw [output13686_def]
  conv => lhs; cbv
  try rfl
theorem node13686_eq : Flapjack.WordAlloc.removeDeadStructural input13686 value6847 value1 value2 = (output13686, value6848, value1) := by
  rw [input13686_def, output13686_def]
  try (conv => lhs; cbv)
  try rfl

def value6849 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 297 293)).val
theorem input13687_def : input13687 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 297 293) := by
  unfold input13687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 297 293)).val
theorem output13687_def : output13687 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 297 293) := by
  unfold output13687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13687_skip : Flapjack.WordAlloc.isSkip output13687 = false := by
  rw [output13687_def]
  conv => lhs; cbv
  try rfl
theorem node13687_eq : Flapjack.WordAlloc.removeDeadStructural input13687 value6848 value1 value2 = (output13687, value6849, value1) := by
  rw [input13687_def, output13687_def]
  try (conv => lhs; cbv)
  try rfl

def value6850 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13688_def : input13688 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13688_def : output13688 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 293 289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13688_skip : Flapjack.WordAlloc.isSkip output13688 = false := by
  rw [output13688_def]
  conv => lhs; cbv
  try rfl
theorem node13688_eq : Flapjack.WordAlloc.removeDeadStructural input13688 value6849 value1 value2 = (output13688, value6850, value1) := by
  rw [input13688_def, output13688_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 289 Flapjack.WordStore.heapLength)).val
theorem input13689_def : input13689 = (Flapjack.WordLangProgHOL.get 289 Flapjack.WordStore.heapLength) := by
  unfold input13689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 289 Flapjack.WordStore.heapLength)).val
theorem output13689_def : output13689 = (Flapjack.WordLangProgHOL.get 289 Flapjack.WordStore.heapLength) := by
  unfold output13689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13689_skip : Flapjack.WordAlloc.isSkip output13689 = false := by
  rw [output13689_def]
  conv => lhs; cbv
  try rfl
theorem node13689_eq : Flapjack.WordAlloc.removeDeadStructural input13689 value6850 value1 value2 = (output13689, value5, value1) := by
  rw [input13689_def, output13689_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13689 input13688)).val
theorem input13690_def : input13690 = (.seq input13689 input13688) := by
  unfold input13690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13689 output13688)).val
theorem output13690_def : output13690 = (.seq output13689 output13688) := by
  unfold output13690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13690_skip : Flapjack.WordAlloc.isSkip output13690 = false := by
  rw [output13690_def]
  conv => lhs; cbv
  try rfl
theorem node13690_eq : Flapjack.WordAlloc.removeDeadStructural input13690 value6849 value1 value2 = (output13690, value5, value1) := by
  rw [input13690_def, output13690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13688_eq]
  try dsimp only
  rw [node13689_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13690 input13687)).val
theorem input13691_def : input13691 = (.seq input13690 input13687) := by
  unfold input13691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13690 output13687)).val
theorem output13691_def : output13691 = (.seq output13690 output13687) := by
  unfold output13691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13691_skip : Flapjack.WordAlloc.isSkip output13691 = false := by
  rw [output13691_def]
  conv => lhs; cbv
  try rfl
theorem node13691_eq : Flapjack.WordAlloc.removeDeadStructural input13691 value6848 value1 value2 = (output13691, value5, value1) := by
  rw [input13691_def, output13691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13687_eq]
  try dsimp only
  rw [node13690_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13691 input13686)).val
theorem input13692_def : input13692 = (.seq input13691 input13686) := by
  unfold input13692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13691 output13686)).val
theorem output13692_def : output13692 = (.seq output13691 output13686) := by
  unfold output13692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13692_skip : Flapjack.WordAlloc.isSkip output13692 = false := by
  rw [output13692_def]
  conv => lhs; cbv
  try rfl
theorem node13692_eq : Flapjack.WordAlloc.removeDeadStructural input13692 value6847 value1 value2 = (output13692, value5, value1) := by
  rw [input13692_def, output13692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13686_eq]
  try dsimp only
  rw [node13691_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13692 input13685)).val
theorem input13693_def : input13693 = (.seq input13692 input13685) := by
  unfold input13693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13692 output13685)).val
theorem output13693_def : output13693 = (.seq output13692 output13685) := by
  unfold output13693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13693_skip : Flapjack.WordAlloc.isSkip output13693 = false := by
  rw [output13693_def]
  conv => lhs; cbv
  try rfl
theorem node13693_eq : Flapjack.WordAlloc.removeDeadStructural input13693 value6846 value1 value2 = (output13693, value5, value1) := by
  rw [input13693_def, output13693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13685_eq]
  try dsimp only
  rw [node13692_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6851 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64)))).val
theorem input13694_def : input13694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64))) := by
  unfold input13694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64)))).val
theorem output13694_def : output13694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64))) := by
  unfold output13694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13694_skip : Flapjack.WordAlloc.isSkip output13694 = false := by
  rw [output13694_def]
  conv => lhs; cbv
  try rfl
theorem node13694_eq : Flapjack.WordAlloc.removeDeadStructural input13694 value5 value1 value2 = (output13694, value6851, value1) := by
  rw [input13694_def, output13694_def]
  try (conv => lhs; cbv)
  try rfl

def value6852 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 273)])).val
theorem input13695_def : input13695 = (Flapjack.WordLangProgHOL.move 0 [(285, 273)]) := by
  unfold input13695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 273)])).val
theorem output13695_def : output13695 = (Flapjack.WordLangProgHOL.move 0 [(285, 273)]) := by
  unfold output13695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13695_skip : Flapjack.WordAlloc.isSkip output13695 = false := by
  rw [output13695_def]
  conv => lhs; cbv
  try rfl
theorem node13695_eq : Flapjack.WordAlloc.removeDeadStructural input13695 value6851 value1 value2 = (output13695, value6852, value1) := by
  rw [input13695_def, output13695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13695 input13694)).val
theorem input13696_def : input13696 = (.seq input13695 input13694) := by
  unfold input13696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13695 output13694)).val
theorem output13696_def : output13696 = (.seq output13695 output13694) := by
  unfold output13696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13696_skip : Flapjack.WordAlloc.isSkip output13696 = false := by
  rw [output13696_def]
  conv => lhs; cbv
  try rfl
theorem node13696_eq : Flapjack.WordAlloc.removeDeadStructural input13696 value5 value1 value2 = (output13696, value6852, value1) := by
  rw [input13696_def, output13696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13694_eq]
  try dsimp only
  rw [node13695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6853 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64))).val
theorem input13697_def : input13697 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)) := by
  unfold input13697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64))).val
theorem output13697_def : output13697 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)) := by
  unfold output13697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13697_skip : Flapjack.WordAlloc.isSkip output13697 = false := by
  rw [output13697_def]
  conv => lhs; cbv
  try rfl
theorem node13697_eq : Flapjack.WordAlloc.removeDeadStructural input13697 value6852 value1 value2 = (output13697, value6853, value1) := by
  rw [input13697_def, output13697_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64))).val
theorem input13698_def : input13698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)) := by
  unfold input13698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13698_def : output13698 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13698_skip : Flapjack.WordAlloc.isSkip output13698 = true := by
  rw [output13698_def]
  conv => lhs; cbv
  try rfl
theorem node13698_eq : Flapjack.WordAlloc.removeDeadStructural input13698 value6853 value1 value2 = (output13698, value6853, value1) := by
  rw [input13698_def, output13698_def]
  try (conv => lhs; cbv)
  try rfl

def value6854 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 269 (Flapjack.WordRegImm.imm 32#64))))).val
theorem input13699_def : input13699 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 269 (Flapjack.WordRegImm.imm 32#64)))) := by
  unfold input13699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 269 (Flapjack.WordRegImm.imm 32#64))))).val
theorem output13699_def : output13699 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 273 269 (Flapjack.WordRegImm.imm 32#64)))) := by
  unfold output13699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13699_skip : Flapjack.WordAlloc.isSkip output13699 = false := by
  rw [output13699_def]
  conv => lhs; cbv
  try rfl
theorem node13699_eq : Flapjack.WordAlloc.removeDeadStructural input13699 value6853 value1 value2 = (output13699, value6854, value1) := by
  rw [input13699_def, output13699_def]
  try (conv => lhs; cbv)
  try rfl

def value6855 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 18446744073709551104#64)))).val
theorem input13700_def : input13700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 18446744073709551104#64))) := by
  unfold input13700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 18446744073709551104#64)))).val
theorem output13700_def : output13700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 269 (Flapjack.WordLangAddr.addr 265 18446744073709551104#64))) := by
  unfold output13700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13700_skip : Flapjack.WordAlloc.isSkip output13700 = false := by
  rw [output13700_def]
  conv => lhs; cbv
  try rfl
theorem node13700_eq : Flapjack.WordAlloc.removeDeadStructural input13700 value6854 value1 value2 = (output13700, value6855, value1) := by
  rw [input13700_def, output13700_def]
  try (conv => lhs; cbv)
  try rfl

def value6856 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261)).val
theorem input13701_def : input13701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261) := by
  unfold input13701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261)).val
theorem output13701_def : output13701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261) := by
  unfold output13701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13701_skip : Flapjack.WordAlloc.isSkip output13701 = false := by
  rw [output13701_def]
  conv => lhs; cbv
  try rfl
theorem node13701_eq : Flapjack.WordAlloc.removeDeadStructural input13701 value6855 value1 value2 = (output13701, value6856, value1) := by
  rw [input13701_def, output13701_def]
  try (conv => lhs; cbv)
  try rfl

def value6857 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13702_def : input13702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13702_def : output13702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13702_skip : Flapjack.WordAlloc.isSkip output13702 = false := by
  rw [output13702_def]
  conv => lhs; cbv
  try rfl
theorem node13702_eq : Flapjack.WordAlloc.removeDeadStructural input13702 value6856 value1 value2 = (output13702, value6857, value1) := by
  rw [input13702_def, output13702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength)).val
theorem input13703_def : input13703 = (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength) := by
  unfold input13703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength)).val
theorem output13703_def : output13703 = (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength) := by
  unfold output13703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13703_skip : Flapjack.WordAlloc.isSkip output13703 = false := by
  rw [output13703_def]
  conv => lhs; cbv
  try rfl
theorem node13703_eq : Flapjack.WordAlloc.removeDeadStructural input13703 value6857 value1 value2 = (output13703, value5, value1) := by
  rw [input13703_def, output13703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13703 input13702)).val
theorem input13704_def : input13704 = (.seq input13703 input13702) := by
  unfold input13704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13703 output13702)).val
theorem output13704_def : output13704 = (.seq output13703 output13702) := by
  unfold output13704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13704_skip : Flapjack.WordAlloc.isSkip output13704 = false := by
  rw [output13704_def]
  conv => lhs; cbv
  try rfl
theorem node13704_eq : Flapjack.WordAlloc.removeDeadStructural input13704 value6856 value1 value2 = (output13704, value5, value1) := by
  rw [input13704_def, output13704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13702_eq]
  try dsimp only
  rw [node13703_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13704 input13701)).val
theorem input13705_def : input13705 = (.seq input13704 input13701) := by
  unfold input13705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13704 output13701)).val
theorem output13705_def : output13705 = (.seq output13704 output13701) := by
  unfold output13705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13705_skip : Flapjack.WordAlloc.isSkip output13705 = false := by
  rw [output13705_def]
  conv => lhs; cbv
  try rfl
theorem node13705_eq : Flapjack.WordAlloc.removeDeadStructural input13705 value6855 value1 value2 = (output13705, value5, value1) := by
  rw [input13705_def, output13705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13701_eq]
  try dsimp only
  rw [node13704_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13705 input13700)).val
theorem input13706_def : input13706 = (.seq input13705 input13700) := by
  unfold input13706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13705 output13700)).val
theorem output13706_def : output13706 = (.seq output13705 output13700) := by
  unfold output13706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13706_skip : Flapjack.WordAlloc.isSkip output13706 = false := by
  rw [output13706_def]
  conv => lhs; cbv
  try rfl
theorem node13706_eq : Flapjack.WordAlloc.removeDeadStructural input13706 value6854 value1 value2 = (output13706, value5, value1) := by
  rw [input13706_def, output13706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13700_eq]
  try dsimp only
  rw [node13705_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13706 input13699)).val
theorem input13707_def : input13707 = (.seq input13706 input13699) := by
  unfold input13707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13706 output13699)).val
theorem output13707_def : output13707 = (.seq output13706 output13699) := by
  unfold output13707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13707_skip : Flapjack.WordAlloc.isSkip output13707 = false := by
  rw [output13707_def]
  conv => lhs; cbv
  try rfl
theorem node13707_eq : Flapjack.WordAlloc.removeDeadStructural input13707 value6853 value1 value2 = (output13707, value5, value1) := by
  rw [input13707_def, output13707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13699_eq]
  try dsimp only
  rw [node13706_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6858 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 249 (Flapjack.WordLangAddr.addr 253 0#64)))).val
theorem input13708_def : input13708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 249 (Flapjack.WordLangAddr.addr 253 0#64))) := by
  unfold input13708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 249 (Flapjack.WordLangAddr.addr 253 0#64)))).val
theorem output13708_def : output13708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 249 (Flapjack.WordLangAddr.addr 253 0#64))) := by
  unfold output13708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13708_skip : Flapjack.WordAlloc.isSkip output13708 = false := by
  rw [output13708_def]
  conv => lhs; cbv
  try rfl
theorem node13708_eq : Flapjack.WordAlloc.removeDeadStructural input13708 value5 value1 value2 = (output13708, value6858, value1) := by
  rw [input13708_def, output13708_def]
  try (conv => lhs; cbv)
  try rfl

def value6859 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 241)])).val
theorem input13709_def : input13709 = (Flapjack.WordLangProgHOL.move 0 [(253, 241)]) := by
  unfold input13709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(253, 241)])).val
theorem output13709_def : output13709 = (Flapjack.WordLangProgHOL.move 0 [(253, 241)]) := by
  unfold output13709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13709_skip : Flapjack.WordAlloc.isSkip output13709 = false := by
  rw [output13709_def]
  conv => lhs; cbv
  try rfl
theorem node13709_eq : Flapjack.WordAlloc.removeDeadStructural input13709 value6858 value1 value2 = (output13709, value6859, value1) := by
  rw [input13709_def, output13709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13709 input13708)).val
theorem input13710_def : input13710 = (.seq input13709 input13708) := by
  unfold input13710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13709 output13708)).val
theorem output13710_def : output13710 = (.seq output13709 output13708) := by
  unfold output13710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13710_skip : Flapjack.WordAlloc.isSkip output13710 = false := by
  rw [output13710_def]
  conv => lhs; cbv
  try rfl
theorem node13710_eq : Flapjack.WordAlloc.removeDeadStructural input13710 value5 value1 value2 = (output13710, value6859, value1) := by
  rw [input13710_def, output13710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13708_eq]
  try dsimp only
  rw [node13709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6860 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64))).val
theorem input13711_def : input13711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)) := by
  unfold input13711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64))).val
theorem output13711_def : output13711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)) := by
  unfold output13711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13711_skip : Flapjack.WordAlloc.isSkip output13711 = false := by
  rw [output13711_def]
  conv => lhs; cbv
  try rfl
theorem node13711_eq : Flapjack.WordAlloc.removeDeadStructural input13711 value6859 value1 value2 = (output13711, value6860, value1) := by
  rw [input13711_def, output13711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64))).val
theorem input13712_def : input13712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)) := by
  unfold input13712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13712_def : output13712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13712_skip : Flapjack.WordAlloc.isSkip output13712 = true := by
  rw [output13712_def]
  conv => lhs; cbv
  try rfl
theorem node13712_eq : Flapjack.WordAlloc.removeDeadStructural input13712 value6860 value1 value2 = (output13712, value6860, value1) := by
  rw [input13712_def, output13712_def]
  try (conv => lhs; cbv)
  try rfl

def value6861 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 241 237 (Flapjack.WordRegImm.imm 24#64))))).val
theorem input13713_def : input13713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 241 237 (Flapjack.WordRegImm.imm 24#64)))) := by
  unfold input13713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 241 237 (Flapjack.WordRegImm.imm 24#64))))).val
theorem output13713_def : output13713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 241 237 (Flapjack.WordRegImm.imm 24#64)))) := by
  unfold output13713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13713_skip : Flapjack.WordAlloc.isSkip output13713 = false := by
  rw [output13713_def]
  conv => lhs; cbv
  try rfl
theorem node13713_eq : Flapjack.WordAlloc.removeDeadStructural input13713 value6860 value1 value2 = (output13713, value6861, value1) := by
  rw [input13713_def, output13713_def]
  try (conv => lhs; cbv)
  try rfl

def value6862 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 237 (Flapjack.WordLangAddr.addr 233 18446744073709551104#64)))).val
theorem input13714_def : input13714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 237 (Flapjack.WordLangAddr.addr 233 18446744073709551104#64))) := by
  unfold input13714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 237 (Flapjack.WordLangAddr.addr 233 18446744073709551104#64)))).val
theorem output13714_def : output13714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 237 (Flapjack.WordLangAddr.addr 233 18446744073709551104#64))) := by
  unfold output13714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13714_skip : Flapjack.WordAlloc.isSkip output13714 = false := by
  rw [output13714_def]
  conv => lhs; cbv
  try rfl
theorem node13714_eq : Flapjack.WordAlloc.removeDeadStructural input13714 value6861 value1 value2 = (output13714, value6862, value1) := by
  rw [input13714_def, output13714_def]
  try (conv => lhs; cbv)
  try rfl

def value6863 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 233 229)).val
theorem input13715_def : input13715 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 233 229) := by
  unfold input13715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 233 229)).val
theorem output13715_def : output13715 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 233 229) := by
  unfold output13715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13715_skip : Flapjack.WordAlloc.isSkip output13715 = false := by
  rw [output13715_def]
  conv => lhs; cbv
  try rfl
theorem node13715_eq : Flapjack.WordAlloc.removeDeadStructural input13715 value6862 value1 value2 = (output13715, value6863, value1) := by
  rw [input13715_def, output13715_def]
  try (conv => lhs; cbv)
  try rfl

def value6864 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13716_def : input13716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13716_def : output13716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 229 225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13716_skip : Flapjack.WordAlloc.isSkip output13716 = false := by
  rw [output13716_def]
  conv => lhs; cbv
  try rfl
theorem node13716_eq : Flapjack.WordAlloc.removeDeadStructural input13716 value6863 value1 value2 = (output13716, value6864, value1) := by
  rw [input13716_def, output13716_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 225 Flapjack.WordStore.heapLength)).val
theorem input13717_def : input13717 = (Flapjack.WordLangProgHOL.get 225 Flapjack.WordStore.heapLength) := by
  unfold input13717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 225 Flapjack.WordStore.heapLength)).val
theorem output13717_def : output13717 = (Flapjack.WordLangProgHOL.get 225 Flapjack.WordStore.heapLength) := by
  unfold output13717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13717_skip : Flapjack.WordAlloc.isSkip output13717 = false := by
  rw [output13717_def]
  conv => lhs; cbv
  try rfl
theorem node13717_eq : Flapjack.WordAlloc.removeDeadStructural input13717 value6864 value1 value2 = (output13717, value5, value1) := by
  rw [input13717_def, output13717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13717 input13716)).val
theorem input13718_def : input13718 = (.seq input13717 input13716) := by
  unfold input13718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13717 output13716)).val
theorem output13718_def : output13718 = (.seq output13717 output13716) := by
  unfold output13718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13718_skip : Flapjack.WordAlloc.isSkip output13718 = false := by
  rw [output13718_def]
  conv => lhs; cbv
  try rfl
theorem node13718_eq : Flapjack.WordAlloc.removeDeadStructural input13718 value6863 value1 value2 = (output13718, value5, value1) := by
  rw [input13718_def, output13718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13716_eq]
  try dsimp only
  rw [node13717_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13718 input13715)).val
theorem input13719_def : input13719 = (.seq input13718 input13715) := by
  unfold input13719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13718 output13715)).val
theorem output13719_def : output13719 = (.seq output13718 output13715) := by
  unfold output13719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13719_skip : Flapjack.WordAlloc.isSkip output13719 = false := by
  rw [output13719_def]
  conv => lhs; cbv
  try rfl
theorem node13719_eq : Flapjack.WordAlloc.removeDeadStructural input13719 value6862 value1 value2 = (output13719, value5, value1) := by
  rw [input13719_def, output13719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13715_eq]
  try dsimp only
  rw [node13718_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13719 input13714)).val
theorem input13720_def : input13720 = (.seq input13719 input13714) := by
  unfold input13720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13719 output13714)).val
theorem output13720_def : output13720 = (.seq output13719 output13714) := by
  unfold output13720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13720_skip : Flapjack.WordAlloc.isSkip output13720 = false := by
  rw [output13720_def]
  conv => lhs; cbv
  try rfl
theorem node13720_eq : Flapjack.WordAlloc.removeDeadStructural input13720 value6861 value1 value2 = (output13720, value5, value1) := by
  rw [input13720_def, output13720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13714_eq]
  try dsimp only
  rw [node13719_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13720 input13713)).val
theorem input13721_def : input13721 = (.seq input13720 input13713) := by
  unfold input13721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13720 output13713)).val
theorem output13721_def : output13721 = (.seq output13720 output13713) := by
  unfold output13721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13721_skip : Flapjack.WordAlloc.isSkip output13721 = false := by
  rw [output13721_def]
  conv => lhs; cbv
  try rfl
theorem node13721_eq : Flapjack.WordAlloc.removeDeadStructural input13721 value6860 value1 value2 = (output13721, value5, value1) := by
  rw [input13721_def, output13721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13713_eq]
  try dsimp only
  rw [node13720_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6865 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 217 (Flapjack.WordLangAddr.addr 221 0#64)))).val
theorem input13722_def : input13722 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 217 (Flapjack.WordLangAddr.addr 221 0#64))) := by
  unfold input13722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 217 (Flapjack.WordLangAddr.addr 221 0#64)))).val
theorem output13722_def : output13722 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 217 (Flapjack.WordLangAddr.addr 221 0#64))) := by
  unfold output13722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13722_skip : Flapjack.WordAlloc.isSkip output13722 = false := by
  rw [output13722_def]
  conv => lhs; cbv
  try rfl
theorem node13722_eq : Flapjack.WordAlloc.removeDeadStructural input13722 value5 value1 value2 = (output13722, value6865, value1) := by
  rw [input13722_def, output13722_def]
  try (conv => lhs; cbv)
  try rfl

def value6866 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(221, 209)])).val
theorem input13723_def : input13723 = (Flapjack.WordLangProgHOL.move 0 [(221, 209)]) := by
  unfold input13723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(221, 209)])).val
theorem output13723_def : output13723 = (Flapjack.WordLangProgHOL.move 0 [(221, 209)]) := by
  unfold output13723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13723_skip : Flapjack.WordAlloc.isSkip output13723 = false := by
  rw [output13723_def]
  conv => lhs; cbv
  try rfl
theorem node13723_eq : Flapjack.WordAlloc.removeDeadStructural input13723 value6865 value1 value2 = (output13723, value6866, value1) := by
  rw [input13723_def, output13723_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13723 input13722)).val
theorem input13724_def : input13724 = (.seq input13723 input13722) := by
  unfold input13724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13723 output13722)).val
theorem output13724_def : output13724 = (.seq output13723 output13722) := by
  unfold output13724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13724_skip : Flapjack.WordAlloc.isSkip output13724 = false := by
  rw [output13724_def]
  conv => lhs; cbv
  try rfl
theorem node13724_eq : Flapjack.WordAlloc.removeDeadStructural input13724 value5 value1 value2 = (output13724, value6866, value1) := by
  rw [input13724_def, output13724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13722_eq]
  try dsimp only
  rw [node13723_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6867 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64))).val
theorem input13725_def : input13725 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64)) := by
  unfold input13725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64))).val
theorem output13725_def : output13725 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 0#64)) := by
  unfold output13725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13725_skip : Flapjack.WordAlloc.isSkip output13725 = false := by
  rw [output13725_def]
  conv => lhs; cbv
  try rfl
theorem node13725_eq : Flapjack.WordAlloc.removeDeadStructural input13725 value6866 value1 value2 = (output13725, value6867, value1) := by
  rw [input13725_def, output13725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64))).val
theorem input13726_def : input13726 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 213 0#64)) := by
  unfold input13726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13726_def : output13726 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13726_skip : Flapjack.WordAlloc.isSkip output13726 = true := by
  rw [output13726_def]
  conv => lhs; cbv
  try rfl
theorem node13726_eq : Flapjack.WordAlloc.removeDeadStructural input13726 value6867 value1 value2 = (output13726, value6867, value1) := by
  rw [input13726_def, output13726_def]
  try (conv => lhs; cbv)
  try rfl

def value6868 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 209 205 (Flapjack.WordRegImm.imm 16#64))))).val
theorem input13727_def : input13727 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 209 205 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold input13727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 209 205 (Flapjack.WordRegImm.imm 16#64))))).val
theorem output13727_def : output13727 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 209 205 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold output13727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13727_skip : Flapjack.WordAlloc.isSkip output13727 = false := by
  rw [output13727_def]
  conv => lhs; cbv
  try rfl
theorem node13727_eq : Flapjack.WordAlloc.removeDeadStructural input13727 value6867 value1 value2 = (output13727, value6868, value1) := by
  rw [input13727_def, output13727_def]
  try (conv => lhs; cbv)
  try rfl

def value6869 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 205 (Flapjack.WordLangAddr.addr 201 18446744073709551104#64)))).val
theorem input13728_def : input13728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 205 (Flapjack.WordLangAddr.addr 201 18446744073709551104#64))) := by
  unfold input13728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 205 (Flapjack.WordLangAddr.addr 201 18446744073709551104#64)))).val
theorem output13728_def : output13728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 205 (Flapjack.WordLangAddr.addr 201 18446744073709551104#64))) := by
  unfold output13728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13728_skip : Flapjack.WordAlloc.isSkip output13728 = false := by
  rw [output13728_def]
  conv => lhs; cbv
  try rfl
theorem node13728_eq : Flapjack.WordAlloc.removeDeadStructural input13728 value6868 value1 value2 = (output13728, value6869, value1) := by
  rw [input13728_def, output13728_def]
  try (conv => lhs; cbv)
  try rfl

def value6870 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 201 197)).val
theorem input13729_def : input13729 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 201 197) := by
  unfold input13729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 201 197)).val
theorem output13729_def : output13729 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 201 197) := by
  unfold output13729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13729_skip : Flapjack.WordAlloc.isSkip output13729 = false := by
  rw [output13729_def]
  conv => lhs; cbv
  try rfl
theorem node13729_eq : Flapjack.WordAlloc.removeDeadStructural input13729 value6869 value1 value2 = (output13729, value6870, value1) := by
  rw [input13729_def, output13729_def]
  try (conv => lhs; cbv)
  try rfl

def value6871 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 197 193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13730_def : input13730 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 197 193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 197 193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13730_def : output13730 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 197 193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13730_skip : Flapjack.WordAlloc.isSkip output13730 = false := by
  rw [output13730_def]
  conv => lhs; cbv
  try rfl
theorem node13730_eq : Flapjack.WordAlloc.removeDeadStructural input13730 value6870 value1 value2 = (output13730, value6871, value1) := by
  rw [input13730_def, output13730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 193 Flapjack.WordStore.heapLength)).val
theorem input13731_def : input13731 = (Flapjack.WordLangProgHOL.get 193 Flapjack.WordStore.heapLength) := by
  unfold input13731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 193 Flapjack.WordStore.heapLength)).val
theorem output13731_def : output13731 = (Flapjack.WordLangProgHOL.get 193 Flapjack.WordStore.heapLength) := by
  unfold output13731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13731_skip : Flapjack.WordAlloc.isSkip output13731 = false := by
  rw [output13731_def]
  conv => lhs; cbv
  try rfl
theorem node13731_eq : Flapjack.WordAlloc.removeDeadStructural input13731 value6871 value1 value2 = (output13731, value5, value1) := by
  rw [input13731_def, output13731_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13731 input13730)).val
theorem input13732_def : input13732 = (.seq input13731 input13730) := by
  unfold input13732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13731 output13730)).val
theorem output13732_def : output13732 = (.seq output13731 output13730) := by
  unfold output13732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13732_skip : Flapjack.WordAlloc.isSkip output13732 = false := by
  rw [output13732_def]
  conv => lhs; cbv
  try rfl
theorem node13732_eq : Flapjack.WordAlloc.removeDeadStructural input13732 value6870 value1 value2 = (output13732, value5, value1) := by
  rw [input13732_def, output13732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13730_eq]
  try dsimp only
  rw [node13731_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13732 input13729)).val
theorem input13733_def : input13733 = (.seq input13732 input13729) := by
  unfold input13733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13732 output13729)).val
theorem output13733_def : output13733 = (.seq output13732 output13729) := by
  unfold output13733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13733_skip : Flapjack.WordAlloc.isSkip output13733 = false := by
  rw [output13733_def]
  conv => lhs; cbv
  try rfl
theorem node13733_eq : Flapjack.WordAlloc.removeDeadStructural input13733 value6869 value1 value2 = (output13733, value5, value1) := by
  rw [input13733_def, output13733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13729_eq]
  try dsimp only
  rw [node13732_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13733 input13728)).val
theorem input13734_def : input13734 = (.seq input13733 input13728) := by
  unfold input13734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13733 output13728)).val
theorem output13734_def : output13734 = (.seq output13733 output13728) := by
  unfold output13734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13734_skip : Flapjack.WordAlloc.isSkip output13734 = false := by
  rw [output13734_def]
  conv => lhs; cbv
  try rfl
theorem node13734_eq : Flapjack.WordAlloc.removeDeadStructural input13734 value6868 value1 value2 = (output13734, value5, value1) := by
  rw [input13734_def, output13734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13728_eq]
  try dsimp only
  rw [node13733_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13734 input13727)).val
theorem input13735_def : input13735 = (.seq input13734 input13727) := by
  unfold input13735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13734 output13727)).val
theorem output13735_def : output13735 = (.seq output13734 output13727) := by
  unfold output13735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13735_skip : Flapjack.WordAlloc.isSkip output13735 = false := by
  rw [output13735_def]
  conv => lhs; cbv
  try rfl
theorem node13735_eq : Flapjack.WordAlloc.removeDeadStructural input13735 value6867 value1 value2 = (output13735, value5, value1) := by
  rw [input13735_def, output13735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13727_eq]
  try dsimp only
  rw [node13734_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6872 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 185 (Flapjack.WordLangAddr.addr 189 0#64)))).val
theorem input13736_def : input13736 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 185 (Flapjack.WordLangAddr.addr 189 0#64))) := by
  unfold input13736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 185 (Flapjack.WordLangAddr.addr 189 0#64)))).val
theorem output13736_def : output13736 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 185 (Flapjack.WordLangAddr.addr 189 0#64))) := by
  unfold output13736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13736_skip : Flapjack.WordAlloc.isSkip output13736 = false := by
  rw [output13736_def]
  conv => lhs; cbv
  try rfl
theorem node13736_eq : Flapjack.WordAlloc.removeDeadStructural input13736 value5 value1 value2 = (output13736, value6872, value1) := by
  rw [input13736_def, output13736_def]
  try (conv => lhs; cbv)
  try rfl

def value6873 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 177)])).val
theorem input13737_def : input13737 = (Flapjack.WordLangProgHOL.move 0 [(189, 177)]) := by
  unfold input13737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(189, 177)])).val
theorem output13737_def : output13737 = (Flapjack.WordLangProgHOL.move 0 [(189, 177)]) := by
  unfold output13737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13737_skip : Flapjack.WordAlloc.isSkip output13737 = false := by
  rw [output13737_def]
  conv => lhs; cbv
  try rfl
theorem node13737_eq : Flapjack.WordAlloc.removeDeadStructural input13737 value6872 value1 value2 = (output13737, value6873, value1) := by
  rw [input13737_def, output13737_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13737 input13736)).val
theorem input13738_def : input13738 = (.seq input13737 input13736) := by
  unfold input13738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13737 output13736)).val
theorem output13738_def : output13738 = (.seq output13737 output13736) := by
  unfold output13738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13738_skip : Flapjack.WordAlloc.isSkip output13738 = false := by
  rw [output13738_def]
  conv => lhs; cbv
  try rfl
theorem node13738_eq : Flapjack.WordAlloc.removeDeadStructural input13738 value5 value1 value2 = (output13738, value6873, value1) := by
  rw [input13738_def, output13738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13736_eq]
  try dsimp only
  rw [node13737_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6874 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64))).val
theorem input13739_def : input13739 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)) := by
  unfold input13739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64))).val
theorem output13739_def : output13739 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)) := by
  unfold output13739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13739_skip : Flapjack.WordAlloc.isSkip output13739 = false := by
  rw [output13739_def]
  conv => lhs; cbv
  try rfl
theorem node13739_eq : Flapjack.WordAlloc.removeDeadStructural input13739 value6873 value1 value2 = (output13739, value6874, value1) := by
  rw [input13739_def, output13739_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64))).val
theorem input13740_def : input13740 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)) := by
  unfold input13740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13740_def : output13740 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13740_skip : Flapjack.WordAlloc.isSkip output13740 = true := by
  rw [output13740_def]
  conv => lhs; cbv
  try rfl
theorem node13740_eq : Flapjack.WordAlloc.removeDeadStructural input13740 value6874 value1 value2 = (output13740, value6874, value1) := by
  rw [input13740_def, output13740_def]
  try (conv => lhs; cbv)
  try rfl

def value6875 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 177 173 (Flapjack.WordRegImm.imm 8#64))))).val
theorem input13741_def : input13741 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 177 173 (Flapjack.WordRegImm.imm 8#64)))) := by
  unfold input13741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 177 173 (Flapjack.WordRegImm.imm 8#64))))).val
theorem output13741_def : output13741 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 177 173 (Flapjack.WordRegImm.imm 8#64)))) := by
  unfold output13741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13741_skip : Flapjack.WordAlloc.isSkip output13741 = false := by
  rw [output13741_def]
  conv => lhs; cbv
  try rfl
theorem node13741_eq : Flapjack.WordAlloc.removeDeadStructural input13741 value6874 value1 value2 = (output13741, value6875, value1) := by
  rw [input13741_def, output13741_def]
  try (conv => lhs; cbv)
  try rfl

def value6876 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551104#64)))).val
theorem input13742_def : input13742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551104#64))) := by
  unfold input13742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551104#64)))).val
theorem output13742_def : output13742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 173 (Flapjack.WordLangAddr.addr 169 18446744073709551104#64))) := by
  unfold output13742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13742_skip : Flapjack.WordAlloc.isSkip output13742 = false := by
  rw [output13742_def]
  conv => lhs; cbv
  try rfl
theorem node13742_eq : Flapjack.WordAlloc.removeDeadStructural input13742 value6875 value1 value2 = (output13742, value6876, value1) := by
  rw [input13742_def, output13742_def]
  try (conv => lhs; cbv)
  try rfl

def value6877 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165)).val
theorem input13743_def : input13743 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165) := by
  unfold input13743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165)).val
theorem output13743_def : output13743 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 169 165) := by
  unfold output13743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13743_skip : Flapjack.WordAlloc.isSkip output13743 = false := by
  rw [output13743_def]
  conv => lhs; cbv
  try rfl
theorem node13743_eq : Flapjack.WordAlloc.removeDeadStructural input13743 value6876 value1 value2 = (output13743, value6877, value1) := by
  rw [input13743_def, output13743_def]
  try (conv => lhs; cbv)
  try rfl

def value6878 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13744_def : input13744 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13744_def : output13744 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 165 161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13744_skip : Flapjack.WordAlloc.isSkip output13744 = false := by
  rw [output13744_def]
  conv => lhs; cbv
  try rfl
theorem node13744_eq : Flapjack.WordAlloc.removeDeadStructural input13744 value6877 value1 value2 = (output13744, value6878, value1) := by
  rw [input13744_def, output13744_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength)).val
theorem input13745_def : input13745 = (Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength) := by
  unfold input13745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength)).val
theorem output13745_def : output13745 = (Flapjack.WordLangProgHOL.get 161 Flapjack.WordStore.heapLength) := by
  unfold output13745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13745_skip : Flapjack.WordAlloc.isSkip output13745 = false := by
  rw [output13745_def]
  conv => lhs; cbv
  try rfl
theorem node13745_eq : Flapjack.WordAlloc.removeDeadStructural input13745 value6878 value1 value2 = (output13745, value5, value1) := by
  rw [input13745_def, output13745_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13745 input13744)).val
theorem input13746_def : input13746 = (.seq input13745 input13744) := by
  unfold input13746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13745 output13744)).val
theorem output13746_def : output13746 = (.seq output13745 output13744) := by
  unfold output13746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13746_skip : Flapjack.WordAlloc.isSkip output13746 = false := by
  rw [output13746_def]
  conv => lhs; cbv
  try rfl
theorem node13746_eq : Flapjack.WordAlloc.removeDeadStructural input13746 value6877 value1 value2 = (output13746, value5, value1) := by
  rw [input13746_def, output13746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13744_eq]
  try dsimp only
  rw [node13745_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13746 input13743)).val
theorem input13747_def : input13747 = (.seq input13746 input13743) := by
  unfold input13747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13746 output13743)).val
theorem output13747_def : output13747 = (.seq output13746 output13743) := by
  unfold output13747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13747_skip : Flapjack.WordAlloc.isSkip output13747 = false := by
  rw [output13747_def]
  conv => lhs; cbv
  try rfl
theorem node13747_eq : Flapjack.WordAlloc.removeDeadStructural input13747 value6876 value1 value2 = (output13747, value5, value1) := by
  rw [input13747_def, output13747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13743_eq]
  try dsimp only
  rw [node13746_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13747 input13742)).val
theorem input13748_def : input13748 = (.seq input13747 input13742) := by
  unfold input13748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13747 output13742)).val
theorem output13748_def : output13748 = (.seq output13747 output13742) := by
  unfold output13748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13748_skip : Flapjack.WordAlloc.isSkip output13748 = false := by
  rw [output13748_def]
  conv => lhs; cbv
  try rfl
theorem node13748_eq : Flapjack.WordAlloc.removeDeadStructural input13748 value6875 value1 value2 = (output13748, value5, value1) := by
  rw [input13748_def, output13748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13742_eq]
  try dsimp only
  rw [node13747_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13748 input13741)).val
theorem input13749_def : input13749 = (.seq input13748 input13741) := by
  unfold input13749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13748 output13741)).val
theorem output13749_def : output13749 = (.seq output13748 output13741) := by
  unfold output13749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13749_skip : Flapjack.WordAlloc.isSkip output13749 = false := by
  rw [output13749_def]
  conv => lhs; cbv
  try rfl
theorem node13749_eq : Flapjack.WordAlloc.removeDeadStructural input13749 value6874 value1 value2 = (output13749, value5, value1) := by
  rw [input13749_def, output13749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13741_eq]
  try dsimp only
  rw [node13748_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6879 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 153 (Flapjack.WordLangAddr.addr 157 0#64)))).val
theorem input13750_def : input13750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 153 (Flapjack.WordLangAddr.addr 157 0#64))) := by
  unfold input13750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 153 (Flapjack.WordLangAddr.addr 157 0#64)))).val
theorem output13750_def : output13750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 153 (Flapjack.WordLangAddr.addr 157 0#64))) := by
  unfold output13750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13750_skip : Flapjack.WordAlloc.isSkip output13750 = false := by
  rw [output13750_def]
  conv => lhs; cbv
  try rfl
theorem node13750_eq : Flapjack.WordAlloc.removeDeadStructural input13750 value5 value1 value2 = (output13750, value6879, value1) := by
  rw [input13750_def, output13750_def]
  try (conv => lhs; cbv)
  try rfl

def value6880 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(157, 145)])).val
theorem input13751_def : input13751 = (Flapjack.WordLangProgHOL.move 0 [(157, 145)]) := by
  unfold input13751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(157, 145)])).val
theorem output13751_def : output13751 = (Flapjack.WordLangProgHOL.move 0 [(157, 145)]) := by
  unfold output13751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13751_skip : Flapjack.WordAlloc.isSkip output13751 = false := by
  rw [output13751_def]
  conv => lhs; cbv
  try rfl
theorem node13751_eq : Flapjack.WordAlloc.removeDeadStructural input13751 value6879 value1 value2 = (output13751, value6880, value1) := by
  rw [input13751_def, output13751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13751 input13750)).val
theorem input13752_def : input13752 = (.seq input13751 input13750) := by
  unfold input13752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13751 output13750)).val
theorem output13752_def : output13752 = (.seq output13751 output13750) := by
  unfold output13752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13752_skip : Flapjack.WordAlloc.isSkip output13752 = false := by
  rw [output13752_def]
  conv => lhs; cbv
  try rfl
theorem node13752_eq : Flapjack.WordAlloc.removeDeadStructural input13752 value5 value1 value2 = (output13752, value6880, value1) := by
  rw [input13752_def, output13752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13750_eq]
  try dsimp only
  rw [node13751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6881 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64))).val
theorem input13753_def : input13753 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64)) := by
  unfold input13753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64))).val
theorem output13753_def : output13753 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 153 1#64)) := by
  unfold output13753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13753_skip : Flapjack.WordAlloc.isSkip output13753 = false := by
  rw [output13753_def]
  conv => lhs; cbv
  try rfl
theorem node13753_eq : Flapjack.WordAlloc.removeDeadStructural input13753 value6880 value1 value2 = (output13753, value6881, value1) := by
  rw [input13753_def, output13753_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 1#64))).val
theorem input13754_def : input13754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 1#64)) := by
  unfold input13754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13754_def : output13754 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13754_skip : Flapjack.WordAlloc.isSkip output13754 = true := by
  rw [output13754_def]
  conv => lhs; cbv
  try rfl
theorem node13754_eq : Flapjack.WordAlloc.removeDeadStructural input13754 value6881 value1 value2 = (output13754, value6881, value1) := by
  rw [input13754_def, output13754_def]
  try (conv => lhs; cbv)
  try rfl

def value6882 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551104#64)))).val
theorem input13755_def : input13755 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551104#64))) := by
  unfold input13755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551104#64)))).val
theorem output13755_def : output13755 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 145 (Flapjack.WordLangAddr.addr 141 18446744073709551104#64))) := by
  unfold output13755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13755_skip : Flapjack.WordAlloc.isSkip output13755 = false := by
  rw [output13755_def]
  conv => lhs; cbv
  try rfl
theorem node13755_eq : Flapjack.WordAlloc.removeDeadStructural input13755 value6881 value1 value2 = (output13755, value6882, value1) := by
  rw [input13755_def, output13755_def]
  try (conv => lhs; cbv)
  try rfl

def value6883 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137)).val
theorem input13756_def : input13756 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137) := by
  unfold input13756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137)).val
theorem output13756_def : output13756 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 141 137) := by
  unfold output13756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13756_skip : Flapjack.WordAlloc.isSkip output13756 = false := by
  rw [output13756_def]
  conv => lhs; cbv
  try rfl
theorem node13756_eq : Flapjack.WordAlloc.removeDeadStructural input13756 value6882 value1 value2 = (output13756, value6883, value1) := by
  rw [input13756_def, output13756_def]
  try (conv => lhs; cbv)
  try rfl

def value6884 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13757_def : input13757 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13757_def : output13757 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 137 133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13757_skip : Flapjack.WordAlloc.isSkip output13757 = false := by
  rw [output13757_def]
  conv => lhs; cbv
  try rfl
theorem node13757_eq : Flapjack.WordAlloc.removeDeadStructural input13757 value6883 value1 value2 = (output13757, value6884, value1) := by
  rw [input13757_def, output13757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength)).val
theorem input13758_def : input13758 = (Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength) := by
  unfold input13758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength)).val
theorem output13758_def : output13758 = (Flapjack.WordLangProgHOL.get 133 Flapjack.WordStore.heapLength) := by
  unfold output13758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13758_skip : Flapjack.WordAlloc.isSkip output13758 = false := by
  rw [output13758_def]
  conv => lhs; cbv
  try rfl
theorem node13758_eq : Flapjack.WordAlloc.removeDeadStructural input13758 value6884 value1 value2 = (output13758, value5, value1) := by
  rw [input13758_def, output13758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13758 input13757)).val
theorem input13759_def : input13759 = (.seq input13758 input13757) := by
  unfold input13759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13758 output13757)).val
theorem output13759_def : output13759 = (.seq output13758 output13757) := by
  unfold output13759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13759_skip : Flapjack.WordAlloc.isSkip output13759 = false := by
  rw [output13759_def]
  conv => lhs; cbv
  try rfl
theorem node13759_eq : Flapjack.WordAlloc.removeDeadStructural input13759 value6883 value1 value2 = (output13759, value5, value1) := by
  rw [input13759_def, output13759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13757_eq]
  try dsimp only
  rw [node13758_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13759 input13756)).val
theorem input13760_def : input13760 = (.seq input13759 input13756) := by
  unfold input13760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13759 output13756)).val
theorem output13760_def : output13760 = (.seq output13759 output13756) := by
  unfold output13760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13760_skip : Flapjack.WordAlloc.isSkip output13760 = false := by
  rw [output13760_def]
  conv => lhs; cbv
  try rfl
theorem node13760_eq : Flapjack.WordAlloc.removeDeadStructural input13760 value6882 value1 value2 = (output13760, value5, value1) := by
  rw [input13760_def, output13760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13756_eq]
  try dsimp only
  rw [node13759_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13760 input13755)).val
theorem input13761_def : input13761 = (.seq input13760 input13755) := by
  unfold input13761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13760 output13755)).val
theorem output13761_def : output13761 = (.seq output13760 output13755) := by
  unfold output13761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13761_skip : Flapjack.WordAlloc.isSkip output13761 = false := by
  rw [output13761_def]
  conv => lhs; cbv
  try rfl
theorem node13761_eq : Flapjack.WordAlloc.removeDeadStructural input13761 value6881 value1 value2 = (output13761, value5, value1) := by
  rw [input13761_def, output13761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13755_eq]
  try dsimp only
  rw [node13760_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6885 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64)))).val
theorem input13762_def : input13762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))) := by
  unfold input13762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64)))).val
theorem output13762_def : output13762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 125 (Flapjack.WordLangAddr.addr 129 0#64))) := by
  unfold output13762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13762_skip : Flapjack.WordAlloc.isSkip output13762 = false := by
  rw [output13762_def]
  conv => lhs; cbv
  try rfl
theorem node13762_eq : Flapjack.WordAlloc.removeDeadStructural input13762 value5 value1 value2 = (output13762, value6885, value1) := by
  rw [input13762_def, output13762_def]
  try (conv => lhs; cbv)
  try rfl

def value6886 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 117)])).val
theorem input13763_def : input13763 = (Flapjack.WordLangProgHOL.move 0 [(129, 117)]) := by
  unfold input13763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(129, 117)])).val
theorem output13763_def : output13763 = (Flapjack.WordLangProgHOL.move 0 [(129, 117)]) := by
  unfold output13763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13763_skip : Flapjack.WordAlloc.isSkip output13763 = false := by
  rw [output13763_def]
  conv => lhs; cbv
  try rfl
theorem node13763_eq : Flapjack.WordAlloc.removeDeadStructural input13763 value6885 value1 value2 = (output13763, value6886, value1) := by
  rw [input13763_def, output13763_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13763 input13762)).val
theorem input13764_def : input13764 = (.seq input13763 input13762) := by
  unfold input13764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13763 output13762)).val
theorem output13764_def : output13764 = (.seq output13763 output13762) := by
  unfold output13764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13764_skip : Flapjack.WordAlloc.isSkip output13764 = false := by
  rw [output13764_def]
  conv => lhs; cbv
  try rfl
theorem node13764_eq : Flapjack.WordAlloc.removeDeadStructural input13764 value5 value1 value2 = (output13764, value6886, value1) := by
  rw [input13764_def, output13764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13762_eq]
  try dsimp only
  rw [node13763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6887 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(125, 121)])).val
theorem input13765_def : input13765 = (Flapjack.WordLangProgHOL.move 0 [(125, 121)]) := by
  unfold input13765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(125, 121)])).val
theorem output13765_def : output13765 = (Flapjack.WordLangProgHOL.move 0 [(125, 121)]) := by
  unfold output13765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13765_skip : Flapjack.WordAlloc.isSkip output13765 = false := by
  rw [output13765_def]
  conv => lhs; cbv
  try rfl
theorem node13765_eq : Flapjack.WordAlloc.removeDeadStructural input13765 value6886 value1 value2 = (output13765, value6887, value1) := by
  rw [input13765_def, output13765_def]
  try (conv => lhs; cbv)
  try rfl

def value6888 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 97)])).val
theorem input13766_def : input13766 = (Flapjack.WordLangProgHOL.move 0 [(121, 97)]) := by
  unfold input13766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(121, 97)])).val
theorem output13766_def : output13766 = (Flapjack.WordLangProgHOL.move 0 [(121, 97)]) := by
  unfold output13766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13766_skip : Flapjack.WordAlloc.isSkip output13766 = false := by
  rw [output13766_def]
  conv => lhs; cbv
  try rfl
theorem node13766_eq : Flapjack.WordAlloc.removeDeadStructural input13766 value6887 value1 value2 = (output13766, value6888, value1) := by
  rw [input13766_def, output13766_def]
  try (conv => lhs; cbv)
  try rfl

def value6889 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551104#64))))).val
theorem input13767_def : input13767 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551104#64)))) := by
  unfold input13767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551104#64))))).val
theorem output13767_def : output13767 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 117 113 (Flapjack.WordRegImm.imm 18446744073709551104#64)))) := by
  unfold output13767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13767_skip : Flapjack.WordAlloc.isSkip output13767 = false := by
  rw [output13767_def]
  conv => lhs; cbv
  try rfl
theorem node13767_eq : Flapjack.WordAlloc.removeDeadStructural input13767 value6888 value1 value2 = (output13767, value6889, value1) := by
  rw [input13767_def, output13767_def]
  try (conv => lhs; cbv)
  try rfl

def value6890 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109)).val
theorem input13768_def : input13768 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109) := by
  unfold input13768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109)).val
theorem output13768_def : output13768 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 113 109) := by
  unfold output13768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13768_skip : Flapjack.WordAlloc.isSkip output13768 = false := by
  rw [output13768_def]
  conv => lhs; cbv
  try rfl
theorem node13768_eq : Flapjack.WordAlloc.removeDeadStructural input13768 value6889 value1 value2 = (output13768, value6890, value1) := by
  rw [input13768_def, output13768_def]
  try (conv => lhs; cbv)
  try rfl

def value6891 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13769_def : input13769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13769_def : output13769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 109 105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13769_skip : Flapjack.WordAlloc.isSkip output13769 = false := by
  rw [output13769_def]
  conv => lhs; cbv
  try rfl
theorem node13769_eq : Flapjack.WordAlloc.removeDeadStructural input13769 value6890 value1 value2 = (output13769, value6891, value1) := by
  rw [input13769_def, output13769_def]
  try (conv => lhs; cbv)
  try rfl

def value6892 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength)).val
theorem input13770_def : input13770 = (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength) := by
  unfold input13770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength)).val
theorem output13770_def : output13770 = (Flapjack.WordLangProgHOL.get 105 Flapjack.WordStore.heapLength) := by
  unfold output13770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13770_skip : Flapjack.WordAlloc.isSkip output13770 = false := by
  rw [output13770_def]
  conv => lhs; cbv
  try rfl
theorem node13770_eq : Flapjack.WordAlloc.removeDeadStructural input13770 value6891 value1 value2 = (output13770, value6892, value1) := by
  rw [input13770_def, output13770_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13770 input13769)).val
theorem input13771_def : input13771 = (.seq input13770 input13769) := by
  unfold input13771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13770 output13769)).val
theorem output13771_def : output13771 = (.seq output13770 output13769) := by
  unfold output13771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13771_skip : Flapjack.WordAlloc.isSkip output13771 = false := by
  rw [output13771_def]
  conv => lhs; cbv
  try rfl
theorem node13771_eq : Flapjack.WordAlloc.removeDeadStructural input13771 value6890 value1 value2 = (output13771, value6892, value1) := by
  rw [input13771_def, output13771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13769_eq]
  try dsimp only
  rw [node13770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13771 input13768)).val
theorem input13772_def : input13772 = (.seq input13771 input13768) := by
  unfold input13772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13771 output13768)).val
theorem output13772_def : output13772 = (.seq output13771 output13768) := by
  unfold output13772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13772_skip : Flapjack.WordAlloc.isSkip output13772 = false := by
  rw [output13772_def]
  conv => lhs; cbv
  try rfl
theorem node13772_eq : Flapjack.WordAlloc.removeDeadStructural input13772 value6889 value1 value2 = (output13772, value6892, value1) := by
  rw [input13772_def, output13772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13768_eq]
  try dsimp only
  rw [node13771_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13772 input13767)).val
theorem input13773_def : input13773 = (.seq input13772 input13767) := by
  unfold input13773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13772 output13767)).val
theorem output13773_def : output13773 = (.seq output13772 output13767) := by
  unfold output13773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13773_skip : Flapjack.WordAlloc.isSkip output13773 = false := by
  rw [output13773_def]
  conv => lhs; cbv
  try rfl
theorem node13773_eq : Flapjack.WordAlloc.removeDeadStructural input13773 value6888 value1 value2 = (output13773, value6892, value1) := by
  rw [input13773_def, output13773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13767_eq]
  try dsimp only
  rw [node13772_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input13774_def : input13774 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input13774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output13774_def : output13774 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output13774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13774_skip : Flapjack.WordAlloc.isSkip output13774 = false := by
  rw [output13774_def]
  conv => lhs; cbv
  try rfl
theorem node13774_eq : Flapjack.WordAlloc.removeDeadStructural input13774 value6892 value1 value2 = (output13774, value6892, value1) := by
  rw [input13774_def, output13774_def]
  try (conv => lhs; cbv)
  try rfl

def value6893 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input13775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(89, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(97, 89)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)))),
      713, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(101, 93)]))),
      713, 3)))).val
theorem input13775_def : input13775 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(89, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(97, 89)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 101 0#64)))),
      713, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(101, 93)]))),
      713, 3))) := by
  unfold input13775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.move 1 [(89, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(97, 89)]),
      713, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)),
      713, 3)))).val
theorem output13775_def : output13775 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.move 1 [(89, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(97, 89)]),
      713, 2))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(85, 79)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(93, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 93)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 97 0#64)),
      713, 3))) := by
  unfold output13775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13775_skip : Flapjack.WordAlloc.isSkip output13775 = false := by
  rw [output13775_def]
  conv => lhs; cbv
  try rfl
theorem node13775_eq : Flapjack.WordAlloc.removeDeadStructural input13775 value6892 value1 value2 = (output13775, value6893, value1) := by
  rw [input13775_def, output13775_def]
  try (conv => lhs; cbv)
  try rfl

def value6894 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input13776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 73)])).val
theorem input13776_def : input13776 = (Flapjack.WordLangProgHOL.move 1 [(2, 73)]) := by
  unfold input13776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 73)])).val
theorem output13776_def : output13776 = (Flapjack.WordLangProgHOL.move 1 [(2, 73)]) := by
  unfold output13776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13776_skip : Flapjack.WordAlloc.isSkip output13776 = false := by
  rw [output13776_def]
  conv => lhs; cbv
  try rfl
theorem node13776_eq : Flapjack.WordAlloc.removeDeadStructural input13776 value6893 value1 value2 = (output13776, value6894, value1) := by
  rw [input13776_def, output13776_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13776 input13775)).val
theorem input13777_def : input13777 = (.seq input13776 input13775) := by
  unfold input13777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13776 output13775)).val
theorem output13777_def : output13777 = (.seq output13776 output13775) := by
  unfold output13777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13777_skip : Flapjack.WordAlloc.isSkip output13777 = false := by
  rw [output13777_def]
  conv => lhs; cbv
  try rfl
theorem node13777_eq : Flapjack.WordAlloc.removeDeadStructural input13777 value6892 value1 value2 = (output13777, value6894, value1) := by
  rw [input13777_def, output13777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13775_eq]
  try dsimp only
  rw [node13776_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6895 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(79, 13)])).val
theorem input13778_def : input13778 = (Flapjack.WordLangProgHOL.move 0 [(79, 13)]) := by
  unfold input13778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(79, 13)])).val
theorem output13778_def : output13778 = (Flapjack.WordLangProgHOL.move 0 [(79, 13)]) := by
  unfold output13778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13778_skip : Flapjack.WordAlloc.isSkip output13778 = false := by
  rw [output13778_def]
  conv => lhs; cbv
  try rfl
theorem node13778_eq : Flapjack.WordAlloc.removeDeadStructural input13778 value6894 value1 value2 = (output13778, value6895, value1) := by
  rw [input13778_def, output13778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13778 input13777)).val
theorem input13779_def : input13779 = (.seq input13778 input13777) := by
  unfold input13779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13778 output13777)).val
theorem output13779_def : output13779 = (.seq output13778 output13777) := by
  unfold output13779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13779_skip : Flapjack.WordAlloc.isSkip output13779 = false := by
  rw [output13779_def]
  conv => lhs; cbv
  try rfl
theorem node13779_eq : Flapjack.WordAlloc.removeDeadStructural input13779 value6892 value1 value2 = (output13779, value6895, value1) := by
  rw [input13779_def, output13779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13777_eq]
  try dsimp only
  rw [node13778_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6896 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 7136#64))).val
theorem input13780_def : input13780 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 7136#64)) := by
  unfold input13780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 7136#64))).val
theorem output13780_def : output13780 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 7136#64)) := by
  unfold output13780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13780_skip : Flapjack.WordAlloc.isSkip output13780 = false := by
  rw [output13780_def]
  conv => lhs; cbv
  try rfl
theorem node13780_eq : Flapjack.WordAlloc.removeDeadStructural input13780 value6895 value1 value2 = (output13780, value6896, value1) := by
  rw [input13780_def, output13780_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13780 input13779)).val
theorem input13781_def : input13781 = (.seq input13780 input13779) := by
  unfold input13781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13780 output13779)).val
theorem output13781_def : output13781 = (.seq output13780 output13779) := by
  unfold output13781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13781_skip : Flapjack.WordAlloc.isSkip output13781 = false := by
  rw [output13781_def]
  conv => lhs; cbv
  try rfl
theorem node13781_eq : Flapjack.WordAlloc.removeDeadStructural input13781 value6892 value1 value2 = (output13781, value6896, value1) := by
  rw [input13781_def, output13781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13779_eq]
  try dsimp only
  rw [node13780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 7136#64))).val
theorem input13782_def : input13782 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 7136#64)) := by
  unfold input13782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13782_def : output13782 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13782_skip : Flapjack.WordAlloc.isSkip output13782 = true := by
  rw [output13782_def]
  conv => lhs; cbv
  try rfl
theorem node13782_eq : Flapjack.WordAlloc.removeDeadStructural input13782 value6896 value1 value2 = (output13782, value6896, value1) := by
  rw [input13782_def, output13782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input13783_def : input13783 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input13783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output13783_def : output13783 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output13783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13783_skip : Flapjack.WordAlloc.isSkip output13783 = false := by
  rw [output13783_def]
  conv => lhs; cbv
  try rfl
theorem node13783_eq : Flapjack.WordAlloc.removeDeadStructural input13783 value6896 value1 value2 = (output13783, value6896, value1) := by
  rw [input13783_def, output13783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64))).val
theorem input13784_def : input13784 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)) := by
  unfold input13784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13784_def : output13784 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13784_skip : Flapjack.WordAlloc.isSkip output13784 = true := by
  rw [output13784_def]
  conv => lhs; cbv
  try rfl
theorem node13784_eq : Flapjack.WordAlloc.removeDeadStructural input13784 value6896 value1 value2 = (output13784, value6896, value1) := by
  rw [input13784_def, output13784_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input13785_def : input13785 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input13785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output13785_def : output13785 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output13785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13785_skip : Flapjack.WordAlloc.isSkip output13785 = false := by
  rw [output13785_def]
  conv => lhs; cbv
  try rfl
theorem node13785_eq : Flapjack.WordAlloc.removeDeadStructural input13785 value6896 value1 value2 = (output13785, value6896, value1) := by
  rw [input13785_def, output13785_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem input13786_def : input13786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold input13786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13786_def : output13786 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13786_skip : Flapjack.WordAlloc.isSkip output13786 = true := by
  rw [output13786_def]
  conv => lhs; cbv
  try rfl
theorem node13786_eq : Flapjack.WordAlloc.removeDeadStructural input13786 value6896 value1 value2 = (output13786, value6896, value1) := by
  rw [input13786_def, output13786_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13786 input13785)).val
theorem input13787_def : input13787 = (.seq input13786 input13785) := by
  unfold input13787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13785)).val
theorem output13787_def : output13787 = (output13785) := by
  unfold output13787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13787_skip : Flapjack.WordAlloc.isSkip output13787 = false := by
  rw [output13787_def]
  conv => lhs; cbv
  try rfl
theorem node13787_eq : Flapjack.WordAlloc.removeDeadStructural input13787 value6896 value1 value2 = (output13787, value6896, value1) := by
  rw [input13787_def, output13787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13785_eq]
  try dsimp only
  rw [node13786_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13787 input13784)).val
theorem input13788_def : input13788 = (.seq input13787 input13784) := by
  unfold input13788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13787)).val
theorem output13788_def : output13788 = (output13787) := by
  unfold output13788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13788_skip : Flapjack.WordAlloc.isSkip output13788 = false := by
  rw [output13788_def]
  conv => lhs; cbv
  try rfl
theorem node13788_eq : Flapjack.WordAlloc.removeDeadStructural input13788 value6896 value1 value2 = (output13788, value6896, value1) := by
  rw [input13788_def, output13788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13784_eq]
  try dsimp only
  rw [node13787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(57, 45)])).val
theorem input13789_def : input13789 = (Flapjack.WordLangProgHOL.move 1 [(57, 45)]) := by
  unfold input13789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13789_def : output13789 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13789_skip : Flapjack.WordAlloc.isSkip output13789 = true := by
  rw [output13789_def]
  conv => lhs; cbv
  try rfl
theorem node13789_eq : Flapjack.WordAlloc.removeDeadStructural input13789 value6896 value1 value2 = (output13789, value6896, value1) := by
  rw [input13789_def, output13789_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(53, 41)])).val
theorem input13790_def : input13790 = (Flapjack.WordLangProgHOL.move 1 [(53, 41)]) := by
  unfold input13790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13790_def : output13790 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13790_skip : Flapjack.WordAlloc.isSkip output13790 = true := by
  rw [output13790_def]
  conv => lhs; cbv
  try rfl
theorem node13790_eq : Flapjack.WordAlloc.removeDeadStructural input13790 value6896 value1 value2 = (output13790, value6896, value1) := by
  rw [input13790_def, output13790_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input13791_def : input13791 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input13791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13791_def : output13791 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13791_skip : Flapjack.WordAlloc.isSkip output13791 = true := by
  rw [output13791_def]
  conv => lhs; cbv
  try rfl
theorem node13791_eq : Flapjack.WordAlloc.removeDeadStructural input13791 value6896 value1 value2 = (output13791, value6896, value1) := by
  rw [input13791_def, output13791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13791 input13790)).val
theorem input13792_def : input13792 = (.seq input13791 input13790) := by
  unfold input13792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13790)).val
theorem output13792_def : output13792 = (output13790) := by
  unfold output13792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13792_skip : Flapjack.WordAlloc.isSkip output13792 = true := by
  rw [output13792_def]
  conv => lhs; cbv
  try rfl
theorem node13792_eq : Flapjack.WordAlloc.removeDeadStructural input13792 value6896 value1 value2 = (output13792, value6896, value1) := by
  rw [input13792_def, output13792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13790_eq]
  try dsimp only
  rw [node13791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13792 input13789)).val
theorem input13793_def : input13793 = (.seq input13792 input13789) := by
  unfold input13793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13789)).val
theorem output13793_def : output13793 = (output13789) := by
  unfold output13793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13793_skip : Flapjack.WordAlloc.isSkip output13793 = true := by
  rw [output13793_def]
  conv => lhs; cbv
  try rfl
theorem node13793_eq : Flapjack.WordAlloc.removeDeadStructural input13793 value6896 value1 value2 = (output13793, value6896, value1) := by
  rw [input13793_def, output13793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13789_eq]
  try dsimp only
  rw [node13792_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(49, 37)])).val
theorem input13794_def : input13794 = (Flapjack.WordLangProgHOL.move 1 [(49, 37)]) := by
  unfold input13794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13794_def : output13794 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13794_skip : Flapjack.WordAlloc.isSkip output13794 = true := by
  rw [output13794_def]
  conv => lhs; cbv
  try rfl
theorem node13794_eq : Flapjack.WordAlloc.removeDeadStructural input13794 value6896 value1 value2 = (output13794, value6896, value1) := by
  rw [input13794_def, output13794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13794 input13793)).val
theorem input13795_def : input13795 = (.seq input13794 input13793) := by
  unfold input13795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13793)).val
theorem output13795_def : output13795 = (output13793) := by
  unfold output13795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13795_skip : Flapjack.WordAlloc.isSkip output13795 = true := by
  rw [output13795_def]
  conv => lhs; cbv
  try rfl
theorem node13795_eq : Flapjack.WordAlloc.removeDeadStructural input13795 value6896 value1 value2 = (output13795, value6896, value1) := by
  rw [input13795_def, output13795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13793_eq]
  try dsimp only
  rw [node13794_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6897 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 13 [2])).val
theorem input13796_def : input13796 = (Flapjack.WordLangProgHOL.return 13 [2]) := by
  unfold input13796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 13 [2])).val
theorem output13796_def : output13796 = (Flapjack.WordLangProgHOL.return 13 [2]) := by
  unfold output13796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13796_skip : Flapjack.WordAlloc.isSkip output13796 = false := by
  rw [output13796_def]
  conv => lhs; cbv
  try rfl
theorem node13796_eq : Flapjack.WordAlloc.removeDeadStructural input13796 value6896 value1 value2 = (output13796, value6897, value1) := by
  rw [input13796_def, output13796_def]
  try (conv => lhs; cbv)
  try rfl

def value6898 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 45)])).val
theorem input13797_def : input13797 = (Flapjack.WordLangProgHOL.move 0 [(2, 45)]) := by
  unfold input13797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 45)])).val
theorem output13797_def : output13797 = (Flapjack.WordLangProgHOL.move 0 [(2, 45)]) := by
  unfold output13797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13797_skip : Flapjack.WordAlloc.isSkip output13797 = false := by
  rw [output13797_def]
  conv => lhs; cbv
  try rfl
theorem node13797_eq : Flapjack.WordAlloc.removeDeadStructural input13797 value6897 value1 value2 = (output13797, value6898, value1) := by
  rw [input13797_def, output13797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13797 input13796)).val
theorem input13798_def : input13798 = (.seq input13797 input13796) := by
  unfold input13798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13797 output13796)).val
theorem output13798_def : output13798 = (.seq output13797 output13796) := by
  unfold output13798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13798_skip : Flapjack.WordAlloc.isSkip output13798 = false := by
  rw [output13798_def]
  conv => lhs; cbv
  try rfl
theorem node13798_eq : Flapjack.WordAlloc.removeDeadStructural input13798 value6896 value1 value2 = (output13798, value6898, value1) := by
  rw [input13798_def, output13798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13796_eq]
  try dsimp only
  rw [node13797_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64))).val
theorem input13799_def : input13799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)) := by
  unfold input13799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64))).val
theorem output13799_def : output13799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 0#64)) := by
  unfold output13799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13799_skip : Flapjack.WordAlloc.isSkip output13799 = false := by
  rw [output13799_def]
  conv => lhs; cbv
  try rfl
theorem node13799_eq : Flapjack.WordAlloc.removeDeadStructural input13799 value6898 value1 value2 = (output13799, value6896, value1) := by
  rw [input13799_def, output13799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64))).val
theorem input13800_def : input13800 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 1#64)) := by
  unfold input13800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13800_def : output13800 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13800_skip : Flapjack.WordAlloc.isSkip output13800 = true := by
  rw [output13800_def]
  conv => lhs; cbv
  try rfl
theorem node13800_eq : Flapjack.WordAlloc.removeDeadStructural input13800 value6896 value1 value2 = (output13800, value6896, value1) := by
  rw [input13800_def, output13800_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input13801_def : input13801 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input13801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output13801_def : output13801 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output13801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13801_skip : Flapjack.WordAlloc.isSkip output13801 = false := by
  rw [output13801_def]
  conv => lhs; cbv
  try rfl
theorem node13801_eq : Flapjack.WordAlloc.removeDeadStructural input13801 value6896 value1 value2 = (output13801, value6896, value1) := by
  rw [input13801_def, output13801_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64))).val
theorem input13802_def : input13802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1#64)) := by
  unfold input13802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13802_def : output13802 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13802_skip : Flapjack.WordAlloc.isSkip output13802 = true := by
  rw [output13802_def]
  conv => lhs; cbv
  try rfl
theorem node13802_eq : Flapjack.WordAlloc.removeDeadStructural input13802 value6896 value1 value2 = (output13802, value6896, value1) := by
  rw [input13802_def, output13802_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13802 input13801)).val
theorem input13803_def : input13803 = (.seq input13802 input13801) := by
  unfold input13803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13801)).val
theorem output13803_def : output13803 = (output13801) := by
  unfold output13803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13803_skip : Flapjack.WordAlloc.isSkip output13803 = false := by
  rw [output13803_def]
  conv => lhs; cbv
  try rfl
theorem node13803_eq : Flapjack.WordAlloc.removeDeadStructural input13803 value6896 value1 value2 = (output13803, value6896, value1) := by
  rw [input13803_def, output13803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13801_eq]
  try dsimp only
  rw [node13802_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13803 input13800)).val
theorem input13804_def : input13804 = (.seq input13803 input13800) := by
  unfold input13804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13803)).val
theorem output13804_def : output13804 = (output13803) := by
  unfold output13804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13804_skip : Flapjack.WordAlloc.isSkip output13804 = false := by
  rw [output13804_def]
  conv => lhs; cbv
  try rfl
theorem node13804_eq : Flapjack.WordAlloc.removeDeadStructural input13804 value6896 value1 value2 = (output13804, value6896, value1) := by
  rw [input13804_def, output13804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13800_eq]
  try dsimp only
  rw [node13803_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13804 input13799)).val
theorem input13805_def : input13805 = (.seq input13804 input13799) := by
  unfold input13805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13804 output13799)).val
theorem output13805_def : output13805 = (.seq output13804 output13799) := by
  unfold output13805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13805_skip : Flapjack.WordAlloc.isSkip output13805 = false := by
  rw [output13805_def]
  conv => lhs; cbv
  try rfl
theorem node13805_eq : Flapjack.WordAlloc.removeDeadStructural input13805 value6898 value1 value2 = (output13805, value6896, value1) := by
  rw [input13805_def, output13805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13799_eq]
  try dsimp only
  rw [node13804_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13805 input13798)).val
theorem input13806_def : input13806 = (.seq input13805 input13798) := by
  unfold input13806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13805 output13798)).val
theorem output13806_def : output13806 = (.seq output13805 output13798) := by
  unfold output13806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13806_skip : Flapjack.WordAlloc.isSkip output13806 = false := by
  rw [output13806_def]
  conv => lhs; cbv
  try rfl
theorem node13806_eq : Flapjack.WordAlloc.removeDeadStructural input13806 value6896 value1 value2 = (output13806, value6896, value1) := by
  rw [input13806_def, output13806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13798_eq]
  try dsimp only
  rw [node13805_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13806 input13795)).val
theorem input13807_def : input13807 = (.seq input13806 input13795) := by
  unfold input13807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13806)).val
theorem output13807_def : output13807 = (output13806) := by
  unfold output13807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13807_skip : Flapjack.WordAlloc.isSkip output13807 = false := by
  rw [output13807_def]
  conv => lhs; cbv
  try rfl
theorem node13807_eq : Flapjack.WordAlloc.removeDeadStructural input13807 value6896 value1 value2 = (output13807, value6896, value1) := by
  rw [input13807_def, output13807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13795_eq]
  try dsimp only
  rw [node13806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64))).val
theorem input13808_def : input13808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 0#64)) := by
  unfold input13808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13808_def : output13808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13808_skip : Flapjack.WordAlloc.isSkip output13808 = true := by
  rw [output13808_def]
  conv => lhs; cbv
  try rfl
theorem node13808_eq : Flapjack.WordAlloc.removeDeadStructural input13808 value6896 value1 value2 = (output13808, value6896, value1) := by
  rw [input13808_def, output13808_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64))).val
theorem input13809_def : input13809 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 0#64)) := by
  unfold input13809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13809_def : output13809 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13809_skip : Flapjack.WordAlloc.isSkip output13809 = true := by
  rw [output13809_def]
  conv => lhs; cbv
  try rfl
theorem node13809_eq : Flapjack.WordAlloc.removeDeadStructural input13809 value6896 value1 value2 = (output13809, value6896, value1) := by
  rw [input13809_def, output13809_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input13810_def : input13810 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input13810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13810_def : output13810 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13810_skip : Flapjack.WordAlloc.isSkip output13810 = true := by
  rw [output13810_def]
  conv => lhs; cbv
  try rfl
theorem node13810_eq : Flapjack.WordAlloc.removeDeadStructural input13810 value6896 value1 value2 = (output13810, value6896, value1) := by
  rw [input13810_def, output13810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13810 input13809)).val
theorem input13811_def : input13811 = (.seq input13810 input13809) := by
  unfold input13811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13809)).val
theorem output13811_def : output13811 = (output13809) := by
  unfold output13811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13811_skip : Flapjack.WordAlloc.isSkip output13811 = true := by
  rw [output13811_def]
  conv => lhs; cbv
  try rfl
theorem node13811_eq : Flapjack.WordAlloc.removeDeadStructural input13811 value6896 value1 value2 = (output13811, value6896, value1) := by
  rw [input13811_def, output13811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13809_eq]
  try dsimp only
  rw [node13810_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13811 input13808)).val
theorem input13812_def : input13812 = (.seq input13811 input13808) := by
  unfold input13812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13808)).val
theorem output13812_def : output13812 = (output13808) := by
  unfold output13812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13812_skip : Flapjack.WordAlloc.isSkip output13812 = true := by
  rw [output13812_def]
  conv => lhs; cbv
  try rfl
theorem node13812_eq : Flapjack.WordAlloc.removeDeadStructural input13812 value6896 value1 value2 = (output13812, value6896, value1) := by
  rw [input13812_def, output13812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13808_eq]
  try dsimp only
  rw [node13811_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(49, 29)])).val
theorem input13813_def : input13813 = (Flapjack.WordLangProgHOL.move 2 [(49, 29)]) := by
  unfold input13813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13813_def : output13813 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13813_skip : Flapjack.WordAlloc.isSkip output13813 = true := by
  rw [output13813_def]
  conv => lhs; cbv
  try rfl
theorem node13813_eq : Flapjack.WordAlloc.removeDeadStructural input13813 value6896 value1 value2 = (output13813, value6896, value1) := by
  rw [input13813_def, output13813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13813 input13812)).val
theorem input13814_def : input13814 = (.seq input13813 input13812) := by
  unfold input13814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13812)).val
theorem output13814_def : output13814 = (output13812) := by
  unfold output13814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13814_skip : Flapjack.WordAlloc.isSkip output13814 = true := by
  rw [output13814_def]
  conv => lhs; cbv
  try rfl
theorem node13814_eq : Flapjack.WordAlloc.removeDeadStructural input13814 value6896 value1 value2 = (output13814, value6896, value1) := by
  rw [input13814_def, output13814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13812_eq]
  try dsimp only
  rw [node13813_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input13815_def : input13815 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input13815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13815_def : output13815 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13815_skip : Flapjack.WordAlloc.isSkip output13815 = true := by
  rw [output13815_def]
  conv => lhs; cbv
  try rfl
theorem node13815_eq : Flapjack.WordAlloc.removeDeadStructural input13815 value6896 value1 value2 = (output13815, value6896, value1) := by
  rw [input13815_def, output13815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13815 input13814)).val
theorem input13816_def : input13816 = (.seq input13815 input13814) := by
  unfold input13816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output13814)).val
theorem output13816_def : output13816 = (output13814) := by
  unfold output13816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13816_skip : Flapjack.WordAlloc.isSkip output13816 = true := by
  rw [output13816_def]
  conv => lhs; cbv
  try rfl
theorem node13816_eq : Flapjack.WordAlloc.removeDeadStructural input13816 value6896 value1 value2 = (output13816, value6896, value1) := by
  rw [input13816_def, output13816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13814_eq]
  try dsimp only
  rw [node13815_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6899 : Flapjack.Cmp :=
Flapjack.Cmp.notEqual

def value6900 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 33

def value6901 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value6899 29 value6900 input13807 input13816)).val
theorem input13817_def : input13817 = (.ite value6899 29 value6900 input13807 input13816) := by
  unfold input13817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value6899 29 value6900 output13807 output13816)).val
theorem output13817_def : output13817 = (.ite value6899 29 value6900 output13807 output13816) := by
  unfold output13817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13817_skip : Flapjack.WordAlloc.isSkip output13817 = false := by
  rw [output13817_def]
  conv => lhs; cbv
  try rfl
theorem node13817_eq : Flapjack.WordAlloc.removeDeadStructural input13817 value6896 value1 value2 = (output13817, value6901, value1) := by
  rw [input13817_def, output13817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node13807_eq]
  try dsimp only
  rw [node13816_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13817 input13788)).val
theorem input13818_def : input13818 = (.seq input13817 input13788) := by
  unfold input13818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13817 output13788)).val
theorem output13818_def : output13818 = (.seq output13817 output13788) := by
  unfold output13818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13818_skip : Flapjack.WordAlloc.isSkip output13818 = false := by
  rw [output13818_def]
  conv => lhs; cbv
  try rfl
theorem node13818_eq : Flapjack.WordAlloc.removeDeadStructural input13818 value6896 value1 value2 = (output13818, value6901, value1) := by
  rw [input13818_def, output13818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13788_eq]
  try dsimp only
  rw [node13817_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6902 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem input13819_def : input13819 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold input13819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64))).val
theorem output13819_def : output13819 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 0#64)) := by
  unfold output13819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13819_skip : Flapjack.WordAlloc.isSkip output13819 = false := by
  rw [output13819_def]
  conv => lhs; cbv
  try rfl
theorem node13819_eq : Flapjack.WordAlloc.removeDeadStructural input13819 value6901 value1 value2 = (output13819, value6902, value1) := by
  rw [input13819_def, output13819_def]
  try (conv => lhs; cbv)
  try rfl

def value6903 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551104#64)))).val
theorem input13820_def : input13820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551104#64))) := by
  unfold input13820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551104#64)))).val
theorem output13820_def : output13820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 29 (Flapjack.WordLangAddr.addr 25 18446744073709551104#64))) := by
  unfold output13820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13820_skip : Flapjack.WordAlloc.isSkip output13820 = false := by
  rw [output13820_def]
  conv => lhs; cbv
  try rfl
theorem node13820_eq : Flapjack.WordAlloc.removeDeadStructural input13820 value6902 value1 value2 = (output13820, value6903, value1) := by
  rw [input13820_def, output13820_def]
  try (conv => lhs; cbv)
  try rfl

def value6904 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21)).val
theorem input13821_def : input13821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21) := by
  unfold input13821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21)).val
theorem output13821_def : output13821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25 21) := by
  unfold output13821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13821_skip : Flapjack.WordAlloc.isSkip output13821 = false := by
  rw [output13821_def]
  conv => lhs; cbv
  try rfl
theorem node13821_eq : Flapjack.WordAlloc.removeDeadStructural input13821 value6903 value1 value2 = (output13821, value6904, value1) := by
  rw [input13821_def, output13821_def]
  try (conv => lhs; cbv)
  try rfl

def value6905 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13822_def : input13822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13822_def : output13822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21 17 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13822_skip : Flapjack.WordAlloc.isSkip output13822 = false := by
  rw [output13822_def]
  conv => lhs; cbv
  try rfl
theorem node13822_eq : Flapjack.WordAlloc.removeDeadStructural input13822 value6904 value1 value2 = (output13822, value6905, value1) := by
  rw [input13822_def, output13822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength)).val
theorem input13823_def : input13823 = (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength) := by
  unfold input13823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength)).val
theorem output13823_def : output13823 = (Flapjack.WordLangProgHOL.get 17 Flapjack.WordStore.heapLength) := by
  unfold output13823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13823_skip : Flapjack.WordAlloc.isSkip output13823 = false := by
  rw [output13823_def]
  conv => lhs; cbv
  try rfl
theorem node13823_eq : Flapjack.WordAlloc.removeDeadStructural input13823 value6905 value1 value2 = (output13823, value6896, value1) := by
  rw [input13823_def, output13823_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node13823_eq
end InitECandidate.Proofs.DeadStages713
