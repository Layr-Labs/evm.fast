import InitECandidate.Proofs.DeadStages64.Chunk017
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input575 input574)).val
theorem input576_def : input576 = (.seq input575 input574) := by
  unfold input576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output575 output574)).val
theorem output576_def : output576 = (.seq output575 output574) := by
  unfold output576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output576_skip : Flapjack.WordAlloc.isSkip output576 = false := by
  rw [output576_def]
  conv => lhs; cbv
  try rfl
theorem node576_eq : Flapjack.WordAlloc.removeDeadStructural input576 value291 value1 value2 = (output576, value4, value1) := by
  rw [input576_def, output576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node574_eq]
  dsimp only
  rw [node575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input576 input573)).val
theorem input577_def : input577 = (.seq input576 input573) := by
  unfold input577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output576 output573)).val
theorem output577_def : output577 = (.seq output576 output573) := by
  unfold output577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output577_skip : Flapjack.WordAlloc.isSkip output577 = false := by
  rw [output577_def]
  conv => lhs; cbv
  try rfl
theorem node577_eq : Flapjack.WordAlloc.removeDeadStructural input577 value290 value1 value2 = (output577, value4, value1) := by
  rw [input577_def, output577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node573_eq]
  dsimp only
  rw [node576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input577 input572)).val
theorem input578_def : input578 = (.seq input577 input572) := by
  unfold input578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output577 output572)).val
theorem output578_def : output578 = (.seq output577 output572) := by
  unfold output578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output578_skip : Flapjack.WordAlloc.isSkip output578 = false := by
  rw [output578_def]
  conv => lhs; cbv
  try rfl
theorem node578_eq : Flapjack.WordAlloc.removeDeadStructural input578 value289 value1 value2 = (output578, value4, value1) := by
  rw [input578_def, output578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node572_eq]
  dsimp only
  rw [node577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value293 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1265 (Flapjack.WordLangAddr.addr 1269 0#64)))).val
theorem input579_def : input579 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1265 (Flapjack.WordLangAddr.addr 1269 0#64))) := by
  unfold input579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1265 (Flapjack.WordLangAddr.addr 1269 0#64)))).val
theorem output579_def : output579 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1265 (Flapjack.WordLangAddr.addr 1269 0#64))) := by
  unfold output579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output579_skip : Flapjack.WordAlloc.isSkip output579 = false := by
  rw [output579_def]
  conv => lhs; cbv
  try rfl
theorem node579_eq : Flapjack.WordAlloc.removeDeadStructural input579 value4 value1 value2 = (output579, value293, value1) := by
  rw [input579_def, output579_def]
  try (conv => lhs; cbv)
  try rfl

def value294 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1269, 1257)])).val
theorem input580_def : input580 = (Flapjack.WordLangProgHOL.move 0 [(1269, 1257)]) := by
  unfold input580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1269, 1257)])).val
theorem output580_def : output580 = (Flapjack.WordLangProgHOL.move 0 [(1269, 1257)]) := by
  unfold output580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output580_skip : Flapjack.WordAlloc.isSkip output580 = false := by
  rw [output580_def]
  conv => lhs; cbv
  try rfl
theorem node580_eq : Flapjack.WordAlloc.removeDeadStructural input580 value293 value1 value2 = (output580, value294, value1) := by
  rw [input580_def, output580_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input580 input579)).val
theorem input581_def : input581 = (.seq input580 input579) := by
  unfold input581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output580 output579)).val
theorem output581_def : output581 = (.seq output580 output579) := by
  unfold output581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output581_skip : Flapjack.WordAlloc.isSkip output581 = false := by
  rw [output581_def]
  conv => lhs; cbv
  try rfl
