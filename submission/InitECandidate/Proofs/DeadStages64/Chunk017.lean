import InitECandidate.Proofs.DeadStages64.Chunk016
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value276 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1353, 1341)])).val
theorem input544_def : input544 = (Flapjack.WordLangProgHOL.move 0 [(1353, 1341)]) := by
  unfold input544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1353, 1341)])).val
theorem output544_def : output544 = (Flapjack.WordLangProgHOL.move 0 [(1353, 1341)]) := by
  unfold output544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output544_skip : Flapjack.WordAlloc.isSkip output544 = false := by
  rw [output544_def]
  conv => lhs; cbv
  try rfl
theorem node544_eq : Flapjack.WordAlloc.removeDeadStructural input544 value275 value1 value2 = (output544, value276, value1) := by
  rw [input544_def, output544_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input544 input543)).val
theorem input545_def : input545 = (.seq input544 input543) := by
  unfold input545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output544 output543)).val
theorem output545_def : output545 = (.seq output544 output543) := by
  unfold output545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output545_skip : Flapjack.WordAlloc.isSkip output545 = false := by
  rw [output545_def]
  conv => lhs; cbv
  try rfl
theorem node545_eq : Flapjack.WordAlloc.removeDeadStructural input545 value4 value1 value2 = (output545, value276, value1) := by
  rw [input545_def, output545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node543_eq]
  dsimp only
  rw [node544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value277 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 0#64))).val
theorem input546_def : input546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 0#64)) := by
  unfold input546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 0#64))).val
theorem output546_def : output546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1349 0#64)) := by
  unfold output546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output546_skip : Flapjack.WordAlloc.isSkip output546 = false := by
  rw [output546_def]
  conv => lhs; cbv
  try rfl
theorem node546_eq : Flapjack.WordAlloc.removeDeadStructural input546 value276 value1 value2 = (output546, value277, value1) := by
  rw [input546_def, output546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 0#64))).val
theorem input547_def : input547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1345 0#64)) := by
  unfold input547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output547_def : output547 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output547_skip : Flapjack.WordAlloc.isSkip output547 = true := by
  rw [output547_def]
  conv => lhs; cbv
  try rfl
theorem node547_eq : Flapjack.WordAlloc.removeDeadStructural input547 value277 value1 value2 = (output547, value277, value1) := by
  rw [input547_def, output547_def]
  try (conv => lhs; cbv)
  try rfl

def value278 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1341 1337 (Flapjack.WordRegImm.imm 18446744073709551232#64))))).val
theorem input548_def : input548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1341 1337 (Flapjack.WordRegImm.imm 18446744073709551232#64)))) := by
  unfold input548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1341 1337 (Flapjack.WordRegImm.imm 18446744073709551232#64))))).val
theorem output548_def : output548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1341 1337 (Flapjack.WordRegImm.imm 18446744073709551232#64)))) := by
  unfold output548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output548_skip : Flapjack.WordAlloc.isSkip output548 = false := by
  rw [output548_def]
  conv => lhs; cbv
  try rfl
theorem node548_eq : Flapjack.WordAlloc.removeDeadStructural input548 value277 value1 value2 = (output548, value278, value1) := by
  rw [input548_def, output548_def]
  try (conv => lhs; cbv)
  try rfl

def value279 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1337 1333)).val
theorem input549_def : input549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1337 1333) := by
  unfold input549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1337 1333)).val
theorem output549_def : output549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1337 1333) := by
  unfold output549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output549_skip : Flapjack.WordAlloc.isSkip output549 = false := by
  rw [output549_def]
  conv => lhs; cbv
  try rfl
theorem node549_eq : Flapjack.WordAlloc.removeDeadStructural input549 value278 value1 value2 = (output549, value279, value1) := by
  rw [input549_def, output549_def]
  try (conv => lhs; cbv)
  try rfl

def value280 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1333 1329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input550_def : input550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1333 1329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1333 1329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output550_def : output550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1333 1329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output550_skip : Flapjack.WordAlloc.isSkip output550 = false := by
  rw [output550_def]
  conv => lhs; cbv
  try rfl
