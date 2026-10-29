import InitECandidate.Proofs.DeadStages713.Chunk045
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input11776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64)))).val
theorem input11776_def : input11776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64))) := by
  unfold input11776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64)))).val
theorem output11776_def : output11776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64))) := by
  unfold output11776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11776_skip : Flapjack.WordAlloc.isSkip output11776 = false := by
  rw [output11776_def]
  conv => lhs; cbv
  try rfl
theorem node11776_eq : Flapjack.WordAlloc.removeDeadStructural input11776 value5 value1 value2 = (output11776, value5892, value1) := by
  rw [input11776_def, output11776_def]
  try (conv => lhs; cbv)
  try rfl

def value5893 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)])).val
theorem input11777_def : input11777 = (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)]) := by
  unfold input11777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)])).val
theorem output11777_def : output11777 = (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)]) := by
  unfold output11777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11777_skip : Flapjack.WordAlloc.isSkip output11777 = false := by
  rw [output11777_def]
  conv => lhs; cbv
  try rfl
theorem node11777_eq : Flapjack.WordAlloc.removeDeadStructural input11777 value5892 value1 value2 = (output11777, value5893, value1) := by
  rw [input11777_def, output11777_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11777 input11776)).val
theorem input11778_def : input11778 = (.seq input11777 input11776) := by
  unfold input11778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11777 output11776)).val
theorem output11778_def : output11778 = (.seq output11777 output11776) := by
  unfold output11778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11778_skip : Flapjack.WordAlloc.isSkip output11778 = false := by
  rw [output11778_def]
  conv => lhs; cbv
  try rfl
theorem node11778_eq : Flapjack.WordAlloc.removeDeadStructural input11778 value5 value1 value2 = (output11778, value5893, value1) := by
  rw [input11778_def, output11778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11776_eq]
  dsimp only
  rw [node11777_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5894 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 5204293836692734814#64))).val
theorem input11779_def : input11779 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 5204293836692734814#64)) := by
  unfold input11779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 5204293836692734814#64))).val
theorem output11779_def : output11779 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 5204293836692734814#64)) := by
  unfold output11779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11779_skip : Flapjack.WordAlloc.isSkip output11779 = false := by
  rw [output11779_def]
  conv => lhs; cbv
  try rfl
theorem node11779_eq : Flapjack.WordAlloc.removeDeadStructural input11779 value5893 value1 value2 = (output11779, value5894, value1) := by
  rw [input11779_def, output11779_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4661 5204293836692734814#64))).val
theorem input11780_def : input11780 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4661 5204293836692734814#64)) := by
  unfold input11780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11780_def : output11780 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11780_skip : Flapjack.WordAlloc.isSkip output11780 = true := by
  rw [output11780_def]
  conv => lhs; cbv
  try rfl
theorem node11780_eq : Flapjack.WordAlloc.removeDeadStructural input11780 value5894 value1 value2 = (output11780, value5894, value1) := by
  rw [input11780_def, output11780_def]
  try (conv => lhs; cbv)
  try rfl

def value5895 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1128#64))))).val
theorem input11781_def : input11781 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1128#64)))) := by
  unfold input11781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1128#64))))).val
theorem output11781_def : output11781 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1128#64)))) := by
  unfold output11781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11781_skip : Flapjack.WordAlloc.isSkip output11781 = false := by
  rw [output11781_def]
  conv => lhs; cbv
  try rfl
theorem node11781_eq : Flapjack.WordAlloc.removeDeadStructural input11781 value5894 value1 value2 = (output11781, value5895, value1) := by
  rw [input11781_def, output11781_def]
  try (conv => lhs; cbv)
  try rfl

def value5896 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551104#64)))).val
theorem input11782_def : input11782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551104#64))) := by
  unfold input11782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551104#64)))).val
theorem output11782_def : output11782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551104#64))) := by
  unfold output11782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11782_skip : Flapjack.WordAlloc.isSkip output11782 = false := by
  rw [output11782_def]
  conv => lhs; cbv
  try rfl
theorem node11782_eq : Flapjack.WordAlloc.removeDeadStructural input11782 value5895 value1 value2 = (output11782, value5896, value1) := by
  rw [input11782_def, output11782_def]
  try (conv => lhs; cbv)
  try rfl

def value5897 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645)).val
theorem input11783_def : input11783 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645) := by
  unfold input11783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645)).val
theorem output11783_def : output11783 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645) := by
  unfold output11783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11783_skip : Flapjack.WordAlloc.isSkip output11783 = false := by
  rw [output11783_def]
  conv => lhs; cbv
  try rfl
theorem node11783_eq : Flapjack.WordAlloc.removeDeadStructural input11783 value5896 value1 value2 = (output11783, value5897, value1) := by
  rw [input11783_def, output11783_def]
  try (conv => lhs; cbv)
  try rfl

def value5898 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11784_def : input11784 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11784_def : output11784 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11784_skip : Flapjack.WordAlloc.isSkip output11784 = false := by
  rw [output11784_def]
  conv => lhs; cbv
  try rfl
theorem node11784_eq : Flapjack.WordAlloc.removeDeadStructural input11784 value5897 value1 value2 = (output11784, value5898, value1) := by
  rw [input11784_def, output11784_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength)).val
theorem input11785_def : input11785 = (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength) := by
  unfold input11785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength)).val
theorem output11785_def : output11785 = (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength) := by
  unfold output11785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11785_skip : Flapjack.WordAlloc.isSkip output11785 = false := by
  rw [output11785_def]
  conv => lhs; cbv
  try rfl
theorem node11785_eq : Flapjack.WordAlloc.removeDeadStructural input11785 value5898 value1 value2 = (output11785, value5, value1) := by
  rw [input11785_def, output11785_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11785 input11784)).val
theorem input11786_def : input11786 = (.seq input11785 input11784) := by
  unfold input11786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11785 output11784)).val
theorem output11786_def : output11786 = (.seq output11785 output11784) := by
  unfold output11786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11786_skip : Flapjack.WordAlloc.isSkip output11786 = false := by
  rw [output11786_def]
  conv => lhs; cbv
  try rfl
theorem node11786_eq : Flapjack.WordAlloc.removeDeadStructural input11786 value5897 value1 value2 = (output11786, value5, value1) := by
  rw [input11786_def, output11786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11784_eq]
  dsimp only
  rw [node11785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11786 input11783)).val
theorem input11787_def : input11787 = (.seq input11786 input11783) := by
  unfold input11787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11786 output11783)).val
theorem output11787_def : output11787 = (.seq output11786 output11783) := by
  unfold output11787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11787_skip : Flapjack.WordAlloc.isSkip output11787 = false := by
  rw [output11787_def]
  conv => lhs; cbv
  try rfl
theorem node11787_eq : Flapjack.WordAlloc.removeDeadStructural input11787 value5896 value1 value2 = (output11787, value5, value1) := by
  rw [input11787_def, output11787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11783_eq]
  dsimp only
  rw [node11786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11787 input11782)).val
theorem input11788_def : input11788 = (.seq input11787 input11782) := by
  unfold input11788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11787 output11782)).val
theorem output11788_def : output11788 = (.seq output11787 output11782) := by
  unfold output11788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11788_skip : Flapjack.WordAlloc.isSkip output11788 = false := by
  rw [output11788_def]
  conv => lhs; cbv
  try rfl
theorem node11788_eq : Flapjack.WordAlloc.removeDeadStructural input11788 value5895 value1 value2 = (output11788, value5, value1) := by
  rw [input11788_def, output11788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11782_eq]
  dsimp only
  rw [node11787_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11788 input11781)).val
theorem input11789_def : input11789 = (.seq input11788 input11781) := by
  unfold input11789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11788 output11781)).val
theorem output11789_def : output11789 = (.seq output11788 output11781) := by
  unfold output11789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11789_skip : Flapjack.WordAlloc.isSkip output11789 = false := by
  rw [output11789_def]
  conv => lhs; cbv
  try rfl
theorem node11789_eq : Flapjack.WordAlloc.removeDeadStructural input11789 value5894 value1 value2 = (output11789, value5, value1) := by
  rw [input11789_def, output11789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11781_eq]
  dsimp only
  rw [node11788_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5899 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64)))).val
theorem input11790_def : input11790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64))) := by
  unfold input11790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64)))).val
theorem output11790_def : output11790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64))) := by
  unfold output11790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11790_skip : Flapjack.WordAlloc.isSkip output11790 = false := by
  rw [output11790_def]
  conv => lhs; cbv
  try rfl
theorem node11790_eq : Flapjack.WordAlloc.removeDeadStructural input11790 value5 value1 value2 = (output11790, value5899, value1) := by
  rw [input11790_def, output11790_def]
  try (conv => lhs; cbv)
  try rfl

def value5900 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)])).val
theorem input11791_def : input11791 = (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)]) := by
  unfold input11791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)])).val
theorem output11791_def : output11791 = (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)]) := by
  unfold output11791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11791_skip : Flapjack.WordAlloc.isSkip output11791 = false := by
  rw [output11791_def]
  conv => lhs; cbv
  try rfl
theorem node11791_eq : Flapjack.WordAlloc.removeDeadStructural input11791 value5899 value1 value2 = (output11791, value5900, value1) := by
  rw [input11791_def, output11791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11791 input11790)).val
theorem input11792_def : input11792 = (.seq input11791 input11790) := by
  unfold input11792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11791 output11790)).val
theorem output11792_def : output11792 = (.seq output11791 output11790) := by
  unfold output11792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11792_skip : Flapjack.WordAlloc.isSkip output11792 = false := by
  rw [output11792_def]
  conv => lhs; cbv
  try rfl
theorem node11792_eq : Flapjack.WordAlloc.removeDeadStructural input11792 value5 value1 value2 = (output11792, value5900, value1) := by
  rw [input11792_def, output11792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11790_eq]
  dsimp only
  rw [node11791_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5901 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8644499054833844677#64))).val
theorem input11793_def : input11793 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8644499054833844677#64)) := by
  unfold input11793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8644499054833844677#64))).val
theorem output11793_def : output11793 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8644499054833844677#64)) := by
  unfold output11793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11793_skip : Flapjack.WordAlloc.isSkip output11793 = false := by
  rw [output11793_def]
  conv => lhs; cbv
  try rfl
theorem node11793_eq : Flapjack.WordAlloc.removeDeadStructural input11793 value5900 value1 value2 = (output11793, value5901, value1) := by
  rw [input11793_def, output11793_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 8644499054833844677#64))).val
theorem input11794_def : input11794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 8644499054833844677#64)) := by
  unfold input11794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11794_def : output11794 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11794_skip : Flapjack.WordAlloc.isSkip output11794 = true := by
  rw [output11794_def]
  conv => lhs; cbv
  try rfl
theorem node11794_eq : Flapjack.WordAlloc.removeDeadStructural input11794 value5901 value1 value2 = (output11794, value5901, value1) := by
  rw [input11794_def, output11794_def]
  try (conv => lhs; cbv)
  try rfl

def value5902 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1120#64))))).val
theorem input11795_def : input11795 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1120#64)))) := by
  unfold input11795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1120#64))))).val
theorem output11795_def : output11795 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1120#64)))) := by
  unfold output11795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11795_skip : Flapjack.WordAlloc.isSkip output11795 = false := by
  rw [output11795_def]
  conv => lhs; cbv
  try rfl
theorem node11795_eq : Flapjack.WordAlloc.removeDeadStructural input11795 value5901 value1 value2 = (output11795, value5902, value1) := by
  rw [input11795_def, output11795_def]
  try (conv => lhs; cbv)
  try rfl

def value5903 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551104#64)))).val
theorem input11796_def : input11796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551104#64))) := by
  unfold input11796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551104#64)))).val
theorem output11796_def : output11796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551104#64))) := by
  unfold output11796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11796_skip : Flapjack.WordAlloc.isSkip output11796 = false := by
  rw [output11796_def]
  conv => lhs; cbv
  try rfl
theorem node11796_eq : Flapjack.WordAlloc.removeDeadStructural input11796 value5902 value1 value2 = (output11796, value5903, value1) := by
  rw [input11796_def, output11796_def]
  try (conv => lhs; cbv)
  try rfl

def value5904 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613)).val
theorem input11797_def : input11797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613) := by
  unfold input11797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613)).val
theorem output11797_def : output11797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613) := by
  unfold output11797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11797_skip : Flapjack.WordAlloc.isSkip output11797 = false := by
  rw [output11797_def]
  conv => lhs; cbv
  try rfl
theorem node11797_eq : Flapjack.WordAlloc.removeDeadStructural input11797 value5903 value1 value2 = (output11797, value5904, value1) := by
  rw [input11797_def, output11797_def]
  try (conv => lhs; cbv)
  try rfl

def value5905 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11798_def : input11798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11798_def : output11798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11798_skip : Flapjack.WordAlloc.isSkip output11798 = false := by
  rw [output11798_def]
  conv => lhs; cbv
  try rfl
theorem node11798_eq : Flapjack.WordAlloc.removeDeadStructural input11798 value5904 value1 value2 = (output11798, value5905, value1) := by
  rw [input11798_def, output11798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength)).val
theorem input11799_def : input11799 = (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength) := by
  unfold input11799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength)).val
theorem output11799_def : output11799 = (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength) := by
  unfold output11799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11799_skip : Flapjack.WordAlloc.isSkip output11799 = false := by
  rw [output11799_def]
  conv => lhs; cbv
  try rfl
theorem node11799_eq : Flapjack.WordAlloc.removeDeadStructural input11799 value5905 value1 value2 = (output11799, value5, value1) := by
  rw [input11799_def, output11799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11799 input11798)).val
theorem input11800_def : input11800 = (.seq input11799 input11798) := by
  unfold input11800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11799 output11798)).val
theorem output11800_def : output11800 = (.seq output11799 output11798) := by
  unfold output11800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11800_skip : Flapjack.WordAlloc.isSkip output11800 = false := by
  rw [output11800_def]
  conv => lhs; cbv
  try rfl
theorem node11800_eq : Flapjack.WordAlloc.removeDeadStructural input11800 value5904 value1 value2 = (output11800, value5, value1) := by
  rw [input11800_def, output11800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11798_eq]
  dsimp only
  rw [node11799_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11800 input11797)).val
theorem input11801_def : input11801 = (.seq input11800 input11797) := by
  unfold input11801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11800 output11797)).val
theorem output11801_def : output11801 = (.seq output11800 output11797) := by
  unfold output11801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11801_skip : Flapjack.WordAlloc.isSkip output11801 = false := by
  rw [output11801_def]
  conv => lhs; cbv
  try rfl
theorem node11801_eq : Flapjack.WordAlloc.removeDeadStructural input11801 value5903 value1 value2 = (output11801, value5, value1) := by
  rw [input11801_def, output11801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11797_eq]
  dsimp only
  rw [node11800_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11801 input11796)).val
theorem input11802_def : input11802 = (.seq input11801 input11796) := by
  unfold input11802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11801 output11796)).val
theorem output11802_def : output11802 = (.seq output11801 output11796) := by
  unfold output11802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11802_skip : Flapjack.WordAlloc.isSkip output11802 = false := by
  rw [output11802_def]
  conv => lhs; cbv
  try rfl
theorem node11802_eq : Flapjack.WordAlloc.removeDeadStructural input11802 value5902 value1 value2 = (output11802, value5, value1) := by
  rw [input11802_def, output11802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11796_eq]
  dsimp only
  rw [node11801_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11802 input11795)).val
theorem input11803_def : input11803 = (.seq input11802 input11795) := by
  unfold input11803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11802 output11795)).val
theorem output11803_def : output11803 = (.seq output11802 output11795) := by
  unfold output11803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11803_skip : Flapjack.WordAlloc.isSkip output11803 = false := by
  rw [output11803_def]
  conv => lhs; cbv
  try rfl
theorem node11803_eq : Flapjack.WordAlloc.removeDeadStructural input11803 value5901 value1 value2 = (output11803, value5, value1) := by
  rw [input11803_def, output11803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11795_eq]
  dsimp only
  rw [node11802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5906 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64)))).val
theorem input11804_def : input11804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64))) := by
  unfold input11804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64)))).val
theorem output11804_def : output11804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64))) := by
  unfold output11804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11804_skip : Flapjack.WordAlloc.isSkip output11804 = false := by
  rw [output11804_def]
  conv => lhs; cbv
  try rfl
theorem node11804_eq : Flapjack.WordAlloc.removeDeadStructural input11804 value5 value1 value2 = (output11804, value5906, value1) := by
  rw [input11804_def, output11804_def]
  try (conv => lhs; cbv)
  try rfl

def value5907 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)])).val
theorem input11805_def : input11805 = (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)]) := by
  unfold input11805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)])).val
theorem output11805_def : output11805 = (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)]) := by
  unfold output11805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11805_skip : Flapjack.WordAlloc.isSkip output11805 = false := by
  rw [output11805_def]
  conv => lhs; cbv
  try rfl
theorem node11805_eq : Flapjack.WordAlloc.removeDeadStructural input11805 value5906 value1 value2 = (output11805, value5907, value1) := by
  rw [input11805_def, output11805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11805 input11804)).val
theorem input11806_def : input11806 = (.seq input11805 input11804) := by
  unfold input11806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11805 output11804)).val
theorem output11806_def : output11806 = (.seq output11805 output11804) := by
  unfold output11806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11806_skip : Flapjack.WordAlloc.isSkip output11806 = false := by
  rw [output11806_def]
  conv => lhs; cbv
  try rfl
theorem node11806_eq : Flapjack.WordAlloc.removeDeadStructural input11806 value5 value1 value2 = (output11806, value5907, value1) := by
  rw [input11806_def, output11806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11804_eq]
  dsimp only
  rw [node11805_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5908 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 17178867732698629620#64))).val
theorem input11807_def : input11807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 17178867732698629620#64)) := by
  unfold input11807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 17178867732698629620#64))).val
theorem output11807_def : output11807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 17178867732698629620#64)) := by
  unfold output11807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11807_skip : Flapjack.WordAlloc.isSkip output11807 = false := by
  rw [output11807_def]
  conv => lhs; cbv
  try rfl
theorem node11807_eq : Flapjack.WordAlloc.removeDeadStructural input11807 value5907 value1 value2 = (output11807, value5908, value1) := by
  rw [input11807_def, output11807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4597 17178867732698629620#64))).val
theorem input11808_def : input11808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4597 17178867732698629620#64)) := by
  unfold input11808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11808_def : output11808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11808_skip : Flapjack.WordAlloc.isSkip output11808 = true := by
  rw [output11808_def]
  conv => lhs; cbv
  try rfl
theorem node11808_eq : Flapjack.WordAlloc.removeDeadStructural input11808 value5908 value1 value2 = (output11808, value5908, value1) := by
  rw [input11808_def, output11808_def]
  try (conv => lhs; cbv)
  try rfl

def value5909 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1112#64))))).val
theorem input11809_def : input11809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1112#64)))) := by
  unfold input11809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1112#64))))).val
theorem output11809_def : output11809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1112#64)))) := by
  unfold output11809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11809_skip : Flapjack.WordAlloc.isSkip output11809 = false := by
  rw [output11809_def]
  conv => lhs; cbv
  try rfl
theorem node11809_eq : Flapjack.WordAlloc.removeDeadStructural input11809 value5908 value1 value2 = (output11809, value5909, value1) := by
  rw [input11809_def, output11809_def]
  try (conv => lhs; cbv)
  try rfl

def value5910 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551104#64)))).val
theorem input11810_def : input11810 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551104#64))) := by
  unfold input11810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551104#64)))).val
theorem output11810_def : output11810 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551104#64))) := by
  unfold output11810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11810_skip : Flapjack.WordAlloc.isSkip output11810 = false := by
  rw [output11810_def]
  conv => lhs; cbv
  try rfl
theorem node11810_eq : Flapjack.WordAlloc.removeDeadStructural input11810 value5909 value1 value2 = (output11810, value5910, value1) := by
  rw [input11810_def, output11810_def]
  try (conv => lhs; cbv)
  try rfl

def value5911 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581)).val
theorem input11811_def : input11811 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581) := by
  unfold input11811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581)).val