theorem node581_eq : Flapjack.WordAlloc.removeDeadStructural input581 value4 value1 value2 = (output581, value294, value1) := by
  rw [input581_def, output581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node579_eq]
  dsimp only
  rw [node580_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value295 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 0#64))).val
theorem input582_def : input582 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 0#64)) := by
  unfold input582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 0#64))).val
theorem output582_def : output582 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 0#64)) := by
  unfold output582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output582_skip : Flapjack.WordAlloc.isSkip output582 = false := by
  rw [output582_def]
  conv => lhs; cbv
  try rfl
theorem node582_eq : Flapjack.WordAlloc.removeDeadStructural input582 value294 value1 value2 = (output582, value295, value1) := by
  rw [input582_def, output582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1261 0#64))).val
theorem input583_def : input583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1261 0#64)) := by
  unfold input583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output583_def : output583 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output583_skip : Flapjack.WordAlloc.isSkip output583 = true := by
  rw [output583_def]
  conv => lhs; cbv
  try rfl
theorem node583_eq : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value295, value1) := by
  rw [input583_def, output583_def]
  try (conv => lhs; cbv)
  try rfl

def value296 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1257 1253 (Flapjack.WordRegImm.imm 18446744073709551256#64))))).val
theorem input584_def : input584 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1257 1253 (Flapjack.WordRegImm.imm 18446744073709551256#64)))) := by
  unfold input584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1257 1253 (Flapjack.WordRegImm.imm 18446744073709551256#64))))).val
theorem output584_def : output584 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1257 1253 (Flapjack.WordRegImm.imm 18446744073709551256#64)))) := by
  unfold output584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output584_skip : Flapjack.WordAlloc.isSkip output584 = false := by
  rw [output584_def]
  conv => lhs; cbv
  try rfl
theorem node584_eq : Flapjack.WordAlloc.removeDeadStructural input584 value295 value1 value2 = (output584, value296, value1) := by
  rw [input584_def, output584_def]
  try (conv => lhs; cbv)
  try rfl

def value297 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1253 1249)).val
theorem input585_def : input585 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1253 1249) := by
  unfold input585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1253 1249)).val
theorem output585_def : output585 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1253 1249) := by
  unfold output585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output585_skip : Flapjack.WordAlloc.isSkip output585 = false := by
  rw [output585_def]
  conv => lhs; cbv
  try rfl
theorem node585_eq : Flapjack.WordAlloc.removeDeadStructural input585 value296 value1 value2 = (output585, value297, value1) := by
  rw [input585_def, output585_def]
  try (conv => lhs; cbv)
  try rfl

def value298 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1249 1245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input586_def : input586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1249 1245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1249 1245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output586_def : output586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1249 1245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output586_skip : Flapjack.WordAlloc.isSkip output586 = false := by
  rw [output586_def]
  conv => lhs; cbv
  try rfl
theorem node586_eq : Flapjack.WordAlloc.removeDeadStructural input586 value297 value1 value2 = (output586, value298, value1) := by
  rw [input586_def, output586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1245 Flapjack.WordStore.heapLength)).val
theorem input587_def : input587 = (Flapjack.WordLangProgHOL.get 1245 Flapjack.WordStore.heapLength) := by
  unfold input587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1245 Flapjack.WordStore.heapLength)).val
theorem output587_def : output587 = (Flapjack.WordLangProgHOL.get 1245 Flapjack.WordStore.heapLength) := by
  unfold output587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output587_skip : Flapjack.WordAlloc.isSkip output587 = false := by
  rw [output587_def]
  conv => lhs; cbv
  try rfl
theorem node587_eq : Flapjack.WordAlloc.removeDeadStructural input587 value298 value1 value2 = (output587, value4, value1) := by
  rw [input587_def, output587_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input587 input586)).val
theorem input588_def : input588 = (.seq input587 input586) := by
  unfold input588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output587 output586)).val
theorem output588_def : output588 = (.seq output587 output586) := by
  unfold output588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output588_skip : Flapjack.WordAlloc.isSkip output588 = false := by
  rw [output588_def]
  conv => lhs; cbv
  try rfl
theorem node588_eq : Flapjack.WordAlloc.removeDeadStructural input588 value297 value1 value2 = (output588, value4, value1) := by
  rw [input588_def, output588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node586_eq]
  dsimp only
  rw [node587_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input588 input585)).val
theorem input589_def : input589 = (.seq input588 input585) := by
  unfold input589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output588 output585)).val
theorem output589_def : output589 = (.seq output588 output585) := by
  unfold output589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output589_skip : Flapjack.WordAlloc.isSkip output589 = false := by
  rw [output589_def]
  conv => lhs; cbv
  try rfl
theorem node589_eq : Flapjack.WordAlloc.removeDeadStructural input589 value296 value1 value2 = (output589, value4, value1) := by
  rw [input589_def, output589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node585_eq]
  dsimp only
  rw [node588_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input589 input584)).val
theorem input590_def : input590 = (.seq input589 input584) := by
  unfold input590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output589 output584)).val
theorem output590_def : output590 = (.seq output589 output584) := by
  unfold output590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output590_skip : Flapjack.WordAlloc.isSkip output590 = false := by
  rw [output590_def]
  conv => lhs; cbv
  try rfl
