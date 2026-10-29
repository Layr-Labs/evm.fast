import InitECandidate.Proofs.DeadStages64.Chunk014
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input479 input478)).val
theorem input480_def : input480 = (.seq input479 input478) := by
  unfold input480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output479 output478)).val
theorem output480_def : output480 = (.seq output479 output478) := by
  unfold output480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output480_skip : Flapjack.WordAlloc.isSkip output480 = false := by
  rw [output480_def]
  conv => lhs; cbv
  try rfl
theorem node480_eq : Flapjack.WordAlloc.removeDeadStructural input480 value243 value1 value2 = (output480, value4, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node478_eq]
  dsimp only
  rw [node479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input480 input477)).val
theorem input481_def : input481 = (.seq input480 input477) := by
  unfold input481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output480 output477)).val
theorem output481_def : output481 = (.seq output480 output477) := by
  unfold output481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output481_skip : Flapjack.WordAlloc.isSkip output481 = false := by
  rw [output481_def]
  conv => lhs; cbv
  try rfl
theorem node481_eq : Flapjack.WordAlloc.removeDeadStructural input481 value242 value1 value2 = (output481, value4, value1) := by
  rw [input481_def, output481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node477_eq]
  dsimp only
  rw [node480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input481 input476)).val
theorem input482_def : input482 = (.seq input481 input476) := by
  unfold input482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output481 output476)).val
theorem output482_def : output482 = (.seq output481 output476) := by
  unfold output482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output482_skip : Flapjack.WordAlloc.isSkip output482 = false := by
  rw [output482_def]
  conv => lhs; cbv
  try rfl
theorem node482_eq : Flapjack.WordAlloc.removeDeadStructural input482 value241 value1 value2 = (output482, value4, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node476_eq]
  dsimp only
  rw [node481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value245 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1489 (Flapjack.WordLangAddr.addr 1493 0#64)))).val
theorem input483_def : input483 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1489 (Flapjack.WordLangAddr.addr 1493 0#64))) := by
  unfold input483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1489 (Flapjack.WordLangAddr.addr 1493 0#64)))).val
theorem output483_def : output483 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1489 (Flapjack.WordLangAddr.addr 1493 0#64))) := by
  unfold output483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output483_skip : Flapjack.WordAlloc.isSkip output483 = false := by
  rw [output483_def]
  conv => lhs; cbv
  try rfl
theorem node483_eq : Flapjack.WordAlloc.removeDeadStructural input483 value4 value1 value2 = (output483, value245, value1) := by
  rw [input483_def, output483_def]
  try (conv => lhs; cbv)
  try rfl

def value246 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1493, 1481)])).val
theorem input484_def : input484 = (Flapjack.WordLangProgHOL.move 0 [(1493, 1481)]) := by
  unfold input484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1493, 1481)])).val
theorem output484_def : output484 = (Flapjack.WordLangProgHOL.move 0 [(1493, 1481)]) := by
  unfold output484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output484_skip : Flapjack.WordAlloc.isSkip output484 = false := by
  rw [output484_def]
  conv => lhs; cbv
  try rfl
theorem node484_eq : Flapjack.WordAlloc.removeDeadStructural input484 value245 value1 value2 = (output484, value246, value1) := by
  rw [input484_def, output484_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input484 input483)).val
theorem input485_def : input485 = (.seq input484 input483) := by
  unfold input485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output484 output483)).val
theorem output485_def : output485 = (.seq output484 output483) := by
  unfold output485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output485_skip : Flapjack.WordAlloc.isSkip output485 = false := by
  rw [output485_def]
  conv => lhs; cbv
  try rfl
theorem node485_eq : Flapjack.WordAlloc.removeDeadStructural input485 value4 value1 value2 = (output485, value246, value1) := by
  rw [input485_def, output485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node483_eq]
  dsimp only
  rw [node484_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value247 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64))).val
theorem input486_def : input486 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64)) := by
  unfold input486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64))).val
theorem output486_def : output486 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1489 0#64)) := by
  unfold output486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output486_skip : Flapjack.WordAlloc.isSkip output486 = false := by
  rw [output486_def]
  conv => lhs; cbv
  try rfl