theorem output11811_def : output11811 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581) := by
  unfold output11811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11811_skip : Flapjack.WordAlloc.isSkip output11811 = false := by
  rw [output11811_def]
  conv => lhs; cbv
  try rfl
theorem node11811_eq : Flapjack.WordAlloc.removeDeadStructural input11811 value5910 value1 value2 = (output11811, value5911, value1) := by
  rw [input11811_def, output11811_def]
  try (conv => lhs; cbv)
  try rfl

def value5912 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11812_def : input11812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11812_def : output11812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11812_skip : Flapjack.WordAlloc.isSkip output11812 = false := by
  rw [output11812_def]
  conv => lhs; cbv
  try rfl
theorem node11812_eq : Flapjack.WordAlloc.removeDeadStructural input11812 value5911 value1 value2 = (output11812, value5912, value1) := by
  rw [input11812_def, output11812_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength)).val
theorem input11813_def : input11813 = (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength) := by
  unfold input11813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength)).val
theorem output11813_def : output11813 = (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength) := by
  unfold output11813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11813_skip : Flapjack.WordAlloc.isSkip output11813 = false := by
  rw [output11813_def]
  conv => lhs; cbv
  try rfl
theorem node11813_eq : Flapjack.WordAlloc.removeDeadStructural input11813 value5912 value1 value2 = (output11813, value5, value1) := by
  rw [input11813_def, output11813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11813 input11812)).val
theorem input11814_def : input11814 = (.seq input11813 input11812) := by
  unfold input11814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11813 output11812)).val
theorem output11814_def : output11814 = (.seq output11813 output11812) := by
  unfold output11814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11814_skip : Flapjack.WordAlloc.isSkip output11814 = false := by
  rw [output11814_def]
  conv => lhs; cbv
  try rfl
theorem node11814_eq : Flapjack.WordAlloc.removeDeadStructural input11814 value5911 value1 value2 = (output11814, value5, value1) := by
  rw [input11814_def, output11814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11812_eq]
  dsimp only
  rw [node11813_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11814 input11811)).val
theorem input11815_def : input11815 = (.seq input11814 input11811) := by
  unfold input11815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11814 output11811)).val
theorem output11815_def : output11815 = (.seq output11814 output11811) := by
  unfold output11815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11815_skip : Flapjack.WordAlloc.isSkip output11815 = false := by
  rw [output11815_def]
  conv => lhs; cbv
  try rfl
theorem node11815_eq : Flapjack.WordAlloc.removeDeadStructural input11815 value5910 value1 value2 = (output11815, value5, value1) := by
  rw [input11815_def, output11815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11811_eq]
  dsimp only
  rw [node11814_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11815 input11810)).val
theorem input11816_def : input11816 = (.seq input11815 input11810) := by
  unfold input11816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11815 output11810)).val
theorem output11816_def : output11816 = (.seq output11815 output11810) := by
  unfold output11816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11816_skip : Flapjack.WordAlloc.isSkip output11816 = false := by
  rw [output11816_def]
  conv => lhs; cbv
  try rfl
theorem node11816_eq : Flapjack.WordAlloc.removeDeadStructural input11816 value5909 value1 value2 = (output11816, value5, value1) := by
  rw [input11816_def, output11816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11810_eq]
  dsimp only
  rw [node11815_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11816 input11809)).val
theorem input11817_def : input11817 = (.seq input11816 input11809) := by
  unfold input11817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11816 output11809)).val
theorem output11817_def : output11817 = (.seq output11816 output11809) := by
  unfold output11817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11817_skip : Flapjack.WordAlloc.isSkip output11817 = false := by
  rw [output11817_def]
  conv => lhs; cbv
  try rfl
theorem node11817_eq : Flapjack.WordAlloc.removeDeadStructural input11817 value5908 value1 value2 = (output11817, value5, value1) := by
  rw [input11817_def, output11817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11809_eq]
  dsimp only
  rw [node11816_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5913 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64)))).val
theorem input11818_def : input11818 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64))) := by
  unfold input11818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64)))).val
theorem output11818_def : output11818 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64))) := by
  unfold output11818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11818_skip : Flapjack.WordAlloc.isSkip output11818 = false := by
  rw [output11818_def]
  conv => lhs; cbv
  try rfl
theorem node11818_eq : Flapjack.WordAlloc.removeDeadStructural input11818 value5 value1 value2 = (output11818, value5913, value1) := by
  rw [input11818_def, output11818_def]
  try (conv => lhs; cbv)
  try rfl

def value5914 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)])).val
theorem input11819_def : input11819 = (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)]) := by
  unfold input11819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)])).val
theorem output11819_def : output11819 = (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)]) := by
  unfold output11819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11819_skip : Flapjack.WordAlloc.isSkip output11819 = false := by
  rw [output11819_def]
  conv => lhs; cbv
  try rfl
theorem node11819_eq : Flapjack.WordAlloc.removeDeadStructural input11819 value5913 value1 value2 = (output11819, value5914, value1) := by
  rw [input11819_def, output11819_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11819 input11818)).val
theorem input11820_def : input11820 = (.seq input11819 input11818) := by
  unfold input11820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11819 output11818)).val
theorem output11820_def : output11820 = (.seq output11819 output11818) := by
  unfold output11820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11820_skip : Flapjack.WordAlloc.isSkip output11820 = false := by
  rw [output11820_def]
  conv => lhs; cbv
  try rfl
theorem node11820_eq : Flapjack.WordAlloc.removeDeadStructural input11820 value5 value1 value2 = (output11820, value5914, value1) := by
  rw [input11820_def, output11820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11818_eq]
  dsimp only
  rw [node11819_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5915 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 14416168624775744521#64))).val
theorem input11821_def : input11821 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 14416168624775744521#64)) := by
  unfold input11821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 14416168624775744521#64))).val
theorem output11821_def : output11821 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 14416168624775744521#64)) := by
  unfold output11821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11821_skip : Flapjack.WordAlloc.isSkip output11821 = false := by
  rw [output11821_def]
  conv => lhs; cbv
  try rfl
theorem node11821_eq : Flapjack.WordAlloc.removeDeadStructural input11821 value5914 value1 value2 = (output11821, value5915, value1) := by
  rw [input11821_def, output11821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4565 14416168624775744521#64))).val
theorem input11822_def : input11822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4565 14416168624775744521#64)) := by
  unfold input11822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11822_def : output11822 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11822_skip : Flapjack.WordAlloc.isSkip output11822 = true := by
  rw [output11822_def]
  conv => lhs; cbv
  try rfl
theorem node11822_eq : Flapjack.WordAlloc.removeDeadStructural input11822 value5915 value1 value2 = (output11822, value5915, value1) := by
  rw [input11822_def, output11822_def]
  try (conv => lhs; cbv)
  try rfl

def value5916 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1104#64))))).val
theorem input11823_def : input11823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1104#64)))) := by
  unfold input11823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1104#64))))).val
theorem output11823_def : output11823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1104#64)))) := by
  unfold output11823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11823_skip : Flapjack.WordAlloc.isSkip output11823 = false := by
  rw [output11823_def]
  conv => lhs; cbv
  try rfl
theorem node11823_eq : Flapjack.WordAlloc.removeDeadStructural input11823 value5915 value1 value2 = (output11823, value5916, value1) := by
  rw [input11823_def, output11823_def]
  try (conv => lhs; cbv)
  try rfl

def value5917 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551104#64)))).val
theorem input11824_def : input11824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551104#64))) := by
  unfold input11824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551104#64)))).val
theorem output11824_def : output11824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551104#64))) := by
  unfold output11824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11824_skip : Flapjack.WordAlloc.isSkip output11824 = false := by
  rw [output11824_def]
  conv => lhs; cbv
  try rfl
theorem node11824_eq : Flapjack.WordAlloc.removeDeadStructural input11824 value5916 value1 value2 = (output11824, value5917, value1) := by
  rw [input11824_def, output11824_def]
  try (conv => lhs; cbv)
  try rfl

def value5918 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549)).val
theorem input11825_def : input11825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549) := by
  unfold input11825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549)).val
theorem output11825_def : output11825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549) := by
  unfold output11825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11825_skip : Flapjack.WordAlloc.isSkip output11825 = false := by
  rw [output11825_def]
  conv => lhs; cbv
  try rfl
theorem node11825_eq : Flapjack.WordAlloc.removeDeadStructural input11825 value5917 value1 value2 = (output11825, value5918, value1) := by
  rw [input11825_def, output11825_def]
  try (conv => lhs; cbv)
  try rfl

def value5919 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11826_def : input11826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11826_def : output11826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11826_skip : Flapjack.WordAlloc.isSkip output11826 = false := by
  rw [output11826_def]
  conv => lhs; cbv
  try rfl
theorem node11826_eq : Flapjack.WordAlloc.removeDeadStructural input11826 value5918 value1 value2 = (output11826, value5919, value1) := by
  rw [input11826_def, output11826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength)).val
theorem input11827_def : input11827 = (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength) := by
  unfold input11827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength)).val
theorem output11827_def : output11827 = (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength) := by
  unfold output11827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11827_skip : Flapjack.WordAlloc.isSkip output11827 = false := by
  rw [output11827_def]
  conv => lhs; cbv
  try rfl
theorem node11827_eq : Flapjack.WordAlloc.removeDeadStructural input11827 value5919 value1 value2 = (output11827, value5, value1) := by
  rw [input11827_def, output11827_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11827 input11826)).val
theorem input11828_def : input11828 = (.seq input11827 input11826) := by
  unfold input11828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11827 output11826)).val
theorem output11828_def : output11828 = (.seq output11827 output11826) := by
  unfold output11828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11828_skip : Flapjack.WordAlloc.isSkip output11828 = false := by
  rw [output11828_def]
  conv => lhs; cbv
  try rfl
theorem node11828_eq : Flapjack.WordAlloc.removeDeadStructural input11828 value5918 value1 value2 = (output11828, value5, value1) := by
  rw [input11828_def, output11828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11826_eq]
  dsimp only
  rw [node11827_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11828 input11825)).val
theorem input11829_def : input11829 = (.seq input11828 input11825) := by
  unfold input11829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11828 output11825)).val
theorem output11829_def : output11829 = (.seq output11828 output11825) := by
  unfold output11829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11829_skip : Flapjack.WordAlloc.isSkip output11829 = false := by
  rw [output11829_def]
  conv => lhs; cbv
  try rfl
theorem node11829_eq : Flapjack.WordAlloc.removeDeadStructural input11829 value5917 value1 value2 = (output11829, value5, value1) := by
  rw [input11829_def, output11829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11825_eq]
  dsimp only
  rw [node11828_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11829 input11824)).val
theorem input11830_def : input11830 = (.seq input11829 input11824) := by
  unfold input11830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11829 output11824)).val
theorem output11830_def : output11830 = (.seq output11829 output11824) := by
  unfold output11830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11830_skip : Flapjack.WordAlloc.isSkip output11830 = false := by
  rw [output11830_def]
  conv => lhs; cbv
  try rfl
theorem node11830_eq : Flapjack.WordAlloc.removeDeadStructural input11830 value5916 value1 value2 = (output11830, value5, value1) := by
  rw [input11830_def, output11830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11824_eq]
  dsimp only
  rw [node11829_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11830 input11823)).val
theorem input11831_def : input11831 = (.seq input11830 input11823) := by
  unfold input11831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11830 output11823)).val
theorem output11831_def : output11831 = (.seq output11830 output11823) := by
  unfold output11831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11831_skip : Flapjack.WordAlloc.isSkip output11831 = false := by
  rw [output11831_def]
  conv => lhs; cbv
  try rfl
theorem node11831_eq : Flapjack.WordAlloc.removeDeadStructural input11831 value5915 value1 value2 = (output11831, value5, value1) := by
  rw [input11831_def, output11831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11823_eq]
  dsimp only
  rw [node11830_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5920 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64)))).val
theorem input11832_def : input11832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64))) := by
  unfold input11832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64)))).val
theorem output11832_def : output11832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64))) := by
  unfold output11832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11832_skip : Flapjack.WordAlloc.isSkip output11832 = false := by
  rw [output11832_def]
  conv => lhs; cbv
  try rfl
theorem node11832_eq : Flapjack.WordAlloc.removeDeadStructural input11832 value5 value1 value2 = (output11832, value5920, value1) := by
  rw [input11832_def, output11832_def]
  try (conv => lhs; cbv)
  try rfl

def value5921 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)])).val
theorem input11833_def : input11833 = (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)]) := by
  unfold input11833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)])).val
theorem output11833_def : output11833 = (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)]) := by
  unfold output11833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11833_skip : Flapjack.WordAlloc.isSkip output11833 = false := by
  rw [output11833_def]
  conv => lhs; cbv
  try rfl
theorem node11833_eq : Flapjack.WordAlloc.removeDeadStructural input11833 value5920 value1 value2 = (output11833, value5921, value1) := by
  rw [input11833_def, output11833_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11833 input11832)).val
theorem input11834_def : input11834 = (.seq input11833 input11832) := by
  unfold input11834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11833 output11832)).val
theorem output11834_def : output11834 = (.seq output11833 output11832) := by
  unfold output11834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11834_skip : Flapjack.WordAlloc.isSkip output11834 = false := by
  rw [output11834_def]
  conv => lhs; cbv
  try rfl
theorem node11834_eq : Flapjack.WordAlloc.removeDeadStructural input11834 value5 value1 value2 = (output11834, value5921, value1) := by
  rw [input11834_def, output11834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11832_eq]
  dsimp only
  rw [node11833_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5922 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 481619096434065419#64))).val
theorem input11835_def : input11835 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 481619096434065419#64)) := by
  unfold input11835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 481619096434065419#64))).val
theorem output11835_def : output11835 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 481619096434065419#64)) := by
  unfold output11835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11835_skip : Flapjack.WordAlloc.isSkip output11835 = false := by
  rw [output11835_def]
  conv => lhs; cbv
  try rfl
theorem node11835_eq : Flapjack.WordAlloc.removeDeadStructural input11835 value5921 value1 value2 = (output11835, value5922, value1) := by
  rw [input11835_def, output11835_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4533 481619096434065419#64))).val
theorem input11836_def : input11836 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4533 481619096434065419#64)) := by
  unfold input11836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11836_def : output11836 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11836_skip : Flapjack.WordAlloc.isSkip output11836 = true := by
  rw [output11836_def]
  conv => lhs; cbv
  try rfl
theorem node11836_eq : Flapjack.WordAlloc.removeDeadStructural input11836 value5922 value1 value2 = (output11836, value5922, value1) := by
  rw [input11836_def, output11836_def]
  try (conv => lhs; cbv)
  try rfl

def value5923 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1096#64))))).val
theorem input11837_def : input11837 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1096#64)))) := by
  unfold input11837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1096#64))))).val
theorem output11837_def : output11837 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1096#64)))) := by
  unfold output11837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11837_skip : Flapjack.WordAlloc.isSkip output11837 = false := by
  rw [output11837_def]
  conv => lhs; cbv
  try rfl
theorem node11837_eq : Flapjack.WordAlloc.removeDeadStructural input11837 value5922 value1 value2 = (output11837, value5923, value1) := by
  rw [input11837_def, output11837_def]
  try (conv => lhs; cbv)
  try rfl

def value5924 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551104#64)))).val
theorem input11838_def : input11838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551104#64))) := by
  unfold input11838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551104#64)))).val
theorem output11838_def : output11838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551104#64))) := by
  unfold output11838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11838_skip : Flapjack.WordAlloc.isSkip output11838 = false := by
  rw [output11838_def]
  conv => lhs; cbv
  try rfl
theorem node11838_eq : Flapjack.WordAlloc.removeDeadStructural input11838 value5923 value1 value2 = (output11838, value5924, value1) := by
  rw [input11838_def, output11838_def]
  try (conv => lhs; cbv)
  try rfl

def value5925 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517)).val
theorem input11839_def : input11839 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517) := by
  unfold input11839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517)).val
theorem output11839_def : output11839 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517) := by
  unfold output11839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11839_skip : Flapjack.WordAlloc.isSkip output11839 = false := by
  rw [output11839_def]
  conv => lhs; cbv
  try rfl
theorem node11839_eq : Flapjack.WordAlloc.removeDeadStructural input11839 value5924 value1 value2 = (output11839, value5925, value1) := by
  rw [input11839_def, output11839_def]
  try (conv => lhs; cbv)
  try rfl

def value5926 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11840_def : input11840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11840_def : output11840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11840_skip : Flapjack.WordAlloc.isSkip output11840 = false := by
  rw [output11840_def]
  conv => lhs; cbv
  try rfl
theorem node11840_eq : Flapjack.WordAlloc.removeDeadStructural input11840 value5925 value1 value2 = (output11840, value5926, value1) := by
  rw [input11840_def, output11840_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength)).val
theorem input11841_def : input11841 = (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength) := by
  unfold input11841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength)).val
theorem output11841_def : output11841 = (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength) := by
  unfold output11841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11841_skip : Flapjack.WordAlloc.isSkip output11841 = false := by
  rw [output11841_def]
  conv => lhs; cbv
  try rfl
theorem node11841_eq : Flapjack.WordAlloc.removeDeadStructural input11841 value5926 value1 value2 = (output11841, value5, value1) := by
  rw [input11841_def, output11841_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11841 input11840)).val
theorem input11842_def : input11842 = (.seq input11841 input11840) := by
  unfold input11842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11841 output11840)).val
theorem output11842_def : output11842 = (.seq output11841 output11840) := by
  unfold output11842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11842_skip : Flapjack.WordAlloc.isSkip output11842 = false := by
  rw [output11842_def]
  conv => lhs; cbv
  try rfl
theorem node11842_eq : Flapjack.WordAlloc.removeDeadStructural input11842 value5925 value1 value2 = (output11842, value5, value1) := by
  rw [input11842_def, output11842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11840_eq]
  dsimp only
  rw [node11841_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11842 input11839)).val
theorem input11843_def : input11843 = (.seq input11842 input11839) := by
  unfold input11843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11842 output11839)).val
theorem output11843_def : output11843 = (.seq output11842 output11839) := by
  unfold output11843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11843_skip : Flapjack.WordAlloc.isSkip output11843 = false := by
  rw [output11843_def]
  conv => lhs; cbv
  try rfl
theorem node11843_eq : Flapjack.WordAlloc.removeDeadStructural input11843 value5924 value1 value2 = (output11843, value5, value1) := by
  rw [input11843_def, output11843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11839_eq]
  dsimp only
  rw [node11842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11843 input11838)).val
theorem input11844_def : input11844 = (.seq input11843 input11838) := by
  unfold input11844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11843 output11838)).val