theorem node590_eq : Flapjack.WordAlloc.removeDeadStructural input590 value295 value1 value2 = (output590, value4, value1) := by
  rw [input590_def, output590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node584_eq]
  dsimp only
  rw [node589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value299 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1237 (Flapjack.WordLangAddr.addr 1241 0#64)))).val
theorem input591_def : input591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1237 (Flapjack.WordLangAddr.addr 1241 0#64))) := by
  unfold input591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1237 (Flapjack.WordLangAddr.addr 1241 0#64)))).val
theorem output591_def : output591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1237 (Flapjack.WordLangAddr.addr 1241 0#64))) := by
  unfold output591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output591_skip : Flapjack.WordAlloc.isSkip output591 = false := by
  rw [output591_def]
  conv => lhs; cbv
  try rfl
theorem node591_eq : Flapjack.WordAlloc.removeDeadStructural input591 value4 value1 value2 = (output591, value299, value1) := by
  rw [input591_def, output591_def]
  try (conv => lhs; cbv)
  try rfl

def value300 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1241, 1229)])).val
theorem input592_def : input592 = (Flapjack.WordLangProgHOL.move 0 [(1241, 1229)]) := by
  unfold input592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1241, 1229)])).val
theorem output592_def : output592 = (Flapjack.WordLangProgHOL.move 0 [(1241, 1229)]) := by
  unfold output592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output592_skip : Flapjack.WordAlloc.isSkip output592 = false := by
  rw [output592_def]
  conv => lhs; cbv
  try rfl
theorem node592_eq : Flapjack.WordAlloc.removeDeadStructural input592 value299 value1 value2 = (output592, value300, value1) := by
  rw [input592_def, output592_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input592 input591)).val
theorem input593_def : input593 = (.seq input592 input591) := by
  unfold input593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output592 output591)).val
theorem output593_def : output593 = (.seq output592 output591) := by
  unfold output593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output593_skip : Flapjack.WordAlloc.isSkip output593 = false := by
  rw [output593_def]
  conv => lhs; cbv
  try rfl
theorem node593_eq : Flapjack.WordAlloc.removeDeadStructural input593 value4 value1 value2 = (output593, value300, value1) := by
  rw [input593_def, output593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node591_eq]
  dsimp only
  rw [node592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value301 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64))).val
theorem input594_def : input594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64)) := by
  unfold input594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64))).val
theorem output594_def : output594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64)) := by
  unfold output594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output594_skip : Flapjack.WordAlloc.isSkip output594 = false := by
  rw [output594_def]
  conv => lhs; cbv
  try rfl
theorem node594_eq : Flapjack.WordAlloc.removeDeadStructural input594 value300 value1 value2 = (output594, value301, value1) := by
  rw [input594_def, output594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1233 0#64))).val
theorem input595_def : input595 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1233 0#64)) := by
  unfold input595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output595_def : output595 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output595_skip : Flapjack.WordAlloc.isSkip output595 = true := by
  rw [output595_def]
  conv => lhs; cbv
  try rfl
theorem node595_eq : Flapjack.WordAlloc.removeDeadStructural input595 value301 value1 value2 = (output595, value301, value1) := by
  rw [input595_def, output595_def]
  try (conv => lhs; cbv)
  try rfl

def value302 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1229 1225 (Flapjack.WordRegImm.imm 18446744073709551264#64))))).val
theorem input596_def : input596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1229 1225 (Flapjack.WordRegImm.imm 18446744073709551264#64)))) := by
  unfold input596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1229 1225 (Flapjack.WordRegImm.imm 18446744073709551264#64))))).val
theorem output596_def : output596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1229 1225 (Flapjack.WordRegImm.imm 18446744073709551264#64)))) := by
  unfold output596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output596_skip : Flapjack.WordAlloc.isSkip output596 = false := by
  rw [output596_def]
  conv => lhs; cbv
  try rfl
theorem node596_eq : Flapjack.WordAlloc.removeDeadStructural input596 value301 value1 value2 = (output596, value302, value1) := by
  rw [input596_def, output596_def]
  try (conv => lhs; cbv)
  try rfl

def value303 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221)).val
theorem input597_def : input597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221) := by
  unfold input597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221)).val
theorem output597_def : output597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221) := by
  unfold output597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output597_skip : Flapjack.WordAlloc.isSkip output597 = false := by
  rw [output597_def]
  conv => lhs; cbv
  try rfl
theorem node597_eq : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1) := by
  rw [input597_def, output597_def]
  try (conv => lhs; cbv)
  try rfl

def value304 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input598_def : input598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output598_def : output598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output598_skip : Flapjack.WordAlloc.isSkip output598 = false := by
  rw [output598_def]
  conv => lhs; cbv
  try rfl
theorem node598_eq : Flapjack.WordAlloc.removeDeadStructural input598 value303 value1 value2 = (output598, value304, value1) := by
  rw [input598_def, output598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength)).val
theorem input599_def : input599 = (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength) := by
  unfold input599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength)).val