theorem node486_eq : Flapjack.WordAlloc.removeDeadStructural input486 value246 value1 value2 = (output486, value247, value1) := by
  rw [input486_def, output486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1485 0#64))).val
theorem input487_def : input487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1485 0#64)) := by
  unfold input487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output487_def : output487 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output487_skip : Flapjack.WordAlloc.isSkip output487 = true := by
  rw [output487_def]
  conv => lhs; cbv
  try rfl
theorem node487_eq : Flapjack.WordAlloc.removeDeadStructural input487 value247 value1 value2 = (output487, value247, value1) := by
  rw [input487_def, output487_def]
  try (conv => lhs; cbv)
  try rfl

def value248 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1481 1477 (Flapjack.WordRegImm.imm 18446744073709551192#64))))).val
theorem input488_def : input488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1481 1477 (Flapjack.WordRegImm.imm 18446744073709551192#64)))) := by
  unfold input488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1481 1477 (Flapjack.WordRegImm.imm 18446744073709551192#64))))).val
theorem output488_def : output488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1481 1477 (Flapjack.WordRegImm.imm 18446744073709551192#64)))) := by
  unfold output488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output488_skip : Flapjack.WordAlloc.isSkip output488 = false := by
  rw [output488_def]
  conv => lhs; cbv
  try rfl
theorem node488_eq : Flapjack.WordAlloc.removeDeadStructural input488 value247 value1 value2 = (output488, value248, value1) := by
  rw [input488_def, output488_def]
  try (conv => lhs; cbv)
  try rfl

def value249 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473)).val
theorem input489_def : input489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473) := by
  unfold input489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473)).val
theorem output489_def : output489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1477 1473) := by
  unfold output489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output489_skip : Flapjack.WordAlloc.isSkip output489 = false := by
  rw [output489_def]
  conv => lhs; cbv
  try rfl
theorem node489_eq : Flapjack.WordAlloc.removeDeadStructural input489 value248 value1 value2 = (output489, value249, value1) := by
  rw [input489_def, output489_def]
  try (conv => lhs; cbv)
  try rfl

def value250 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input490_def : input490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output490_def : output490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1473 1469 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output490_skip : Flapjack.WordAlloc.isSkip output490 = false := by
  rw [output490_def]
  conv => lhs; cbv
  try rfl
theorem node490_eq : Flapjack.WordAlloc.removeDeadStructural input490 value249 value1 value2 = (output490, value250, value1) := by
  rw [input490_def, output490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength)).val
theorem input491_def : input491 = (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength) := by
  unfold input491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength)).val
theorem output491_def : output491 = (Flapjack.WordLangProgHOL.get 1469 Flapjack.WordStore.heapLength) := by
  unfold output491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output491_skip : Flapjack.WordAlloc.isSkip output491 = false := by
  rw [output491_def]
  conv => lhs; cbv
  try rfl
theorem node491_eq : Flapjack.WordAlloc.removeDeadStructural input491 value250 value1 value2 = (output491, value4, value1) := by
  rw [input491_def, output491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input491 input490)).val
theorem input492_def : input492 = (.seq input491 input490) := by
  unfold input492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output491 output490)).val
theorem output492_def : output492 = (.seq output491 output490) := by
  unfold output492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output492_skip : Flapjack.WordAlloc.isSkip output492 = false := by
  rw [output492_def]
  conv => lhs; cbv
  try rfl
theorem node492_eq : Flapjack.WordAlloc.removeDeadStructural input492 value249 value1 value2 = (output492, value4, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node490_eq]
  dsimp only
  rw [node491_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input492 input489)).val
theorem input493_def : input493 = (.seq input492 input489) := by
  unfold input493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output492 output489)).val
theorem output493_def : output493 = (.seq output492 output489) := by
  unfold output493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output493_skip : Flapjack.WordAlloc.isSkip output493 = false := by
  rw [output493_def]
  conv => lhs; cbv
  try rfl
theorem node493_eq : Flapjack.WordAlloc.removeDeadStructural input493 value248 value1 value2 = (output493, value4, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node489_eq]
  dsimp only
  rw [node492_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input493 input488)).val
theorem input494_def : input494 = (.seq input493 input488) := by
  unfold input494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output493 output488)).val
theorem output494_def : output494 = (.seq output493 output488) := by
  unfold output494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output494_skip : Flapjack.WordAlloc.isSkip output494 = false := by
  rw [output494_def]
  conv => lhs; cbv
  try rfl
theorem node494_eq : Flapjack.WordAlloc.removeDeadStructural input494 value247 value1 value2 = (output494, value4, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node488_eq]
  dsimp only
  rw [node493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value251 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64)))).val
theorem input495_def : input495 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64))) := by
  unfold input495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64)))).val