theorem output11844_def : output11844 = (.seq output11843 output11838) := by
  unfold output11844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11844_skip : Flapjack.WordAlloc.isSkip output11844 = false := by
  rw [output11844_def]
  conv => lhs; cbv
  try rfl
theorem node11844_eq : Flapjack.WordAlloc.removeDeadStructural input11844 value5923 value1 value2 = (output11844, value5, value1) := by
  rw [input11844_def, output11844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11838_eq]
  dsimp only
  rw [node11843_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11844 input11837)).val
theorem input11845_def : input11845 = (.seq input11844 input11837) := by
  unfold input11845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11844 output11837)).val
theorem output11845_def : output11845 = (.seq output11844 output11837) := by
  unfold output11845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11845_skip : Flapjack.WordAlloc.isSkip output11845 = false := by
  rw [output11845_def]
  conv => lhs; cbv
  try rfl
theorem node11845_eq : Flapjack.WordAlloc.removeDeadStructural input11845 value5922 value1 value2 = (output11845, value5, value1) := by
  rw [input11845_def, output11845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11837_eq]
  dsimp only
  rw [node11844_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5927 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64)))).val
theorem input11846_def : input11846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64))) := by
  unfold input11846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64)))).val
theorem output11846_def : output11846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64))) := by
  unfold output11846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11846_skip : Flapjack.WordAlloc.isSkip output11846 = false := by
  rw [output11846_def]
  conv => lhs; cbv
  try rfl
theorem node11846_eq : Flapjack.WordAlloc.removeDeadStructural input11846 value5 value1 value2 = (output11846, value5927, value1) := by
  rw [input11846_def, output11846_def]
  try (conv => lhs; cbv)
  try rfl

def value5928 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)])).val
theorem input11847_def : input11847 = (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)]) := by
  unfold input11847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)])).val
theorem output11847_def : output11847 = (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)]) := by
  unfold output11847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11847_skip : Flapjack.WordAlloc.isSkip output11847 = false := by
  rw [output11847_def]
  conv => lhs; cbv
  try rfl
theorem node11847_eq : Flapjack.WordAlloc.removeDeadStructural input11847 value5927 value1 value2 = (output11847, value5928, value1) := by
  rw [input11847_def, output11847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11847 input11846)).val
theorem input11848_def : input11848 = (.seq input11847 input11846) := by
  unfold input11848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11847 output11846)).val
theorem output11848_def : output11848 = (.seq output11847 output11846) := by
  unfold output11848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11848_skip : Flapjack.WordAlloc.isSkip output11848 = false := by
  rw [output11848_def]
  conv => lhs; cbv
  try rfl
theorem node11848_eq : Flapjack.WordAlloc.removeDeadStructural input11848 value5 value1 value2 = (output11848, value5928, value1) := by
  rw [input11848_def, output11848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11846_eq]
  dsimp only
  rw [node11847_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5929 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 7508032112903159806#64))).val
theorem input11849_def : input11849 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 7508032112903159806#64)) := by
  unfold input11849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 7508032112903159806#64))).val
theorem output11849_def : output11849 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 7508032112903159806#64)) := by
  unfold output11849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11849_skip : Flapjack.WordAlloc.isSkip output11849 = false := by
  rw [output11849_def]
  conv => lhs; cbv
  try rfl
theorem node11849_eq : Flapjack.WordAlloc.removeDeadStructural input11849 value5928 value1 value2 = (output11849, value5929, value1) := by
  rw [input11849_def, output11849_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4501 7508032112903159806#64))).val
theorem input11850_def : input11850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4501 7508032112903159806#64)) := by
  unfold input11850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11850_def : output11850 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11850_skip : Flapjack.WordAlloc.isSkip output11850 = true := by
  rw [output11850_def]
  conv => lhs; cbv
  try rfl
theorem node11850_eq : Flapjack.WordAlloc.removeDeadStructural input11850 value5929 value1 value2 = (output11850, value5929, value1) := by
  rw [input11850_def, output11850_def]
  try (conv => lhs; cbv)
  try rfl

def value5930 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1088#64))))).val
theorem input11851_def : input11851 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1088#64)))) := by
  unfold input11851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1088#64))))).val
theorem output11851_def : output11851 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1088#64)))) := by
  unfold output11851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11851_skip : Flapjack.WordAlloc.isSkip output11851 = false := by
  rw [output11851_def]
  conv => lhs; cbv
  try rfl
theorem node11851_eq : Flapjack.WordAlloc.removeDeadStructural input11851 value5929 value1 value2 = (output11851, value5930, value1) := by
  rw [input11851_def, output11851_def]
  try (conv => lhs; cbv)
  try rfl

def value5931 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551104#64)))).val
theorem input11852_def : input11852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551104#64))) := by
  unfold input11852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551104#64)))).val
theorem output11852_def : output11852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551104#64))) := by
  unfold output11852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11852_skip : Flapjack.WordAlloc.isSkip output11852 = false := by
  rw [output11852_def]
  conv => lhs; cbv
  try rfl
theorem node11852_eq : Flapjack.WordAlloc.removeDeadStructural input11852 value5930 value1 value2 = (output11852, value5931, value1) := by
  rw [input11852_def, output11852_def]
  try (conv => lhs; cbv)
  try rfl

def value5932 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485)).val
theorem input11853_def : input11853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485) := by
  unfold input11853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485)).val
theorem output11853_def : output11853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485) := by
  unfold output11853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11853_skip : Flapjack.WordAlloc.isSkip output11853 = false := by
  rw [output11853_def]
  conv => lhs; cbv
  try rfl
theorem node11853_eq : Flapjack.WordAlloc.removeDeadStructural input11853 value5931 value1 value2 = (output11853, value5932, value1) := by
  rw [input11853_def, output11853_def]
  try (conv => lhs; cbv)
  try rfl

def value5933 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11854_def : input11854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11854_def : output11854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11854_skip : Flapjack.WordAlloc.isSkip output11854 = false := by
  rw [output11854_def]
  conv => lhs; cbv
  try rfl
theorem node11854_eq : Flapjack.WordAlloc.removeDeadStructural input11854 value5932 value1 value2 = (output11854, value5933, value1) := by
  rw [input11854_def, output11854_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength)).val
theorem input11855_def : input11855 = (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength) := by
  unfold input11855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength)).val
theorem output11855_def : output11855 = (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength) := by
  unfold output11855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11855_skip : Flapjack.WordAlloc.isSkip output11855 = false := by
  rw [output11855_def]
  conv => lhs; cbv
  try rfl
theorem node11855_eq : Flapjack.WordAlloc.removeDeadStructural input11855 value5933 value1 value2 = (output11855, value5, value1) := by
  rw [input11855_def, output11855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11855 input11854)).val
theorem input11856_def : input11856 = (.seq input11855 input11854) := by
  unfold input11856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11855 output11854)).val
theorem output11856_def : output11856 = (.seq output11855 output11854) := by
  unfold output11856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11856_skip : Flapjack.WordAlloc.isSkip output11856 = false := by
  rw [output11856_def]
  conv => lhs; cbv
  try rfl
theorem node11856_eq : Flapjack.WordAlloc.removeDeadStructural input11856 value5932 value1 value2 = (output11856, value5, value1) := by
  rw [input11856_def, output11856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11854_eq]
  dsimp only
  rw [node11855_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11856 input11853)).val
theorem input11857_def : input11857 = (.seq input11856 input11853) := by
  unfold input11857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11856 output11853)).val
theorem output11857_def : output11857 = (.seq output11856 output11853) := by
  unfold output11857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11857_skip : Flapjack.WordAlloc.isSkip output11857 = false := by
  rw [output11857_def]
  conv => lhs; cbv
  try rfl
theorem node11857_eq : Flapjack.WordAlloc.removeDeadStructural input11857 value5931 value1 value2 = (output11857, value5, value1) := by
  rw [input11857_def, output11857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11853_eq]
  dsimp only
  rw [node11856_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11857 input11852)).val
theorem input11858_def : input11858 = (.seq input11857 input11852) := by
  unfold input11858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11857 output11852)).val
theorem output11858_def : output11858 = (.seq output11857 output11852) := by
  unfold output11858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11858_skip : Flapjack.WordAlloc.isSkip output11858 = false := by
  rw [output11858_def]
  conv => lhs; cbv
  try rfl
theorem node11858_eq : Flapjack.WordAlloc.removeDeadStructural input11858 value5930 value1 value2 = (output11858, value5, value1) := by
  rw [input11858_def, output11858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11852_eq]
  dsimp only
  rw [node11857_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11858 input11851)).val
theorem input11859_def : input11859 = (.seq input11858 input11851) := by
  unfold input11859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11858 output11851)).val
theorem output11859_def : output11859 = (.seq output11858 output11851) := by
  unfold output11859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11859_skip : Flapjack.WordAlloc.isSkip output11859 = false := by
  rw [output11859_def]
  conv => lhs; cbv
  try rfl
theorem node11859_eq : Flapjack.WordAlloc.removeDeadStructural input11859 value5929 value1 value2 = (output11859, value5, value1) := by
  rw [input11859_def, output11859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11851_eq]
  dsimp only
  rw [node11858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5934 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64)))).val
theorem input11860_def : input11860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64))) := by
  unfold input11860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64)))).val
theorem output11860_def : output11860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64))) := by
  unfold output11860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11860_skip : Flapjack.WordAlloc.isSkip output11860 = false := by
  rw [output11860_def]
  conv => lhs; cbv
  try rfl
theorem node11860_eq : Flapjack.WordAlloc.removeDeadStructural input11860 value5 value1 value2 = (output11860, value5934, value1) := by
  rw [input11860_def, output11860_def]
  try (conv => lhs; cbv)
  try rfl

def value5935 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)])).val
theorem input11861_def : input11861 = (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)]) := by
  unfold input11861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)])).val
theorem output11861_def : output11861 = (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)]) := by
  unfold output11861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11861_skip : Flapjack.WordAlloc.isSkip output11861 = false := by
  rw [output11861_def]
  conv => lhs; cbv
  try rfl
theorem node11861_eq : Flapjack.WordAlloc.removeDeadStructural input11861 value5934 value1 value2 = (output11861, value5935, value1) := by
  rw [input11861_def, output11861_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11861 input11860)).val
theorem input11862_def : input11862 = (.seq input11861 input11860) := by
  unfold input11862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11861 output11860)).val
theorem output11862_def : output11862 = (.seq output11861 output11860) := by
  unfold output11862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11862_skip : Flapjack.WordAlloc.isSkip output11862 = false := by
  rw [output11862_def]
  conv => lhs; cbv
  try rfl
theorem node11862_eq : Flapjack.WordAlloc.removeDeadStructural input11862 value5 value1 value2 = (output11862, value5935, value1) := by
  rw [input11862_def, output11862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11860_eq]
  dsimp only
  rw [node11861_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5936 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 5204293836692734814#64))).val
theorem input11863_def : input11863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 5204293836692734814#64)) := by
  unfold input11863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 5204293836692734814#64))).val
theorem output11863_def : output11863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 5204293836692734814#64)) := by
  unfold output11863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11863_skip : Flapjack.WordAlloc.isSkip output11863 = false := by
  rw [output11863_def]
  conv => lhs; cbv
  try rfl
theorem node11863_eq : Flapjack.WordAlloc.removeDeadStructural input11863 value5935 value1 value2 = (output11863, value5936, value1) := by
  rw [input11863_def, output11863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4469 5204293836692734814#64))).val
theorem input11864_def : input11864 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4469 5204293836692734814#64)) := by
  unfold input11864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11864_def : output11864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11864_skip : Flapjack.WordAlloc.isSkip output11864 = true := by
  rw [output11864_def]
  conv => lhs; cbv
  try rfl
theorem node11864_eq : Flapjack.WordAlloc.removeDeadStructural input11864 value5936 value1 value2 = (output11864, value5936, value1) := by
  rw [input11864_def, output11864_def]
  try (conv => lhs; cbv)
  try rfl

def value5937 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1080#64))))).val
theorem input11865_def : input11865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1080#64)))) := by
  unfold input11865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1080#64))))).val
theorem output11865_def : output11865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1080#64)))) := by
  unfold output11865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11865_skip : Flapjack.WordAlloc.isSkip output11865 = false := by
  rw [output11865_def]
  conv => lhs; cbv
  try rfl
theorem node11865_eq : Flapjack.WordAlloc.removeDeadStructural input11865 value5936 value1 value2 = (output11865, value5937, value1) := by
  rw [input11865_def, output11865_def]
  try (conv => lhs; cbv)
  try rfl

def value5938 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551104#64)))).val
theorem input11866_def : input11866 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551104#64))) := by
  unfold input11866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551104#64)))).val
theorem output11866_def : output11866 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551104#64))) := by
  unfold output11866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11866_skip : Flapjack.WordAlloc.isSkip output11866 = false := by
  rw [output11866_def]
  conv => lhs; cbv
  try rfl
theorem node11866_eq : Flapjack.WordAlloc.removeDeadStructural input11866 value5937 value1 value2 = (output11866, value5938, value1) := by
  rw [input11866_def, output11866_def]
  try (conv => lhs; cbv)
  try rfl

def value5939 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453)).val
theorem input11867_def : input11867 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453) := by
  unfold input11867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453)).val
theorem output11867_def : output11867 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453) := by
  unfold output11867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11867_skip : Flapjack.WordAlloc.isSkip output11867 = false := by
  rw [output11867_def]
  conv => lhs; cbv
  try rfl
theorem node11867_eq : Flapjack.WordAlloc.removeDeadStructural input11867 value5938 value1 value2 = (output11867, value5939, value1) := by
  rw [input11867_def, output11867_def]
  try (conv => lhs; cbv)
  try rfl

def value5940 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11868_def : input11868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11868_def : output11868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11868_skip : Flapjack.WordAlloc.isSkip output11868 = false := by
  rw [output11868_def]
  conv => lhs; cbv
  try rfl
theorem node11868_eq : Flapjack.WordAlloc.removeDeadStructural input11868 value5939 value1 value2 = (output11868, value5940, value1) := by
  rw [input11868_def, output11868_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength)).val
theorem input11869_def : input11869 = (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength) := by
  unfold input11869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength)).val
theorem output11869_def : output11869 = (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength) := by
  unfold output11869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11869_skip : Flapjack.WordAlloc.isSkip output11869 = false := by
  rw [output11869_def]
  conv => lhs; cbv
  try rfl
theorem node11869_eq : Flapjack.WordAlloc.removeDeadStructural input11869 value5940 value1 value2 = (output11869, value5, value1) := by
  rw [input11869_def, output11869_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11869 input11868)).val
theorem input11870_def : input11870 = (.seq input11869 input11868) := by
  unfold input11870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11869 output11868)).val
theorem output11870_def : output11870 = (.seq output11869 output11868) := by
  unfold output11870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11870_skip : Flapjack.WordAlloc.isSkip output11870 = false := by
  rw [output11870_def]
  conv => lhs; cbv
  try rfl
theorem node11870_eq : Flapjack.WordAlloc.removeDeadStructural input11870 value5939 value1 value2 = (output11870, value5, value1) := by
  rw [input11870_def, output11870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11868_eq]
  dsimp only
  rw [node11869_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11870 input11867)).val
theorem input11871_def : input11871 = (.seq input11870 input11867) := by
  unfold input11871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11870 output11867)).val
theorem output11871_def : output11871 = (.seq output11870 output11867) := by
  unfold output11871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11871_skip : Flapjack.WordAlloc.isSkip output11871 = false := by
  rw [output11871_def]
  conv => lhs; cbv
  try rfl
theorem node11871_eq : Flapjack.WordAlloc.removeDeadStructural input11871 value5938 value1 value2 = (output11871, value5, value1) := by
  rw [input11871_def, output11871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11867_eq]
  dsimp only
  rw [node11870_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11871 input11866)).val
theorem input11872_def : input11872 = (.seq input11871 input11866) := by
  unfold input11872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11871 output11866)).val
theorem output11872_def : output11872 = (.seq output11871 output11866) := by
  unfold output11872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11872_skip : Flapjack.WordAlloc.isSkip output11872 = false := by
  rw [output11872_def]
  conv => lhs; cbv
  try rfl
theorem node11872_eq : Flapjack.WordAlloc.removeDeadStructural input11872 value5937 value1 value2 = (output11872, value5, value1) := by
  rw [input11872_def, output11872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11866_eq]
  dsimp only
  rw [node11871_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11872 input11865)).val
theorem input11873_def : input11873 = (.seq input11872 input11865) := by
  unfold input11873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11872 output11865)).val
theorem output11873_def : output11873 = (.seq output11872 output11865) := by
  unfold output11873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11873_skip : Flapjack.WordAlloc.isSkip output11873 = false := by
  rw [output11873_def]
  conv => lhs; cbv
  try rfl
theorem node11873_eq : Flapjack.WordAlloc.removeDeadStructural input11873 value5936 value1 value2 = (output11873, value5, value1) := by
  rw [input11873_def, output11873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11865_eq]
  dsimp only
  rw [node11872_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5941 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64)))).val
theorem input11874_def : input11874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64))) := by
  unfold input11874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64)))).val
theorem output11874_def : output11874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64))) := by
  unfold output11874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11874_skip : Flapjack.WordAlloc.isSkip output11874 = false := by
  rw [output11874_def]
  conv => lhs; cbv
  try rfl
theorem node11874_eq : Flapjack.WordAlloc.removeDeadStructural input11874 value5 value1 value2 = (output11874, value5941, value1) := by
  rw [input11874_def, output11874_def]
  try (conv => lhs; cbv)
  try rfl

def value5942 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)])).val
theorem input11875_def : input11875 = (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)]) := by
  unfold input11875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)])).val
theorem output11875_def : output11875 = (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)]) := by
  unfold output11875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11875_skip : Flapjack.WordAlloc.isSkip output11875 = false := by
  rw [output11875_def]
  conv => lhs; cbv
  try rfl
theorem node11875_eq : Flapjack.WordAlloc.removeDeadStructural input11875 value5941 value1 value2 = (output11875, value5942, value1) := by
  rw [input11875_def, output11875_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11875 input11874)).val
theorem input11876_def : input11876 = (.seq input11875 input11874) := by
  unfold input11876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11875 output11874)).val
theorem output11876_def : output11876 = (.seq output11875 output11874) := by
  unfold output11876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11876_skip : Flapjack.WordAlloc.isSkip output11876 = false := by
  rw [output11876_def]
  conv => lhs; cbv
  try rfl
