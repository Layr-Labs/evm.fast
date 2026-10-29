import InitECandidate.Proofs.DeadStages64.Chunk018
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value308 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 18446744073709551272#64))))).val
theorem input608_def : input608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 18446744073709551272#64)))) := by
  unfold input608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 18446744073709551272#64))))).val
theorem output608_def : output608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 18446744073709551272#64)))) := by
  unfold output608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output608_skip : Flapjack.WordAlloc.isSkip output608 = false := by
  rw [output608_def]
  conv => lhs; cbv
  try rfl
theorem node608_eq : Flapjack.WordAlloc.removeDeadStructural input608 value307 value1 value2 = (output608, value308, value1) := by
  rw [input608_def, output608_def]
  try (conv => lhs; cbv)
  try rfl

def value309 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1197 1193)).val
theorem input609_def : input609 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1197 1193) := by
  unfold input609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1197 1193)).val
theorem output609_def : output609 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1197 1193) := by
  unfold output609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output609_skip : Flapjack.WordAlloc.isSkip output609 = false := by
  rw [output609_def]
  conv => lhs; cbv
  try rfl
theorem node609_eq : Flapjack.WordAlloc.removeDeadStructural input609 value308 value1 value2 = (output609, value309, value1) := by
  rw [input609_def, output609_def]
  try (conv => lhs; cbv)
  try rfl

def value310 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1193 1189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input610_def : input610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1193 1189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1193 1189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output610_def : output610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1193 1189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output610_skip : Flapjack.WordAlloc.isSkip output610 = false := by
  rw [output610_def]
  conv => lhs; cbv
  try rfl
theorem node610_eq : Flapjack.WordAlloc.removeDeadStructural input610 value309 value1 value2 = (output610, value310, value1) := by
  rw [input610_def, output610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1189 Flapjack.WordStore.heapLength)).val
theorem input611_def : input611 = (Flapjack.WordLangProgHOL.get 1189 Flapjack.WordStore.heapLength) := by
  unfold input611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1189 Flapjack.WordStore.heapLength)).val
theorem output611_def : output611 = (Flapjack.WordLangProgHOL.get 1189 Flapjack.WordStore.heapLength) := by
  unfold output611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output611_skip : Flapjack.WordAlloc.isSkip output611 = false := by
  rw [output611_def]
  conv => lhs; cbv
  try rfl
theorem node611_eq : Flapjack.WordAlloc.removeDeadStructural input611 value310 value1 value2 = (output611, value4, value1) := by
  rw [input611_def, output611_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input611 input610)).val
theorem input612_def : input612 = (.seq input611 input610) := by
  unfold input612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output611 output610)).val
theorem output612_def : output612 = (.seq output611 output610) := by
  unfold output612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output612_skip : Flapjack.WordAlloc.isSkip output612 = false := by
  rw [output612_def]
  conv => lhs; cbv
  try rfl
theorem node612_eq : Flapjack.WordAlloc.removeDeadStructural input612 value309 value1 value2 = (output612, value4, value1) := by
  rw [input612_def, output612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node610_eq]
  dsimp only
  rw [node611_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input612 input609)).val
theorem input613_def : input613 = (.seq input612 input609) := by
  unfold input613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output612 output609)).val
theorem output613_def : output613 = (.seq output612 output609) := by
  unfold output613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output613_skip : Flapjack.WordAlloc.isSkip output613 = false := by
  rw [output613_def]
  conv => lhs; cbv
  try rfl
theorem node613_eq : Flapjack.WordAlloc.removeDeadStructural input613 value308 value1 value2 = (output613, value4, value1) := by
  rw [input613_def, output613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node609_eq]
  dsimp only
  rw [node612_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input613 input608)).val
theorem input614_def : input614 = (.seq input613 input608) := by
  unfold input614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output613 output608)).val
theorem output614_def : output614 = (.seq output613 output608) := by
  unfold output614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output614_skip : Flapjack.WordAlloc.isSkip output614 = false := by
  rw [output614_def]
  conv => lhs; cbv
  try rfl