theorem node550_eq : Flapjack.WordAlloc.removeDeadStructural input550 value279 value1 value2 = (output550, value280, value1) := by
  rw [input550_def, output550_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1329 Flapjack.WordStore.heapLength)).val
theorem input551_def : input551 = (Flapjack.WordLangProgHOL.get 1329 Flapjack.WordStore.heapLength) := by
  unfold input551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1329 Flapjack.WordStore.heapLength)).val
theorem output551_def : output551 = (Flapjack.WordLangProgHOL.get 1329 Flapjack.WordStore.heapLength) := by
  unfold output551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output551_skip : Flapjack.WordAlloc.isSkip output551 = false := by
  rw [output551_def]
  conv => lhs; cbv
  try rfl
theorem node551_eq : Flapjack.WordAlloc.removeDeadStructural input551 value280 value1 value2 = (output551, value4, value1) := by
  rw [input551_def, output551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input551 input550)).val
theorem input552_def : input552 = (.seq input551 input550) := by
  unfold input552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output551 output550)).val
theorem output552_def : output552 = (.seq output551 output550) := by
  unfold output552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output552_skip : Flapjack.WordAlloc.isSkip output552 = false := by
  rw [output552_def]
  conv => lhs; cbv
  try rfl
theorem node552_eq : Flapjack.WordAlloc.removeDeadStructural input552 value279 value1 value2 = (output552, value4, value1) := by
  rw [input552_def, output552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node550_eq]
  dsimp only
  rw [node551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input552 input549)).val
theorem input553_def : input553 = (.seq input552 input549) := by
  unfold input553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output552 output549)).val
theorem output553_def : output553 = (.seq output552 output549) := by
  unfold output553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output553_skip : Flapjack.WordAlloc.isSkip output553 = false := by
  rw [output553_def]
  conv => lhs; cbv
  try rfl
theorem node553_eq : Flapjack.WordAlloc.removeDeadStructural input553 value278 value1 value2 = (output553, value4, value1) := by
  rw [input553_def, output553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node549_eq]
  dsimp only
  rw [node552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input553 input548)).val
theorem input554_def : input554 = (.seq input553 input548) := by
  unfold input554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output553 output548)).val
theorem output554_def : output554 = (.seq output553 output548) := by
  unfold output554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output554_skip : Flapjack.WordAlloc.isSkip output554 = false := by
  rw [output554_def]
  conv => lhs; cbv
  try rfl
theorem node554_eq : Flapjack.WordAlloc.removeDeadStructural input554 value277 value1 value2 = (output554, value4, value1) := by
  rw [input554_def, output554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node548_eq]
  dsimp only
  rw [node553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value281 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1321 (Flapjack.WordLangAddr.addr 1325 0#64)))).val
theorem input555_def : input555 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1321 (Flapjack.WordLangAddr.addr 1325 0#64))) := by
  unfold input555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1321 (Flapjack.WordLangAddr.addr 1325 0#64)))).val
theorem output555_def : output555 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1321 (Flapjack.WordLangAddr.addr 1325 0#64))) := by
  unfold output555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output555_skip : Flapjack.WordAlloc.isSkip output555 = false := by
  rw [output555_def]
  conv => lhs; cbv
  try rfl
theorem node555_eq : Flapjack.WordAlloc.removeDeadStructural input555 value4 value1 value2 = (output555, value281, value1) := by
  rw [input555_def, output555_def]
  try (conv => lhs; cbv)
  try rfl

def value282 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1325, 1313)])).val
theorem input556_def : input556 = (Flapjack.WordLangProgHOL.move 0 [(1325, 1313)]) := by
  unfold input556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1325, 1313)])).val
theorem output556_def : output556 = (Flapjack.WordLangProgHOL.move 0 [(1325, 1313)]) := by
  unfold output556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output556_skip : Flapjack.WordAlloc.isSkip output556 = false := by
  rw [output556_def]
  conv => lhs; cbv
  try rfl