theorem node11876_eq : Flapjack.WordAlloc.removeDeadStructural input11876 value5 value1 value2 = (output11876, value5942, value1) := by
  rw [input11876_def, output11876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11874_eq]
  dsimp only
  rw [node11875_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5943 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 8644499054833844677#64))).val
theorem input11877_def : input11877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 8644499054833844677#64)) := by
  unfold input11877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 8644499054833844677#64))).val
theorem output11877_def : output11877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 8644499054833844677#64)) := by
  unfold output11877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11877_skip : Flapjack.WordAlloc.isSkip output11877 = false := by
  rw [output11877_def]
  conv => lhs; cbv
  try rfl
theorem node11877_eq : Flapjack.WordAlloc.removeDeadStructural input11877 value5942 value1 value2 = (output11877, value5943, value1) := by
  rw [input11877_def, output11877_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4437 8644499054833844677#64))).val
theorem input11878_def : input11878 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4437 8644499054833844677#64)) := by
  unfold input11878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11878_def : output11878 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11878_skip : Flapjack.WordAlloc.isSkip output11878 = true := by
  rw [output11878_def]
  conv => lhs; cbv
  try rfl
theorem node11878_eq : Flapjack.WordAlloc.removeDeadStructural input11878 value5943 value1 value2 = (output11878, value5943, value1) := by
  rw [input11878_def, output11878_def]
  try (conv => lhs; cbv)
  try rfl

def value5944 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1072#64))))).val
theorem input11879_def : input11879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1072#64)))) := by
  unfold input11879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1072#64))))).val
theorem output11879_def : output11879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1072#64)))) := by
  unfold output11879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11879_skip : Flapjack.WordAlloc.isSkip output11879 = false := by
  rw [output11879_def]
  conv => lhs; cbv
  try rfl
theorem node11879_eq : Flapjack.WordAlloc.removeDeadStructural input11879 value5943 value1 value2 = (output11879, value5944, value1) := by
  rw [input11879_def, output11879_def]
  try (conv => lhs; cbv)
  try rfl

def value5945 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551104#64)))).val
theorem input11880_def : input11880 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551104#64))) := by
  unfold input11880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551104#64)))).val
theorem output11880_def : output11880 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551104#64))) := by
  unfold output11880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11880_skip : Flapjack.WordAlloc.isSkip output11880 = false := by
  rw [output11880_def]
  conv => lhs; cbv
  try rfl
theorem node11880_eq : Flapjack.WordAlloc.removeDeadStructural input11880 value5944 value1 value2 = (output11880, value5945, value1) := by
  rw [input11880_def, output11880_def]
  try (conv => lhs; cbv)
  try rfl

def value5946 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421)).val
theorem input11881_def : input11881 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421) := by
  unfold input11881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421)).val
theorem output11881_def : output11881 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421) := by
  unfold output11881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11881_skip : Flapjack.WordAlloc.isSkip output11881 = false := by
  rw [output11881_def]
  conv => lhs; cbv
  try rfl
theorem node11881_eq : Flapjack.WordAlloc.removeDeadStructural input11881 value5945 value1 value2 = (output11881, value5946, value1) := by
  rw [input11881_def, output11881_def]
  try (conv => lhs; cbv)
  try rfl

def value5947 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11882_def : input11882 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11882_def : output11882 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11882_skip : Flapjack.WordAlloc.isSkip output11882 = false := by
  rw [output11882_def]
  conv => lhs; cbv
  try rfl
theorem node11882_eq : Flapjack.WordAlloc.removeDeadStructural input11882 value5946 value1 value2 = (output11882, value5947, value1) := by
  rw [input11882_def, output11882_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength)).val
theorem input11883_def : input11883 = (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength) := by
  unfold input11883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength)).val
theorem output11883_def : output11883 = (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength) := by
  unfold output11883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11883_skip : Flapjack.WordAlloc.isSkip output11883 = false := by
  rw [output11883_def]
  conv => lhs; cbv
  try rfl
theorem node11883_eq : Flapjack.WordAlloc.removeDeadStructural input11883 value5947 value1 value2 = (output11883, value5, value1) := by
  rw [input11883_def, output11883_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11883 input11882)).val
theorem input11884_def : input11884 = (.seq input11883 input11882) := by
  unfold input11884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11883 output11882)).val
theorem output11884_def : output11884 = (.seq output11883 output11882) := by
  unfold output11884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11884_skip : Flapjack.WordAlloc.isSkip output11884 = false := by
  rw [output11884_def]
  conv => lhs; cbv
  try rfl
theorem node11884_eq : Flapjack.WordAlloc.removeDeadStructural input11884 value5946 value1 value2 = (output11884, value5, value1) := by
  rw [input11884_def, output11884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11882_eq]
  dsimp only
  rw [node11883_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11884 input11881)).val
theorem input11885_def : input11885 = (.seq input11884 input11881) := by
  unfold input11885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11884 output11881)).val
theorem output11885_def : output11885 = (.seq output11884 output11881) := by
  unfold output11885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11885_skip : Flapjack.WordAlloc.isSkip output11885 = false := by
  rw [output11885_def]
  conv => lhs; cbv
  try rfl
theorem node11885_eq : Flapjack.WordAlloc.removeDeadStructural input11885 value5945 value1 value2 = (output11885, value5, value1) := by
  rw [input11885_def, output11885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11881_eq]
  dsimp only
  rw [node11884_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11885 input11880)).val
theorem input11886_def : input11886 = (.seq input11885 input11880) := by
  unfold input11886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11885 output11880)).val
theorem output11886_def : output11886 = (.seq output11885 output11880) := by
  unfold output11886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11886_skip : Flapjack.WordAlloc.isSkip output11886 = false := by
  rw [output11886_def]
  conv => lhs; cbv
  try rfl
theorem node11886_eq : Flapjack.WordAlloc.removeDeadStructural input11886 value5944 value1 value2 = (output11886, value5, value1) := by
  rw [input11886_def, output11886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11880_eq]
  dsimp only
  rw [node11885_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11886 input11879)).val
theorem input11887_def : input11887 = (.seq input11886 input11879) := by
  unfold input11887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11886 output11879)).val
theorem output11887_def : output11887 = (.seq output11886 output11879) := by
  unfold output11887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11887_skip : Flapjack.WordAlloc.isSkip output11887 = false := by
  rw [output11887_def]
  conv => lhs; cbv
  try rfl
theorem node11887_eq : Flapjack.WordAlloc.removeDeadStructural input11887 value5943 value1 value2 = (output11887, value5, value1) := by
  rw [input11887_def, output11887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11879_eq]
  dsimp only
  rw [node11886_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5948 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64)))).val
theorem input11888_def : input11888 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64))) := by
  unfold input11888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64)))).val
theorem output11888_def : output11888 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64))) := by
  unfold output11888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11888_skip : Flapjack.WordAlloc.isSkip output11888 = false := by
  rw [output11888_def]
  conv => lhs; cbv
  try rfl
theorem node11888_eq : Flapjack.WordAlloc.removeDeadStructural input11888 value5 value1 value2 = (output11888, value5948, value1) := by
  rw [input11888_def, output11888_def]
  try (conv => lhs; cbv)
  try rfl

def value5949 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)])).val
theorem input11889_def : input11889 = (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)]) := by
  unfold input11889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)])).val
theorem output11889_def : output11889 = (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)]) := by
  unfold output11889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11889_skip : Flapjack.WordAlloc.isSkip output11889 = false := by
  rw [output11889_def]
  conv => lhs; cbv
  try rfl
theorem node11889_eq : Flapjack.WordAlloc.removeDeadStructural input11889 value5948 value1 value2 = (output11889, value5949, value1) := by
  rw [input11889_def, output11889_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11889 input11888)).val
theorem input11890_def : input11890 = (.seq input11889 input11888) := by
  unfold input11890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11889 output11888)).val
theorem output11890_def : output11890 = (.seq output11889 output11888) := by
  unfold output11890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11890_skip : Flapjack.WordAlloc.isSkip output11890 = false := by
  rw [output11890_def]
  conv => lhs; cbv
  try rfl
theorem node11890_eq : Flapjack.WordAlloc.removeDeadStructural input11890 value5 value1 value2 = (output11890, value5949, value1) := by
  rw [input11890_def, output11890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11888_eq]
  dsimp only
  rw [node11889_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5950 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17178867732698629620#64))).val
theorem input11891_def : input11891 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17178867732698629620#64)) := by
  unfold input11891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17178867732698629620#64))).val
theorem output11891_def : output11891 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17178867732698629620#64)) := by
  unfold output11891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11891_skip : Flapjack.WordAlloc.isSkip output11891 = false := by
  rw [output11891_def]
  conv => lhs; cbv
  try rfl
theorem node11891_eq : Flapjack.WordAlloc.removeDeadStructural input11891 value5949 value1 value2 = (output11891, value5950, value1) := by
  rw [input11891_def, output11891_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4405 17178867732698629620#64))).val
theorem input11892_def : input11892 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4405 17178867732698629620#64)) := by
  unfold input11892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11892_def : output11892 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11892_skip : Flapjack.WordAlloc.isSkip output11892 = true := by
  rw [output11892_def]
  conv => lhs; cbv
  try rfl
theorem node11892_eq : Flapjack.WordAlloc.removeDeadStructural input11892 value5950 value1 value2 = (output11892, value5950, value1) := by
  rw [input11892_def, output11892_def]
  try (conv => lhs; cbv)
  try rfl

def value5951 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1064#64))))).val
theorem input11893_def : input11893 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1064#64)))) := by
  unfold input11893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1064#64))))).val
theorem output11893_def : output11893 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1064#64)))) := by
  unfold output11893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11893_skip : Flapjack.WordAlloc.isSkip output11893 = false := by
  rw [output11893_def]
  conv => lhs; cbv
  try rfl
theorem node11893_eq : Flapjack.WordAlloc.removeDeadStructural input11893 value5950 value1 value2 = (output11893, value5951, value1) := by
  rw [input11893_def, output11893_def]
  try (conv => lhs; cbv)
  try rfl

def value5952 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551104#64)))).val
theorem input11894_def : input11894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551104#64))) := by
  unfold input11894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551104#64)))).val
theorem output11894_def : output11894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551104#64))) := by
  unfold output11894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11894_skip : Flapjack.WordAlloc.isSkip output11894 = false := by
  rw [output11894_def]
  conv => lhs; cbv
  try rfl
theorem node11894_eq : Flapjack.WordAlloc.removeDeadStructural input11894 value5951 value1 value2 = (output11894, value5952, value1) := by
  rw [input11894_def, output11894_def]
  try (conv => lhs; cbv)
  try rfl

def value5953 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389)).val
theorem input11895_def : input11895 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389) := by
  unfold input11895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389)).val
theorem output11895_def : output11895 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389) := by
  unfold output11895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11895_skip : Flapjack.WordAlloc.isSkip output11895 = false := by
  rw [output11895_def]
  conv => lhs; cbv
  try rfl
theorem node11895_eq : Flapjack.WordAlloc.removeDeadStructural input11895 value5952 value1 value2 = (output11895, value5953, value1) := by
  rw [input11895_def, output11895_def]
  try (conv => lhs; cbv)
  try rfl

def value5954 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11896_def : input11896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11896_def : output11896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11896_skip : Flapjack.WordAlloc.isSkip output11896 = false := by
  rw [output11896_def]
  conv => lhs; cbv
  try rfl
theorem node11896_eq : Flapjack.WordAlloc.removeDeadStructural input11896 value5953 value1 value2 = (output11896, value5954, value1) := by
  rw [input11896_def, output11896_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength)).val
theorem input11897_def : input11897 = (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength) := by
  unfold input11897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength)).val
theorem output11897_def : output11897 = (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength) := by
  unfold output11897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11897_skip : Flapjack.WordAlloc.isSkip output11897 = false := by
  rw [output11897_def]
  conv => lhs; cbv
  try rfl
theorem node11897_eq : Flapjack.WordAlloc.removeDeadStructural input11897 value5954 value1 value2 = (output11897, value5, value1) := by
  rw [input11897_def, output11897_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11897 input11896)).val
theorem input11898_def : input11898 = (.seq input11897 input11896) := by
  unfold input11898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11897 output11896)).val
theorem output11898_def : output11898 = (.seq output11897 output11896) := by
  unfold output11898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11898_skip : Flapjack.WordAlloc.isSkip output11898 = false := by
  rw [output11898_def]
  conv => lhs; cbv
  try rfl
theorem node11898_eq : Flapjack.WordAlloc.removeDeadStructural input11898 value5953 value1 value2 = (output11898, value5, value1) := by
  rw [input11898_def, output11898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11896_eq]
  dsimp only
  rw [node11897_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11898 input11895)).val
theorem input11899_def : input11899 = (.seq input11898 input11895) := by
  unfold input11899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11898 output11895)).val
theorem output11899_def : output11899 = (.seq output11898 output11895) := by
  unfold output11899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11899_skip : Flapjack.WordAlloc.isSkip output11899 = false := by
  rw [output11899_def]
  conv => lhs; cbv
  try rfl
theorem node11899_eq : Flapjack.WordAlloc.removeDeadStructural input11899 value5952 value1 value2 = (output11899, value5, value1) := by
  rw [input11899_def, output11899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11895_eq]
  dsimp only
  rw [node11898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11899 input11894)).val
theorem input11900_def : input11900 = (.seq input11899 input11894) := by
  unfold input11900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11899 output11894)).val
theorem output11900_def : output11900 = (.seq output11899 output11894) := by
  unfold output11900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11900_skip : Flapjack.WordAlloc.isSkip output11900 = false := by
  rw [output11900_def]
  conv => lhs; cbv
  try rfl
theorem node11900_eq : Flapjack.WordAlloc.removeDeadStructural input11900 value5951 value1 value2 = (output11900, value5, value1) := by
  rw [input11900_def, output11900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11894_eq]
  dsimp only
  rw [node11899_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11900 input11893)).val
theorem input11901_def : input11901 = (.seq input11900 input11893) := by
  unfold input11901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11900 output11893)).val
theorem output11901_def : output11901 = (.seq output11900 output11893) := by
  unfold output11901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11901_skip : Flapjack.WordAlloc.isSkip output11901 = false := by
  rw [output11901_def]
  conv => lhs; cbv
  try rfl
theorem node11901_eq : Flapjack.WordAlloc.removeDeadStructural input11901 value5950 value1 value2 = (output11901, value5, value1) := by
  rw [input11901_def, output11901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11893_eq]
  dsimp only
  rw [node11900_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5955 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64)))).val
theorem input11902_def : input11902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64))) := by
  unfold input11902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64)))).val
theorem output11902_def : output11902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64))) := by
  unfold output11902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11902_skip : Flapjack.WordAlloc.isSkip output11902 = false := by
  rw [output11902_def]
  conv => lhs; cbv
  try rfl
theorem node11902_eq : Flapjack.WordAlloc.removeDeadStructural input11902 value5 value1 value2 = (output11902, value5955, value1) := by
  rw [input11902_def, output11902_def]
  try (conv => lhs; cbv)
  try rfl

def value5956 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)])).val
theorem input11903_def : input11903 = (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)]) := by
  unfold input11903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)])).val
theorem output11903_def : output11903 = (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)]) := by
  unfold output11903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11903_skip : Flapjack.WordAlloc.isSkip output11903 = false := by
  rw [output11903_def]
  conv => lhs; cbv
  try rfl
theorem node11903_eq : Flapjack.WordAlloc.removeDeadStructural input11903 value5955 value1 value2 = (output11903, value5956, value1) := by
  rw [input11903_def, output11903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11903 input11902)).val
theorem input11904_def : input11904 = (.seq input11903 input11902) := by
  unfold input11904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11903 output11902)).val
theorem output11904_def : output11904 = (.seq output11903 output11902) := by
  unfold output11904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11904_skip : Flapjack.WordAlloc.isSkip output11904 = false := by
  rw [output11904_def]
  conv => lhs; cbv
  try rfl
theorem node11904_eq : Flapjack.WordAlloc.removeDeadStructural input11904 value5 value1 value2 = (output11904, value5956, value1) := by
  rw [input11904_def, output11904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11902_eq]
  dsimp only
  rw [node11903_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5957 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 14416168624775744521#64))).val
theorem input11905_def : input11905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 14416168624775744521#64)) := by
  unfold input11905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 14416168624775744521#64))).val
theorem output11905_def : output11905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 14416168624775744521#64)) := by
  unfold output11905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11905_skip : Flapjack.WordAlloc.isSkip output11905 = false := by
  rw [output11905_def]
  conv => lhs; cbv
  try rfl
theorem node11905_eq : Flapjack.WordAlloc.removeDeadStructural input11905 value5956 value1 value2 = (output11905, value5957, value1) := by
  rw [input11905_def, output11905_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4373 14416168624775744521#64))).val
theorem input11906_def : input11906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4373 14416168624775744521#64)) := by
  unfold input11906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11906_def : output11906 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11906_skip : Flapjack.WordAlloc.isSkip output11906 = true := by
  rw [output11906_def]
  conv => lhs; cbv
  try rfl
theorem node11906_eq : Flapjack.WordAlloc.removeDeadStructural input11906 value5957 value1 value2 = (output11906, value5957, value1) := by
  rw [input11906_def, output11906_def]
  try (conv => lhs; cbv)
  try rfl

def value5958 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1056#64))))).val
theorem input11907_def : input11907 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1056#64)))) := by
  unfold input11907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1056#64))))).val
theorem output11907_def : output11907 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1056#64)))) := by
  unfold output11907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11907_skip : Flapjack.WordAlloc.isSkip output11907 = false := by
  rw [output11907_def]
  conv => lhs; cbv
  try rfl
theorem node11907_eq : Flapjack.WordAlloc.removeDeadStructural input11907 value5957 value1 value2 = (output11907, value5958, value1) := by
  rw [input11907_def, output11907_def]
  try (conv => lhs; cbv)
  try rfl

def value5959 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551104#64)))).val
theorem input11908_def : input11908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551104#64))) := by
  unfold input11908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551104#64)))).val
theorem output11908_def : output11908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551104#64))) := by
  unfold output11908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11908_skip : Flapjack.WordAlloc.isSkip output11908 = false := by
  rw [output11908_def]
  conv => lhs; cbv
  try rfl
theorem node11908_eq : Flapjack.WordAlloc.removeDeadStructural input11908 value5958 value1 value2 = (output11908, value5959, value1) := by
  rw [input11908_def, output11908_def]
  try (conv => lhs; cbv)
  try rfl

def value5960 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357)).val
theorem input11909_def : input11909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357) := by
  unfold input11909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357)).val
theorem output11909_def : output11909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357) := by
  unfold output11909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11909_skip : Flapjack.WordAlloc.isSkip output11909 = false := by
  rw [output11909_def]
  conv => lhs; cbv
  try rfl
theorem node11909_eq : Flapjack.WordAlloc.removeDeadStructural input11909 value5959 value1 value2 = (output11909, value5960, value1) := by
  rw [input11909_def, output11909_def]
  try (conv => lhs; cbv)
  try rfl

def value5961 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11910_def : input11910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11910_def : output11910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11910_skip : Flapjack.WordAlloc.isSkip output11910 = false := by
  rw [output11910_def]
  conv => lhs; cbv
  try rfl
theorem node11910_eq : Flapjack.WordAlloc.removeDeadStructural input11910 value5960 value1 value2 = (output11910, value5961, value1) := by
  rw [input11910_def, output11910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength)).val
theorem input11911_def : input11911 = (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength) := by
  unfold input11911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength)).val
theorem output11911_def : output11911 = (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength) := by
  unfold output11911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11911_skip : Flapjack.WordAlloc.isSkip output11911 = false := by
  rw [output11911_def]
  conv => lhs; cbv
  try rfl
theorem node11911_eq : Flapjack.WordAlloc.removeDeadStructural input11911 value5961 value1 value2 = (output11911, value5, value1) := by
  rw [input11911_def, output11911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11911 input11910)).val
theorem input11912_def : input11912 = (.seq input11911 input11910) := by
  unfold input11912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11911 output11910)).val
theorem output11912_def : output11912 = (.seq output11911 output11910) := by
  unfold output11912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11912_skip : Flapjack.WordAlloc.isSkip output11912 = false := by
  rw [output11912_def]
  conv => lhs; cbv
  try rfl
theorem node11912_eq : Flapjack.WordAlloc.removeDeadStructural input11912 value5960 value1 value2 = (output11912, value5, value1) := by
  rw [input11912_def, output11912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11910_eq]
  dsimp only
  rw [node11911_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11912 input11909)).val