theorem node614_eq : Flapjack.WordAlloc.removeDeadStructural input614 value307 value1 value2 = (output614, value4, value1) := by
  rw [input614_def, output614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node608_eq]
  dsimp only
  rw [node613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value311 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1181 (Flapjack.WordLangAddr.addr 1185 0#64)))).val
theorem input615_def : input615 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1181 (Flapjack.WordLangAddr.addr 1185 0#64))) := by
  unfold input615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1181 (Flapjack.WordLangAddr.addr 1185 0#64)))).val
theorem output615_def : output615 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1181 (Flapjack.WordLangAddr.addr 1185 0#64))) := by
  unfold output615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output615_skip : Flapjack.WordAlloc.isSkip output615 = false := by
  rw [output615_def]
  conv => lhs; cbv
  try rfl
theorem node615_eq : Flapjack.WordAlloc.removeDeadStructural input615 value4 value1 value2 = (output615, value311, value1) := by
  rw [input615_def, output615_def]
  try (conv => lhs; cbv)
  try rfl

def value312 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1185, 1173)])).val
theorem input616_def : input616 = (Flapjack.WordLangProgHOL.move 0 [(1185, 1173)]) := by
  unfold input616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1185, 1173)])).val
theorem output616_def : output616 = (Flapjack.WordLangProgHOL.move 0 [(1185, 1173)]) := by
  unfold output616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output616_skip : Flapjack.WordAlloc.isSkip output616 = false := by
  rw [output616_def]
  conv => lhs; cbv
  try rfl
theorem node616_eq : Flapjack.WordAlloc.removeDeadStructural input616 value311 value1 value2 = (output616, value312, value1) := by
  rw [input616_def, output616_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input616 input615)).val
theorem input617_def : input617 = (.seq input616 input615) := by
  unfold input617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output616 output615)).val
theorem output617_def : output617 = (.seq output616 output615) := by
  unfold output617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output617_skip : Flapjack.WordAlloc.isSkip output617 = false := by
  rw [output617_def]
  conv => lhs; cbv
  try rfl
theorem node617_eq : Flapjack.WordAlloc.removeDeadStructural input617 value4 value1 value2 = (output617, value312, value1) := by
  rw [input617_def, output617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node615_eq]
  dsimp only
  rw [node616_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value313 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64))).val
theorem input618_def : input618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)) := by
  unfold input618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64))).val
theorem output618_def : output618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)) := by
  unfold output618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output618_skip : Flapjack.WordAlloc.isSkip output618 = false := by
  rw [output618_def]
  conv => lhs; cbv
  try rfl
theorem node618_eq : Flapjack.WordAlloc.removeDeadStructural input618 value312 value1 value2 = (output618, value313, value1) := by
  rw [input618_def, output618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64))).val
theorem input619_def : input619 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)) := by
  unfold input619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output619_def : output619 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output619_skip : Flapjack.WordAlloc.isSkip output619 = true := by
  rw [output619_def]
  conv => lhs; cbv
  try rfl
theorem node619_eq : Flapjack.WordAlloc.removeDeadStructural input619 value313 value1 value2 = (output619, value313, value1) := by
  rw [input619_def, output619_def]
  try (conv => lhs; cbv)
  try rfl

def value314 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1173 1169 (Flapjack.WordRegImm.imm 18446744073709551280#64))))).val
theorem input620_def : input620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1173 1169 (Flapjack.WordRegImm.imm 18446744073709551280#64)))) := by
  unfold input620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1173 1169 (Flapjack.WordRegImm.imm 18446744073709551280#64))))).val
theorem output620_def : output620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1173 1169 (Flapjack.WordRegImm.imm 18446744073709551280#64)))) := by
  unfold output620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output620_skip : Flapjack.WordAlloc.isSkip output620 = false := by
  rw [output620_def]
  conv => lhs; cbv
  try rfl
theorem node620_eq : Flapjack.WordAlloc.removeDeadStructural input620 value313 value1 value2 = (output620, value314, value1) := by
  rw [input620_def, output620_def]
  try (conv => lhs; cbv)
  try rfl

def value315 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1169 1165)).val
theorem input621_def : input621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1169 1165) := by
  unfold input621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1169 1165)).val