theorem node556_eq : Flapjack.WordAlloc.removeDeadStructural input556 value281 value1 value2 = (output556, value282, value1) := by
  rw [input556_def, output556_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input556 input555)).val
theorem input557_def : input557 = (.seq input556 input555) := by
  unfold input557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output556 output555)).val
theorem output557_def : output557 = (.seq output556 output555) := by
  unfold output557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output557_skip : Flapjack.WordAlloc.isSkip output557 = false := by
  rw [output557_def]
  conv => lhs; cbv
  try rfl
theorem node557_eq : Flapjack.WordAlloc.removeDeadStructural input557 value4 value1 value2 = (output557, value282, value1) := by
  rw [input557_def, output557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node555_eq]
  dsimp only
  rw [node556_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value283 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64))).val
theorem input558_def : input558 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64)) := by
  unfold input558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64))).val
theorem output558_def : output558 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1321 0#64)) := by
  unfold output558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output558_skip : Flapjack.WordAlloc.isSkip output558 = false := by
  rw [output558_def]
  conv => lhs; cbv
  try rfl
theorem node558_eq : Flapjack.WordAlloc.removeDeadStructural input558 value282 value1 value2 = (output558, value283, value1) := by
  rw [input558_def, output558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1317 0#64))).val
theorem input559_def : input559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1317 0#64)) := by
  unfold input559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output559_def : output559 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output559_skip : Flapjack.WordAlloc.isSkip output559 = true := by
  rw [output559_def]
  conv => lhs; cbv
  try rfl
theorem node559_eq : Flapjack.WordAlloc.removeDeadStructural input559 value283 value1 value2 = (output559, value283, value1) := by
  rw [input559_def, output559_def]
  try (conv => lhs; cbv)
  try rfl

def value284 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1313 1309 (Flapjack.WordRegImm.imm 18446744073709551240#64))))).val
theorem input560_def : input560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1313 1309 (Flapjack.WordRegImm.imm 18446744073709551240#64)))) := by
  unfold input560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1313 1309 (Flapjack.WordRegImm.imm 18446744073709551240#64))))).val
theorem output560_def : output560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1313 1309 (Flapjack.WordRegImm.imm 18446744073709551240#64)))) := by
  unfold output560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output560_skip : Flapjack.WordAlloc.isSkip output560 = false := by
  rw [output560_def]
  conv => lhs; cbv
  try rfl
theorem node560_eq : Flapjack.WordAlloc.removeDeadStructural input560 value283 value1 value2 = (output560, value284, value1) := by
  rw [input560_def, output560_def]
  try (conv => lhs; cbv)
  try rfl

def value285 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1309 1305)).val
theorem input561_def : input561 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1309 1305) := by
  unfold input561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1309 1305)).val
theorem output561_def : output561 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1309 1305) := by
  unfold output561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output561_skip : Flapjack.WordAlloc.isSkip output561 = false := by
  rw [output561_def]
  conv => lhs; cbv
  try rfl
theorem node561_eq : Flapjack.WordAlloc.removeDeadStructural input561 value284 value1 value2 = (output561, value285, value1) := by
  rw [input561_def, output561_def]
  try (conv => lhs; cbv)
  try rfl

def value286 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1305 1301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input562_def : input562 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1305 1301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1305 1301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output562_def : output562 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1305 1301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output562_skip : Flapjack.WordAlloc.isSkip output562 = false := by
  rw [output562_def]
  conv => lhs; cbv
  try rfl
theorem node562_eq : Flapjack.WordAlloc.removeDeadStructural input562 value285 value1 value2 = (output562, value286, value1) := by
  rw [input562_def, output562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1301 Flapjack.WordStore.heapLength)).val
theorem input563_def : input563 = (Flapjack.WordLangProgHOL.get 1301 Flapjack.WordStore.heapLength) := by
  unfold input563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1301 Flapjack.WordStore.heapLength)).val