theorem input11913_def : input11913 = (.seq input11912 input11909) := by
  unfold input11913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11912 output11909)).val
theorem output11913_def : output11913 = (.seq output11912 output11909) := by
  unfold output11913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11913_skip : Flapjack.WordAlloc.isSkip output11913 = false := by
  rw [output11913_def]
  conv => lhs; cbv
  try rfl
theorem node11913_eq : Flapjack.WordAlloc.removeDeadStructural input11913 value5959 value1 value2 = (output11913, value5, value1) := by
  rw [input11913_def, output11913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11909_eq]
  dsimp only
  rw [node11912_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11913 input11908)).val
theorem input11914_def : input11914 = (.seq input11913 input11908) := by
  unfold input11914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11913 output11908)).val
theorem output11914_def : output11914 = (.seq output11913 output11908) := by
  unfold output11914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11914_skip : Flapjack.WordAlloc.isSkip output11914 = false := by
  rw [output11914_def]
  conv => lhs; cbv
  try rfl
theorem node11914_eq : Flapjack.WordAlloc.removeDeadStructural input11914 value5958 value1 value2 = (output11914, value5, value1) := by
  rw [input11914_def, output11914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11908_eq]
  dsimp only
  rw [node11913_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11914 input11907)).val
theorem input11915_def : input11915 = (.seq input11914 input11907) := by
  unfold input11915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11914 output11907)).val
theorem output11915_def : output11915 = (.seq output11914 output11907) := by
  unfold output11915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11915_skip : Flapjack.WordAlloc.isSkip output11915 = false := by
  rw [output11915_def]
  conv => lhs; cbv
  try rfl
theorem node11915_eq : Flapjack.WordAlloc.removeDeadStructural input11915 value5957 value1 value2 = (output11915, value5, value1) := by
  rw [input11915_def, output11915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11907_eq]
  dsimp only
  rw [node11914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5962 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4345 (Flapjack.WordLangAddr.addr 4349 0#64)))).val
theorem input11916_def : input11916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4345 (Flapjack.WordLangAddr.addr 4349 0#64))) := by
  unfold input11916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4345 (Flapjack.WordLangAddr.addr 4349 0#64)))).val
theorem output11916_def : output11916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4345 (Flapjack.WordLangAddr.addr 4349 0#64))) := by
  unfold output11916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11916_skip : Flapjack.WordAlloc.isSkip output11916 = false := by
  rw [output11916_def]
  conv => lhs; cbv
  try rfl
theorem node11916_eq : Flapjack.WordAlloc.removeDeadStructural input11916 value5 value1 value2 = (output11916, value5962, value1) := by
  rw [input11916_def, output11916_def]
  try (conv => lhs; cbv)
  try rfl

def value5963 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4349, 4337)])).val
theorem input11917_def : input11917 = (Flapjack.WordLangProgHOL.move 0 [(4349, 4337)]) := by
  unfold input11917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4349, 4337)])).val
theorem output11917_def : output11917 = (Flapjack.WordLangProgHOL.move 0 [(4349, 4337)]) := by
  unfold output11917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11917_skip : Flapjack.WordAlloc.isSkip output11917 = false := by
  rw [output11917_def]
  conv => lhs; cbv
  try rfl
theorem node11917_eq : Flapjack.WordAlloc.removeDeadStructural input11917 value5962 value1 value2 = (output11917, value5963, value1) := by
  rw [input11917_def, output11917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11917 input11916)).val
theorem input11918_def : input11918 = (.seq input11917 input11916) := by
  unfold input11918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11917 output11916)).val
theorem output11918_def : output11918 = (.seq output11917 output11916) := by
  unfold output11918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11918_skip : Flapjack.WordAlloc.isSkip output11918 = false := by
  rw [output11918_def]
  conv => lhs; cbv
  try rfl
theorem node11918_eq : Flapjack.WordAlloc.removeDeadStructural input11918 value5 value1 value2 = (output11918, value5963, value1) := by
  rw [input11918_def, output11918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11916_eq]
  dsimp only
  rw [node11917_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5964 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 1873798617647539865#64))).val
theorem input11919_def : input11919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 1873798617647539865#64)) := by
  unfold input11919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 1873798617647539865#64))).val
theorem output11919_def : output11919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 1873798617647539865#64)) := by
  unfold output11919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11919_skip : Flapjack.WordAlloc.isSkip output11919 = false := by
  rw [output11919_def]
  conv => lhs; cbv
  try rfl
theorem node11919_eq : Flapjack.WordAlloc.removeDeadStructural input11919 value5963 value1 value2 = (output11919, value5964, value1) := by
  rw [input11919_def, output11919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4341 1873798617647539865#64))).val
theorem input11920_def : input11920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4341 1873798617647539865#64)) := by
  unfold input11920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11920_def : output11920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11920_skip : Flapjack.WordAlloc.isSkip output11920 = true := by
  rw [output11920_def]
  conv => lhs; cbv
  try rfl
theorem node11920_eq : Flapjack.WordAlloc.removeDeadStructural input11920 value5964 value1 value2 = (output11920, value5964, value1) := by
  rw [input11920_def, output11920_def]
  try (conv => lhs; cbv)
  try rfl

def value5965 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4337 4333 (Flapjack.WordRegImm.imm 1048#64))))).val
theorem input11921_def : input11921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4337 4333 (Flapjack.WordRegImm.imm 1048#64)))) := by
  unfold input11921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4337 4333 (Flapjack.WordRegImm.imm 1048#64))))).val
theorem output11921_def : output11921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4337 4333 (Flapjack.WordRegImm.imm 1048#64)))) := by
  unfold output11921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11921_skip : Flapjack.WordAlloc.isSkip output11921 = false := by
  rw [output11921_def]
  conv => lhs; cbv
  try rfl
theorem node11921_eq : Flapjack.WordAlloc.removeDeadStructural input11921 value5964 value1 value2 = (output11921, value5965, value1) := by
  rw [input11921_def, output11921_def]
  try (conv => lhs; cbv)
  try rfl

def value5966 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4333 (Flapjack.WordLangAddr.addr 4329 18446744073709551104#64)))).val
theorem input11922_def : input11922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4333 (Flapjack.WordLangAddr.addr 4329 18446744073709551104#64))) := by
  unfold input11922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4333 (Flapjack.WordLangAddr.addr 4329 18446744073709551104#64)))).val
theorem output11922_def : output11922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4333 (Flapjack.WordLangAddr.addr 4329 18446744073709551104#64))) := by
  unfold output11922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11922_skip : Flapjack.WordAlloc.isSkip output11922 = false := by
  rw [output11922_def]
  conv => lhs; cbv
  try rfl
theorem node11922_eq : Flapjack.WordAlloc.removeDeadStructural input11922 value5965 value1 value2 = (output11922, value5966, value1) := by
  rw [input11922_def, output11922_def]
  try (conv => lhs; cbv)
  try rfl

def value5967 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4329 4325)).val
theorem input11923_def : input11923 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4329 4325) := by
  unfold input11923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4329 4325)).val
theorem output11923_def : output11923 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4329 4325) := by
  unfold output11923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11923_skip : Flapjack.WordAlloc.isSkip output11923 = false := by
  rw [output11923_def]
  conv => lhs; cbv
  try rfl
theorem node11923_eq : Flapjack.WordAlloc.removeDeadStructural input11923 value5966 value1 value2 = (output11923, value5967, value1) := by
  rw [input11923_def, output11923_def]
  try (conv => lhs; cbv)
  try rfl

def value5968 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4325 4321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11924_def : input11924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4325 4321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4325 4321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11924_def : output11924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4325 4321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11924_skip : Flapjack.WordAlloc.isSkip output11924 = false := by
  rw [output11924_def]
  conv => lhs; cbv
  try rfl
theorem node11924_eq : Flapjack.WordAlloc.removeDeadStructural input11924 value5967 value1 value2 = (output11924, value5968, value1) := by
  rw [input11924_def, output11924_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4321 Flapjack.WordStore.heapLength)).val
theorem input11925_def : input11925 = (Flapjack.WordLangProgHOL.get 4321 Flapjack.WordStore.heapLength) := by
  unfold input11925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4321 Flapjack.WordStore.heapLength)).val
theorem output11925_def : output11925 = (Flapjack.WordLangProgHOL.get 4321 Flapjack.WordStore.heapLength) := by
  unfold output11925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11925_skip : Flapjack.WordAlloc.isSkip output11925 = false := by
  rw [output11925_def]
  conv => lhs; cbv
  try rfl
theorem node11925_eq : Flapjack.WordAlloc.removeDeadStructural input11925 value5968 value1 value2 = (output11925, value5, value1) := by
  rw [input11925_def, output11925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11925 input11924)).val
theorem input11926_def : input11926 = (.seq input11925 input11924) := by
  unfold input11926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11925 output11924)).val
theorem output11926_def : output11926 = (.seq output11925 output11924) := by
  unfold output11926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11926_skip : Flapjack.WordAlloc.isSkip output11926 = false := by
  rw [output11926_def]
  conv => lhs; cbv
  try rfl
theorem node11926_eq : Flapjack.WordAlloc.removeDeadStructural input11926 value5967 value1 value2 = (output11926, value5, value1) := by
  rw [input11926_def, output11926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11924_eq]
  dsimp only
  rw [node11925_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11926 input11923)).val
theorem input11927_def : input11927 = (.seq input11926 input11923) := by
  unfold input11927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11926 output11923)).val
theorem output11927_def : output11927 = (.seq output11926 output11923) := by
  unfold output11927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11927_skip : Flapjack.WordAlloc.isSkip output11927 = false := by
  rw [output11927_def]
  conv => lhs; cbv
  try rfl
theorem node11927_eq : Flapjack.WordAlloc.removeDeadStructural input11927 value5966 value1 value2 = (output11927, value5, value1) := by
  rw [input11927_def, output11927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11923_eq]
  dsimp only
  rw [node11926_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11927 input11922)).val
theorem input11928_def : input11928 = (.seq input11927 input11922) := by
  unfold input11928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11927 output11922)).val
theorem output11928_def : output11928 = (.seq output11927 output11922) := by
  unfold output11928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11928_skip : Flapjack.WordAlloc.isSkip output11928 = false := by
  rw [output11928_def]
  conv => lhs; cbv
  try rfl
theorem node11928_eq : Flapjack.WordAlloc.removeDeadStructural input11928 value5965 value1 value2 = (output11928, value5, value1) := by
  rw [input11928_def, output11928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11922_eq]
  dsimp only
  rw [node11927_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11928 input11921)).val
theorem input11929_def : input11929 = (.seq input11928 input11921) := by
  unfold input11929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11928 output11921)).val
theorem output11929_def : output11929 = (.seq output11928 output11921) := by
  unfold output11929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11929_skip : Flapjack.WordAlloc.isSkip output11929 = false := by
  rw [output11929_def]
  conv => lhs; cbv
  try rfl
theorem node11929_eq : Flapjack.WordAlloc.removeDeadStructural input11929 value5964 value1 value2 = (output11929, value5, value1) := by
  rw [input11929_def, output11929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11921_eq]
  dsimp only
  rw [node11928_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5969 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4313 (Flapjack.WordLangAddr.addr 4317 0#64)))).val
theorem input11930_def : input11930 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4313 (Flapjack.WordLangAddr.addr 4317 0#64))) := by
  unfold input11930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4313 (Flapjack.WordLangAddr.addr 4317 0#64)))).val
theorem output11930_def : output11930 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4313 (Flapjack.WordLangAddr.addr 4317 0#64))) := by
  unfold output11930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11930_skip : Flapjack.WordAlloc.isSkip output11930 = false := by
  rw [output11930_def]
  conv => lhs; cbv
  try rfl
theorem node11930_eq : Flapjack.WordAlloc.removeDeadStructural input11930 value5 value1 value2 = (output11930, value5969, value1) := by
  rw [input11930_def, output11930_def]
  try (conv => lhs; cbv)
  try rfl

def value5970 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4317, 4305)])).val
theorem input11931_def : input11931 = (Flapjack.WordLangProgHOL.move 0 [(4317, 4305)]) := by
  unfold input11931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4317, 4305)])).val
theorem output11931_def : output11931 = (Flapjack.WordLangProgHOL.move 0 [(4317, 4305)]) := by
  unfold output11931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11931_skip : Flapjack.WordAlloc.isSkip output11931 = false := by
  rw [output11931_def]
  conv => lhs; cbv
  try rfl
theorem node11931_eq : Flapjack.WordAlloc.removeDeadStructural input11931 value5969 value1 value2 = (output11931, value5970, value1) := by
  rw [input11931_def, output11931_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11931 input11930)).val
theorem input11932_def : input11932 = (.seq input11931 input11930) := by
  unfold input11932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11931 output11930)).val
theorem output11932_def : output11932 = (.seq output11931 output11930) := by
  unfold output11932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11932_skip : Flapjack.WordAlloc.isSkip output11932 = false := by
  rw [output11932_def]
  conv => lhs; cbv
  try rfl
theorem node11932_eq : Flapjack.WordAlloc.removeDeadStructural input11932 value5 value1 value2 = (output11932, value5970, value1) := by
  rw [input11932_def, output11932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11930_eq]
  dsimp only
  rw [node11931_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5971 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4313 17006226088849104517#64))).val
theorem input11933_def : input11933 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4313 17006226088849104517#64)) := by
  unfold input11933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4313 17006226088849104517#64))).val
theorem output11933_def : output11933 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4313 17006226088849104517#64)) := by
  unfold output11933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11933_skip : Flapjack.WordAlloc.isSkip output11933 = false := by
  rw [output11933_def]
  conv => lhs; cbv
  try rfl
theorem node11933_eq : Flapjack.WordAlloc.removeDeadStructural input11933 value5970 value1 value2 = (output11933, value5971, value1) := by
  rw [input11933_def, output11933_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 17006226088849104517#64))).val
theorem input11934_def : input11934 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 17006226088849104517#64)) := by
  unfold input11934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11934_def : output11934 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11934_skip : Flapjack.WordAlloc.isSkip output11934 = true := by
  rw [output11934_def]
  conv => lhs; cbv
  try rfl
theorem node11934_eq : Flapjack.WordAlloc.removeDeadStructural input11934 value5971 value1 value2 = (output11934, value5971, value1) := by
  rw [input11934_def, output11934_def]
  try (conv => lhs; cbv)
  try rfl

def value5972 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4305 4301 (Flapjack.WordRegImm.imm 1040#64))))).val
theorem input11935_def : input11935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4305 4301 (Flapjack.WordRegImm.imm 1040#64)))) := by
  unfold input11935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4305 4301 (Flapjack.WordRegImm.imm 1040#64))))).val
theorem output11935_def : output11935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4305 4301 (Flapjack.WordRegImm.imm 1040#64)))) := by
  unfold output11935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11935_skip : Flapjack.WordAlloc.isSkip output11935 = false := by
  rw [output11935_def]
  conv => lhs; cbv
  try rfl
theorem node11935_eq : Flapjack.WordAlloc.removeDeadStructural input11935 value5971 value1 value2 = (output11935, value5972, value1) := by
  rw [input11935_def, output11935_def]
  try (conv => lhs; cbv)
  try rfl

def value5973 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4301 (Flapjack.WordLangAddr.addr 4297 18446744073709551104#64)))).val
theorem input11936_def : input11936 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4301 (Flapjack.WordLangAddr.addr 4297 18446744073709551104#64))) := by
  unfold input11936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4301 (Flapjack.WordLangAddr.addr 4297 18446744073709551104#64)))).val
theorem output11936_def : output11936 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4301 (Flapjack.WordLangAddr.addr 4297 18446744073709551104#64))) := by
  unfold output11936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11936_skip : Flapjack.WordAlloc.isSkip output11936 = false := by
  rw [output11936_def]
  conv => lhs; cbv
  try rfl
theorem node11936_eq : Flapjack.WordAlloc.removeDeadStructural input11936 value5972 value1 value2 = (output11936, value5973, value1) := by
  rw [input11936_def, output11936_def]
  try (conv => lhs; cbv)
  try rfl

def value5974 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4297 4293)).val
theorem input11937_def : input11937 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4297 4293) := by
  unfold input11937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4297 4293)).val
theorem output11937_def : output11937 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4297 4293) := by
  unfold output11937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11937_skip : Flapjack.WordAlloc.isSkip output11937 = false := by
  rw [output11937_def]
  conv => lhs; cbv
  try rfl
theorem node11937_eq : Flapjack.WordAlloc.removeDeadStructural input11937 value5973 value1 value2 = (output11937, value5974, value1) := by
  rw [input11937_def, output11937_def]
  try (conv => lhs; cbv)
  try rfl

def value5975 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4293 4289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11938_def : input11938 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4293 4289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4293 4289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11938_def : output11938 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4293 4289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11938_skip : Flapjack.WordAlloc.isSkip output11938 = false := by
  rw [output11938_def]
  conv => lhs; cbv
  try rfl
theorem node11938_eq : Flapjack.WordAlloc.removeDeadStructural input11938 value5974 value1 value2 = (output11938, value5975, value1) := by
  rw [input11938_def, output11938_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4289 Flapjack.WordStore.heapLength)).val
theorem input11939_def : input11939 = (Flapjack.WordLangProgHOL.get 4289 Flapjack.WordStore.heapLength) := by
  unfold input11939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4289 Flapjack.WordStore.heapLength)).val
theorem output11939_def : output11939 = (Flapjack.WordLangProgHOL.get 4289 Flapjack.WordStore.heapLength) := by
  unfold output11939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11939_skip : Flapjack.WordAlloc.isSkip output11939 = false := by
  rw [output11939_def]
  conv => lhs; cbv
  try rfl
theorem node11939_eq : Flapjack.WordAlloc.removeDeadStructural input11939 value5975 value1 value2 = (output11939, value5, value1) := by
  rw [input11939_def, output11939_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11939 input11938)).val
theorem input11940_def : input11940 = (.seq input11939 input11938) := by
  unfold input11940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11939 output11938)).val
theorem output11940_def : output11940 = (.seq output11939 output11938) := by
  unfold output11940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11940_skip : Flapjack.WordAlloc.isSkip output11940 = false := by
  rw [output11940_def]
  conv => lhs; cbv
  try rfl
theorem node11940_eq : Flapjack.WordAlloc.removeDeadStructural input11940 value5974 value1 value2 = (output11940, value5, value1) := by
  rw [input11940_def, output11940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11938_eq]
  dsimp only
  rw [node11939_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11940 input11937)).val
theorem input11941_def : input11941 = (.seq input11940 input11937) := by
  unfold input11941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11940 output11937)).val
theorem output11941_def : output11941 = (.seq output11940 output11937) := by
  unfold output11941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11941_skip : Flapjack.WordAlloc.isSkip output11941 = false := by
  rw [output11941_def]
  conv => lhs; cbv
  try rfl
theorem node11941_eq : Flapjack.WordAlloc.removeDeadStructural input11941 value5973 value1 value2 = (output11941, value5, value1) := by
  rw [input11941_def, output11941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11937_eq]
  dsimp only
  rw [node11940_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11941 input11936)).val
theorem input11942_def : input11942 = (.seq input11941 input11936) := by
  unfold input11942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11941 output11936)).val
theorem output11942_def : output11942 = (.seq output11941 output11936) := by
  unfold output11942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11942_skip : Flapjack.WordAlloc.isSkip output11942 = false := by
  rw [output11942_def]
  conv => lhs; cbv
  try rfl