theorem output621_def : output621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1169 1165) := by
  unfold output621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output621_skip : Flapjack.WordAlloc.isSkip output621 = false := by
  rw [output621_def]
  conv => lhs; cbv
  try rfl
theorem node621_eq : Flapjack.WordAlloc.removeDeadStructural input621 value314 value1 value2 = (output621, value315, value1) := by
  rw [input621_def, output621_def]
  try (conv => lhs; cbv)
  try rfl

def value316 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1165 1161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input622_def : input622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1165 1161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1165 1161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output622_def : output622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1165 1161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output622_skip : Flapjack.WordAlloc.isSkip output622 = false := by
  rw [output622_def]
  conv => lhs; cbv
  try rfl
theorem node622_eq : Flapjack.WordAlloc.removeDeadStructural input622 value315 value1 value2 = (output622, value316, value1) := by
  rw [input622_def, output622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1161 Flapjack.WordStore.heapLength)).val
theorem input623_def : input623 = (Flapjack.WordLangProgHOL.get 1161 Flapjack.WordStore.heapLength) := by
  unfold input623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1161 Flapjack.WordStore.heapLength)).val
theorem output623_def : output623 = (Flapjack.WordLangProgHOL.get 1161 Flapjack.WordStore.heapLength) := by
  unfold output623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output623_skip : Flapjack.WordAlloc.isSkip output623 = false := by
  rw [output623_def]
  conv => lhs; cbv
  try rfl
theorem node623_eq : Flapjack.WordAlloc.removeDeadStructural input623 value316 value1 value2 = (output623, value4, value1) := by
  rw [input623_def, output623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input623 input622)).val
theorem input624_def : input624 = (.seq input623 input622) := by
  unfold input624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output623 output622)).val
theorem output624_def : output624 = (.seq output623 output622) := by
  unfold output624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output624_skip : Flapjack.WordAlloc.isSkip output624 = false := by
  rw [output624_def]
  conv => lhs; cbv
  try rfl
theorem node624_eq : Flapjack.WordAlloc.removeDeadStructural input624 value315 value1 value2 = (output624, value4, value1) := by
  rw [input624_def, output624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node622_eq]
  dsimp only
  rw [node623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input624 input621)).val
theorem input625_def : input625 = (.seq input624 input621) := by
  unfold input625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output624 output621)).val
theorem output625_def : output625 = (.seq output624 output621) := by
  unfold output625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output625_skip : Flapjack.WordAlloc.isSkip output625 = false := by
  rw [output625_def]
  conv => lhs; cbv
  try rfl
theorem node625_eq : Flapjack.WordAlloc.removeDeadStructural input625 value314 value1 value2 = (output625, value4, value1) := by
  rw [input625_def, output625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node621_eq]
  dsimp only
  rw [node624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input625 input620)).val
theorem input626_def : input626 = (.seq input625 input620) := by
  unfold input626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output625 output620)).val
theorem output626_def : output626 = (.seq output625 output620) := by
  unfold output626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output626_skip : Flapjack.WordAlloc.isSkip output626 = false := by
  rw [output626_def]
  conv => lhs; cbv
  try rfl