theorem output495_def : output495 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1461 (Flapjack.WordLangAddr.addr 1465 0#64))) := by
  unfold output495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output495_skip : Flapjack.WordAlloc.isSkip output495 = false := by
  rw [output495_def]
  conv => lhs; cbv
  try rfl
theorem node495_eq : Flapjack.WordAlloc.removeDeadStructural input495 value4 value1 value2 = (output495, value251, value1) := by
  rw [input495_def, output495_def]
  try (conv => lhs; cbv)
  try rfl

def value252 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)])).val
theorem input496_def : input496 = (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)]) := by
  unfold input496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)])).val
theorem output496_def : output496 = (Flapjack.WordLangProgHOL.move 0 [(1465, 1453)]) := by
  unfold output496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output496_skip : Flapjack.WordAlloc.isSkip output496 = false := by
  rw [output496_def]
  conv => lhs; cbv
  try rfl
theorem node496_eq : Flapjack.WordAlloc.removeDeadStructural input496 value251 value1 value2 = (output496, value252, value1) := by
  rw [input496_def, output496_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input496 input495)).val
theorem input497_def : input497 = (.seq input496 input495) := by
  unfold input497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output496 output495)).val
theorem output497_def : output497 = (.seq output496 output495) := by
  unfold output497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output497_skip : Flapjack.WordAlloc.isSkip output497 = false := by
  rw [output497_def]
  conv => lhs; cbv
  try rfl
theorem node497_eq : Flapjack.WordAlloc.removeDeadStructural input497 value4 value1 value2 = (output497, value252, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node495_eq]
  dsimp only
  rw [node496_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value253 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64))).val
theorem input498_def : input498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64)) := by
  unfold input498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64))).val
theorem output498_def : output498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64)) := by
  unfold output498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output498_skip : Flapjack.WordAlloc.isSkip output498 = false := by
  rw [output498_def]
  conv => lhs; cbv
  try rfl
theorem node498_eq : Flapjack.WordAlloc.removeDeadStructural input498 value252 value1 value2 = (output498, value253, value1) := by
  rw [input498_def, output498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64))).val
theorem input499_def : input499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1457 0#64)) := by
  unfold input499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output499_def : output499 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output499_skip : Flapjack.WordAlloc.isSkip output499 = true := by
  rw [output499_def]
  conv => lhs; cbv
  try rfl
theorem node499_eq : Flapjack.WordAlloc.removeDeadStructural input499 value253 value1 value2 = (output499, value253, value1) := by
  rw [input499_def, output499_def]
  try (conv => lhs; cbv)
  try rfl

def value254 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 18446744073709551200#64))))).val
theorem input500_def : input500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 18446744073709551200#64)))) := by
  unfold input500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 18446744073709551200#64))))).val
theorem output500_def : output500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1453 1449 (Flapjack.WordRegImm.imm 18446744073709551200#64)))) := by
  unfold output500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output500_skip : Flapjack.WordAlloc.isSkip output500 = false := by
  rw [output500_def]
  conv => lhs; cbv
  try rfl
theorem node500_eq : Flapjack.WordAlloc.removeDeadStructural input500 value253 value1 value2 = (output500, value254, value1) := by
  rw [input500_def, output500_def]
  try (conv => lhs; cbv)
  try rfl

def value255 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445)).val
theorem input501_def : input501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445) := by
  unfold input501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445)).val
theorem output501_def : output501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445) := by
  unfold output501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output501_skip : Flapjack.WordAlloc.isSkip output501 = false := by
  rw [output501_def]
  conv => lhs; cbv
  try rfl
theorem node501_eq : Flapjack.WordAlloc.removeDeadStructural input501 value254 value1 value2 = (output501, value255, value1) := by
  rw [input501_def, output501_def]
  try (conv => lhs; cbv)
  try rfl

def value256 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input502_def : input502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output502_def : output502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output502_skip : Flapjack.WordAlloc.isSkip output502 = false := by
  rw [output502_def]
  conv => lhs; cbv
  try rfl
theorem node502_eq : Flapjack.WordAlloc.removeDeadStructural input502 value255 value1 value2 = (output502, value256, value1) := by
  rw [input502_def, output502_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength)).val
theorem input503_def : input503 = (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength) := by
  unfold input503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength)).val
theorem output503_def : output503 = (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength) := by
  unfold output503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output503_skip : Flapjack.WordAlloc.isSkip output503 = false := by
  rw [output503_def]
  conv => lhs; cbv
  try rfl