theorem node11942_eq : Flapjack.WordAlloc.removeDeadStructural input11942 value5972 value1 value2 = (output11942, value5, value1) := by
  rw [input11942_def, output11942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11936_eq]
  dsimp only
  rw [node11941_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11942 input11935)).val
theorem input11943_def : input11943 = (.seq input11942 input11935) := by
  unfold input11943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11942 output11935)).val
theorem output11943_def : output11943 = (.seq output11942 output11935) := by
  unfold output11943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11943_skip : Flapjack.WordAlloc.isSkip output11943 = false := by
  rw [output11943_def]
  conv => lhs; cbv
  try rfl
theorem node11943_eq : Flapjack.WordAlloc.removeDeadStructural input11943 value5971 value1 value2 = (output11943, value5, value1) := by
  rw [input11943_def, output11943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11935_eq]
  dsimp only
  rw [node11942_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5976 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4281 (Flapjack.WordLangAddr.addr 4285 0#64)))).val
theorem input11944_def : input11944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4281 (Flapjack.WordLangAddr.addr 4285 0#64))) := by
  unfold input11944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4281 (Flapjack.WordLangAddr.addr 4285 0#64)))).val
theorem output11944_def : output11944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4281 (Flapjack.WordLangAddr.addr 4285 0#64))) := by
  unfold output11944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11944_skip : Flapjack.WordAlloc.isSkip output11944 = false := by
  rw [output11944_def]
  conv => lhs; cbv
  try rfl
theorem node11944_eq : Flapjack.WordAlloc.removeDeadStructural input11944 value5 value1 value2 = (output11944, value5976, value1) := by
  rw [input11944_def, output11944_def]
  try (conv => lhs; cbv)
  try rfl

def value5977 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4285, 4273)])).val
theorem input11945_def : input11945 = (Flapjack.WordLangProgHOL.move 0 [(4285, 4273)]) := by
  unfold input11945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4285, 4273)])).val
theorem output11945_def : output11945 = (Flapjack.WordLangProgHOL.move 0 [(4285, 4273)]) := by
  unfold output11945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11945_skip : Flapjack.WordAlloc.isSkip output11945 = false := by
  rw [output11945_def]
  conv => lhs; cbv
  try rfl
theorem node11945_eq : Flapjack.WordAlloc.removeDeadStructural input11945 value5976 value1 value2 = (output11945, value5977, value1) := by
  rw [input11945_def, output11945_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11945 input11944)).val
theorem input11946_def : input11946 = (.seq input11945 input11944) := by
  unfold input11946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11945 output11944)).val
theorem output11946_def : output11946 = (.seq output11945 output11944) := by
  unfold output11946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11946_skip : Flapjack.WordAlloc.isSkip output11946 = false := by
  rw [output11946_def]
  conv => lhs; cbv
  try rfl
theorem node11946_eq : Flapjack.WordAlloc.removeDeadStructural input11946 value5 value1 value2 = (output11946, value5977, value1) := by
  rw [input11946_def, output11946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11944_eq]
  dsimp only
  rw [node11945_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5978 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4281 12253596935368579796#64))).val
theorem input11947_def : input11947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4281 12253596935368579796#64)) := by
  unfold input11947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4281 12253596935368579796#64))).val
theorem output11947_def : output11947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4281 12253596935368579796#64)) := by
  unfold output11947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11947_skip : Flapjack.WordAlloc.isSkip output11947 = false := by
  rw [output11947_def]
  conv => lhs; cbv
  try rfl
theorem node11947_eq : Flapjack.WordAlloc.removeDeadStructural input11947 value5977 value1 value2 = (output11947, value5978, value1) := by
  rw [input11947_def, output11947_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4277 12253596935368579796#64))).val
theorem input11948_def : input11948 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4277 12253596935368579796#64)) := by
  unfold input11948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11948_def : output11948 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11948_skip : Flapjack.WordAlloc.isSkip output11948 = true := by
  rw [output11948_def]
  conv => lhs; cbv
  try rfl
theorem node11948_eq : Flapjack.WordAlloc.removeDeadStructural input11948 value5978 value1 value2 = (output11948, value5978, value1) := by
  rw [input11948_def, output11948_def]
  try (conv => lhs; cbv)
  try rfl

def value5979 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4273 4269 (Flapjack.WordRegImm.imm 1032#64))))).val
theorem input11949_def : input11949 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4273 4269 (Flapjack.WordRegImm.imm 1032#64)))) := by
  unfold input11949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4273 4269 (Flapjack.WordRegImm.imm 1032#64))))).val
theorem output11949_def : output11949 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4273 4269 (Flapjack.WordRegImm.imm 1032#64)))) := by
  unfold output11949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11949_skip : Flapjack.WordAlloc.isSkip output11949 = false := by
  rw [output11949_def]
  conv => lhs; cbv
  try rfl
theorem node11949_eq : Flapjack.WordAlloc.removeDeadStructural input11949 value5978 value1 value2 = (output11949, value5979, value1) := by
  rw [input11949_def, output11949_def]
  try (conv => lhs; cbv)
  try rfl

def value5980 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4269 (Flapjack.WordLangAddr.addr 4265 18446744073709551104#64)))).val
theorem input11950_def : input11950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4269 (Flapjack.WordLangAddr.addr 4265 18446744073709551104#64))) := by
  unfold input11950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4269 (Flapjack.WordLangAddr.addr 4265 18446744073709551104#64)))).val
theorem output11950_def : output11950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4269 (Flapjack.WordLangAddr.addr 4265 18446744073709551104#64))) := by
  unfold output11950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11950_skip : Flapjack.WordAlloc.isSkip output11950 = false := by
  rw [output11950_def]
  conv => lhs; cbv
  try rfl
theorem node11950_eq : Flapjack.WordAlloc.removeDeadStructural input11950 value5979 value1 value2 = (output11950, value5980, value1) := by
  rw [input11950_def, output11950_def]
  try (conv => lhs; cbv)
  try rfl

def value5981 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4265 4261)).val
theorem input11951_def : input11951 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4265 4261) := by
  unfold input11951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4265 4261)).val
theorem output11951_def : output11951 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4265 4261) := by
  unfold output11951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11951_skip : Flapjack.WordAlloc.isSkip output11951 = false := by
  rw [output11951_def]
  conv => lhs; cbv
  try rfl
theorem node11951_eq : Flapjack.WordAlloc.removeDeadStructural input11951 value5980 value1 value2 = (output11951, value5981, value1) := by
  rw [input11951_def, output11951_def]
  try (conv => lhs; cbv)
  try rfl

def value5982 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4261 4257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11952_def : input11952 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4261 4257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4261 4257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11952_def : output11952 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4261 4257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11952_skip : Flapjack.WordAlloc.isSkip output11952 = false := by
  rw [output11952_def]
  conv => lhs; cbv
  try rfl
theorem node11952_eq : Flapjack.WordAlloc.removeDeadStructural input11952 value5981 value1 value2 = (output11952, value5982, value1) := by
  rw [input11952_def, output11952_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4257 Flapjack.WordStore.heapLength)).val
theorem input11953_def : input11953 = (Flapjack.WordLangProgHOL.get 4257 Flapjack.WordStore.heapLength) := by
  unfold input11953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4257 Flapjack.WordStore.heapLength)).val
theorem output11953_def : output11953 = (Flapjack.WordLangProgHOL.get 4257 Flapjack.WordStore.heapLength) := by
  unfold output11953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11953_skip : Flapjack.WordAlloc.isSkip output11953 = false := by
  rw [output11953_def]
  conv => lhs; cbv
  try rfl
theorem node11953_eq : Flapjack.WordAlloc.removeDeadStructural input11953 value5982 value1 value2 = (output11953, value5, value1) := by
  rw [input11953_def, output11953_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11953 input11952)).val
theorem input11954_def : input11954 = (.seq input11953 input11952) := by
  unfold input11954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11953 output11952)).val
theorem output11954_def : output11954 = (.seq output11953 output11952) := by
  unfold output11954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11954_skip : Flapjack.WordAlloc.isSkip output11954 = false := by
  rw [output11954_def]
  conv => lhs; cbv
  try rfl
theorem node11954_eq : Flapjack.WordAlloc.removeDeadStructural input11954 value5981 value1 value2 = (output11954, value5, value1) := by
  rw [input11954_def, output11954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11952_eq]
  dsimp only
  rw [node11953_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11954 input11951)).val
theorem input11955_def : input11955 = (.seq input11954 input11951) := by
  unfold input11955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11954 output11951)).val
theorem output11955_def : output11955 = (.seq output11954 output11951) := by
  unfold output11955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11955_skip : Flapjack.WordAlloc.isSkip output11955 = false := by
  rw [output11955_def]
  conv => lhs; cbv
  try rfl
theorem node11955_eq : Flapjack.WordAlloc.removeDeadStructural input11955 value5980 value1 value2 = (output11955, value5, value1) := by
  rw [input11955_def, output11955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11951_eq]
  dsimp only
  rw [node11954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11955 input11950)).val
theorem input11956_def : input11956 = (.seq input11955 input11950) := by
  unfold input11956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11955 output11950)).val
theorem output11956_def : output11956 = (.seq output11955 output11950) := by
  unfold output11956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11956_skip : Flapjack.WordAlloc.isSkip output11956 = false := by
  rw [output11956_def]
  conv => lhs; cbv
  try rfl
theorem node11956_eq : Flapjack.WordAlloc.removeDeadStructural input11956 value5979 value1 value2 = (output11956, value5, value1) := by
  rw [input11956_def, output11956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11950_eq]
  dsimp only
  rw [node11955_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11956 input11949)).val
theorem input11957_def : input11957 = (.seq input11956 input11949) := by
  unfold input11957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11956 output11949)).val
theorem output11957_def : output11957 = (.seq output11956 output11949) := by
  unfold output11957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11957_skip : Flapjack.WordAlloc.isSkip output11957 = false := by
  rw [output11957_def]
  conv => lhs; cbv
  try rfl
theorem node11957_eq : Flapjack.WordAlloc.removeDeadStructural input11957 value5978 value1 value2 = (output11957, value5, value1) := by
  rw [input11957_def, output11957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11949_eq]
  dsimp only
  rw [node11956_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5983 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 0#64)))).val
theorem input11958_def : input11958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 0#64))) := by
  unfold input11958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 0#64)))).val
theorem output11958_def : output11958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4249 (Flapjack.WordLangAddr.addr 4253 0#64))) := by
  unfold output11958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11958_skip : Flapjack.WordAlloc.isSkip output11958 = false := by
  rw [output11958_def]
  conv => lhs; cbv
  try rfl
theorem node11958_eq : Flapjack.WordAlloc.removeDeadStructural input11958 value5 value1 value2 = (output11958, value5983, value1) := by
  rw [input11958_def, output11958_def]
  try (conv => lhs; cbv)
  try rfl

def value5984 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4253, 4241)])).val
theorem input11959_def : input11959 = (Flapjack.WordLangProgHOL.move 0 [(4253, 4241)]) := by
  unfold input11959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4253, 4241)])).val
theorem output11959_def : output11959 = (Flapjack.WordLangProgHOL.move 0 [(4253, 4241)]) := by
  unfold output11959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11959_skip : Flapjack.WordAlloc.isSkip output11959 = false := by
  rw [output11959_def]
  conv => lhs; cbv
  try rfl
theorem node11959_eq : Flapjack.WordAlloc.removeDeadStructural input11959 value5983 value1 value2 = (output11959, value5984, value1) := by
  rw [input11959_def, output11959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11959 input11958)).val
theorem input11960_def : input11960 = (.seq input11959 input11958) := by
  unfold input11960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11959 output11958)).val
theorem output11960_def : output11960 = (.seq output11959 output11958) := by
  unfold output11960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11960_skip : Flapjack.WordAlloc.isSkip output11960 = false := by
  rw [output11960_def]
  conv => lhs; cbv
  try rfl
theorem node11960_eq : Flapjack.WordAlloc.removeDeadStructural input11960 value5 value1 value2 = (output11960, value5984, value1) := by
  rw [input11960_def, output11960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11958_eq]
  dsimp only
  rw [node11959_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5985 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 9907120269317136283#64))).val
theorem input11961_def : input11961 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 9907120269317136283#64)) := by
  unfold input11961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 9907120269317136283#64))).val
theorem output11961_def : output11961 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 9907120269317136283#64)) := by
  unfold output11961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11961_skip : Flapjack.WordAlloc.isSkip output11961 = false := by
  rw [output11961_def]
  conv => lhs; cbv
  try rfl
theorem node11961_eq : Flapjack.WordAlloc.removeDeadStructural input11961 value5984 value1 value2 = (output11961, value5985, value1) := by
  rw [input11961_def, output11961_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4245 9907120269317136283#64))).val
theorem input11962_def : input11962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4245 9907120269317136283#64)) := by
  unfold input11962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11962_def : output11962 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11962_skip : Flapjack.WordAlloc.isSkip output11962 = true := by
  rw [output11962_def]
  conv => lhs; cbv
  try rfl
theorem node11962_eq : Flapjack.WordAlloc.removeDeadStructural input11962 value5985 value1 value2 = (output11962, value5985, value1) := by
  rw [input11962_def, output11962_def]
  try (conv => lhs; cbv)
  try rfl

def value5986 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4241 4237 (Flapjack.WordRegImm.imm 1024#64))))).val
theorem input11963_def : input11963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4241 4237 (Flapjack.WordRegImm.imm 1024#64)))) := by
  unfold input11963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4241 4237 (Flapjack.WordRegImm.imm 1024#64))))).val
theorem output11963_def : output11963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4241 4237 (Flapjack.WordRegImm.imm 1024#64)))) := by
  unfold output11963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11963_skip : Flapjack.WordAlloc.isSkip output11963 = false := by
  rw [output11963_def]
  conv => lhs; cbv
  try rfl
theorem node11963_eq : Flapjack.WordAlloc.removeDeadStructural input11963 value5985 value1 value2 = (output11963, value5986, value1) := by
  rw [input11963_def, output11963_def]
  try (conv => lhs; cbv)
  try rfl

def value5987 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4237 (Flapjack.WordLangAddr.addr 4233 18446744073709551104#64)))).val
theorem input11964_def : input11964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4237 (Flapjack.WordLangAddr.addr 4233 18446744073709551104#64))) := by
  unfold input11964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4237 (Flapjack.WordLangAddr.addr 4233 18446744073709551104#64)))).val
theorem output11964_def : output11964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4237 (Flapjack.WordLangAddr.addr 4233 18446744073709551104#64))) := by
  unfold output11964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11964_skip : Flapjack.WordAlloc.isSkip output11964 = false := by
  rw [output11964_def]
  conv => lhs; cbv
  try rfl
theorem node11964_eq : Flapjack.WordAlloc.removeDeadStructural input11964 value5986 value1 value2 = (output11964, value5987, value1) := by
  rw [input11964_def, output11964_def]
  try (conv => lhs; cbv)
  try rfl

def value5988 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4233 4229)).val
theorem input11965_def : input11965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4233 4229) := by
  unfold input11965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4233 4229)).val
theorem output11965_def : output11965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4233 4229) := by
  unfold output11965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11965_skip : Flapjack.WordAlloc.isSkip output11965 = false := by
  rw [output11965_def]
  conv => lhs; cbv
  try rfl
theorem node11965_eq : Flapjack.WordAlloc.removeDeadStructural input11965 value5987 value1 value2 = (output11965, value5988, value1) := by
  rw [input11965_def, output11965_def]
  try (conv => lhs; cbv)
  try rfl

def value5989 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4229 4225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11966_def : input11966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4229 4225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4229 4225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11966_def : output11966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4229 4225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11966_skip : Flapjack.WordAlloc.isSkip output11966 = false := by
  rw [output11966_def]
  conv => lhs; cbv
  try rfl
theorem node11966_eq : Flapjack.WordAlloc.removeDeadStructural input11966 value5988 value1 value2 = (output11966, value5989, value1) := by
  rw [input11966_def, output11966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4225 Flapjack.WordStore.heapLength)).val
theorem input11967_def : input11967 = (Flapjack.WordLangProgHOL.get 4225 Flapjack.WordStore.heapLength) := by
  unfold input11967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4225 Flapjack.WordStore.heapLength)).val
theorem output11967_def : output11967 = (Flapjack.WordLangProgHOL.get 4225 Flapjack.WordStore.heapLength) := by
  unfold output11967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11967_skip : Flapjack.WordAlloc.isSkip output11967 = false := by
  rw [output11967_def]
  conv => lhs; cbv
  try rfl
theorem node11967_eq : Flapjack.WordAlloc.removeDeadStructural input11967 value5989 value1 value2 = (output11967, value5, value1) := by
  rw [input11967_def, output11967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11967 input11966)).val
theorem input11968_def : input11968 = (.seq input11967 input11966) := by
  unfold input11968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11967 output11966)).val
theorem output11968_def : output11968 = (.seq output11967 output11966) := by
  unfold output11968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11968_skip : Flapjack.WordAlloc.isSkip output11968 = false := by
  rw [output11968_def]
  conv => lhs; cbv
  try rfl
theorem node11968_eq : Flapjack.WordAlloc.removeDeadStructural input11968 value5988 value1 value2 = (output11968, value5, value1) := by
  rw [input11968_def, output11968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11966_eq]
  dsimp only
  rw [node11967_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11968 input11965)).val
theorem input11969_def : input11969 = (.seq input11968 input11965) := by
  unfold input11969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11968 output11965)).val
theorem output11969_def : output11969 = (.seq output11968 output11965) := by
  unfold output11969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11969_skip : Flapjack.WordAlloc.isSkip output11969 = false := by
  rw [output11969_def]
  conv => lhs; cbv
  try rfl
theorem node11969_eq : Flapjack.WordAlloc.removeDeadStructural input11969 value5987 value1 value2 = (output11969, value5, value1) := by
  rw [input11969_def, output11969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11965_eq]
  dsimp only
  rw [node11968_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11969 input11964)).val
theorem input11970_def : input11970 = (.seq input11969 input11964) := by
  unfold input11970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11969 output11964)).val
theorem output11970_def : output11970 = (.seq output11969 output11964) := by
  unfold output11970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11970_skip : Flapjack.WordAlloc.isSkip output11970 = false := by
  rw [output11970_def]
  conv => lhs; cbv
  try rfl
theorem node11970_eq : Flapjack.WordAlloc.removeDeadStructural input11970 value5986 value1 value2 = (output11970, value5, value1) := by
  rw [input11970_def, output11970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11964_eq]
  dsimp only
  rw [node11969_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11970 input11963)).val
theorem input11971_def : input11971 = (.seq input11970 input11963) := by
  unfold input11971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11970 output11963)).val
theorem output11971_def : output11971 = (.seq output11970 output11963) := by
  unfold output11971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11971_skip : Flapjack.WordAlloc.isSkip output11971 = false := by
  rw [output11971_def]
  conv => lhs; cbv
  try rfl