theorem node626_eq : Flapjack.WordAlloc.removeDeadStructural input626 value313 value1 value2 = (output626, value4, value1) := by
  rw [input626_def, output626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node620_eq]
  dsimp only
  rw [node625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value317 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1153 (Flapjack.WordLangAddr.addr 1157 0#64)))).val
theorem input627_def : input627 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1153 (Flapjack.WordLangAddr.addr 1157 0#64))) := by
  unfold input627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1153 (Flapjack.WordLangAddr.addr 1157 0#64)))).val
theorem output627_def : output627 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1153 (Flapjack.WordLangAddr.addr 1157 0#64))) := by
  unfold output627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output627_skip : Flapjack.WordAlloc.isSkip output627 = false := by
  rw [output627_def]
  conv => lhs; cbv
  try rfl
theorem node627_eq : Flapjack.WordAlloc.removeDeadStructural input627 value4 value1 value2 = (output627, value317, value1) := by
  rw [input627_def, output627_def]
  try (conv => lhs; cbv)
  try rfl

def value318 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1157, 1145)])).val
theorem input628_def : input628 = (Flapjack.WordLangProgHOL.move 0 [(1157, 1145)]) := by
  unfold input628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1157, 1145)])).val
theorem output628_def : output628 = (Flapjack.WordLangProgHOL.move 0 [(1157, 1145)]) := by
  unfold output628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output628_skip : Flapjack.WordAlloc.isSkip output628 = false := by
  rw [output628_def]
  conv => lhs; cbv
  try rfl
theorem node628_eq : Flapjack.WordAlloc.removeDeadStructural input628 value317 value1 value2 = (output628, value318, value1) := by
  rw [input628_def, output628_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input628 input627)).val
theorem input629_def : input629 = (.seq input628 input627) := by
  unfold input629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output628 output627)).val
theorem output629_def : output629 = (.seq output628 output627) := by
  unfold output629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output629_skip : Flapjack.WordAlloc.isSkip output629 = false := by
  rw [output629_def]
  conv => lhs; cbv
  try rfl
theorem node629_eq : Flapjack.WordAlloc.removeDeadStructural input629 value4 value1 value2 = (output629, value318, value1) := by
  rw [input629_def, output629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node627_eq]
  dsimp only
  rw [node628_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value319 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64))).val
theorem input630_def : input630 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64)) := by
  unfold input630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64))).val
theorem output630_def : output630 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64)) := by
  unfold output630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output630_skip : Flapjack.WordAlloc.isSkip output630 = false := by
  rw [output630_def]
  conv => lhs; cbv
  try rfl
theorem node630_eq : Flapjack.WordAlloc.removeDeadStructural input630 value318 value1 value2 = (output630, value319, value1) := by
  rw [input630_def, output630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 0#64))).val
theorem input631_def : input631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 0#64)) := by
  unfold input631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output631_def : output631 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output631_skip : Flapjack.WordAlloc.isSkip output631 = true := by
  rw [output631_def]
  conv => lhs; cbv
  try rfl
theorem node631_eq : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value319, value1) := by
  rw [input631_def, output631_def]
  try (conv => lhs; cbv)
  try rfl

def value320 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1145 1141 (Flapjack.WordRegImm.imm 18446744073709551288#64))))).val
theorem input632_def : input632 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1145 1141 (Flapjack.WordRegImm.imm 18446744073709551288#64)))) := by
  unfold input632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1145 1141 (Flapjack.WordRegImm.imm 18446744073709551288#64))))).val
theorem output632_def : output632 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1145 1141 (Flapjack.WordRegImm.imm 18446744073709551288#64)))) := by
  unfold output632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output632_skip : Flapjack.WordAlloc.isSkip output632 = false := by
  rw [output632_def]
  conv => lhs; cbv
  try rfl
theorem node632_eq : Flapjack.WordAlloc.removeDeadStructural input632 value319 value1 value2 = (output632, value320, value1) := by
  rw [input632_def, output632_def]
  try (conv => lhs; cbv)
  try rfl

def value321 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1141 1137)).val
theorem input633_def : input633 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1141 1137) := by
  unfold input633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1141 1137)).val
theorem output633_def : output633 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1141 1137) := by
  unfold output633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output633_skip : Flapjack.WordAlloc.isSkip output633 = false := by
  rw [output633_def]
  conv => lhs; cbv
  try rfl