theorem output599_def : output599 = (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength) := by
  unfold output599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output599_skip : Flapjack.WordAlloc.isSkip output599 = false := by
  rw [output599_def]
  conv => lhs; cbv
  try rfl
theorem node599_eq : Flapjack.WordAlloc.removeDeadStructural input599 value304 value1 value2 = (output599, value4, value1) := by
  rw [input599_def, output599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input599 input598)).val
theorem input600_def : input600 = (.seq input599 input598) := by
  unfold input600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output599 output598)).val
theorem output600_def : output600 = (.seq output599 output598) := by
  unfold output600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output600_skip : Flapjack.WordAlloc.isSkip output600 = false := by
  rw [output600_def]
  conv => lhs; cbv
  try rfl
theorem node600_eq : Flapjack.WordAlloc.removeDeadStructural input600 value303 value1 value2 = (output600, value4, value1) := by
  rw [input600_def, output600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node598_eq]
  dsimp only
  rw [node599_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input600 input597)).val
theorem input601_def : input601 = (.seq input600 input597) := by
  unfold input601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output600 output597)).val
theorem output601_def : output601 = (.seq output600 output597) := by
  unfold output601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output601_skip : Flapjack.WordAlloc.isSkip output601 = false := by
  rw [output601_def]
  conv => lhs; cbv
  try rfl
theorem node601_eq : Flapjack.WordAlloc.removeDeadStructural input601 value302 value1 value2 = (output601, value4, value1) := by
  rw [input601_def, output601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node597_eq]
  dsimp only
  rw [node600_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input601 input596)).val
theorem input602_def : input602 = (.seq input601 input596) := by
  unfold input602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output601 output596)).val
theorem output602_def : output602 = (.seq output601 output596) := by
  unfold output602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output602_skip : Flapjack.WordAlloc.isSkip output602 = false := by
  rw [output602_def]
  conv => lhs; cbv
  try rfl
theorem node602_eq : Flapjack.WordAlloc.removeDeadStructural input602 value301 value1 value2 = (output602, value4, value1) := by
  rw [input602_def, output602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node596_eq]
  dsimp only
  rw [node601_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value305 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64)))).val
theorem input603_def : input603 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64))) := by
  unfold input603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64)))).val
theorem output603_def : output603 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64))) := by
  unfold output603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output603_skip : Flapjack.WordAlloc.isSkip output603 = false := by
  rw [output603_def]
  conv => lhs; cbv
  try rfl
theorem node603_eq : Flapjack.WordAlloc.removeDeadStructural input603 value4 value1 value2 = (output603, value305, value1) := by
  rw [input603_def, output603_def]
  try (conv => lhs; cbv)
  try rfl

def value306 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)])).val
theorem input604_def : input604 = (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)]) := by
  unfold input604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)])).val
theorem output604_def : output604 = (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)]) := by
  unfold output604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output604_skip : Flapjack.WordAlloc.isSkip output604 = false := by
  rw [output604_def]
  conv => lhs; cbv
  try rfl
theorem node604_eq : Flapjack.WordAlloc.removeDeadStructural input604 value305 value1 value2 = (output604, value306, value1) := by
  rw [input604_def, output604_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input604 input603)).val
theorem input605_def : input605 = (.seq input604 input603) := by
  unfold input605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output604 output603)).val
theorem output605_def : output605 = (.seq output604 output603) := by
  unfold output605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output605_skip : Flapjack.WordAlloc.isSkip output605 = false := by
  rw [output605_def]
  conv => lhs; cbv
  try rfl
theorem node605_eq : Flapjack.WordAlloc.removeDeadStructural input605 value4 value1 value2 = (output605, value306, value1) := by
  rw [input605_def, output605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node603_eq]
  dsimp only
  rw [node604_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value307 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64))).val
theorem input606_def : input606 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64)) := by
  unfold input606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64))).val
theorem output606_def : output606 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64)) := by
  unfold output606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output606_skip : Flapjack.WordAlloc.isSkip output606 = false := by
  rw [output606_def]
  conv => lhs; cbv
  try rfl
theorem node606_eq : Flapjack.WordAlloc.removeDeadStructural input606 value306 value1 value2 = (output606, value307, value1) := by
  rw [input606_def, output606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 0#64))).val
theorem input607_def : input607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 0#64)) := by
  unfold input607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output607_def : output607 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output607_skip : Flapjack.WordAlloc.isSkip output607 = true := by
  rw [output607_def]
  conv => lhs; cbv
  try rfl
theorem node607_eq : Flapjack.WordAlloc.removeDeadStructural input607 value307 value1 value2 = (output607, value307, value1) := by
  rw [input607_def, output607_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node607_eq
end InitECandidate.Proofs.DeadStages64