theorem node503_eq : Flapjack.WordAlloc.removeDeadStructural input503 value256 value1 value2 = (output503, value4, value1) := by
  rw [input503_def, output503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input503 input502)).val
theorem input504_def : input504 = (.seq input503 input502) := by
  unfold input504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output503 output502)).val
theorem output504_def : output504 = (.seq output503 output502) := by
  unfold output504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output504_skip : Flapjack.WordAlloc.isSkip output504 = false := by
  rw [output504_def]
  conv => lhs; cbv
  try rfl
theorem node504_eq : Flapjack.WordAlloc.removeDeadStructural input504 value255 value1 value2 = (output504, value4, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node502_eq]
  dsimp only
  rw [node503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input504 input501)).val
theorem input505_def : input505 = (.seq input504 input501) := by
  unfold input505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output504 output501)).val
theorem output505_def : output505 = (.seq output504 output501) := by
  unfold output505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output505_skip : Flapjack.WordAlloc.isSkip output505 = false := by
  rw [output505_def]
  conv => lhs; cbv
  try rfl
theorem node505_eq : Flapjack.WordAlloc.removeDeadStructural input505 value254 value1 value2 = (output505, value4, value1) := by
  rw [input505_def, output505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node501_eq]
  dsimp only
  rw [node504_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input505 input500)).val
theorem input506_def : input506 = (.seq input505 input500) := by
  unfold input506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output505 output500)).val
theorem output506_def : output506 = (.seq output505 output500) := by
  unfold output506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output506_skip : Flapjack.WordAlloc.isSkip output506 = false := by
  rw [output506_def]
  conv => lhs; cbv
  try rfl
theorem node506_eq : Flapjack.WordAlloc.removeDeadStructural input506 value253 value1 value2 = (output506, value4, value1) := by
  rw [input506_def, output506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node500_eq]
  dsimp only
  rw [node505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value257 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64)))).val
theorem input507_def : input507 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64))) := by
  unfold input507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64)))).val
theorem output507_def : output507 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64))) := by
  unfold output507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output507_skip : Flapjack.WordAlloc.isSkip output507 = false := by
  rw [output507_def]
  conv => lhs; cbv
  try rfl
theorem node507_eq : Flapjack.WordAlloc.removeDeadStructural input507 value4 value1 value2 = (output507, value257, value1) := by
  rw [input507_def, output507_def]
  try (conv => lhs; cbv)
  try rfl

def value258 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)])).val
theorem input508_def : input508 = (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)]) := by
  unfold input508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)])).val
theorem output508_def : output508 = (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)]) := by
  unfold output508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output508_skip : Flapjack.WordAlloc.isSkip output508 = false := by
  rw [output508_def]
  conv => lhs; cbv
  try rfl
theorem node508_eq : Flapjack.WordAlloc.removeDeadStructural input508 value257 value1 value2 = (output508, value258, value1) := by
  rw [input508_def, output508_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input508 input507)).val
theorem input509_def : input509 = (.seq input508 input507) := by
  unfold input509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output508 output507)).val
theorem output509_def : output509 = (.seq output508 output507) := by
  unfold output509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output509_skip : Flapjack.WordAlloc.isSkip output509 = false := by
  rw [output509_def]
  conv => lhs; cbv
  try rfl
theorem node509_eq : Flapjack.WordAlloc.removeDeadStructural input509 value4 value1 value2 = (output509, value258, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  dsimp only
  rw [node508_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value259 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64))).val
theorem input510_def : input510 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64)) := by
  unfold input510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64))).val
theorem output510_def : output510 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64)) := by
  unfold output510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output510_skip : Flapjack.WordAlloc.isSkip output510 = false := by
  rw [output510_def]
  conv => lhs; cbv
  try rfl
theorem node510_eq : Flapjack.WordAlloc.removeDeadStructural input510 value258 value1 value2 = (output510, value259, value1) := by
  rw [input510_def, output510_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 0#64))).val
theorem input511_def : input511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 0#64)) := by
  unfold input511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output511_def : output511 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output511_skip : Flapjack.WordAlloc.isSkip output511 = true := by
  rw [output511_def]
  conv => lhs; cbv
  try rfl
theorem node511_eq : Flapjack.WordAlloc.removeDeadStructural input511 value259 value1 value2 = (output511, value259, value1) := by
  rw [input511_def, output511_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node511_eq
end InitECandidate.Proofs.DeadStages64