theorem node633_eq : Flapjack.WordAlloc.removeDeadStructural input633 value320 value1 value2 = (output633, value321, value1) := by
  rw [input633_def, output633_def]
  try (conv => lhs; cbv)
  try rfl

def value322 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1137 1133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input634_def : input634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1137 1133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1137 1133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output634_def : output634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1137 1133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output634_skip : Flapjack.WordAlloc.isSkip output634 = false := by
  rw [output634_def]
  conv => lhs; cbv
  try rfl
theorem node634_eq : Flapjack.WordAlloc.removeDeadStructural input634 value321 value1 value2 = (output634, value322, value1) := by
  rw [input634_def, output634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1133 Flapjack.WordStore.heapLength)).val
theorem input635_def : input635 = (Flapjack.WordLangProgHOL.get 1133 Flapjack.WordStore.heapLength) := by
  unfold input635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1133 Flapjack.WordStore.heapLength)).val
theorem output635_def : output635 = (Flapjack.WordLangProgHOL.get 1133 Flapjack.WordStore.heapLength) := by
  unfold output635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output635_skip : Flapjack.WordAlloc.isSkip output635 = false := by
  rw [output635_def]
  conv => lhs; cbv
  try rfl
theorem node635_eq : Flapjack.WordAlloc.removeDeadStructural input635 value322 value1 value2 = (output635, value4, value1) := by
  rw [input635_def, output635_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input635 input634)).val
theorem input636_def : input636 = (.seq input635 input634) := by
  unfold input636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output635 output634)).val
theorem output636_def : output636 = (.seq output635 output634) := by
  unfold output636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output636_skip : Flapjack.WordAlloc.isSkip output636 = false := by
  rw [output636_def]
  conv => lhs; cbv
  try rfl
theorem node636_eq : Flapjack.WordAlloc.removeDeadStructural input636 value321 value1 value2 = (output636, value4, value1) := by
  rw [input636_def, output636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node634_eq]
  dsimp only
  rw [node635_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input636 input633)).val
theorem input637_def : input637 = (.seq input636 input633) := by
  unfold input637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output636 output633)).val
theorem output637_def : output637 = (.seq output636 output633) := by
  unfold output637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output637_skip : Flapjack.WordAlloc.isSkip output637 = false := by
  rw [output637_def]
  conv => lhs; cbv
  try rfl
theorem node637_eq : Flapjack.WordAlloc.removeDeadStructural input637 value320 value1 value2 = (output637, value4, value1) := by
  rw [input637_def, output637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node633_eq]
  dsimp only
  rw [node636_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input637 input632)).val
theorem input638_def : input638 = (.seq input637 input632) := by
  unfold input638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output637 output632)).val
theorem output638_def : output638 = (.seq output637 output632) := by
  unfold output638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output638_skip : Flapjack.WordAlloc.isSkip output638 = false := by
  rw [output638_def]
  conv => lhs; cbv
  try rfl
theorem node638_eq : Flapjack.WordAlloc.removeDeadStructural input638 value319 value1 value2 = (output638, value4, value1) := by
  rw [input638_def, output638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node632_eq]
  dsimp only
  rw [node637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value323 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1125 (Flapjack.WordLangAddr.addr 1129 0#64)))).val
theorem input639_def : input639 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1125 (Flapjack.WordLangAddr.addr 1129 0#64))) := by
  unfold input639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1125 (Flapjack.WordLangAddr.addr 1129 0#64)))).val
theorem output639_def : output639 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1125 (Flapjack.WordLangAddr.addr 1129 0#64))) := by
  unfold output639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output639_skip : Flapjack.WordAlloc.isSkip output639 = false := by
  rw [output639_def]
  conv => lhs; cbv
  try rfl
theorem node639_eq : Flapjack.WordAlloc.removeDeadStructural input639 value4 value1 value2 = (output639, value323, value1) := by
  rw [input639_def, output639_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node639_eq
end InitECandidate.Proofs.DeadStages64