theorem node11971_eq : Flapjack.WordAlloc.removeDeadStructural input11971 value5985 value1 value2 = (output11971, value5, value1) := by
  rw [input11971_def, output11971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11963_eq]
  dsimp only
  rw [node11970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5990 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4217 (Flapjack.WordLangAddr.addr 4221 0#64)))).val
theorem input11972_def : input11972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4217 (Flapjack.WordLangAddr.addr 4221 0#64))) := by
  unfold input11972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4217 (Flapjack.WordLangAddr.addr 4221 0#64)))).val
theorem output11972_def : output11972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4217 (Flapjack.WordLangAddr.addr 4221 0#64))) := by
  unfold output11972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11972_skip : Flapjack.WordAlloc.isSkip output11972 = false := by
  rw [output11972_def]
  conv => lhs; cbv
  try rfl
theorem node11972_eq : Flapjack.WordAlloc.removeDeadStructural input11972 value5 value1 value2 = (output11972, value5990, value1) := by
  rw [input11972_def, output11972_def]
  try (conv => lhs; cbv)
  try rfl

def value5991 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4221, 4209)])).val
theorem input11973_def : input11973 = (Flapjack.WordLangProgHOL.move 0 [(4221, 4209)]) := by
  unfold input11973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4221, 4209)])).val
theorem output11973_def : output11973 = (Flapjack.WordLangProgHOL.move 0 [(4221, 4209)]) := by
  unfold output11973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11973_skip : Flapjack.WordAlloc.isSkip output11973 = false := by
  rw [output11973_def]
  conv => lhs; cbv
  try rfl
theorem node11973_eq : Flapjack.WordAlloc.removeDeadStructural input11973 value5990 value1 value2 = (output11973, value5991, value1) := by
  rw [input11973_def, output11973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11973 input11972)).val
theorem input11974_def : input11974 = (.seq input11973 input11972) := by
  unfold input11974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11973 output11972)).val
theorem output11974_def : output11974 = (.seq output11973 output11972) := by
  unfold output11974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11974_skip : Flapjack.WordAlloc.isSkip output11974 = false := by
  rw [output11974_def]
  conv => lhs; cbv
  try rfl
theorem node11974_eq : Flapjack.WordAlloc.removeDeadStructural input11974 value5 value1 value2 = (output11974, value5991, value1) := by
  rw [input11974_def, output11974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11972_eq]
  dsimp only
  rw [node11973_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5992 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4653388206581612541#64))).val
theorem input11975_def : input11975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4653388206581612541#64)) := by
  unfold input11975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4653388206581612541#64))).val
theorem output11975_def : output11975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4653388206581612541#64)) := by
  unfold output11975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11975_skip : Flapjack.WordAlloc.isSkip output11975 = false := by
  rw [output11975_def]
  conv => lhs; cbv
  try rfl
theorem node11975_eq : Flapjack.WordAlloc.removeDeadStructural input11975 value5991 value1 value2 = (output11975, value5992, value1) := by
  rw [input11975_def, output11975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4213 4653388206581612541#64))).val
theorem input11976_def : input11976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4213 4653388206581612541#64)) := by
  unfold input11976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11976_def : output11976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11976_skip : Flapjack.WordAlloc.isSkip output11976 = true := by
  rw [output11976_def]
  conv => lhs; cbv
  try rfl
theorem node11976_eq : Flapjack.WordAlloc.removeDeadStructural input11976 value5992 value1 value2 = (output11976, value5992, value1) := by
  rw [input11976_def, output11976_def]
  try (conv => lhs; cbv)
  try rfl

def value5993 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4209 4205 (Flapjack.WordRegImm.imm 1016#64))))).val
theorem input11977_def : input11977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4209 4205 (Flapjack.WordRegImm.imm 1016#64)))) := by
  unfold input11977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4209 4205 (Flapjack.WordRegImm.imm 1016#64))))).val
theorem output11977_def : output11977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4209 4205 (Flapjack.WordRegImm.imm 1016#64)))) := by
  unfold output11977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11977_skip : Flapjack.WordAlloc.isSkip output11977 = false := by
  rw [output11977_def]
  conv => lhs; cbv
  try rfl
theorem node11977_eq : Flapjack.WordAlloc.removeDeadStructural input11977 value5992 value1 value2 = (output11977, value5993, value1) := by
  rw [input11977_def, output11977_def]
  try (conv => lhs; cbv)
  try rfl

def value5994 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4205 (Flapjack.WordLangAddr.addr 4201 18446744073709551104#64)))).val
theorem input11978_def : input11978 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4205 (Flapjack.WordLangAddr.addr 4201 18446744073709551104#64))) := by
  unfold input11978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4205 (Flapjack.WordLangAddr.addr 4201 18446744073709551104#64)))).val
theorem output11978_def : output11978 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4205 (Flapjack.WordLangAddr.addr 4201 18446744073709551104#64))) := by
  unfold output11978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11978_skip : Flapjack.WordAlloc.isSkip output11978 = false := by
  rw [output11978_def]
  conv => lhs; cbv
  try rfl
theorem node11978_eq : Flapjack.WordAlloc.removeDeadStructural input11978 value5993 value1 value2 = (output11978, value5994, value1) := by
  rw [input11978_def, output11978_def]
  try (conv => lhs; cbv)
  try rfl

def value5995 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4201 4197)).val
theorem input11979_def : input11979 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4201 4197) := by
  unfold input11979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4201 4197)).val
theorem output11979_def : output11979 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4201 4197) := by
  unfold output11979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11979_skip : Flapjack.WordAlloc.isSkip output11979 = false := by
  rw [output11979_def]
  conv => lhs; cbv
  try rfl
theorem node11979_eq : Flapjack.WordAlloc.removeDeadStructural input11979 value5994 value1 value2 = (output11979, value5995, value1) := by
  rw [input11979_def, output11979_def]
  try (conv => lhs; cbv)
  try rfl

def value5996 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4197 4193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11980_def : input11980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4197 4193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4197 4193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11980_def : output11980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4197 4193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11980_skip : Flapjack.WordAlloc.isSkip output11980 = false := by
  rw [output11980_def]
  conv => lhs; cbv
  try rfl
theorem node11980_eq : Flapjack.WordAlloc.removeDeadStructural input11980 value5995 value1 value2 = (output11980, value5996, value1) := by
  rw [input11980_def, output11980_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4193 Flapjack.WordStore.heapLength)).val
theorem input11981_def : input11981 = (Flapjack.WordLangProgHOL.get 4193 Flapjack.WordStore.heapLength) := by
  unfold input11981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4193 Flapjack.WordStore.heapLength)).val
theorem output11981_def : output11981 = (Flapjack.WordLangProgHOL.get 4193 Flapjack.WordStore.heapLength) := by
  unfold output11981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11981_skip : Flapjack.WordAlloc.isSkip output11981 = false := by
  rw [output11981_def]
  conv => lhs; cbv
  try rfl
theorem node11981_eq : Flapjack.WordAlloc.removeDeadStructural input11981 value5996 value1 value2 = (output11981, value5, value1) := by
  rw [input11981_def, output11981_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11981 input11980)).val
theorem input11982_def : input11982 = (.seq input11981 input11980) := by
  unfold input11982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11981 output11980)).val
theorem output11982_def : output11982 = (.seq output11981 output11980) := by
  unfold output11982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11982_skip : Flapjack.WordAlloc.isSkip output11982 = false := by
  rw [output11982_def]
  conv => lhs; cbv
  try rfl
theorem node11982_eq : Flapjack.WordAlloc.removeDeadStructural input11982 value5995 value1 value2 = (output11982, value5, value1) := by
  rw [input11982_def, output11982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11980_eq]
  dsimp only
  rw [node11981_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11982 input11979)).val
theorem input11983_def : input11983 = (.seq input11982 input11979) := by
  unfold input11983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11982 output11979)).val
theorem output11983_def : output11983 = (.seq output11982 output11979) := by
  unfold output11983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11983_skip : Flapjack.WordAlloc.isSkip output11983 = false := by
  rw [output11983_def]
  conv => lhs; cbv
  try rfl
theorem node11983_eq : Flapjack.WordAlloc.removeDeadStructural input11983 value5994 value1 value2 = (output11983, value5, value1) := by
  rw [input11983_def, output11983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11979_eq]
  dsimp only
  rw [node11982_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11983 input11978)).val
theorem input11984_def : input11984 = (.seq input11983 input11978) := by
  unfold input11984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11983 output11978)).val
theorem output11984_def : output11984 = (.seq output11983 output11978) := by
  unfold output11984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11984_skip : Flapjack.WordAlloc.isSkip output11984 = false := by
  rw [output11984_def]
  conv => lhs; cbv
  try rfl
theorem node11984_eq : Flapjack.WordAlloc.removeDeadStructural input11984 value5993 value1 value2 = (output11984, value5, value1) := by
  rw [input11984_def, output11984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11978_eq]
  dsimp only
  rw [node11983_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11984 input11977)).val
theorem input11985_def : input11985 = (.seq input11984 input11977) := by
  unfold input11985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11984 output11977)).val
theorem output11985_def : output11985 = (.seq output11984 output11977) := by
  unfold output11985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11985_skip : Flapjack.WordAlloc.isSkip output11985 = false := by
  rw [output11985_def]
  conv => lhs; cbv
  try rfl
theorem node11985_eq : Flapjack.WordAlloc.removeDeadStructural input11985 value5992 value1 value2 = (output11985, value5, value1) := by
  rw [input11985_def, output11985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11977_eq]
  dsimp only
  rw [node11984_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5997 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4185 (Flapjack.WordLangAddr.addr 4189 0#64)))).val
theorem input11986_def : input11986 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4185 (Flapjack.WordLangAddr.addr 4189 0#64))) := by
  unfold input11986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4185 (Flapjack.WordLangAddr.addr 4189 0#64)))).val
theorem output11986_def : output11986 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4185 (Flapjack.WordLangAddr.addr 4189 0#64))) := by
  unfold output11986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11986_skip : Flapjack.WordAlloc.isSkip output11986 = false := by
  rw [output11986_def]
  conv => lhs; cbv
  try rfl
theorem node11986_eq : Flapjack.WordAlloc.removeDeadStructural input11986 value5 value1 value2 = (output11986, value5997, value1) := by
  rw [input11986_def, output11986_def]
  try (conv => lhs; cbv)
  try rfl

def value5998 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4189, 4177)])).val
theorem input11987_def : input11987 = (Flapjack.WordLangProgHOL.move 0 [(4189, 4177)]) := by
  unfold input11987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4189, 4177)])).val
theorem output11987_def : output11987 = (Flapjack.WordLangProgHOL.move 0 [(4189, 4177)]) := by
  unfold output11987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11987_skip : Flapjack.WordAlloc.isSkip output11987 = false := by
  rw [output11987_def]
  conv => lhs; cbv
  try rfl
theorem node11987_eq : Flapjack.WordAlloc.removeDeadStructural input11987 value5997 value1 value2 = (output11987, value5998, value1) := by
  rw [input11987_def, output11987_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11987 input11986)).val
theorem input11988_def : input11988 = (.seq input11987 input11986) := by
  unfold input11988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11987 output11986)).val
theorem output11988_def : output11988 = (.seq output11987 output11986) := by
  unfold output11988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11988_skip : Flapjack.WordAlloc.isSkip output11988 = false := by
  rw [output11988_def]
  conv => lhs; cbv
  try rfl
theorem node11988_eq : Flapjack.WordAlloc.removeDeadStructural input11988 value5 value1 value2 = (output11988, value5998, value1) := by
  rw [input11988_def, output11988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11986_eq]
  dsimp only
  rw [node11987_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5999 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 10087218740379822764#64))).val
theorem input11989_def : input11989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 10087218740379822764#64)) := by
  unfold input11989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 10087218740379822764#64))).val
theorem output11989_def : output11989 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 10087218740379822764#64)) := by
  unfold output11989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11989_skip : Flapjack.WordAlloc.isSkip output11989 = false := by
  rw [output11989_def]
  conv => lhs; cbv
  try rfl
theorem node11989_eq : Flapjack.WordAlloc.removeDeadStructural input11989 value5998 value1 value2 = (output11989, value5999, value1) := by
  rw [input11989_def, output11989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4181 10087218740379822764#64))).val
theorem input11990_def : input11990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4181 10087218740379822764#64)) := by
  unfold input11990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11990_def : output11990 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11990_skip : Flapjack.WordAlloc.isSkip output11990 = true := by
  rw [output11990_def]
  conv => lhs; cbv
  try rfl
theorem node11990_eq : Flapjack.WordAlloc.removeDeadStructural input11990 value5999 value1 value2 = (output11990, value5999, value1) := by
  rw [input11990_def, output11990_def]
  try (conv => lhs; cbv)
  try rfl

def value6000 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4177 4173 (Flapjack.WordRegImm.imm 1008#64))))).val
theorem input11991_def : input11991 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4177 4173 (Flapjack.WordRegImm.imm 1008#64)))) := by
  unfold input11991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4177 4173 (Flapjack.WordRegImm.imm 1008#64))))).val
theorem output11991_def : output11991 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4177 4173 (Flapjack.WordRegImm.imm 1008#64)))) := by
  unfold output11991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11991_skip : Flapjack.WordAlloc.isSkip output11991 = false := by
  rw [output11991_def]
  conv => lhs; cbv
  try rfl
theorem node11991_eq : Flapjack.WordAlloc.removeDeadStructural input11991 value5999 value1 value2 = (output11991, value6000, value1) := by
  rw [input11991_def, output11991_def]
  try (conv => lhs; cbv)
  try rfl

def value6001 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4173 (Flapjack.WordLangAddr.addr 4169 18446744073709551104#64)))).val
theorem input11992_def : input11992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4173 (Flapjack.WordLangAddr.addr 4169 18446744073709551104#64))) := by
  unfold input11992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4173 (Flapjack.WordLangAddr.addr 4169 18446744073709551104#64)))).val
theorem output11992_def : output11992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4173 (Flapjack.WordLangAddr.addr 4169 18446744073709551104#64))) := by
  unfold output11992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11992_skip : Flapjack.WordAlloc.isSkip output11992 = false := by
  rw [output11992_def]
  conv => lhs; cbv
  try rfl
theorem node11992_eq : Flapjack.WordAlloc.removeDeadStructural input11992 value6000 value1 value2 = (output11992, value6001, value1) := by
  rw [input11992_def, output11992_def]
  try (conv => lhs; cbv)
  try rfl

def value6002 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4169 4165)).val
theorem input11993_def : input11993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4169 4165) := by
  unfold input11993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4169 4165)).val
theorem output11993_def : output11993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4169 4165) := by
  unfold output11993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11993_skip : Flapjack.WordAlloc.isSkip output11993 = false := by
  rw [output11993_def]
  conv => lhs; cbv
  try rfl
theorem node11993_eq : Flapjack.WordAlloc.removeDeadStructural input11993 value6001 value1 value2 = (output11993, value6002, value1) := by
  rw [input11993_def, output11993_def]
  try (conv => lhs; cbv)
  try rfl

def value6003 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4165 4161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11994_def : input11994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4165 4161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4165 4161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11994_def : output11994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4165 4161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11994_skip : Flapjack.WordAlloc.isSkip output11994 = false := by
  rw [output11994_def]
  conv => lhs; cbv
  try rfl
theorem node11994_eq : Flapjack.WordAlloc.removeDeadStructural input11994 value6002 value1 value2 = (output11994, value6003, value1) := by
  rw [input11994_def, output11994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4161 Flapjack.WordStore.heapLength)).val
theorem input11995_def : input11995 = (Flapjack.WordLangProgHOL.get 4161 Flapjack.WordStore.heapLength) := by
  unfold input11995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4161 Flapjack.WordStore.heapLength)).val
theorem output11995_def : output11995 = (Flapjack.WordLangProgHOL.get 4161 Flapjack.WordStore.heapLength) := by
  unfold output11995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11995_skip : Flapjack.WordAlloc.isSkip output11995 = false := by
  rw [output11995_def]
  conv => lhs; cbv
  try rfl
theorem node11995_eq : Flapjack.WordAlloc.removeDeadStructural input11995 value6003 value1 value2 = (output11995, value5, value1) := by
  rw [input11995_def, output11995_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11995 input11994)).val
theorem input11996_def : input11996 = (.seq input11995 input11994) := by
  unfold input11996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11995 output11994)).val
theorem output11996_def : output11996 = (.seq output11995 output11994) := by
  unfold output11996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11996_skip : Flapjack.WordAlloc.isSkip output11996 = false := by
  rw [output11996_def]
  conv => lhs; cbv
  try rfl
theorem node11996_eq : Flapjack.WordAlloc.removeDeadStructural input11996 value6002 value1 value2 = (output11996, value5, value1) := by
  rw [input11996_def, output11996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11994_eq]
  dsimp only
  rw [node11995_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11996 input11993)).val
theorem input11997_def : input11997 = (.seq input11996 input11993) := by
  unfold input11997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11996 output11993)).val
theorem output11997_def : output11997 = (.seq output11996 output11993) := by
  unfold output11997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11997_skip : Flapjack.WordAlloc.isSkip output11997 = false := by
  rw [output11997_def]
  conv => lhs; cbv
  try rfl
theorem node11997_eq : Flapjack.WordAlloc.removeDeadStructural input11997 value6001 value1 value2 = (output11997, value5, value1) := by
  rw [input11997_def, output11997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11993_eq]
  dsimp only
  rw [node11996_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11997 input11992)).val
theorem input11998_def : input11998 = (.seq input11997 input11992) := by
  unfold input11998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11997 output11992)).val
theorem output11998_def : output11998 = (.seq output11997 output11992) := by
  unfold output11998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11998_skip : Flapjack.WordAlloc.isSkip output11998 = false := by
  rw [output11998_def]
  conv => lhs; cbv
  try rfl
theorem node11998_eq : Flapjack.WordAlloc.removeDeadStructural input11998 value6000 value1 value2 = (output11998, value5, value1) := by
  rw [input11998_def, output11998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11992_eq]
  dsimp only
  rw [node11997_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11998 input11991)).val
theorem input11999_def : input11999 = (.seq input11998 input11991) := by
  unfold input11999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11998 output11991)).val
theorem output11999_def : output11999 = (.seq output11998 output11991) := by
  unfold output11999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11999_skip : Flapjack.WordAlloc.isSkip output11999 = false := by
  rw [output11999_def]
  conv => lhs; cbv
  try rfl
theorem node11999_eq : Flapjack.WordAlloc.removeDeadStructural input11999 value5999 value1 value2 = (output11999, value5, value1) := by
  rw [input11999_def, output11999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11991_eq]
  dsimp only
  rw [node11998_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6004 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4153 (Flapjack.WordLangAddr.addr 4157 0#64)))).val
theorem input12000_def : input12000 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4153 (Flapjack.WordLangAddr.addr 4157 0#64))) := by
  unfold input12000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4153 (Flapjack.WordLangAddr.addr 4157 0#64)))).val
theorem output12000_def : output12000 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4153 (Flapjack.WordLangAddr.addr 4157 0#64))) := by
  unfold output12000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12000_skip : Flapjack.WordAlloc.isSkip output12000 = false := by
  rw [output12000_def]
  conv => lhs; cbv
  try rfl
theorem node12000_eq : Flapjack.WordAlloc.removeDeadStructural input12000 value5 value1 value2 = (output12000, value6004, value1) := by
  rw [input12000_def, output12000_def]
  try (conv => lhs; cbv)
  try rfl

def value6005 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4157, 4145)])).val
theorem input12001_def : input12001 = (Flapjack.WordLangProgHOL.move 0 [(4157, 4145)]) := by
  unfold input12001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4157, 4145)])).val
theorem output12001_def : output12001 = (Flapjack.WordLangProgHOL.move 0 [(4157, 4145)]) := by
  unfold output12001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12001_skip : Flapjack.WordAlloc.isSkip output12001 = false := by
  rw [output12001_def]
  conv => lhs; cbv
  try rfl