theorem output563_def : output563 = (Flapjack.WordLangProgHOL.get 1301 Flapjack.WordStore.heapLength) := by
  unfold output563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output563_skip : Flapjack.WordAlloc.isSkip output563 = false := by
  rw [output563_def]
  conv => lhs; cbv
  try rfl
theorem node563_eq : Flapjack.WordAlloc.removeDeadStructural input563 value286 value1 value2 = (output563, value4, value1) := by
  rw [input563_def, output563_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input563 input562)).val
theorem input564_def : input564 = (.seq input563 input562) := by
  unfold input564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output563 output562)).val
theorem output564_def : output564 = (.seq output563 output562) := by
  unfold output564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output564_skip : Flapjack.WordAlloc.isSkip output564 = false := by
  rw [output564_def]
  conv => lhs; cbv
  try rfl
theorem node564_eq : Flapjack.WordAlloc.removeDeadStructural input564 value285 value1 value2 = (output564, value4, value1) := by
  rw [input564_def, output564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node562_eq]
  dsimp only
  rw [node563_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input564 input561)).val
theorem input565_def : input565 = (.seq input564 input561) := by
  unfold input565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output564 output561)).val
theorem output565_def : output565 = (.seq output564 output561) := by
  unfold output565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output565_skip : Flapjack.WordAlloc.isSkip output565 = false := by
  rw [output565_def]
  conv => lhs; cbv
  try rfl
theorem node565_eq : Flapjack.WordAlloc.removeDeadStructural input565 value284 value1 value2 = (output565, value4, value1) := by
  rw [input565_def, output565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node561_eq]
  dsimp only
  rw [node564_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input565 input560)).val
theorem input566_def : input566 = (.seq input565 input560) := by
  unfold input566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output565 output560)).val
theorem output566_def : output566 = (.seq output565 output560) := by
  unfold output566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output566_skip : Flapjack.WordAlloc.isSkip output566 = false := by
  rw [output566_def]
  conv => lhs; cbv
  try rfl
theorem node566_eq : Flapjack.WordAlloc.removeDeadStructural input566 value283 value1 value2 = (output566, value4, value1) := by
  rw [input566_def, output566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node560_eq]
  dsimp only
  rw [node565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value287 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1293 (Flapjack.WordLangAddr.addr 1297 0#64)))).val
theorem input567_def : input567 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1293 (Flapjack.WordLangAddr.addr 1297 0#64))) := by
  unfold input567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1293 (Flapjack.WordLangAddr.addr 1297 0#64)))).val
theorem output567_def : output567 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1293 (Flapjack.WordLangAddr.addr 1297 0#64))) := by
  unfold output567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output567_skip : Flapjack.WordAlloc.isSkip output567 = false := by
  rw [output567_def]
  conv => lhs; cbv
  try rfl
theorem node567_eq : Flapjack.WordAlloc.removeDeadStructural input567 value4 value1 value2 = (output567, value287, value1) := by
  rw [input567_def, output567_def]
  try (conv => lhs; cbv)
  try rfl

def value288 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1297, 1285)])).val
theorem input568_def : input568 = (Flapjack.WordLangProgHOL.move 0 [(1297, 1285)]) := by
  unfold input568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1297, 1285)])).val
theorem output568_def : output568 = (Flapjack.WordLangProgHOL.move 0 [(1297, 1285)]) := by
  unfold output568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output568_skip : Flapjack.WordAlloc.isSkip output568 = false := by
  rw [output568_def]
  conv => lhs; cbv
  try rfl
theorem node568_eq : Flapjack.WordAlloc.removeDeadStructural input568 value287 value1 value2 = (output568, value288, value1) := by
  rw [input568_def, output568_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input568 input567)).val
theorem input569_def : input569 = (.seq input568 input567) := by
  unfold input569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output568 output567)).val
theorem output569_def : output569 = (.seq output568 output567) := by
  unfold output569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output569_skip : Flapjack.WordAlloc.isSkip output569 = false := by
  rw [output569_def]
  conv => lhs; cbv
  try rfl