theorem node12001_eq : Flapjack.WordAlloc.removeDeadStructural input12001 value6004 value1 value2 = (output12001, value6005, value1) := by
  rw [input12001_def, output12001_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12001 input12000)).val
theorem input12002_def : input12002 = (.seq input12001 input12000) := by
  unfold input12002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12001 output12000)).val
theorem output12002_def : output12002 = (.seq output12001 output12000) := by
  unfold output12002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12002_skip : Flapjack.WordAlloc.isSkip output12002 = false := by
  rw [output12002_def]
  conv => lhs; cbv
  try rfl
theorem node12002_eq : Flapjack.WordAlloc.removeDeadStructural input12002 value5 value1 value2 = (output12002, value6005, value1) := by
  rw [input12002_def, output12002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12000_eq]
  dsimp only
  rw [node12001_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6006 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4153 0#64))).val
theorem input12003_def : input12003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4153 0#64)) := by
  unfold input12003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4153 0#64))).val
theorem output12003_def : output12003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4153 0#64)) := by
  unfold output12003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12003_skip : Flapjack.WordAlloc.isSkip output12003 = false := by
  rw [output12003_def]
  conv => lhs; cbv
  try rfl
theorem node12003_eq : Flapjack.WordAlloc.removeDeadStructural input12003 value6005 value1 value2 = (output12003, value6006, value1) := by
  rw [input12003_def, output12003_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4149 0#64))).val
theorem input12004_def : input12004 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4149 0#64)) := by
  unfold input12004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12004_def : output12004 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12004_skip : Flapjack.WordAlloc.isSkip output12004 = true := by
  rw [output12004_def]
  conv => lhs; cbv
  try rfl
theorem node12004_eq : Flapjack.WordAlloc.removeDeadStructural input12004 value6006 value1 value2 = (output12004, value6006, value1) := by
  rw [input12004_def, output12004_def]
  try (conv => lhs; cbv)
  try rfl

def value6007 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4145 4141 (Flapjack.WordRegImm.imm 1000#64))))).val
theorem input12005_def : input12005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4145 4141 (Flapjack.WordRegImm.imm 1000#64)))) := by
  unfold input12005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4145 4141 (Flapjack.WordRegImm.imm 1000#64))))).val
theorem output12005_def : output12005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4145 4141 (Flapjack.WordRegImm.imm 1000#64)))) := by
  unfold output12005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12005_skip : Flapjack.WordAlloc.isSkip output12005 = false := by
  rw [output12005_def]
  conv => lhs; cbv
  try rfl
theorem node12005_eq : Flapjack.WordAlloc.removeDeadStructural input12005 value6006 value1 value2 = (output12005, value6007, value1) := by
  rw [input12005_def, output12005_def]
  try (conv => lhs; cbv)
  try rfl

def value6008 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4141 (Flapjack.WordLangAddr.addr 4137 18446744073709551104#64)))).val
theorem input12006_def : input12006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4141 (Flapjack.WordLangAddr.addr 4137 18446744073709551104#64))) := by
  unfold input12006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4141 (Flapjack.WordLangAddr.addr 4137 18446744073709551104#64)))).val
theorem output12006_def : output12006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4141 (Flapjack.WordLangAddr.addr 4137 18446744073709551104#64))) := by
  unfold output12006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12006_skip : Flapjack.WordAlloc.isSkip output12006 = false := by
  rw [output12006_def]
  conv => lhs; cbv
  try rfl
theorem node12006_eq : Flapjack.WordAlloc.removeDeadStructural input12006 value6007 value1 value2 = (output12006, value6008, value1) := by
  rw [input12006_def, output12006_def]
  try (conv => lhs; cbv)
  try rfl

def value6009 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4137 4133)).val
theorem input12007_def : input12007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4137 4133) := by
  unfold input12007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4137 4133)).val
theorem output12007_def : output12007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4137 4133) := by
  unfold output12007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12007_skip : Flapjack.WordAlloc.isSkip output12007 = false := by
  rw [output12007_def]
  conv => lhs; cbv
  try rfl
theorem node12007_eq : Flapjack.WordAlloc.removeDeadStructural input12007 value6008 value1 value2 = (output12007, value6009, value1) := by
  rw [input12007_def, output12007_def]
  try (conv => lhs; cbv)
  try rfl

def value6010 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4133 4129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12008_def : input12008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4133 4129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4133 4129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12008_def : output12008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4133 4129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12008_skip : Flapjack.WordAlloc.isSkip output12008 = false := by
  rw [output12008_def]
  conv => lhs; cbv
  try rfl
theorem node12008_eq : Flapjack.WordAlloc.removeDeadStructural input12008 value6009 value1 value2 = (output12008, value6010, value1) := by
  rw [input12008_def, output12008_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4129 Flapjack.WordStore.heapLength)).val
theorem input12009_def : input12009 = (Flapjack.WordLangProgHOL.get 4129 Flapjack.WordStore.heapLength) := by
  unfold input12009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4129 Flapjack.WordStore.heapLength)).val
theorem output12009_def : output12009 = (Flapjack.WordLangProgHOL.get 4129 Flapjack.WordStore.heapLength) := by
  unfold output12009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12009_skip : Flapjack.WordAlloc.isSkip output12009 = false := by
  rw [output12009_def]
  conv => lhs; cbv
  try rfl
theorem node12009_eq : Flapjack.WordAlloc.removeDeadStructural input12009 value6010 value1 value2 = (output12009, value5, value1) := by
  rw [input12009_def, output12009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12009 input12008)).val
theorem input12010_def : input12010 = (.seq input12009 input12008) := by
  unfold input12010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12009 output12008)).val
theorem output12010_def : output12010 = (.seq output12009 output12008) := by
  unfold output12010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12010_skip : Flapjack.WordAlloc.isSkip output12010 = false := by
  rw [output12010_def]
  conv => lhs; cbv
  try rfl
theorem node12010_eq : Flapjack.WordAlloc.removeDeadStructural input12010 value6009 value1 value2 = (output12010, value5, value1) := by
  rw [input12010_def, output12010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12008_eq]
  dsimp only
  rw [node12009_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12010 input12007)).val
theorem input12011_def : input12011 = (.seq input12010 input12007) := by
  unfold input12011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12010 output12007)).val
theorem output12011_def : output12011 = (.seq output12010 output12007) := by
  unfold output12011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12011_skip : Flapjack.WordAlloc.isSkip output12011 = false := by
  rw [output12011_def]
  conv => lhs; cbv
  try rfl
theorem node12011_eq : Flapjack.WordAlloc.removeDeadStructural input12011 value6008 value1 value2 = (output12011, value5, value1) := by
  rw [input12011_def, output12011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12007_eq]
  dsimp only
  rw [node12010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12011 input12006)).val
theorem input12012_def : input12012 = (.seq input12011 input12006) := by
  unfold input12012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12011 output12006)).val
theorem output12012_def : output12012 = (.seq output12011 output12006) := by
  unfold output12012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12012_skip : Flapjack.WordAlloc.isSkip output12012 = false := by
  rw [output12012_def]
  conv => lhs; cbv
  try rfl
theorem node12012_eq : Flapjack.WordAlloc.removeDeadStructural input12012 value6007 value1 value2 = (output12012, value5, value1) := by
  rw [input12012_def, output12012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12006_eq]
  dsimp only
  rw [node12011_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12012 input12005)).val
theorem input12013_def : input12013 = (.seq input12012 input12005) := by
  unfold input12013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12012 output12005)).val
theorem output12013_def : output12013 = (.seq output12012 output12005) := by
  unfold output12013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12013_skip : Flapjack.WordAlloc.isSkip output12013 = false := by
  rw [output12013_def]
  conv => lhs; cbv
  try rfl
theorem node12013_eq : Flapjack.WordAlloc.removeDeadStructural input12013 value6006 value1 value2 = (output12013, value5, value1) := by
  rw [input12013_def, output12013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12005_eq]
  dsimp only
  rw [node12012_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6011 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4121 (Flapjack.WordLangAddr.addr 4125 0#64)))).val
theorem input12014_def : input12014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4121 (Flapjack.WordLangAddr.addr 4125 0#64))) := by
  unfold input12014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4121 (Flapjack.WordLangAddr.addr 4125 0#64)))).val
theorem output12014_def : output12014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4121 (Flapjack.WordLangAddr.addr 4125 0#64))) := by
  unfold output12014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12014_skip : Flapjack.WordAlloc.isSkip output12014 = false := by
  rw [output12014_def]
  conv => lhs; cbv
  try rfl
theorem node12014_eq : Flapjack.WordAlloc.removeDeadStructural input12014 value5 value1 value2 = (output12014, value6011, value1) := by
  rw [input12014_def, output12014_def]
  try (conv => lhs; cbv)
  try rfl

def value6012 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4125, 4113)])).val
theorem input12015_def : input12015 = (Flapjack.WordLangProgHOL.move 0 [(4125, 4113)]) := by
  unfold input12015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4125, 4113)])).val
theorem output12015_def : output12015 = (Flapjack.WordLangProgHOL.move 0 [(4125, 4113)]) := by
  unfold output12015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12015_skip : Flapjack.WordAlloc.isSkip output12015 = false := by
  rw [output12015_def]
  conv => lhs; cbv
  try rfl
theorem node12015_eq : Flapjack.WordAlloc.removeDeadStructural input12015 value6011 value1 value2 = (output12015, value6012, value1) := by
  rw [input12015_def, output12015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12015 input12014)).val
theorem input12016_def : input12016 = (.seq input12015 input12014) := by
  unfold input12016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12015 output12014)).val
theorem output12016_def : output12016 = (.seq output12015 output12014) := by
  unfold output12016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12016_skip : Flapjack.WordAlloc.isSkip output12016 = false := by
  rw [output12016_def]
  conv => lhs; cbv
  try rfl
theorem node12016_eq : Flapjack.WordAlloc.removeDeadStructural input12016 value5 value1 value2 = (output12016, value6012, value1) := by
  rw [input12016_def, output12016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12014_eq]
  dsimp only
  rw [node12015_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6013 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 0#64))).val
theorem input12017_def : input12017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 0#64)) := by
  unfold input12017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 0#64))).val
theorem output12017_def : output12017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4121 0#64)) := by
  unfold output12017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12017_skip : Flapjack.WordAlloc.isSkip output12017 = false := by
  rw [output12017_def]
  conv => lhs; cbv
  try rfl
theorem node12017_eq : Flapjack.WordAlloc.removeDeadStructural input12017 value6012 value1 value2 = (output12017, value6013, value1) := by
  rw [input12017_def, output12017_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4117 0#64))).val
theorem input12018_def : input12018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4117 0#64)) := by
  unfold input12018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12018_def : output12018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12018_skip : Flapjack.WordAlloc.isSkip output12018 = true := by
  rw [output12018_def]
  conv => lhs; cbv
  try rfl
theorem node12018_eq : Flapjack.WordAlloc.removeDeadStructural input12018 value6013 value1 value2 = (output12018, value6013, value1) := by
  rw [input12018_def, output12018_def]
  try (conv => lhs; cbv)
  try rfl

def value6014 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 992#64))))).val
theorem input12019_def : input12019 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 992#64)))) := by
  unfold input12019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 992#64))))).val
theorem output12019_def : output12019 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4113 4109 (Flapjack.WordRegImm.imm 992#64)))) := by
  unfold output12019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12019_skip : Flapjack.WordAlloc.isSkip output12019 = false := by
  rw [output12019_def]
  conv => lhs; cbv
  try rfl
theorem node12019_eq : Flapjack.WordAlloc.removeDeadStructural input12019 value6013 value1 value2 = (output12019, value6014, value1) := by
  rw [input12019_def, output12019_def]
  try (conv => lhs; cbv)
  try rfl

def value6015 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4109 (Flapjack.WordLangAddr.addr 4105 18446744073709551104#64)))).val
theorem input12020_def : input12020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4109 (Flapjack.WordLangAddr.addr 4105 18446744073709551104#64))) := by
  unfold input12020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4109 (Flapjack.WordLangAddr.addr 4105 18446744073709551104#64)))).val
theorem output12020_def : output12020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4109 (Flapjack.WordLangAddr.addr 4105 18446744073709551104#64))) := by
  unfold output12020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12020_skip : Flapjack.WordAlloc.isSkip output12020 = false := by
  rw [output12020_def]
  conv => lhs; cbv
  try rfl
theorem node12020_eq : Flapjack.WordAlloc.removeDeadStructural input12020 value6014 value1 value2 = (output12020, value6015, value1) := by
  rw [input12020_def, output12020_def]
  try (conv => lhs; cbv)
  try rfl

def value6016 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4105 4101)).val
theorem input12021_def : input12021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4105 4101) := by
  unfold input12021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4105 4101)).val
theorem output12021_def : output12021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4105 4101) := by
  unfold output12021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12021_skip : Flapjack.WordAlloc.isSkip output12021 = false := by
  rw [output12021_def]
  conv => lhs; cbv
  try rfl
theorem node12021_eq : Flapjack.WordAlloc.removeDeadStructural input12021 value6015 value1 value2 = (output12021, value6016, value1) := by
  rw [input12021_def, output12021_def]
  try (conv => lhs; cbv)
  try rfl

def value6017 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4101 4097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12022_def : input12022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4101 4097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4101 4097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12022_def : output12022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4101 4097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12022_skip : Flapjack.WordAlloc.isSkip output12022 = false := by
  rw [output12022_def]
  conv => lhs; cbv
  try rfl
theorem node12022_eq : Flapjack.WordAlloc.removeDeadStructural input12022 value6016 value1 value2 = (output12022, value6017, value1) := by
  rw [input12022_def, output12022_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4097 Flapjack.WordStore.heapLength)).val
theorem input12023_def : input12023 = (Flapjack.WordLangProgHOL.get 4097 Flapjack.WordStore.heapLength) := by
  unfold input12023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4097 Flapjack.WordStore.heapLength)).val
theorem output12023_def : output12023 = (Flapjack.WordLangProgHOL.get 4097 Flapjack.WordStore.heapLength) := by
  unfold output12023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12023_skip : Flapjack.WordAlloc.isSkip output12023 = false := by
  rw [output12023_def]
  conv => lhs; cbv
  try rfl
theorem node12023_eq : Flapjack.WordAlloc.removeDeadStructural input12023 value6017 value1 value2 = (output12023, value5, value1) := by
  rw [input12023_def, output12023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12023 input12022)).val
theorem input12024_def : input12024 = (.seq input12023 input12022) := by
  unfold input12024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12023 output12022)).val
theorem output12024_def : output12024 = (.seq output12023 output12022) := by
  unfold output12024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12024_skip : Flapjack.WordAlloc.isSkip output12024 = false := by
  rw [output12024_def]
  conv => lhs; cbv
  try rfl
theorem node12024_eq : Flapjack.WordAlloc.removeDeadStructural input12024 value6016 value1 value2 = (output12024, value5, value1) := by
  rw [input12024_def, output12024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12022_eq]
  dsimp only
  rw [node12023_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12024 input12021)).val
theorem input12025_def : input12025 = (.seq input12024 input12021) := by
  unfold input12025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12024 output12021)).val
theorem output12025_def : output12025 = (.seq output12024 output12021) := by
  unfold output12025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12025_skip : Flapjack.WordAlloc.isSkip output12025 = false := by
  rw [output12025_def]
  conv => lhs; cbv
  try rfl
theorem node12025_eq : Flapjack.WordAlloc.removeDeadStructural input12025 value6015 value1 value2 = (output12025, value5, value1) := by
  rw [input12025_def, output12025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12021_eq]
  dsimp only
  rw [node12024_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12025 input12020)).val
theorem input12026_def : input12026 = (.seq input12025 input12020) := by
  unfold input12026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12025 output12020)).val
theorem output12026_def : output12026 = (.seq output12025 output12020) := by
  unfold output12026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12026_skip : Flapjack.WordAlloc.isSkip output12026 = false := by
  rw [output12026_def]
  conv => lhs; cbv
  try rfl
theorem node12026_eq : Flapjack.WordAlloc.removeDeadStructural input12026 value6014 value1 value2 = (output12026, value5, value1) := by
  rw [input12026_def, output12026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12020_eq]
  dsimp only
  rw [node12025_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12026 input12019)).val
theorem input12027_def : input12027 = (.seq input12026 input12019) := by
  unfold input12027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12026 output12019)).val
theorem output12027_def : output12027 = (.seq output12026 output12019) := by
  unfold output12027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12027_skip : Flapjack.WordAlloc.isSkip output12027 = false := by
  rw [output12027_def]
  conv => lhs; cbv
  try rfl
theorem node12027_eq : Flapjack.WordAlloc.removeDeadStructural input12027 value6013 value1 value2 = (output12027, value5, value1) := by
  rw [input12027_def, output12027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12019_eq]
  dsimp only
  rw [node12026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6018 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 0#64)))).val
theorem input12028_def : input12028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 0#64))) := by
  unfold input12028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 0#64)))).val
theorem output12028_def : output12028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4089 (Flapjack.WordLangAddr.addr 4093 0#64))) := by
  unfold output12028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12028_skip : Flapjack.WordAlloc.isSkip output12028 = false := by
  rw [output12028_def]
  conv => lhs; cbv
  try rfl
theorem node12028_eq : Flapjack.WordAlloc.removeDeadStructural input12028 value5 value1 value2 = (output12028, value6018, value1) := by
  rw [input12028_def, output12028_def]
  try (conv => lhs; cbv)
  try rfl

def value6019 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4093, 4081)])).val
theorem input12029_def : input12029 = (Flapjack.WordLangProgHOL.move 0 [(4093, 4081)]) := by
  unfold input12029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4093, 4081)])).val
theorem output12029_def : output12029 = (Flapjack.WordLangProgHOL.move 0 [(4093, 4081)]) := by
  unfold output12029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12029_skip : Flapjack.WordAlloc.isSkip output12029 = false := by
  rw [output12029_def]
  conv => lhs; cbv
  try rfl
theorem node12029_eq : Flapjack.WordAlloc.removeDeadStructural input12029 value6018 value1 value2 = (output12029, value6019, value1) := by
  rw [input12029_def, output12029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12029 input12028)).val
theorem input12030_def : input12030 = (.seq input12029 input12028) := by
  unfold input12030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12029 output12028)).val
theorem output12030_def : output12030 = (.seq output12029 output12028) := by
  unfold output12030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12030_skip : Flapjack.WordAlloc.isSkip output12030 = false := by
  rw [output12030_def]
  conv => lhs; cbv
  try rfl
theorem node12030_eq : Flapjack.WordAlloc.removeDeadStructural input12030 value5 value1 value2 = (output12030, value6019, value1) := by
  rw [input12030_def, output12030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12028_eq]
  dsimp only
  rw [node12029_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6020 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64))).val
theorem input12031_def : input12031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64)) := by
  unfold input12031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64))).val
theorem output12031_def : output12031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64)) := by
  unfold output12031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12031_skip : Flapjack.WordAlloc.isSkip output12031 = false := by
  rw [output12031_def]
  conv => lhs; cbv
  try rfl
theorem node12031_eq : Flapjack.WordAlloc.removeDeadStructural input12031 value6019 value1 value2 = (output12031, value6020, value1) := by
  rw [input12031_def, output12031_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node12031_eq
end InitECandidate.Proofs.DeadStages713