theorem node569_eq : Flapjack.WordAlloc.removeDeadStructural input569 value4 value1 value2 = (output569, value288, value1) := by
  rw [input569_def, output569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node567_eq]
  dsimp only
  rw [node568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value289 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1293 0#64))).val
theorem input570_def : input570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1293 0#64)) := by
  unfold input570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1293 0#64))).val
theorem output570_def : output570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1293 0#64)) := by
  unfold output570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output570_skip : Flapjack.WordAlloc.isSkip output570 = false := by
  rw [output570_def]
  conv => lhs; cbv
  try rfl
theorem node570_eq : Flapjack.WordAlloc.removeDeadStructural input570 value288 value1 value2 = (output570, value289, value1) := by
  rw [input570_def, output570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1289 0#64))).val
theorem input571_def : input571 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1289 0#64)) := by
  unfold input571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output571_def : output571 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output571_skip : Flapjack.WordAlloc.isSkip output571 = true := by
  rw [output571_def]
  conv => lhs; cbv
  try rfl
theorem node571_eq : Flapjack.WordAlloc.removeDeadStructural input571 value289 value1 value2 = (output571, value289, value1) := by
  rw [input571_def, output571_def]
  try (conv => lhs; cbv)
  try rfl

def value290 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1285 1281 (Flapjack.WordRegImm.imm 18446744073709551248#64))))).val
theorem input572_def : input572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1285 1281 (Flapjack.WordRegImm.imm 18446744073709551248#64)))) := by
  unfold input572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1285 1281 (Flapjack.WordRegImm.imm 18446744073709551248#64))))).val
theorem output572_def : output572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1285 1281 (Flapjack.WordRegImm.imm 18446744073709551248#64)))) := by
  unfold output572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output572_skip : Flapjack.WordAlloc.isSkip output572 = false := by
  rw [output572_def]
  conv => lhs; cbv
  try rfl
theorem node572_eq : Flapjack.WordAlloc.removeDeadStructural input572 value289 value1 value2 = (output572, value290, value1) := by
  rw [input572_def, output572_def]
  try (conv => lhs; cbv)
  try rfl

def value291 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1281 1277)).val
theorem input573_def : input573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1281 1277) := by
  unfold input573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1281 1277)).val
theorem output573_def : output573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1281 1277) := by
  unfold output573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output573_skip : Flapjack.WordAlloc.isSkip output573 = false := by
  rw [output573_def]
  conv => lhs; cbv
  try rfl
theorem node573_eq : Flapjack.WordAlloc.removeDeadStructural input573 value290 value1 value2 = (output573, value291, value1) := by
  rw [input573_def, output573_def]
  try (conv => lhs; cbv)
  try rfl

def value292 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1277 1273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input574_def : input574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1277 1273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1277 1273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output574_def : output574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1277 1273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output574_skip : Flapjack.WordAlloc.isSkip output574 = false := by
  rw [output574_def]
  conv => lhs; cbv
  try rfl
theorem node574_eq : Flapjack.WordAlloc.removeDeadStructural input574 value291 value1 value2 = (output574, value292, value1) := by
  rw [input574_def, output574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1273 Flapjack.WordStore.heapLength)).val
theorem input575_def : input575 = (Flapjack.WordLangProgHOL.get 1273 Flapjack.WordStore.heapLength) := by
  unfold input575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1273 Flapjack.WordStore.heapLength)).val
theorem output575_def : output575 = (Flapjack.WordLangProgHOL.get 1273 Flapjack.WordStore.heapLength) := by
  unfold output575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output575_skip : Flapjack.WordAlloc.isSkip output575 = false := by
  rw [output575_def]
  conv => lhs; cbv
  try rfl
theorem node575_eq : Flapjack.WordAlloc.removeDeadStructural input575 value292 value1 value2 = (output575, value4, value1) := by
  rw [input575_def, output575_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node575_eq
end InitECandidate.Proofs.DeadStages64
