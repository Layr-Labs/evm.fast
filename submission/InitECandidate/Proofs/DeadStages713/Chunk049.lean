import InitECandidate.Proofs.DeadStages713.Chunk048
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input12544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12543 input12538)).val
theorem input12544_def : input12544 = (.seq input12543 input12538) := by
  unfold input12544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12543 output12538)).val
theorem output12544_def : output12544 = (.seq output12543 output12538) := by
  unfold output12544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12544_skip : Flapjack.WordAlloc.isSkip output12544 = false := by
  rw [output12544_def]
  conv => lhs; cbv
  try rfl
theorem node12544_eq : Flapjack.WordAlloc.removeDeadStructural input12544 value6273 value1 value2 = (output12544, value5, value1) := by
  rw [input12544_def, output12544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12538_eq]
  dsimp only
  rw [node12543_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12544 input12537)).val
theorem input12545_def : input12545 = (.seq input12544 input12537) := by
  unfold input12545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12544 output12537)).val
theorem output12545_def : output12545 = (.seq output12544 output12537) := by
  unfold output12545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12545_skip : Flapjack.WordAlloc.isSkip output12545 = false := by
  rw [output12545_def]
  conv => lhs; cbv
  try rfl
theorem node12545_eq : Flapjack.WordAlloc.removeDeadStructural input12545 value6272 value1 value2 = (output12545, value5, value1) := by
  rw [input12545_def, output12545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12537_eq]
  dsimp only
  rw [node12544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6277 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64)))).val
theorem input12546_def : input12546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))) := by
  unfold input12546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64)))).val
theorem output12546_def : output12546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))) := by
  unfold output12546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12546_skip : Flapjack.WordAlloc.isSkip output12546 = false := by
  rw [output12546_def]
  conv => lhs; cbv
  try rfl
theorem node12546_eq : Flapjack.WordAlloc.removeDeadStructural input12546 value5 value1 value2 = (output12546, value6277, value1) := by
  rw [input12546_def, output12546_def]
  try (conv => lhs; cbv)
  try rfl

def value6278 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)])).val
theorem input12547_def : input12547 = (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]) := by
  unfold input12547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)])).val
theorem output12547_def : output12547 = (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]) := by
  unfold output12547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12547_skip : Flapjack.WordAlloc.isSkip output12547 = false := by
  rw [output12547_def]
  conv => lhs; cbv
  try rfl
theorem node12547_eq : Flapjack.WordAlloc.removeDeadStructural input12547 value6277 value1 value2 = (output12547, value6278, value1) := by
  rw [input12547_def, output12547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12547 input12546)).val
theorem input12548_def : input12548 = (.seq input12547 input12546) := by
  unfold input12548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12547 output12546)).val
theorem output12548_def : output12548 = (.seq output12547 output12546) := by
  unfold output12548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12548_skip : Flapjack.WordAlloc.isSkip output12548 = false := by
  rw [output12548_def]
  conv => lhs; cbv
  try rfl
theorem node12548_eq : Flapjack.WordAlloc.removeDeadStructural input12548 value5 value1 value2 = (output12548, value6278, value1) := by
  rw [input12548_def, output12548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12546_eq]
  dsimp only
  rw [node12547_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6279 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 11774750593219085835#64))).val
theorem input12549_def : input12549 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 11774750593219085835#64)) := by
  unfold input12549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 11774750593219085835#64))).val
theorem output12549_def : output12549 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 11774750593219085835#64)) := by
  unfold output12549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12549_skip : Flapjack.WordAlloc.isSkip output12549 = false := by
  rw [output12549_def]
  conv => lhs; cbv
  try rfl
theorem node12549_eq : Flapjack.WordAlloc.removeDeadStructural input12549 value6278 value1 value2 = (output12549, value6279, value1) := by
  rw [input12549_def, output12549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2901 11774750593219085835#64))).val
theorem input12550_def : input12550 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2901 11774750593219085835#64)) := by
  unfold input12550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12550_def : output12550 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12550_skip : Flapjack.WordAlloc.isSkip output12550 = true := by
  rw [output12550_def]
  conv => lhs; cbv
  try rfl
theorem node12550_eq : Flapjack.WordAlloc.removeDeadStructural input12550 value6279 value1 value2 = (output12550, value6279, value1) := by
  rw [input12550_def, output12550_def]
  try (conv => lhs; cbv)
  try rfl

def value6280 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 688#64))))).val
theorem input12551_def : input12551 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 688#64)))) := by
  unfold input12551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 688#64))))).val
theorem output12551_def : output12551 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 688#64)))) := by
  unfold output12551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12551_skip : Flapjack.WordAlloc.isSkip output12551 = false := by
  rw [output12551_def]
  conv => lhs; cbv
  try rfl
theorem node12551_eq : Flapjack.WordAlloc.removeDeadStructural input12551 value6279 value1 value2 = (output12551, value6280, value1) := by
  rw [input12551_def, output12551_def]
  try (conv => lhs; cbv)
  try rfl

def value6281 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551104#64)))).val
theorem input12552_def : input12552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551104#64))) := by
  unfold input12552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551104#64)))).val
theorem output12552_def : output12552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551104#64))) := by
  unfold output12552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12552_skip : Flapjack.WordAlloc.isSkip output12552 = false := by
  rw [output12552_def]
  conv => lhs; cbv
  try rfl
theorem node12552_eq : Flapjack.WordAlloc.removeDeadStructural input12552 value6280 value1 value2 = (output12552, value6281, value1) := by
  rw [input12552_def, output12552_def]
  try (conv => lhs; cbv)
  try rfl

def value6282 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885)).val
theorem input12553_def : input12553 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885) := by
  unfold input12553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885)).val
theorem output12553_def : output12553 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885) := by
  unfold output12553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12553_skip : Flapjack.WordAlloc.isSkip output12553 = false := by
  rw [output12553_def]
  conv => lhs; cbv
  try rfl
theorem node12553_eq : Flapjack.WordAlloc.removeDeadStructural input12553 value6281 value1 value2 = (output12553, value6282, value1) := by
  rw [input12553_def, output12553_def]
  try (conv => lhs; cbv)
  try rfl

def value6283 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12554_def : input12554 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12554_def : output12554 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12554_skip : Flapjack.WordAlloc.isSkip output12554 = false := by
  rw [output12554_def]
  conv => lhs; cbv
  try rfl
theorem node12554_eq : Flapjack.WordAlloc.removeDeadStructural input12554 value6282 value1 value2 = (output12554, value6283, value1) := by
  rw [input12554_def, output12554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength)).val
theorem input12555_def : input12555 = (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength) := by
  unfold input12555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength)).val
theorem output12555_def : output12555 = (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength) := by
  unfold output12555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12555_skip : Flapjack.WordAlloc.isSkip output12555 = false := by
  rw [output12555_def]
  conv => lhs; cbv
  try rfl
theorem node12555_eq : Flapjack.WordAlloc.removeDeadStructural input12555 value6283 value1 value2 = (output12555, value5, value1) := by
  rw [input12555_def, output12555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12555 input12554)).val
theorem input12556_def : input12556 = (.seq input12555 input12554) := by
  unfold input12556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12555 output12554)).val
theorem output12556_def : output12556 = (.seq output12555 output12554) := by
  unfold output12556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12556_skip : Flapjack.WordAlloc.isSkip output12556 = false := by
  rw [output12556_def]
  conv => lhs; cbv
  try rfl
theorem node12556_eq : Flapjack.WordAlloc.removeDeadStructural input12556 value6282 value1 value2 = (output12556, value5, value1) := by
  rw [input12556_def, output12556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12554_eq]
  dsimp only
  rw [node12555_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12556 input12553)).val
theorem input12557_def : input12557 = (.seq input12556 input12553) := by
  unfold input12557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12556 output12553)).val
theorem output12557_def : output12557 = (.seq output12556 output12553) := by
  unfold output12557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12557_skip : Flapjack.WordAlloc.isSkip output12557 = false := by
  rw [output12557_def]
  conv => lhs; cbv
  try rfl
theorem node12557_eq : Flapjack.WordAlloc.removeDeadStructural input12557 value6281 value1 value2 = (output12557, value5, value1) := by
  rw [input12557_def, output12557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12553_eq]
  dsimp only
  rw [node12556_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12557 input12552)).val
theorem input12558_def : input12558 = (.seq input12557 input12552) := by
  unfold input12558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12557 output12552)).val
theorem output12558_def : output12558 = (.seq output12557 output12552) := by
  unfold output12558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12558_skip : Flapjack.WordAlloc.isSkip output12558 = false := by
  rw [output12558_def]
  conv => lhs; cbv
  try rfl
theorem node12558_eq : Flapjack.WordAlloc.removeDeadStructural input12558 value6280 value1 value2 = (output12558, value5, value1) := by
  rw [input12558_def, output12558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12552_eq]
  dsimp only
  rw [node12557_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12558 input12551)).val
theorem input12559_def : input12559 = (.seq input12558 input12551) := by
  unfold input12559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12558 output12551)).val
theorem output12559_def : output12559 = (.seq output12558 output12551) := by
  unfold output12559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12559_skip : Flapjack.WordAlloc.isSkip output12559 = false := by
  rw [output12559_def]
  conv => lhs; cbv
  try rfl
theorem node12559_eq : Flapjack.WordAlloc.removeDeadStructural input12559 value6279 value1 value2 = (output12559, value5, value1) := by
  rw [input12559_def, output12559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12551_eq]
  dsimp only
  rw [node12558_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6284 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64)))).val
theorem input12560_def : input12560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64))) := by
  unfold input12560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64)))).val
theorem output12560_def : output12560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64))) := by
  unfold output12560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12560_skip : Flapjack.WordAlloc.isSkip output12560 = false := by
  rw [output12560_def]
  conv => lhs; cbv
  try rfl
theorem node12560_eq : Flapjack.WordAlloc.removeDeadStructural input12560 value5 value1 value2 = (output12560, value6284, value1) := by
  rw [input12560_def, output12560_def]
  try (conv => lhs; cbv)
  try rfl

def value6285 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)])).val
theorem input12561_def : input12561 = (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)]) := by
  unfold input12561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)])).val
theorem output12561_def : output12561 = (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)]) := by
  unfold output12561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12561_skip : Flapjack.WordAlloc.isSkip output12561 = false := by
  rw [output12561_def]
  conv => lhs; cbv
  try rfl
theorem node12561_eq : Flapjack.WordAlloc.removeDeadStructural input12561 value6284 value1 value2 = (output12561, value6285, value1) := by
  rw [input12561_def, output12561_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12561 input12560)).val
theorem input12562_def : input12562 = (.seq input12561 input12560) := by
  unfold input12562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12561 output12560)).val
theorem output12562_def : output12562 = (.seq output12561 output12560) := by
  unfold output12562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12562_skip : Flapjack.WordAlloc.isSkip output12562 = false := by
  rw [output12562_def]
  conv => lhs; cbv
  try rfl
theorem node12562_eq : Flapjack.WordAlloc.removeDeadStructural input12562 value5 value1 value2 = (output12562, value6285, value1) := by
  rw [input12562_def, output12562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12560_eq]
  dsimp only
  rw [node12561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6286 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 608058373078778093#64))).val
theorem input12563_def : input12563 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 608058373078778093#64)) := by
  unfold input12563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 608058373078778093#64))).val
theorem output12563_def : output12563 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 608058373078778093#64)) := by
  unfold output12563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12563_skip : Flapjack.WordAlloc.isSkip output12563 = false := by
  rw [output12563_def]
  conv => lhs; cbv
  try rfl
theorem node12563_eq : Flapjack.WordAlloc.removeDeadStructural input12563 value6285 value1 value2 = (output12563, value6286, value1) := by
  rw [input12563_def, output12563_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2869 608058373078778093#64))).val
theorem input12564_def : input12564 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2869 608058373078778093#64)) := by
  unfold input12564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12564_def : output12564 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12564_skip : Flapjack.WordAlloc.isSkip output12564 = true := by
  rw [output12564_def]
  conv => lhs; cbv
  try rfl
theorem node12564_eq : Flapjack.WordAlloc.removeDeadStructural input12564 value6286 value1 value2 = (output12564, value6286, value1) := by
  rw [input12564_def, output12564_def]
  try (conv => lhs; cbv)
  try rfl

def value6287 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 680#64))))).val
theorem input12565_def : input12565 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 680#64)))) := by
  unfold input12565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 680#64))))).val
theorem output12565_def : output12565 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 680#64)))) := by
  unfold output12565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12565_skip : Flapjack.WordAlloc.isSkip output12565 = false := by
  rw [output12565_def]
  conv => lhs; cbv
  try rfl
theorem node12565_eq : Flapjack.WordAlloc.removeDeadStructural input12565 value6286 value1 value2 = (output12565, value6287, value1) := by
  rw [input12565_def, output12565_def]
  try (conv => lhs; cbv)
  try rfl

def value6288 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551104#64)))).val
theorem input12566_def : input12566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551104#64))) := by
  unfold input12566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551104#64)))).val
theorem output12566_def : output12566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551104#64))) := by
  unfold output12566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12566_skip : Flapjack.WordAlloc.isSkip output12566 = false := by
  rw [output12566_def]
  conv => lhs; cbv
  try rfl
theorem node12566_eq : Flapjack.WordAlloc.removeDeadStructural input12566 value6287 value1 value2 = (output12566, value6288, value1) := by
  rw [input12566_def, output12566_def]
  try (conv => lhs; cbv)
  try rfl

def value6289 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853)).val
theorem input12567_def : input12567 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853) := by
  unfold input12567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853)).val
theorem output12567_def : output12567 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853) := by
  unfold output12567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12567_skip : Flapjack.WordAlloc.isSkip output12567 = false := by
  rw [output12567_def]
  conv => lhs; cbv
  try rfl
theorem node12567_eq : Flapjack.WordAlloc.removeDeadStructural input12567 value6288 value1 value2 = (output12567, value6289, value1) := by
  rw [input12567_def, output12567_def]
  try (conv => lhs; cbv)
  try rfl

def value6290 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12568_def : input12568 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12568_def : output12568 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12568_skip : Flapjack.WordAlloc.isSkip output12568 = false := by
  rw [output12568_def]
  conv => lhs; cbv
  try rfl
theorem node12568_eq : Flapjack.WordAlloc.removeDeadStructural input12568 value6289 value1 value2 = (output12568, value6290, value1) := by
  rw [input12568_def, output12568_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength)).val
theorem input12569_def : input12569 = (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength) := by
  unfold input12569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength)).val
theorem output12569_def : output12569 = (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength) := by
  unfold output12569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12569_skip : Flapjack.WordAlloc.isSkip output12569 = false := by
  rw [output12569_def]
  conv => lhs; cbv
  try rfl
theorem node12569_eq : Flapjack.WordAlloc.removeDeadStructural input12569 value6290 value1 value2 = (output12569, value5, value1) := by
  rw [input12569_def, output12569_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12569 input12568)).val
theorem input12570_def : input12570 = (.seq input12569 input12568) := by
  unfold input12570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12569 output12568)).val
theorem output12570_def : output12570 = (.seq output12569 output12568) := by
  unfold output12570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12570_skip : Flapjack.WordAlloc.isSkip output12570 = false := by
  rw [output12570_def]
  conv => lhs; cbv
  try rfl
theorem node12570_eq : Flapjack.WordAlloc.removeDeadStructural input12570 value6289 value1 value2 = (output12570, value5, value1) := by
  rw [input12570_def, output12570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12568_eq]
  dsimp only
  rw [node12569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12570 input12567)).val
theorem input12571_def : input12571 = (.seq input12570 input12567) := by
  unfold input12571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12570 output12567)).val
theorem output12571_def : output12571 = (.seq output12570 output12567) := by
  unfold output12571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12571_skip : Flapjack.WordAlloc.isSkip output12571 = false := by
  rw [output12571_def]
  conv => lhs; cbv
  try rfl
theorem node12571_eq : Flapjack.WordAlloc.removeDeadStructural input12571 value6288 value1 value2 = (output12571, value5, value1) := by
  rw [input12571_def, output12571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12567_eq]
  dsimp only
  rw [node12570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12571 input12566)).val
theorem input12572_def : input12572 = (.seq input12571 input12566) := by
  unfold input12572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12571 output12566)).val
theorem output12572_def : output12572 = (.seq output12571 output12566) := by
  unfold output12572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12572_skip : Flapjack.WordAlloc.isSkip output12572 = false := by
  rw [output12572_def]
  conv => lhs; cbv
  try rfl
theorem node12572_eq : Flapjack.WordAlloc.removeDeadStructural input12572 value6287 value1 value2 = (output12572, value5, value1) := by
  rw [input12572_def, output12572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12566_eq]
  dsimp only
  rw [node12571_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12572 input12565)).val
theorem input12573_def : input12573 = (.seq input12572 input12565) := by
  unfold input12573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12572 output12565)).val
theorem output12573_def : output12573 = (.seq output12572 output12565) := by
  unfold output12573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12573_skip : Flapjack.WordAlloc.isSkip output12573 = false := by
  rw [output12573_def]
  conv => lhs; cbv
  try rfl
theorem node12573_eq : Flapjack.WordAlloc.removeDeadStructural input12573 value6286 value1 value2 = (output12573, value5, value1) := by
  rw [input12573_def, output12573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12565_eq]
  dsimp only
  rw [node12572_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6291 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64)))).val
theorem input12574_def : input12574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64))) := by
  unfold input12574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64)))).val
theorem output12574_def : output12574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64))) := by
  unfold output12574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12574_skip : Flapjack.WordAlloc.isSkip output12574 = false := by
  rw [output12574_def]
  conv => lhs; cbv
  try rfl
theorem node12574_eq : Flapjack.WordAlloc.removeDeadStructural input12574 value5 value1 value2 = (output12574, value6291, value1) := by
  rw [input12574_def, output12574_def]
  try (conv => lhs; cbv)
  try rfl

def value6292 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)])).val
theorem input12575_def : input12575 = (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)]) := by
  unfold input12575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)])).val
theorem output12575_def : output12575 = (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)]) := by
  unfold output12575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12575_skip : Flapjack.WordAlloc.isSkip output12575 = false := by
  rw [output12575_def]
  conv => lhs; cbv
  try rfl
theorem node12575_eq : Flapjack.WordAlloc.removeDeadStructural input12575 value6291 value1 value2 = (output12575, value6292, value1) := by
  rw [input12575_def, output12575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12575 input12574)).val
theorem input12576_def : input12576 = (.seq input12575 input12574) := by
  unfold input12576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12575 output12574)).val
theorem output12576_def : output12576 = (.seq output12575 output12574) := by
  unfold output12576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12576_skip : Flapjack.WordAlloc.isSkip output12576 = false := by
  rw [output12576_def]
  conv => lhs; cbv
  try rfl
theorem node12576_eq : Flapjack.WordAlloc.removeDeadStructural input12576 value5 value1 value2 = (output12576, value6292, value1) := by
  rw [input12576_def, output12576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12574_eq]
  dsimp only
  rw [node12575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6293 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 14523786478703730418#64))).val
theorem input12577_def : input12577 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 14523786478703730418#64)) := by
  unfold input12577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 14523786478703730418#64))).val
theorem output12577_def : output12577 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 14523786478703730418#64)) := by
  unfold output12577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12577_skip : Flapjack.WordAlloc.isSkip output12577 = false := by
  rw [output12577_def]
  conv => lhs; cbv
  try rfl
theorem node12577_eq : Flapjack.WordAlloc.removeDeadStructural input12577 value6292 value1 value2 = (output12577, value6293, value1) := by
  rw [input12577_def, output12577_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2837 14523786478703730418#64))).val
theorem input12578_def : input12578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2837 14523786478703730418#64)) := by
  unfold input12578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12578_def : output12578 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12578_skip : Flapjack.WordAlloc.isSkip output12578 = true := by
  rw [output12578_def]
  conv => lhs; cbv
  try rfl
theorem node12578_eq : Flapjack.WordAlloc.removeDeadStructural input12578 value6293 value1 value2 = (output12578, value6293, value1) := by
  rw [input12578_def, output12578_def]
  try (conv => lhs; cbv)
  try rfl

def value6294 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 672#64))))).val
theorem input12579_def : input12579 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 672#64)))) := by
  unfold input12579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 672#64))))).val
theorem output12579_def : output12579 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 672#64)))) := by
  unfold output12579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12579_skip : Flapjack.WordAlloc.isSkip output12579 = false := by
  rw [output12579_def]
  conv => lhs; cbv
  try rfl
theorem node12579_eq : Flapjack.WordAlloc.removeDeadStructural input12579 value6293 value1 value2 = (output12579, value6294, value1) := by
  rw [input12579_def, output12579_def]
  try (conv => lhs; cbv)
  try rfl

def value6295 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551104#64)))).val
theorem input12580_def : input12580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551104#64))) := by
  unfold input12580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551104#64)))).val
theorem output12580_def : output12580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551104#64))) := by
  unfold output12580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12580_skip : Flapjack.WordAlloc.isSkip output12580 = false := by
  rw [output12580_def]
  conv => lhs; cbv
  try rfl
theorem node12580_eq : Flapjack.WordAlloc.removeDeadStructural input12580 value6294 value1 value2 = (output12580, value6295, value1) := by
  rw [input12580_def, output12580_def]
  try (conv => lhs; cbv)
  try rfl

def value6296 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821)).val
theorem input12581_def : input12581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821) := by
  unfold input12581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821)).val
theorem output12581_def : output12581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821) := by
  unfold output12581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12581_skip : Flapjack.WordAlloc.isSkip output12581 = false := by
  rw [output12581_def]
  conv => lhs; cbv
  try rfl
theorem node12581_eq : Flapjack.WordAlloc.removeDeadStructural input12581 value6295 value1 value2 = (output12581, value6296, value1) := by
  rw [input12581_def, output12581_def]
  try (conv => lhs; cbv)
  try rfl

def value6297 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12582_def : input12582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12582_def : output12582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12582_skip : Flapjack.WordAlloc.isSkip output12582 = false := by
  rw [output12582_def]
  conv => lhs; cbv
  try rfl
theorem node12582_eq : Flapjack.WordAlloc.removeDeadStructural input12582 value6296 value1 value2 = (output12582, value6297, value1) := by
  rw [input12582_def, output12582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength)).val
theorem input12583_def : input12583 = (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength) := by
  unfold input12583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength)).val
theorem output12583_def : output12583 = (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength) := by
  unfold output12583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12583_skip : Flapjack.WordAlloc.isSkip output12583 = false := by
  rw [output12583_def]
  conv => lhs; cbv
  try rfl
theorem node12583_eq : Flapjack.WordAlloc.removeDeadStructural input12583 value6297 value1 value2 = (output12583, value5, value1) := by
  rw [input12583_def, output12583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12583 input12582)).val
theorem input12584_def : input12584 = (.seq input12583 input12582) := by
  unfold input12584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12583 output12582)).val
theorem output12584_def : output12584 = (.seq output12583 output12582) := by
  unfold output12584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12584_skip : Flapjack.WordAlloc.isSkip output12584 = false := by
  rw [output12584_def]
  conv => lhs; cbv
  try rfl
theorem node12584_eq : Flapjack.WordAlloc.removeDeadStructural input12584 value6296 value1 value2 = (output12584, value5, value1) := by
  rw [input12584_def, output12584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12582_eq]
  dsimp only
  rw [node12583_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12584 input12581)).val
theorem input12585_def : input12585 = (.seq input12584 input12581) := by
  unfold input12585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12584 output12581)).val
theorem output12585_def : output12585 = (.seq output12584 output12581) := by
  unfold output12585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12585_skip : Flapjack.WordAlloc.isSkip output12585 = false := by
  rw [output12585_def]
  conv => lhs; cbv
  try rfl
theorem node12585_eq : Flapjack.WordAlloc.removeDeadStructural input12585 value6295 value1 value2 = (output12585, value5, value1) := by
  rw [input12585_def, output12585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12581_eq]
  dsimp only
  rw [node12584_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12585 input12580)).val
theorem input12586_def : input12586 = (.seq input12585 input12580) := by
  unfold input12586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12585 output12580)).val
theorem output12586_def : output12586 = (.seq output12585 output12580) := by
  unfold output12586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12586_skip : Flapjack.WordAlloc.isSkip output12586 = false := by
  rw [output12586_def]
  conv => lhs; cbv
  try rfl
theorem node12586_eq : Flapjack.WordAlloc.removeDeadStructural input12586 value6294 value1 value2 = (output12586, value5, value1) := by
  rw [input12586_def, output12586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12580_eq]
  dsimp only
  rw [node12585_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12586 input12579)).val
theorem input12587_def : input12587 = (.seq input12586 input12579) := by
  unfold input12587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12586 output12579)).val
theorem output12587_def : output12587 = (.seq output12586 output12579) := by
  unfold output12587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12587_skip : Flapjack.WordAlloc.isSkip output12587 = false := by
  rw [output12587_def]
  conv => lhs; cbv
  try rfl
theorem node12587_eq : Flapjack.WordAlloc.removeDeadStructural input12587 value6293 value1 value2 = (output12587, value5, value1) := by
  rw [input12587_def, output12587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12579_eq]
  dsimp only
  rw [node12586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6298 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64)))).val
theorem input12588_def : input12588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64))) := by
  unfold input12588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64)))).val
theorem output12588_def : output12588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64))) := by
  unfold output12588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12588_skip : Flapjack.WordAlloc.isSkip output12588 = false := by
  rw [output12588_def]
  conv => lhs; cbv
  try rfl
theorem node12588_eq : Flapjack.WordAlloc.removeDeadStructural input12588 value5 value1 value2 = (output12588, value6298, value1) := by
  rw [input12588_def, output12588_def]
  try (conv => lhs; cbv)
  try rfl

def value6299 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)])).val
theorem input12589_def : input12589 = (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)]) := by
  unfold input12589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)])).val
theorem output12589_def : output12589 = (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)]) := by
  unfold output12589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12589_skip : Flapjack.WordAlloc.isSkip output12589 = false := by
  rw [output12589_def]
  conv => lhs; cbv
  try rfl
theorem node12589_eq : Flapjack.WordAlloc.removeDeadStructural input12589 value6298 value1 value2 = (output12589, value6299, value1) := by
  rw [input12589_def, output12589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12589 input12588)).val
theorem input12590_def : input12590 = (.seq input12589 input12588) := by
  unfold input12590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12589 output12588)).val
theorem output12590_def : output12590 = (.seq output12589 output12588) := by
  unfold output12590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12590_skip : Flapjack.WordAlloc.isSkip output12590 = false := by
  rw [output12590_def]
  conv => lhs; cbv
  try rfl
theorem node12590_eq : Flapjack.WordAlloc.removeDeadStructural input12590 value5 value1 value2 = (output12590, value6299, value1) := by
  rw [input12590_def, output12590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12588_eq]
  dsimp only
  rw [node12589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6300 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 434250606344352972#64))).val
theorem input12591_def : input12591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 434250606344352972#64)) := by
  unfold input12591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 434250606344352972#64))).val
theorem output12591_def : output12591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 434250606344352972#64)) := by
  unfold output12591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12591_skip : Flapjack.WordAlloc.isSkip output12591 = false := by
  rw [output12591_def]
  conv => lhs; cbv
  try rfl
theorem node12591_eq : Flapjack.WordAlloc.removeDeadStructural input12591 value6299 value1 value2 = (output12591, value6300, value1) := by
  rw [input12591_def, output12591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2805 434250606344352972#64))).val
theorem input12592_def : input12592 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2805 434250606344352972#64)) := by
  unfold input12592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12592_def : output12592 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12592_skip : Flapjack.WordAlloc.isSkip output12592 = true := by
  rw [output12592_def]
  conv => lhs; cbv
  try rfl
theorem node12592_eq : Flapjack.WordAlloc.removeDeadStructural input12592 value6300 value1 value2 = (output12592, value6300, value1) := by
  rw [input12592_def, output12592_def]
  try (conv => lhs; cbv)
  try rfl

def value6301 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 664#64))))).val
theorem input12593_def : input12593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 664#64)))) := by
  unfold input12593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 664#64))))).val
theorem output12593_def : output12593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 664#64)))) := by
  unfold output12593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12593_skip : Flapjack.WordAlloc.isSkip output12593 = false := by
  rw [output12593_def]
  conv => lhs; cbv
  try rfl
theorem node12593_eq : Flapjack.WordAlloc.removeDeadStructural input12593 value6300 value1 value2 = (output12593, value6301, value1) := by
  rw [input12593_def, output12593_def]
  try (conv => lhs; cbv)
  try rfl

def value6302 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551104#64)))).val
theorem input12594_def : input12594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551104#64))) := by
  unfold input12594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551104#64)))).val
theorem output12594_def : output12594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551104#64))) := by
  unfold output12594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12594_skip : Flapjack.WordAlloc.isSkip output12594 = false := by
  rw [output12594_def]
  conv => lhs; cbv
  try rfl
theorem node12594_eq : Flapjack.WordAlloc.removeDeadStructural input12594 value6301 value1 value2 = (output12594, value6302, value1) := by
  rw [input12594_def, output12594_def]
  try (conv => lhs; cbv)
  try rfl

def value6303 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789)).val
theorem input12595_def : input12595 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789) := by
  unfold input12595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789)).val
theorem output12595_def : output12595 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789) := by
  unfold output12595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12595_skip : Flapjack.WordAlloc.isSkip output12595 = false := by
  rw [output12595_def]
  conv => lhs; cbv
  try rfl
theorem node12595_eq : Flapjack.WordAlloc.removeDeadStructural input12595 value6302 value1 value2 = (output12595, value6303, value1) := by
  rw [input12595_def, output12595_def]
  try (conv => lhs; cbv)
  try rfl

def value6304 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12596_def : input12596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12596_def : output12596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12596_skip : Flapjack.WordAlloc.isSkip output12596 = false := by
  rw [output12596_def]
  conv => lhs; cbv
  try rfl
theorem node12596_eq : Flapjack.WordAlloc.removeDeadStructural input12596 value6303 value1 value2 = (output12596, value6304, value1) := by
  rw [input12596_def, output12596_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength)).val
theorem input12597_def : input12597 = (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength) := by
  unfold input12597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength)).val
theorem output12597_def : output12597 = (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength) := by
  unfold output12597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12597_skip : Flapjack.WordAlloc.isSkip output12597 = false := by
  rw [output12597_def]
  conv => lhs; cbv
  try rfl
theorem node12597_eq : Flapjack.WordAlloc.removeDeadStructural input12597 value6304 value1 value2 = (output12597, value5, value1) := by
  rw [input12597_def, output12597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12597 input12596)).val
theorem input12598_def : input12598 = (.seq input12597 input12596) := by
  unfold input12598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12597 output12596)).val
theorem output12598_def : output12598 = (.seq output12597 output12596) := by
  unfold output12598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12598_skip : Flapjack.WordAlloc.isSkip output12598 = false := by
  rw [output12598_def]
  conv => lhs; cbv
  try rfl
theorem node12598_eq : Flapjack.WordAlloc.removeDeadStructural input12598 value6303 value1 value2 = (output12598, value5, value1) := by
  rw [input12598_def, output12598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12596_eq]
  dsimp only
  rw [node12597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12598 input12595)).val
theorem input12599_def : input12599 = (.seq input12598 input12595) := by
  unfold input12599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12598 output12595)).val
theorem output12599_def : output12599 = (.seq output12598 output12595) := by
  unfold output12599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12599_skip : Flapjack.WordAlloc.isSkip output12599 = false := by
  rw [output12599_def]
  conv => lhs; cbv
  try rfl
theorem node12599_eq : Flapjack.WordAlloc.removeDeadStructural input12599 value6302 value1 value2 = (output12599, value5, value1) := by
  rw [input12599_def, output12599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12595_eq]
  dsimp only
  rw [node12598_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12599 input12594)).val
theorem input12600_def : input12600 = (.seq input12599 input12594) := by
  unfold input12600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12599 output12594)).val
theorem output12600_def : output12600 = (.seq output12599 output12594) := by
  unfold output12600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12600_skip : Flapjack.WordAlloc.isSkip output12600 = false := by
  rw [output12600_def]
  conv => lhs; cbv
  try rfl
theorem node12600_eq : Flapjack.WordAlloc.removeDeadStructural input12600 value6301 value1 value2 = (output12600, value5, value1) := by
  rw [input12600_def, output12600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12594_eq]
  dsimp only
  rw [node12599_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12600 input12593)).val
theorem input12601_def : input12601 = (.seq input12600 input12593) := by
  unfold input12601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12600 output12593)).val
theorem output12601_def : output12601 = (.seq output12600 output12593) := by
  unfold output12601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12601_skip : Flapjack.WordAlloc.isSkip output12601 = false := by
  rw [output12601_def]
  conv => lhs; cbv
  try rfl
theorem node12601_eq : Flapjack.WordAlloc.removeDeadStructural input12601 value6300 value1 value2 = (output12601, value5, value1) := by
  rw [input12601_def, output12601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12593_eq]
  dsimp only
  rw [node12600_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6305 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64)))).val
theorem input12602_def : input12602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64))) := by
  unfold input12602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64)))).val
theorem output12602_def : output12602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64))) := by
  unfold output12602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12602_skip : Flapjack.WordAlloc.isSkip output12602 = false := by
  rw [output12602_def]
  conv => lhs; cbv
  try rfl
theorem node12602_eq : Flapjack.WordAlloc.removeDeadStructural input12602 value5 value1 value2 = (output12602, value6305, value1) := by
  rw [input12602_def, output12602_def]
  try (conv => lhs; cbv)
  try rfl

def value6306 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)])).val
theorem input12603_def : input12603 = (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)]) := by
  unfold input12603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)])).val
theorem output12603_def : output12603 = (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)]) := by
  unfold output12603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12603_skip : Flapjack.WordAlloc.isSkip output12603 = false := by
  rw [output12603_def]
  conv => lhs; cbv
  try rfl
theorem node12603_eq : Flapjack.WordAlloc.removeDeadStructural input12603 value6305 value1 value2 = (output12603, value6306, value1) := by
  rw [input12603_def, output12603_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12603 input12602)).val
theorem input12604_def : input12604 = (.seq input12603 input12602) := by
  unfold input12604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12603 output12602)).val
theorem output12604_def : output12604 = (.seq output12603 output12602) := by
  unfold output12604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12604_skip : Flapjack.WordAlloc.isSkip output12604 = false := by
  rw [output12604_def]
  conv => lhs; cbv
  try rfl
theorem node12604_eq : Flapjack.WordAlloc.removeDeadStructural input12604 value5 value1 value2 = (output12604, value6306, value1) := by
  rw [input12604_def, output12604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12602_eq]
  dsimp only
  rw [node12603_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6307 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 3651525051980876697#64))).val
theorem input12605_def : input12605 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 3651525051980876697#64)) := by
  unfold input12605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 3651525051980876697#64))).val
theorem output12605_def : output12605 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 3651525051980876697#64)) := by
  unfold output12605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12605_skip : Flapjack.WordAlloc.isSkip output12605 = false := by
  rw [output12605_def]
  conv => lhs; cbv
  try rfl
theorem node12605_eq : Flapjack.WordAlloc.removeDeadStructural input12605 value6306 value1 value2 = (output12605, value6307, value1) := by
  rw [input12605_def, output12605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2773 3651525051980876697#64))).val
theorem input12606_def : input12606 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2773 3651525051980876697#64)) := by
  unfold input12606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12606_def : output12606 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12606_skip : Flapjack.WordAlloc.isSkip output12606 = true := by
  rw [output12606_def]
  conv => lhs; cbv
  try rfl
theorem node12606_eq : Flapjack.WordAlloc.removeDeadStructural input12606 value6307 value1 value2 = (output12606, value6307, value1) := by
  rw [input12606_def, output12606_def]
  try (conv => lhs; cbv)
  try rfl

def value6308 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 656#64))))).val
theorem input12607_def : input12607 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 656#64)))) := by
  unfold input12607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 656#64))))).val
theorem output12607_def : output12607 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 656#64)))) := by
  unfold output12607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12607_skip : Flapjack.WordAlloc.isSkip output12607 = false := by
  rw [output12607_def]
  conv => lhs; cbv
  try rfl
theorem node12607_eq : Flapjack.WordAlloc.removeDeadStructural input12607 value6307 value1 value2 = (output12607, value6308, value1) := by
  rw [input12607_def, output12607_def]
  try (conv => lhs; cbv)
  try rfl

def value6309 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551104#64)))).val
theorem input12608_def : input12608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551104#64))) := by
  unfold input12608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551104#64)))).val
theorem output12608_def : output12608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551104#64))) := by
  unfold output12608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12608_skip : Flapjack.WordAlloc.isSkip output12608 = false := by
  rw [output12608_def]
  conv => lhs; cbv
  try rfl
theorem node12608_eq : Flapjack.WordAlloc.removeDeadStructural input12608 value6308 value1 value2 = (output12608, value6309, value1) := by
  rw [input12608_def, output12608_def]
  try (conv => lhs; cbv)
  try rfl

def value6310 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757)).val
theorem input12609_def : input12609 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757) := by
  unfold input12609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757)).val
theorem output12609_def : output12609 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757) := by
  unfold output12609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12609_skip : Flapjack.WordAlloc.isSkip output12609 = false := by
  rw [output12609_def]
  conv => lhs; cbv
  try rfl
theorem node12609_eq : Flapjack.WordAlloc.removeDeadStructural input12609 value6309 value1 value2 = (output12609, value6310, value1) := by
  rw [input12609_def, output12609_def]
  try (conv => lhs; cbv)
  try rfl

def value6311 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12610_def : input12610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12610_def : output12610 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12610_skip : Flapjack.WordAlloc.isSkip output12610 = false := by
  rw [output12610_def]
  conv => lhs; cbv
  try rfl
theorem node12610_eq : Flapjack.WordAlloc.removeDeadStructural input12610 value6310 value1 value2 = (output12610, value6311, value1) := by
  rw [input12610_def, output12610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength)).val
theorem input12611_def : input12611 = (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength) := by
  unfold input12611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength)).val
theorem output12611_def : output12611 = (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength) := by
  unfold output12611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12611_skip : Flapjack.WordAlloc.isSkip output12611 = false := by
  rw [output12611_def]
  conv => lhs; cbv
  try rfl
theorem node12611_eq : Flapjack.WordAlloc.removeDeadStructural input12611 value6311 value1 value2 = (output12611, value5, value1) := by
  rw [input12611_def, output12611_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12611 input12610)).val
theorem input12612_def : input12612 = (.seq input12611 input12610) := by
  unfold input12612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12611 output12610)).val
theorem output12612_def : output12612 = (.seq output12611 output12610) := by
  unfold output12612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12612_skip : Flapjack.WordAlloc.isSkip output12612 = false := by
  rw [output12612_def]
  conv => lhs; cbv
  try rfl
theorem node12612_eq : Flapjack.WordAlloc.removeDeadStructural input12612 value6310 value1 value2 = (output12612, value5, value1) := by
  rw [input12612_def, output12612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12610_eq]
  dsimp only
  rw [node12611_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12612 input12609)).val
theorem input12613_def : input12613 = (.seq input12612 input12609) := by
  unfold input12613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12612 output12609)).val
theorem output12613_def : output12613 = (.seq output12612 output12609) := by
  unfold output12613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12613_skip : Flapjack.WordAlloc.isSkip output12613 = false := by
  rw [output12613_def]
  conv => lhs; cbv
  try rfl
theorem node12613_eq : Flapjack.WordAlloc.removeDeadStructural input12613 value6309 value1 value2 = (output12613, value5, value1) := by
  rw [input12613_def, output12613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12609_eq]
  dsimp only
  rw [node12612_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12613 input12608)).val
theorem input12614_def : input12614 = (.seq input12613 input12608) := by
  unfold input12614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12613 output12608)).val
theorem output12614_def : output12614 = (.seq output12613 output12608) := by
  unfold output12614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12614_skip : Flapjack.WordAlloc.isSkip output12614 = false := by
  rw [output12614_def]
  conv => lhs; cbv
  try rfl
theorem node12614_eq : Flapjack.WordAlloc.removeDeadStructural input12614 value6308 value1 value2 = (output12614, value5, value1) := by
  rw [input12614_def, output12614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12608_eq]
  dsimp only
  rw [node12613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12614 input12607)).val
theorem input12615_def : input12615 = (.seq input12614 input12607) := by
  unfold input12615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12614 output12607)).val
theorem output12615_def : output12615 = (.seq output12614 output12607) := by
  unfold output12615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12615_skip : Flapjack.WordAlloc.isSkip output12615 = false := by
  rw [output12615_def]
  conv => lhs; cbv
  try rfl
theorem node12615_eq : Flapjack.WordAlloc.removeDeadStructural input12615 value6307 value1 value2 = (output12615, value5, value1) := by
  rw [input12615_def, output12615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12607_eq]
  dsimp only
  rw [node12614_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6312 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64)))).val
theorem input12616_def : input12616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64))) := by
  unfold input12616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64)))).val
theorem output12616_def : output12616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64))) := by
  unfold output12616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12616_skip : Flapjack.WordAlloc.isSkip output12616 = false := by
  rw [output12616_def]
  conv => lhs; cbv
  try rfl
theorem node12616_eq : Flapjack.WordAlloc.removeDeadStructural input12616 value5 value1 value2 = (output12616, value6312, value1) := by
  rw [input12616_def, output12616_def]
  try (conv => lhs; cbv)
  try rfl

def value6313 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)])).val
theorem input12617_def : input12617 = (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)]) := by
  unfold input12617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)])).val
theorem output12617_def : output12617 = (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)]) := by
  unfold output12617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12617_skip : Flapjack.WordAlloc.isSkip output12617 = false := by
  rw [output12617_def]
  conv => lhs; cbv
  try rfl
theorem node12617_eq : Flapjack.WordAlloc.removeDeadStructural input12617 value6312 value1 value2 = (output12617, value6313, value1) := by
  rw [input12617_def, output12617_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12617 input12616)).val
theorem input12618_def : input12618 = (.seq input12617 input12616) := by
  unfold input12618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12617 output12616)).val
theorem output12618_def : output12618 = (.seq output12617 output12616) := by
  unfold output12618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12618_skip : Flapjack.WordAlloc.isSkip output12618 = false := by
  rw [output12618_def]
  conv => lhs; cbv
  try rfl
theorem node12618_eq : Flapjack.WordAlloc.removeDeadStructural input12618 value5 value1 value2 = (output12618, value6313, value1) := by
  rw [input12618_def, output12618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12616_eq]
  dsimp only
  rw [node12617_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6314 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 14645187562128761775#64))).val
theorem input12619_def : input12619 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 14645187562128761775#64)) := by
  unfold input12619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 14645187562128761775#64))).val
theorem output12619_def : output12619 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 14645187562128761775#64)) := by
  unfold output12619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12619_skip : Flapjack.WordAlloc.isSkip output12619 = false := by
  rw [output12619_def]
  conv => lhs; cbv
  try rfl
theorem node12619_eq : Flapjack.WordAlloc.removeDeadStructural input12619 value6313 value1 value2 = (output12619, value6314, value1) := by
  rw [input12619_def, output12619_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 14645187562128761775#64))).val
theorem input12620_def : input12620 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 14645187562128761775#64)) := by
  unfold input12620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12620_def : output12620 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12620_skip : Flapjack.WordAlloc.isSkip output12620 = true := by
  rw [output12620_def]
  conv => lhs; cbv
  try rfl
theorem node12620_eq : Flapjack.WordAlloc.removeDeadStructural input12620 value6314 value1 value2 = (output12620, value6314, value1) := by
  rw [input12620_def, output12620_def]
  try (conv => lhs; cbv)
  try rfl

def value6315 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 648#64))))).val
theorem input12621_def : input12621 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 648#64)))) := by
  unfold input12621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 648#64))))).val
theorem output12621_def : output12621 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 648#64)))) := by
  unfold output12621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12621_skip : Flapjack.WordAlloc.isSkip output12621 = false := by
  rw [output12621_def]
  conv => lhs; cbv
  try rfl
theorem node12621_eq : Flapjack.WordAlloc.removeDeadStructural input12621 value6314 value1 value2 = (output12621, value6315, value1) := by
  rw [input12621_def, output12621_def]
  try (conv => lhs; cbv)
  try rfl

def value6316 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551104#64)))).val
theorem input12622_def : input12622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551104#64))) := by
  unfold input12622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551104#64)))).val
theorem output12622_def : output12622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551104#64))) := by
  unfold output12622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12622_skip : Flapjack.WordAlloc.isSkip output12622 = false := by
  rw [output12622_def]
  conv => lhs; cbv
  try rfl
theorem node12622_eq : Flapjack.WordAlloc.removeDeadStructural input12622 value6315 value1 value2 = (output12622, value6316, value1) := by
  rw [input12622_def, output12622_def]
  try (conv => lhs; cbv)
  try rfl

def value6317 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725)).val
theorem input12623_def : input12623 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725) := by
  unfold input12623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725)).val
theorem output12623_def : output12623 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725) := by
  unfold output12623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12623_skip : Flapjack.WordAlloc.isSkip output12623 = false := by
  rw [output12623_def]
  conv => lhs; cbv
  try rfl
theorem node12623_eq : Flapjack.WordAlloc.removeDeadStructural input12623 value6316 value1 value2 = (output12623, value6317, value1) := by
  rw [input12623_def, output12623_def]
  try (conv => lhs; cbv)
  try rfl

def value6318 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12624_def : input12624 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12624_def : output12624 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12624_skip : Flapjack.WordAlloc.isSkip output12624 = false := by
  rw [output12624_def]
  conv => lhs; cbv
  try rfl
theorem node12624_eq : Flapjack.WordAlloc.removeDeadStructural input12624 value6317 value1 value2 = (output12624, value6318, value1) := by
  rw [input12624_def, output12624_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength)).val
theorem input12625_def : input12625 = (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength) := by
  unfold input12625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength)).val
theorem output12625_def : output12625 = (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength) := by
  unfold output12625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12625_skip : Flapjack.WordAlloc.isSkip output12625 = false := by
  rw [output12625_def]
  conv => lhs; cbv
  try rfl
theorem node12625_eq : Flapjack.WordAlloc.removeDeadStructural input12625 value6318 value1 value2 = (output12625, value5, value1) := by
  rw [input12625_def, output12625_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12625 input12624)).val
theorem input12626_def : input12626 = (.seq input12625 input12624) := by
  unfold input12626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12625 output12624)).val
theorem output12626_def : output12626 = (.seq output12625 output12624) := by
  unfold output12626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12626_skip : Flapjack.WordAlloc.isSkip output12626 = false := by
  rw [output12626_def]
  conv => lhs; cbv
  try rfl
theorem node12626_eq : Flapjack.WordAlloc.removeDeadStructural input12626 value6317 value1 value2 = (output12626, value5, value1) := by
  rw [input12626_def, output12626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12624_eq]
  dsimp only
  rw [node12625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12626 input12623)).val
theorem input12627_def : input12627 = (.seq input12626 input12623) := by
  unfold input12627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12626 output12623)).val
theorem output12627_def : output12627 = (.seq output12626 output12623) := by
  unfold output12627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12627_skip : Flapjack.WordAlloc.isSkip output12627 = false := by
  rw [output12627_def]
  conv => lhs; cbv
  try rfl
theorem node12627_eq : Flapjack.WordAlloc.removeDeadStructural input12627 value6316 value1 value2 = (output12627, value5, value1) := by
  rw [input12627_def, output12627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12623_eq]
  dsimp only
  rw [node12626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12627 input12622)).val
theorem input12628_def : input12628 = (.seq input12627 input12622) := by
  unfold input12628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12627 output12622)).val
theorem output12628_def : output12628 = (.seq output12627 output12622) := by
  unfold output12628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12628_skip : Flapjack.WordAlloc.isSkip output12628 = false := by
  rw [output12628_def]
  conv => lhs; cbv
  try rfl
theorem node12628_eq : Flapjack.WordAlloc.removeDeadStructural input12628 value6315 value1 value2 = (output12628, value5, value1) := by
  rw [input12628_def, output12628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12622_eq]
  dsimp only
  rw [node12627_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12628 input12621)).val
theorem input12629_def : input12629 = (.seq input12628 input12621) := by
  unfold input12629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12628 output12621)).val
theorem output12629_def : output12629 = (.seq output12628 output12621) := by
  unfold output12629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12629_skip : Flapjack.WordAlloc.isSkip output12629 = false := by
  rw [output12629_def]
  conv => lhs; cbv
  try rfl
theorem node12629_eq : Flapjack.WordAlloc.removeDeadStructural input12629 value6314 value1 value2 = (output12629, value5, value1) := by
  rw [input12629_def, output12629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12621_eq]
  dsimp only
  rw [node12628_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6319 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64)))).val
theorem input12630_def : input12630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64))) := by
  unfold input12630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64)))).val
theorem output12630_def : output12630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64))) := by
  unfold output12630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12630_skip : Flapjack.WordAlloc.isSkip output12630 = false := by
  rw [output12630_def]
  conv => lhs; cbv
  try rfl
theorem node12630_eq : Flapjack.WordAlloc.removeDeadStructural input12630 value5 value1 value2 = (output12630, value6319, value1) := by
  rw [input12630_def, output12630_def]
  try (conv => lhs; cbv)
  try rfl

def value6320 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)])).val
theorem input12631_def : input12631 = (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)]) := by
  unfold input12631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)])).val
theorem output12631_def : output12631 = (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)]) := by
  unfold output12631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12631_skip : Flapjack.WordAlloc.isSkip output12631 = false := by
  rw [output12631_def]
  conv => lhs; cbv
  try rfl
theorem node12631_eq : Flapjack.WordAlloc.removeDeadStructural input12631 value6319 value1 value2 = (output12631, value6320, value1) := by
  rw [input12631_def, output12631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12631 input12630)).val
theorem input12632_def : input12632 = (.seq input12631 input12630) := by
  unfold input12632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12631 output12630)).val
theorem output12632_def : output12632 = (.seq output12631 output12630) := by
  unfold output12632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12632_skip : Flapjack.WordAlloc.isSkip output12632 = false := by
  rw [output12632_def]
  conv => lhs; cbv
  try rfl
theorem node12632_eq : Flapjack.WordAlloc.removeDeadStructural input12632 value5 value1 value2 = (output12632, value6320, value1) := by
  rw [input12632_def, output12632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12630_eq]
  dsimp only
  rw [node12631_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6321 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 2771000935339432363#64))).val
theorem input12633_def : input12633 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 2771000935339432363#64)) := by
  unfold input12633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 2771000935339432363#64))).val
theorem output12633_def : output12633 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 2771000935339432363#64)) := by
  unfold output12633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12633_skip : Flapjack.WordAlloc.isSkip output12633 = false := by
  rw [output12633_def]
  conv => lhs; cbv
  try rfl
theorem node12633_eq : Flapjack.WordAlloc.removeDeadStructural input12633 value6320 value1 value2 = (output12633, value6321, value1) := by
  rw [input12633_def, output12633_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2709 2771000935339432363#64))).val
theorem input12634_def : input12634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2709 2771000935339432363#64)) := by
  unfold input12634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12634_def : output12634 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12634_skip : Flapjack.WordAlloc.isSkip output12634 = true := by
  rw [output12634_def]
  conv => lhs; cbv
  try rfl
theorem node12634_eq : Flapjack.WordAlloc.removeDeadStructural input12634 value6321 value1 value2 = (output12634, value6321, value1) := by
  rw [input12634_def, output12634_def]
  try (conv => lhs; cbv)
  try rfl

def value6322 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 640#64))))).val
theorem input12635_def : input12635 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 640#64)))) := by
  unfold input12635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 640#64))))).val
theorem output12635_def : output12635 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 640#64)))) := by
  unfold output12635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12635_skip : Flapjack.WordAlloc.isSkip output12635 = false := by
  rw [output12635_def]
  conv => lhs; cbv
  try rfl
theorem node12635_eq : Flapjack.WordAlloc.removeDeadStructural input12635 value6321 value1 value2 = (output12635, value6322, value1) := by
  rw [input12635_def, output12635_def]
  try (conv => lhs; cbv)
  try rfl

def value6323 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551104#64)))).val
theorem input12636_def : input12636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551104#64))) := by
  unfold input12636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551104#64)))).val
theorem output12636_def : output12636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551104#64))) := by
  unfold output12636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12636_skip : Flapjack.WordAlloc.isSkip output12636 = false := by
  rw [output12636_def]
  conv => lhs; cbv
  try rfl
theorem node12636_eq : Flapjack.WordAlloc.removeDeadStructural input12636 value6322 value1 value2 = (output12636, value6323, value1) := by
  rw [input12636_def, output12636_def]
  try (conv => lhs; cbv)
  try rfl

def value6324 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693)).val
theorem input12637_def : input12637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693) := by
  unfold input12637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693)).val
theorem output12637_def : output12637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693) := by
  unfold output12637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12637_skip : Flapjack.WordAlloc.isSkip output12637 = false := by
  rw [output12637_def]
  conv => lhs; cbv
  try rfl
theorem node12637_eq : Flapjack.WordAlloc.removeDeadStructural input12637 value6323 value1 value2 = (output12637, value6324, value1) := by
  rw [input12637_def, output12637_def]
  try (conv => lhs; cbv)
  try rfl

def value6325 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12638_def : input12638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12638_def : output12638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12638_skip : Flapjack.WordAlloc.isSkip output12638 = false := by
  rw [output12638_def]
  conv => lhs; cbv
  try rfl
theorem node12638_eq : Flapjack.WordAlloc.removeDeadStructural input12638 value6324 value1 value2 = (output12638, value6325, value1) := by
  rw [input12638_def, output12638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength)).val
theorem input12639_def : input12639 = (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength) := by
  unfold input12639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength)).val
theorem output12639_def : output12639 = (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength) := by
  unfold output12639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12639_skip : Flapjack.WordAlloc.isSkip output12639 = false := by
  rw [output12639_def]
  conv => lhs; cbv
  try rfl
theorem node12639_eq : Flapjack.WordAlloc.removeDeadStructural input12639 value6325 value1 value2 = (output12639, value5, value1) := by
  rw [input12639_def, output12639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12639 input12638)).val
theorem input12640_def : input12640 = (.seq input12639 input12638) := by
  unfold input12640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12639 output12638)).val
theorem output12640_def : output12640 = (.seq output12639 output12638) := by
  unfold output12640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12640_skip : Flapjack.WordAlloc.isSkip output12640 = false := by
  rw [output12640_def]
  conv => lhs; cbv
  try rfl
theorem node12640_eq : Flapjack.WordAlloc.removeDeadStructural input12640 value6324 value1 value2 = (output12640, value5, value1) := by
  rw [input12640_def, output12640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12638_eq]
  dsimp only
  rw [node12639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12640 input12637)).val
theorem input12641_def : input12641 = (.seq input12640 input12637) := by
  unfold input12641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12640 output12637)).val
theorem output12641_def : output12641 = (.seq output12640 output12637) := by
  unfold output12641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12641_skip : Flapjack.WordAlloc.isSkip output12641 = false := by
  rw [output12641_def]
  conv => lhs; cbv
  try rfl
theorem node12641_eq : Flapjack.WordAlloc.removeDeadStructural input12641 value6323 value1 value2 = (output12641, value5, value1) := by
  rw [input12641_def, output12641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12637_eq]
  dsimp only
  rw [node12640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12641 input12636)).val
theorem input12642_def : input12642 = (.seq input12641 input12636) := by
  unfold input12642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12641 output12636)).val
theorem output12642_def : output12642 = (.seq output12641 output12636) := by
  unfold output12642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12642_skip : Flapjack.WordAlloc.isSkip output12642 = false := by
  rw [output12642_def]
  conv => lhs; cbv
  try rfl
theorem node12642_eq : Flapjack.WordAlloc.removeDeadStructural input12642 value6322 value1 value2 = (output12642, value5, value1) := by
  rw [input12642_def, output12642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12636_eq]
  dsimp only
  rw [node12641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12642 input12635)).val
theorem input12643_def : input12643 = (.seq input12642 input12635) := by
  unfold input12643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12642 output12635)).val
theorem output12643_def : output12643 = (.seq output12642 output12635) := by
  unfold output12643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12643_skip : Flapjack.WordAlloc.isSkip output12643 = false := by
  rw [output12643_def]
  conv => lhs; cbv
  try rfl
theorem node12643_eq : Flapjack.WordAlloc.removeDeadStructural input12643 value6321 value1 value2 = (output12643, value5, value1) := by
  rw [input12643_def, output12643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12635_eq]
  dsimp only
  rw [node12642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6326 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64)))).val
theorem input12644_def : input12644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64))) := by
  unfold input12644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64)))).val
theorem output12644_def : output12644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64))) := by
  unfold output12644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12644_skip : Flapjack.WordAlloc.isSkip output12644 = false := by
  rw [output12644_def]
  conv => lhs; cbv
  try rfl
theorem node12644_eq : Flapjack.WordAlloc.removeDeadStructural input12644 value5 value1 value2 = (output12644, value6326, value1) := by
  rw [input12644_def, output12644_def]
  try (conv => lhs; cbv)
  try rfl

def value6327 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)])).val
theorem input12645_def : input12645 = (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)]) := by
  unfold input12645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)])).val
theorem output12645_def : output12645 = (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)]) := by
  unfold output12645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12645_skip : Flapjack.WordAlloc.isSkip output12645 = false := by
  rw [output12645_def]
  conv => lhs; cbv
  try rfl
theorem node12645_eq : Flapjack.WordAlloc.removeDeadStructural input12645 value6326 value1 value2 = (output12645, value6327, value1) := by
  rw [input12645_def, output12645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12645 input12644)).val
theorem input12646_def : input12646 = (.seq input12645 input12644) := by
  unfold input12646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12645 output12644)).val
theorem output12646_def : output12646 = (.seq output12645 output12644) := by
  unfold output12646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12646_skip : Flapjack.WordAlloc.isSkip output12646 = false := by
  rw [output12646_def]
  conv => lhs; cbv
  try rfl
theorem node12646_eq : Flapjack.WordAlloc.removeDeadStructural input12646 value5 value1 value2 = (output12646, value6327, value1) := by
  rw [input12646_def, output12646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12644_eq]
  dsimp only
  rw [node12645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6328 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 4555124010822409633#64))).val
theorem input12647_def : input12647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 4555124010822409633#64)) := by
  unfold input12647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 4555124010822409633#64))).val
theorem output12647_def : output12647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 4555124010822409633#64)) := by
  unfold output12647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12647_skip : Flapjack.WordAlloc.isSkip output12647 = false := by
  rw [output12647_def]
  conv => lhs; cbv
  try rfl
theorem node12647_eq : Flapjack.WordAlloc.removeDeadStructural input12647 value6327 value1 value2 = (output12647, value6328, value1) := by
  rw [input12647_def, output12647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2677 4555124010822409633#64))).val
theorem input12648_def : input12648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2677 4555124010822409633#64)) := by
  unfold input12648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12648_def : output12648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12648_skip : Flapjack.WordAlloc.isSkip output12648 = true := by
  rw [output12648_def]
  conv => lhs; cbv
  try rfl
theorem node12648_eq : Flapjack.WordAlloc.removeDeadStructural input12648 value6328 value1 value2 = (output12648, value6328, value1) := by
  rw [input12648_def, output12648_def]
  try (conv => lhs; cbv)
  try rfl

def value6329 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 632#64))))).val
theorem input12649_def : input12649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 632#64)))) := by
  unfold input12649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 632#64))))).val
theorem output12649_def : output12649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 632#64)))) := by
  unfold output12649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12649_skip : Flapjack.WordAlloc.isSkip output12649 = false := by
  rw [output12649_def]
  conv => lhs; cbv
  try rfl
theorem node12649_eq : Flapjack.WordAlloc.removeDeadStructural input12649 value6328 value1 value2 = (output12649, value6329, value1) := by
  rw [input12649_def, output12649_def]
  try (conv => lhs; cbv)
  try rfl

def value6330 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551104#64)))).val
theorem input12650_def : input12650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551104#64))) := by
  unfold input12650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551104#64)))).val
theorem output12650_def : output12650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551104#64))) := by
  unfold output12650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12650_skip : Flapjack.WordAlloc.isSkip output12650 = false := by
  rw [output12650_def]
  conv => lhs; cbv
  try rfl
theorem node12650_eq : Flapjack.WordAlloc.removeDeadStructural input12650 value6329 value1 value2 = (output12650, value6330, value1) := by
  rw [input12650_def, output12650_def]
  try (conv => lhs; cbv)
  try rfl

def value6331 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661)).val
theorem input12651_def : input12651 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661) := by
  unfold input12651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661)).val
theorem output12651_def : output12651 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661) := by
  unfold output12651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12651_skip : Flapjack.WordAlloc.isSkip output12651 = false := by
  rw [output12651_def]
  conv => lhs; cbv
  try rfl
theorem node12651_eq : Flapjack.WordAlloc.removeDeadStructural input12651 value6330 value1 value2 = (output12651, value6331, value1) := by
  rw [input12651_def, output12651_def]
  try (conv => lhs; cbv)
  try rfl

def value6332 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12652_def : input12652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12652_def : output12652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12652_skip : Flapjack.WordAlloc.isSkip output12652 = false := by
  rw [output12652_def]
  conv => lhs; cbv
  try rfl
theorem node12652_eq : Flapjack.WordAlloc.removeDeadStructural input12652 value6331 value1 value2 = (output12652, value6332, value1) := by
  rw [input12652_def, output12652_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength)).val
theorem input12653_def : input12653 = (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength) := by
  unfold input12653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength)).val
theorem output12653_def : output12653 = (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength) := by
  unfold output12653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12653_skip : Flapjack.WordAlloc.isSkip output12653 = false := by
  rw [output12653_def]
  conv => lhs; cbv
  try rfl
theorem node12653_eq : Flapjack.WordAlloc.removeDeadStructural input12653 value6332 value1 value2 = (output12653, value5, value1) := by
  rw [input12653_def, output12653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12653 input12652)).val
theorem input12654_def : input12654 = (.seq input12653 input12652) := by
  unfold input12654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12653 output12652)).val
theorem output12654_def : output12654 = (.seq output12653 output12652) := by
  unfold output12654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12654_skip : Flapjack.WordAlloc.isSkip output12654 = false := by
  rw [output12654_def]
  conv => lhs; cbv
  try rfl
theorem node12654_eq : Flapjack.WordAlloc.removeDeadStructural input12654 value6331 value1 value2 = (output12654, value5, value1) := by
  rw [input12654_def, output12654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12652_eq]
  dsimp only
  rw [node12653_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12654 input12651)).val
theorem input12655_def : input12655 = (.seq input12654 input12651) := by
  unfold input12655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12654 output12651)).val
theorem output12655_def : output12655 = (.seq output12654 output12651) := by
  unfold output12655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12655_skip : Flapjack.WordAlloc.isSkip output12655 = false := by
  rw [output12655_def]
  conv => lhs; cbv
  try rfl
theorem node12655_eq : Flapjack.WordAlloc.removeDeadStructural input12655 value6330 value1 value2 = (output12655, value5, value1) := by
  rw [input12655_def, output12655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12651_eq]
  dsimp only
  rw [node12654_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12655 input12650)).val
theorem input12656_def : input12656 = (.seq input12655 input12650) := by
  unfold input12656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12655 output12650)).val
theorem output12656_def : output12656 = (.seq output12655 output12650) := by
  unfold output12656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12656_skip : Flapjack.WordAlloc.isSkip output12656 = false := by
  rw [output12656_def]
  conv => lhs; cbv
  try rfl
theorem node12656_eq : Flapjack.WordAlloc.removeDeadStructural input12656 value6329 value1 value2 = (output12656, value5, value1) := by
  rw [input12656_def, output12656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12650_eq]
  dsimp only
  rw [node12655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12656 input12649)).val
theorem input12657_def : input12657 = (.seq input12656 input12649) := by
  unfold input12657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12656 output12649)).val
theorem output12657_def : output12657 = (.seq output12656 output12649) := by
  unfold output12657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12657_skip : Flapjack.WordAlloc.isSkip output12657 = false := by
  rw [output12657_def]
  conv => lhs; cbv
  try rfl
theorem node12657_eq : Flapjack.WordAlloc.removeDeadStructural input12657 value6328 value1 value2 = (output12657, value5, value1) := by
  rw [input12657_def, output12657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12649_eq]
  dsimp only
  rw [node12656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6333 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64)))).val
theorem input12658_def : input12658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64))) := by
  unfold input12658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64)))).val
theorem output12658_def : output12658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64))) := by
  unfold output12658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12658_skip : Flapjack.WordAlloc.isSkip output12658 = false := by
  rw [output12658_def]
  conv => lhs; cbv
  try rfl
theorem node12658_eq : Flapjack.WordAlloc.removeDeadStructural input12658 value5 value1 value2 = (output12658, value6333, value1) := by
  rw [input12658_def, output12658_def]
  try (conv => lhs; cbv)
  try rfl

def value6334 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)])).val
theorem input12659_def : input12659 = (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)]) := by
  unfold input12659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)])).val
theorem output12659_def : output12659 = (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)]) := by
  unfold output12659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12659_skip : Flapjack.WordAlloc.isSkip output12659 = false := by
  rw [output12659_def]
  conv => lhs; cbv
  try rfl
theorem node12659_eq : Flapjack.WordAlloc.removeDeadStructural input12659 value6333 value1 value2 = (output12659, value6334, value1) := by
  rw [input12659_def, output12659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12659 input12658)).val
theorem input12660_def : input12660 = (.seq input12659 input12658) := by
  unfold input12660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12659 output12658)).val
theorem output12660_def : output12660 = (.seq output12659 output12658) := by
  unfold output12660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12660_skip : Flapjack.WordAlloc.isSkip output12660 = false := by
  rw [output12660_def]
  conv => lhs; cbv
  try rfl
theorem node12660_eq : Flapjack.WordAlloc.removeDeadStructural input12660 value5 value1 value2 = (output12660, value6334, value1) := by
  rw [input12660_def, output12660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12658_eq]
  dsimp only
  rw [node12659_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6335 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 12297368366147926462#64))).val
theorem input12661_def : input12661 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 12297368366147926462#64)) := by
  unfold input12661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 12297368366147926462#64))).val
theorem output12661_def : output12661 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 12297368366147926462#64)) := by
  unfold output12661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12661_skip : Flapjack.WordAlloc.isSkip output12661 = false := by
  rw [output12661_def]
  conv => lhs; cbv
  try rfl
theorem node12661_eq : Flapjack.WordAlloc.removeDeadStructural input12661 value6334 value1 value2 = (output12661, value6335, value1) := by
  rw [input12661_def, output12661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2645 12297368366147926462#64))).val
theorem input12662_def : input12662 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2645 12297368366147926462#64)) := by
  unfold input12662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12662_def : output12662 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12662_skip : Flapjack.WordAlloc.isSkip output12662 = true := by
  rw [output12662_def]
  conv => lhs; cbv
  try rfl
theorem node12662_eq : Flapjack.WordAlloc.removeDeadStructural input12662 value6335 value1 value2 = (output12662, value6335, value1) := by
  rw [input12662_def, output12662_def]
  try (conv => lhs; cbv)
  try rfl

def value6336 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 624#64))))).val
theorem input12663_def : input12663 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 624#64)))) := by
  unfold input12663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 624#64))))).val
theorem output12663_def : output12663 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 624#64)))) := by
  unfold output12663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12663_skip : Flapjack.WordAlloc.isSkip output12663 = false := by
  rw [output12663_def]
  conv => lhs; cbv
  try rfl
theorem node12663_eq : Flapjack.WordAlloc.removeDeadStructural input12663 value6335 value1 value2 = (output12663, value6336, value1) := by
  rw [input12663_def, output12663_def]
  try (conv => lhs; cbv)
  try rfl

def value6337 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551104#64)))).val
theorem input12664_def : input12664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551104#64))) := by
  unfold input12664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551104#64)))).val
theorem output12664_def : output12664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551104#64))) := by
  unfold output12664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12664_skip : Flapjack.WordAlloc.isSkip output12664 = false := by
  rw [output12664_def]
  conv => lhs; cbv
  try rfl
theorem node12664_eq : Flapjack.WordAlloc.removeDeadStructural input12664 value6336 value1 value2 = (output12664, value6337, value1) := by
  rw [input12664_def, output12664_def]
  try (conv => lhs; cbv)
  try rfl

def value6338 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629)).val
theorem input12665_def : input12665 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629) := by
  unfold input12665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629)).val
theorem output12665_def : output12665 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629) := by
  unfold output12665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12665_skip : Flapjack.WordAlloc.isSkip output12665 = false := by
  rw [output12665_def]
  conv => lhs; cbv
  try rfl
theorem node12665_eq : Flapjack.WordAlloc.removeDeadStructural input12665 value6337 value1 value2 = (output12665, value6338, value1) := by
  rw [input12665_def, output12665_def]
  try (conv => lhs; cbv)
  try rfl

def value6339 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12666_def : input12666 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12666_def : output12666 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12666_skip : Flapjack.WordAlloc.isSkip output12666 = false := by
  rw [output12666_def]
  conv => lhs; cbv
  try rfl
theorem node12666_eq : Flapjack.WordAlloc.removeDeadStructural input12666 value6338 value1 value2 = (output12666, value6339, value1) := by
  rw [input12666_def, output12666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength)).val
theorem input12667_def : input12667 = (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength) := by
  unfold input12667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength)).val
theorem output12667_def : output12667 = (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength) := by
  unfold output12667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12667_skip : Flapjack.WordAlloc.isSkip output12667 = false := by
  rw [output12667_def]
  conv => lhs; cbv
  try rfl
theorem node12667_eq : Flapjack.WordAlloc.removeDeadStructural input12667 value6339 value1 value2 = (output12667, value5, value1) := by
  rw [input12667_def, output12667_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12667 input12666)).val
theorem input12668_def : input12668 = (.seq input12667 input12666) := by
  unfold input12668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12667 output12666)).val
theorem output12668_def : output12668 = (.seq output12667 output12666) := by
  unfold output12668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12668_skip : Flapjack.WordAlloc.isSkip output12668 = false := by
  rw [output12668_def]
  conv => lhs; cbv
  try rfl
theorem node12668_eq : Flapjack.WordAlloc.removeDeadStructural input12668 value6338 value1 value2 = (output12668, value5, value1) := by
  rw [input12668_def, output12668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12666_eq]
  dsimp only
  rw [node12667_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12668 input12665)).val
theorem input12669_def : input12669 = (.seq input12668 input12665) := by
  unfold input12669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12668 output12665)).val
theorem output12669_def : output12669 = (.seq output12668 output12665) := by
  unfold output12669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12669_skip : Flapjack.WordAlloc.isSkip output12669 = false := by
  rw [output12669_def]
  conv => lhs; cbv
  try rfl
theorem node12669_eq : Flapjack.WordAlloc.removeDeadStructural input12669 value6337 value1 value2 = (output12669, value5, value1) := by
  rw [input12669_def, output12669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12665_eq]
  dsimp only
  rw [node12668_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12669 input12664)).val
theorem input12670_def : input12670 = (.seq input12669 input12664) := by
  unfold input12670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12669 output12664)).val
theorem output12670_def : output12670 = (.seq output12669 output12664) := by
  unfold output12670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12670_skip : Flapjack.WordAlloc.isSkip output12670 = false := by
  rw [output12670_def]
  conv => lhs; cbv
  try rfl
theorem node12670_eq : Flapjack.WordAlloc.removeDeadStructural input12670 value6336 value1 value2 = (output12670, value5, value1) := by
  rw [input12670_def, output12670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12664_eq]
  dsimp only
  rw [node12669_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12670 input12663)).val
theorem input12671_def : input12671 = (.seq input12670 input12663) := by
  unfold input12671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12670 output12663)).val
theorem output12671_def : output12671 = (.seq output12670 output12663) := by
  unfold output12671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12671_skip : Flapjack.WordAlloc.isSkip output12671 = false := by
  rw [output12671_def]
  conv => lhs; cbv
  try rfl
theorem node12671_eq : Flapjack.WordAlloc.removeDeadStructural input12671 value6335 value1 value2 = (output12671, value5, value1) := by
  rw [input12671_def, output12671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12663_eq]
  dsimp only
  rw [node12670_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6340 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64)))).val
theorem input12672_def : input12672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64))) := by
  unfold input12672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64)))).val
theorem output12672_def : output12672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64))) := by
  unfold output12672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12672_skip : Flapjack.WordAlloc.isSkip output12672 = false := by
  rw [output12672_def]
  conv => lhs; cbv
  try rfl
theorem node12672_eq : Flapjack.WordAlloc.removeDeadStructural input12672 value5 value1 value2 = (output12672, value6340, value1) := by
  rw [input12672_def, output12672_def]
  try (conv => lhs; cbv)
  try rfl

def value6341 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)])).val
theorem input12673_def : input12673 = (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)]) := by
  unfold input12673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)])).val
theorem output12673_def : output12673 = (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)]) := by
  unfold output12673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12673_skip : Flapjack.WordAlloc.isSkip output12673 = false := by
  rw [output12673_def]
  conv => lhs; cbv
  try rfl
theorem node12673_eq : Flapjack.WordAlloc.removeDeadStructural input12673 value6340 value1 value2 = (output12673, value6341, value1) := by
  rw [input12673_def, output12673_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12673 input12672)).val
theorem input12674_def : input12674 = (.seq input12673 input12672) := by
  unfold input12674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12673 output12672)).val
theorem output12674_def : output12674 = (.seq output12673 output12672) := by
  unfold output12674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12674_skip : Flapjack.WordAlloc.isSkip output12674 = false := by
  rw [output12674_def]
  conv => lhs; cbv
  try rfl
theorem node12674_eq : Flapjack.WordAlloc.removeDeadStructural input12674 value5 value1 value2 = (output12674, value6341, value1) := by
  rw [input12674_def, output12674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12672_eq]
  dsimp only
  rw [node12673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6342 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 929383263523139089#64))).val
theorem input12675_def : input12675 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 929383263523139089#64)) := by
  unfold input12675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 929383263523139089#64))).val
theorem output12675_def : output12675 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 929383263523139089#64)) := by
  unfold output12675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12675_skip : Flapjack.WordAlloc.isSkip output12675 = false := by
  rw [output12675_def]
  conv => lhs; cbv
  try rfl
theorem node12675_eq : Flapjack.WordAlloc.removeDeadStructural input12675 value6341 value1 value2 = (output12675, value6342, value1) := by
  rw [input12675_def, output12675_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2613 929383263523139089#64))).val
theorem input12676_def : input12676 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2613 929383263523139089#64)) := by
  unfold input12676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12676_def : output12676 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12676_skip : Flapjack.WordAlloc.isSkip output12676 = true := by
  rw [output12676_def]
  conv => lhs; cbv
  try rfl
theorem node12676_eq : Flapjack.WordAlloc.removeDeadStructural input12676 value6342 value1 value2 = (output12676, value6342, value1) := by
  rw [input12676_def, output12676_def]
  try (conv => lhs; cbv)
  try rfl

def value6343 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 616#64))))).val
theorem input12677_def : input12677 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 616#64)))) := by
  unfold input12677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 616#64))))).val
theorem output12677_def : output12677 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 616#64)))) := by
  unfold output12677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12677_skip : Flapjack.WordAlloc.isSkip output12677 = false := by
  rw [output12677_def]
  conv => lhs; cbv
  try rfl
theorem node12677_eq : Flapjack.WordAlloc.removeDeadStructural input12677 value6342 value1 value2 = (output12677, value6343, value1) := by
  rw [input12677_def, output12677_def]
  try (conv => lhs; cbv)
  try rfl

def value6344 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551104#64)))).val
theorem input12678_def : input12678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551104#64))) := by
  unfold input12678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551104#64)))).val
theorem output12678_def : output12678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551104#64))) := by
  unfold output12678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12678_skip : Flapjack.WordAlloc.isSkip output12678 = false := by
  rw [output12678_def]
  conv => lhs; cbv
  try rfl
theorem node12678_eq : Flapjack.WordAlloc.removeDeadStructural input12678 value6343 value1 value2 = (output12678, value6344, value1) := by
  rw [input12678_def, output12678_def]
  try (conv => lhs; cbv)
  try rfl

def value6345 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597)).val
theorem input12679_def : input12679 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597) := by
  unfold input12679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597)).val
theorem output12679_def : output12679 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597) := by
  unfold output12679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12679_skip : Flapjack.WordAlloc.isSkip output12679 = false := by
  rw [output12679_def]
  conv => lhs; cbv
  try rfl
theorem node12679_eq : Flapjack.WordAlloc.removeDeadStructural input12679 value6344 value1 value2 = (output12679, value6345, value1) := by
  rw [input12679_def, output12679_def]
  try (conv => lhs; cbv)
  try rfl

def value6346 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2597 2593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12680_def : input12680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2597 2593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2597 2593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12680_def : output12680 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2597 2593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12680_skip : Flapjack.WordAlloc.isSkip output12680 = false := by
  rw [output12680_def]
  conv => lhs; cbv
  try rfl
theorem node12680_eq : Flapjack.WordAlloc.removeDeadStructural input12680 value6345 value1 value2 = (output12680, value6346, value1) := by
  rw [input12680_def, output12680_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2593 Flapjack.WordStore.heapLength)).val
theorem input12681_def : input12681 = (Flapjack.WordLangProgHOL.get 2593 Flapjack.WordStore.heapLength) := by
  unfold input12681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2593 Flapjack.WordStore.heapLength)).val
theorem output12681_def : output12681 = (Flapjack.WordLangProgHOL.get 2593 Flapjack.WordStore.heapLength) := by
  unfold output12681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12681_skip : Flapjack.WordAlloc.isSkip output12681 = false := by
  rw [output12681_def]
  conv => lhs; cbv
  try rfl
theorem node12681_eq : Flapjack.WordAlloc.removeDeadStructural input12681 value6346 value1 value2 = (output12681, value5, value1) := by
  rw [input12681_def, output12681_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12681 input12680)).val
theorem input12682_def : input12682 = (.seq input12681 input12680) := by
  unfold input12682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12681 output12680)).val
theorem output12682_def : output12682 = (.seq output12681 output12680) := by
  unfold output12682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12682_skip : Flapjack.WordAlloc.isSkip output12682 = false := by
  rw [output12682_def]
  conv => lhs; cbv
  try rfl
theorem node12682_eq : Flapjack.WordAlloc.removeDeadStructural input12682 value6345 value1 value2 = (output12682, value5, value1) := by
  rw [input12682_def, output12682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12680_eq]
  dsimp only
  rw [node12681_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12682 input12679)).val
theorem input12683_def : input12683 = (.seq input12682 input12679) := by
  unfold input12683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12682 output12679)).val
theorem output12683_def : output12683 = (.seq output12682 output12679) := by
  unfold output12683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12683_skip : Flapjack.WordAlloc.isSkip output12683 = false := by
  rw [output12683_def]
  conv => lhs; cbv
  try rfl
theorem node12683_eq : Flapjack.WordAlloc.removeDeadStructural input12683 value6344 value1 value2 = (output12683, value5, value1) := by
  rw [input12683_def, output12683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12679_eq]
  dsimp only
  rw [node12682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12683 input12678)).val
theorem input12684_def : input12684 = (.seq input12683 input12678) := by
  unfold input12684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12683 output12678)).val
theorem output12684_def : output12684 = (.seq output12683 output12678) := by
  unfold output12684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12684_skip : Flapjack.WordAlloc.isSkip output12684 = false := by
  rw [output12684_def]
  conv => lhs; cbv
  try rfl
theorem node12684_eq : Flapjack.WordAlloc.removeDeadStructural input12684 value6343 value1 value2 = (output12684, value5, value1) := by
  rw [input12684_def, output12684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12678_eq]
  dsimp only
  rw [node12683_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12684 input12677)).val
theorem input12685_def : input12685 = (.seq input12684 input12677) := by
  unfold input12685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12684 output12677)).val
theorem output12685_def : output12685 = (.seq output12684 output12677) := by
  unfold output12685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12685_skip : Flapjack.WordAlloc.isSkip output12685 = false := by
  rw [output12685_def]
  conv => lhs; cbv
  try rfl
theorem node12685_eq : Flapjack.WordAlloc.removeDeadStructural input12685 value6342 value1 value2 = (output12685, value5, value1) := by
  rw [input12685_def, output12685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12677_eq]
  dsimp only
  rw [node12684_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6347 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2585 (Flapjack.WordLangAddr.addr 2589 0#64)))).val
theorem input12686_def : input12686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2585 (Flapjack.WordLangAddr.addr 2589 0#64))) := by
  unfold input12686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2585 (Flapjack.WordLangAddr.addr 2589 0#64)))).val
theorem output12686_def : output12686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2585 (Flapjack.WordLangAddr.addr 2589 0#64))) := by
  unfold output12686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12686_skip : Flapjack.WordAlloc.isSkip output12686 = false := by
  rw [output12686_def]
  conv => lhs; cbv
  try rfl
theorem node12686_eq : Flapjack.WordAlloc.removeDeadStructural input12686 value5 value1 value2 = (output12686, value6347, value1) := by
  rw [input12686_def, output12686_def]
  try (conv => lhs; cbv)
  try rfl

def value6348 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2589, 2577)])).val
theorem input12687_def : input12687 = (Flapjack.WordLangProgHOL.move 0 [(2589, 2577)]) := by
  unfold input12687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2589, 2577)])).val
theorem output12687_def : output12687 = (Flapjack.WordLangProgHOL.move 0 [(2589, 2577)]) := by
  unfold output12687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12687_skip : Flapjack.WordAlloc.isSkip output12687 = false := by
  rw [output12687_def]
  conv => lhs; cbv
  try rfl
theorem node12687_eq : Flapjack.WordAlloc.removeDeadStructural input12687 value6347 value1 value2 = (output12687, value6348, value1) := by
  rw [input12687_def, output12687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12687 input12686)).val
theorem input12688_def : input12688 = (.seq input12687 input12686) := by
  unfold input12688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12687 output12686)).val
theorem output12688_def : output12688 = (.seq output12687 output12686) := by
  unfold output12688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12688_skip : Flapjack.WordAlloc.isSkip output12688 = false := by
  rw [output12688_def]
  conv => lhs; cbv
  try rfl
theorem node12688_eq : Flapjack.WordAlloc.removeDeadStructural input12688 value5 value1 value2 = (output12688, value6348, value1) := by
  rw [input12688_def, output12688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12686_eq]
  dsimp only
  rw [node12687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6349 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2585 10144865889576432922#64))).val
theorem input12689_def : input12689 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2585 10144865889576432922#64)) := by
  unfold input12689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2585 10144865889576432922#64))).val
theorem output12689_def : output12689 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2585 10144865889576432922#64)) := by
  unfold output12689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12689_skip : Flapjack.WordAlloc.isSkip output12689 = false := by
  rw [output12689_def]
  conv => lhs; cbv
  try rfl
theorem node12689_eq : Flapjack.WordAlloc.removeDeadStructural input12689 value6348 value1 value2 = (output12689, value6349, value1) := by
  rw [input12689_def, output12689_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 10144865889576432922#64))).val
theorem input12690_def : input12690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2581 10144865889576432922#64)) := by
  unfold input12690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12690_def : output12690 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12690_skip : Flapjack.WordAlloc.isSkip output12690 = true := by
  rw [output12690_def]
  conv => lhs; cbv
  try rfl
theorem node12690_eq : Flapjack.WordAlloc.removeDeadStructural input12690 value6349 value1 value2 = (output12690, value6349, value1) := by
  rw [input12690_def, output12690_def]
  try (conv => lhs; cbv)
  try rfl

def value6350 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2577 2573 (Flapjack.WordRegImm.imm 608#64))))).val
theorem input12691_def : input12691 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2577 2573 (Flapjack.WordRegImm.imm 608#64)))) := by
  unfold input12691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2577 2573 (Flapjack.WordRegImm.imm 608#64))))).val
theorem output12691_def : output12691 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2577 2573 (Flapjack.WordRegImm.imm 608#64)))) := by
  unfold output12691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12691_skip : Flapjack.WordAlloc.isSkip output12691 = false := by
  rw [output12691_def]
  conv => lhs; cbv
  try rfl
theorem node12691_eq : Flapjack.WordAlloc.removeDeadStructural input12691 value6349 value1 value2 = (output12691, value6350, value1) := by
  rw [input12691_def, output12691_def]
  try (conv => lhs; cbv)
  try rfl

def value6351 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2573 (Flapjack.WordLangAddr.addr 2569 18446744073709551104#64)))).val
theorem input12692_def : input12692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2573 (Flapjack.WordLangAddr.addr 2569 18446744073709551104#64))) := by
  unfold input12692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2573 (Flapjack.WordLangAddr.addr 2569 18446744073709551104#64)))).val
theorem output12692_def : output12692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2573 (Flapjack.WordLangAddr.addr 2569 18446744073709551104#64))) := by
  unfold output12692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12692_skip : Flapjack.WordAlloc.isSkip output12692 = false := by
  rw [output12692_def]
  conv => lhs; cbv
  try rfl
theorem node12692_eq : Flapjack.WordAlloc.removeDeadStructural input12692 value6350 value1 value2 = (output12692, value6351, value1) := by
  rw [input12692_def, output12692_def]
  try (conv => lhs; cbv)
  try rfl

def value6352 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565)).val
theorem input12693_def : input12693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565) := by
  unfold input12693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565)).val
theorem output12693_def : output12693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2569 2565) := by
  unfold output12693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12693_skip : Flapjack.WordAlloc.isSkip output12693 = false := by
  rw [output12693_def]
  conv => lhs; cbv
  try rfl
theorem node12693_eq : Flapjack.WordAlloc.removeDeadStructural input12693 value6351 value1 value2 = (output12693, value6352, value1) := by
  rw [input12693_def, output12693_def]
  try (conv => lhs; cbv)
  try rfl

def value6353 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12694_def : input12694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12694_def : output12694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2565 2561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12694_skip : Flapjack.WordAlloc.isSkip output12694 = false := by
  rw [output12694_def]
  conv => lhs; cbv
  try rfl
theorem node12694_eq : Flapjack.WordAlloc.removeDeadStructural input12694 value6352 value1 value2 = (output12694, value6353, value1) := by
  rw [input12694_def, output12694_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength)).val
theorem input12695_def : input12695 = (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength) := by
  unfold input12695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength)).val
theorem output12695_def : output12695 = (Flapjack.WordLangProgHOL.get 2561 Flapjack.WordStore.heapLength) := by
  unfold output12695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12695_skip : Flapjack.WordAlloc.isSkip output12695 = false := by
  rw [output12695_def]
  conv => lhs; cbv
  try rfl
theorem node12695_eq : Flapjack.WordAlloc.removeDeadStructural input12695 value6353 value1 value2 = (output12695, value5, value1) := by
  rw [input12695_def, output12695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12695 input12694)).val
theorem input12696_def : input12696 = (.seq input12695 input12694) := by
  unfold input12696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12695 output12694)).val
theorem output12696_def : output12696 = (.seq output12695 output12694) := by
  unfold output12696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12696_skip : Flapjack.WordAlloc.isSkip output12696 = false := by
  rw [output12696_def]
  conv => lhs; cbv
  try rfl
theorem node12696_eq : Flapjack.WordAlloc.removeDeadStructural input12696 value6352 value1 value2 = (output12696, value5, value1) := by
  rw [input12696_def, output12696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12694_eq]
  dsimp only
  rw [node12695_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12696 input12693)).val
theorem input12697_def : input12697 = (.seq input12696 input12693) := by
  unfold input12697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12696 output12693)).val
theorem output12697_def : output12697 = (.seq output12696 output12693) := by
  unfold output12697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12697_skip : Flapjack.WordAlloc.isSkip output12697 = false := by
  rw [output12697_def]
  conv => lhs; cbv
  try rfl
theorem node12697_eq : Flapjack.WordAlloc.removeDeadStructural input12697 value6351 value1 value2 = (output12697, value5, value1) := by
  rw [input12697_def, output12697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12693_eq]
  dsimp only
  rw [node12696_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12697 input12692)).val
theorem input12698_def : input12698 = (.seq input12697 input12692) := by
  unfold input12698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12697 output12692)).val
theorem output12698_def : output12698 = (.seq output12697 output12692) := by
  unfold output12698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12698_skip : Flapjack.WordAlloc.isSkip output12698 = false := by
  rw [output12698_def]
  conv => lhs; cbv
  try rfl
theorem node12698_eq : Flapjack.WordAlloc.removeDeadStructural input12698 value6350 value1 value2 = (output12698, value5, value1) := by
  rw [input12698_def, output12698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12692_eq]
  dsimp only
  rw [node12697_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12698 input12691)).val
theorem input12699_def : input12699 = (.seq input12698 input12691) := by
  unfold input12699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12698 output12691)).val
theorem output12699_def : output12699 = (.seq output12698 output12691) := by
  unfold output12699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12699_skip : Flapjack.WordAlloc.isSkip output12699 = false := by
  rw [output12699_def]
  conv => lhs; cbv
  try rfl
theorem node12699_eq : Flapjack.WordAlloc.removeDeadStructural input12699 value6349 value1 value2 = (output12699, value5, value1) := by
  rw [input12699_def, output12699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12691_eq]
  dsimp only
  rw [node12698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6354 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64)))).val
theorem input12700_def : input12700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64))) := by
  unfold input12700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64)))).val
theorem output12700_def : output12700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2553 (Flapjack.WordLangAddr.addr 2557 0#64))) := by
  unfold output12700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12700_skip : Flapjack.WordAlloc.isSkip output12700 = false := by
  rw [output12700_def]
  conv => lhs; cbv
  try rfl
theorem node12700_eq : Flapjack.WordAlloc.removeDeadStructural input12700 value5 value1 value2 = (output12700, value6354, value1) := by
  rw [input12700_def, output12700_def]
  try (conv => lhs; cbv)
  try rfl

def value6355 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)])).val
theorem input12701_def : input12701 = (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)]) := by
  unfold input12701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)])).val
theorem output12701_def : output12701 = (Flapjack.WordLangProgHOL.move 0 [(2557, 2545)]) := by
  unfold output12701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12701_skip : Flapjack.WordAlloc.isSkip output12701 = false := by
  rw [output12701_def]
  conv => lhs; cbv
  try rfl
theorem node12701_eq : Flapjack.WordAlloc.removeDeadStructural input12701 value6354 value1 value2 = (output12701, value6355, value1) := by
  rw [input12701_def, output12701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12701 input12700)).val
theorem input12702_def : input12702 = (.seq input12701 input12700) := by
  unfold input12702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12701 output12700)).val
theorem output12702_def : output12702 = (.seq output12701 output12700) := by
  unfold output12702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12702_skip : Flapjack.WordAlloc.isSkip output12702 = false := by
  rw [output12702_def]
  conv => lhs; cbv
  try rfl
theorem node12702_eq : Flapjack.WordAlloc.removeDeadStructural input12702 value5 value1 value2 = (output12702, value6355, value1) := by
  rw [input12702_def, output12702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12700_eq]
  dsimp only
  rw [node12701_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6356 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 12537348094477325223#64))).val
theorem input12703_def : input12703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 12537348094477325223#64)) := by
  unfold input12703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 12537348094477325223#64))).val
theorem output12703_def : output12703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2553 12537348094477325223#64)) := by
  unfold output12703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12703_skip : Flapjack.WordAlloc.isSkip output12703 = false := by
  rw [output12703_def]
  conv => lhs; cbv
  try rfl
theorem node12703_eq : Flapjack.WordAlloc.removeDeadStructural input12703 value6355 value1 value2 = (output12703, value6356, value1) := by
  rw [input12703_def, output12703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2549 12537348094477325223#64))).val
theorem input12704_def : input12704 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2549 12537348094477325223#64)) := by
  unfold input12704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12704_def : output12704 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12704_skip : Flapjack.WordAlloc.isSkip output12704 = true := by
  rw [output12704_def]
  conv => lhs; cbv
  try rfl
theorem node12704_eq : Flapjack.WordAlloc.removeDeadStructural input12704 value6356 value1 value2 = (output12704, value6356, value1) := by
  rw [input12704_def, output12704_def]
  try (conv => lhs; cbv)
  try rfl

def value6357 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 600#64))))).val
theorem input12705_def : input12705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 600#64)))) := by
  unfold input12705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 600#64))))).val
theorem output12705_def : output12705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2545 2541 (Flapjack.WordRegImm.imm 600#64)))) := by
  unfold output12705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12705_skip : Flapjack.WordAlloc.isSkip output12705 = false := by
  rw [output12705_def]
  conv => lhs; cbv
  try rfl
theorem node12705_eq : Flapjack.WordAlloc.removeDeadStructural input12705 value6356 value1 value2 = (output12705, value6357, value1) := by
  rw [input12705_def, output12705_def]
  try (conv => lhs; cbv)
  try rfl

def value6358 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2541 (Flapjack.WordLangAddr.addr 2537 18446744073709551104#64)))).val
theorem input12706_def : input12706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2541 (Flapjack.WordLangAddr.addr 2537 18446744073709551104#64))) := by
  unfold input12706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2541 (Flapjack.WordLangAddr.addr 2537 18446744073709551104#64)))).val
theorem output12706_def : output12706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2541 (Flapjack.WordLangAddr.addr 2537 18446744073709551104#64))) := by
  unfold output12706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12706_skip : Flapjack.WordAlloc.isSkip output12706 = false := by
  rw [output12706_def]
  conv => lhs; cbv
  try rfl
theorem node12706_eq : Flapjack.WordAlloc.removeDeadStructural input12706 value6357 value1 value2 = (output12706, value6358, value1) := by
  rw [input12706_def, output12706_def]
  try (conv => lhs; cbv)
  try rfl

def value6359 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2537 2533)).val
theorem input12707_def : input12707 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2537 2533) := by
  unfold input12707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2537 2533)).val
theorem output12707_def : output12707 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2537 2533) := by
  unfold output12707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12707_skip : Flapjack.WordAlloc.isSkip output12707 = false := by
  rw [output12707_def]
  conv => lhs; cbv
  try rfl
theorem node12707_eq : Flapjack.WordAlloc.removeDeadStructural input12707 value6358 value1 value2 = (output12707, value6359, value1) := by
  rw [input12707_def, output12707_def]
  try (conv => lhs; cbv)
  try rfl

def value6360 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2533 2529 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12708_def : input12708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2533 2529 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2533 2529 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12708_def : output12708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2533 2529 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12708_skip : Flapjack.WordAlloc.isSkip output12708 = false := by
  rw [output12708_def]
  conv => lhs; cbv
  try rfl
theorem node12708_eq : Flapjack.WordAlloc.removeDeadStructural input12708 value6359 value1 value2 = (output12708, value6360, value1) := by
  rw [input12708_def, output12708_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2529 Flapjack.WordStore.heapLength)).val
theorem input12709_def : input12709 = (Flapjack.WordLangProgHOL.get 2529 Flapjack.WordStore.heapLength) := by
  unfold input12709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2529 Flapjack.WordStore.heapLength)).val
theorem output12709_def : output12709 = (Flapjack.WordLangProgHOL.get 2529 Flapjack.WordStore.heapLength) := by
  unfold output12709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12709_skip : Flapjack.WordAlloc.isSkip output12709 = false := by
  rw [output12709_def]
  conv => lhs; cbv
  try rfl
theorem node12709_eq : Flapjack.WordAlloc.removeDeadStructural input12709 value6360 value1 value2 = (output12709, value5, value1) := by
  rw [input12709_def, output12709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12709 input12708)).val
theorem input12710_def : input12710 = (.seq input12709 input12708) := by
  unfold input12710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12709 output12708)).val
theorem output12710_def : output12710 = (.seq output12709 output12708) := by
  unfold output12710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12710_skip : Flapjack.WordAlloc.isSkip output12710 = false := by
  rw [output12710_def]
  conv => lhs; cbv
  try rfl
theorem node12710_eq : Flapjack.WordAlloc.removeDeadStructural input12710 value6359 value1 value2 = (output12710, value5, value1) := by
  rw [input12710_def, output12710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12708_eq]
  dsimp only
  rw [node12709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12710 input12707)).val
theorem input12711_def : input12711 = (.seq input12710 input12707) := by
  unfold input12711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12710 output12707)).val
theorem output12711_def : output12711 = (.seq output12710 output12707) := by
  unfold output12711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12711_skip : Flapjack.WordAlloc.isSkip output12711 = false := by
  rw [output12711_def]
  conv => lhs; cbv
  try rfl
theorem node12711_eq : Flapjack.WordAlloc.removeDeadStructural input12711 value6358 value1 value2 = (output12711, value5, value1) := by
  rw [input12711_def, output12711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12707_eq]
  dsimp only
  rw [node12710_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12711 input12706)).val
theorem input12712_def : input12712 = (.seq input12711 input12706) := by
  unfold input12712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12711 output12706)).val
theorem output12712_def : output12712 = (.seq output12711 output12706) := by
  unfold output12712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12712_skip : Flapjack.WordAlloc.isSkip output12712 = false := by
  rw [output12712_def]
  conv => lhs; cbv
  try rfl
theorem node12712_eq : Flapjack.WordAlloc.removeDeadStructural input12712 value6357 value1 value2 = (output12712, value5, value1) := by
  rw [input12712_def, output12712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12706_eq]
  dsimp only
  rw [node12711_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12712 input12705)).val
theorem input12713_def : input12713 = (.seq input12712 input12705) := by
  unfold input12713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12712 output12705)).val
theorem output12713_def : output12713 = (.seq output12712 output12705) := by
  unfold output12713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12713_skip : Flapjack.WordAlloc.isSkip output12713 = false := by
  rw [output12713_def]
  conv => lhs; cbv
  try rfl
theorem node12713_eq : Flapjack.WordAlloc.removeDeadStructural input12713 value6356 value1 value2 = (output12713, value5, value1) := by
  rw [input12713_def, output12713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12705_eq]
  dsimp only
  rw [node12712_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6361 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2521 (Flapjack.WordLangAddr.addr 2525 0#64)))).val
theorem input12714_def : input12714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2521 (Flapjack.WordLangAddr.addr 2525 0#64))) := by
  unfold input12714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2521 (Flapjack.WordLangAddr.addr 2525 0#64)))).val
theorem output12714_def : output12714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2521 (Flapjack.WordLangAddr.addr 2525 0#64))) := by
  unfold output12714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12714_skip : Flapjack.WordAlloc.isSkip output12714 = false := by
  rw [output12714_def]
  conv => lhs; cbv
  try rfl
theorem node12714_eq : Flapjack.WordAlloc.removeDeadStructural input12714 value5 value1 value2 = (output12714, value6361, value1) := by
  rw [input12714_def, output12714_def]
  try (conv => lhs; cbv)
  try rfl

def value6362 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2525, 2513)])).val
theorem input12715_def : input12715 = (Flapjack.WordLangProgHOL.move 0 [(2525, 2513)]) := by
  unfold input12715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2525, 2513)])).val
theorem output12715_def : output12715 = (Flapjack.WordLangProgHOL.move 0 [(2525, 2513)]) := by
  unfold output12715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12715_skip : Flapjack.WordAlloc.isSkip output12715 = false := by
  rw [output12715_def]
  conv => lhs; cbv
  try rfl
theorem node12715_eq : Flapjack.WordAlloc.removeDeadStructural input12715 value6361 value1 value2 = (output12715, value6362, value1) := by
  rw [input12715_def, output12715_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12715 input12714)).val
theorem input12716_def : input12716 = (.seq input12715 input12714) := by
  unfold input12716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12715 output12714)).val
theorem output12716_def : output12716 = (.seq output12715 output12714) := by
  unfold output12716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12716_skip : Flapjack.WordAlloc.isSkip output12716 = false := by
  rw [output12716_def]
  conv => lhs; cbv
  try rfl
theorem node12716_eq : Flapjack.WordAlloc.removeDeadStructural input12716 value5 value1 value2 = (output12716, value6362, value1) := by
  rw [input12716_def, output12716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12714_eq]
  dsimp only
  rw [node12715_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6363 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 7873024875724591404#64))).val
theorem input12717_def : input12717 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 7873024875724591404#64)) := by
  unfold input12717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 7873024875724591404#64))).val
theorem output12717_def : output12717 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2521 7873024875724591404#64)) := by
  unfold output12717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12717_skip : Flapjack.WordAlloc.isSkip output12717 = false := by
  rw [output12717_def]
  conv => lhs; cbv
  try rfl
theorem node12717_eq : Flapjack.WordAlloc.removeDeadStructural input12717 value6362 value1 value2 = (output12717, value6363, value1) := by
  rw [input12717_def, output12717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2517 7873024875724591404#64))).val
theorem input12718_def : input12718 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2517 7873024875724591404#64)) := by
  unfold input12718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12718_def : output12718 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12718_skip : Flapjack.WordAlloc.isSkip output12718 = true := by
  rw [output12718_def]
  conv => lhs; cbv
  try rfl
theorem node12718_eq : Flapjack.WordAlloc.removeDeadStructural input12718 value6363 value1 value2 = (output12718, value6363, value1) := by
  rw [input12718_def, output12718_def]
  try (conv => lhs; cbv)
  try rfl

def value6364 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2513 2509 (Flapjack.WordRegImm.imm 592#64))))).val
theorem input12719_def : input12719 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2513 2509 (Flapjack.WordRegImm.imm 592#64)))) := by
  unfold input12719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2513 2509 (Flapjack.WordRegImm.imm 592#64))))).val
theorem output12719_def : output12719 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2513 2509 (Flapjack.WordRegImm.imm 592#64)))) := by
  unfold output12719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12719_skip : Flapjack.WordAlloc.isSkip output12719 = false := by
  rw [output12719_def]
  conv => lhs; cbv
  try rfl
theorem node12719_eq : Flapjack.WordAlloc.removeDeadStructural input12719 value6363 value1 value2 = (output12719, value6364, value1) := by
  rw [input12719_def, output12719_def]
  try (conv => lhs; cbv)
  try rfl

def value6365 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2509 (Flapjack.WordLangAddr.addr 2505 18446744073709551104#64)))).val
theorem input12720_def : input12720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2509 (Flapjack.WordLangAddr.addr 2505 18446744073709551104#64))) := by
  unfold input12720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2509 (Flapjack.WordLangAddr.addr 2505 18446744073709551104#64)))).val
theorem output12720_def : output12720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2509 (Flapjack.WordLangAddr.addr 2505 18446744073709551104#64))) := by
  unfold output12720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12720_skip : Flapjack.WordAlloc.isSkip output12720 = false := by
  rw [output12720_def]
  conv => lhs; cbv
  try rfl
theorem node12720_eq : Flapjack.WordAlloc.removeDeadStructural input12720 value6364 value1 value2 = (output12720, value6365, value1) := by
  rw [input12720_def, output12720_def]
  try (conv => lhs; cbv)
  try rfl

def value6366 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2505 2501)).val
theorem input12721_def : input12721 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2505 2501) := by
  unfold input12721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2505 2501)).val
theorem output12721_def : output12721 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2505 2501) := by
  unfold output12721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12721_skip : Flapjack.WordAlloc.isSkip output12721 = false := by
  rw [output12721_def]
  conv => lhs; cbv
  try rfl
theorem node12721_eq : Flapjack.WordAlloc.removeDeadStructural input12721 value6365 value1 value2 = (output12721, value6366, value1) := by
  rw [input12721_def, output12721_def]
  try (conv => lhs; cbv)
  try rfl

def value6367 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2501 2497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12722_def : input12722 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2501 2497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2501 2497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12722_def : output12722 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2501 2497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12722_skip : Flapjack.WordAlloc.isSkip output12722 = false := by
  rw [output12722_def]
  conv => lhs; cbv
  try rfl
theorem node12722_eq : Flapjack.WordAlloc.removeDeadStructural input12722 value6366 value1 value2 = (output12722, value6367, value1) := by
  rw [input12722_def, output12722_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2497 Flapjack.WordStore.heapLength)).val
theorem input12723_def : input12723 = (Flapjack.WordLangProgHOL.get 2497 Flapjack.WordStore.heapLength) := by
  unfold input12723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2497 Flapjack.WordStore.heapLength)).val
theorem output12723_def : output12723 = (Flapjack.WordLangProgHOL.get 2497 Flapjack.WordStore.heapLength) := by
  unfold output12723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12723_skip : Flapjack.WordAlloc.isSkip output12723 = false := by
  rw [output12723_def]
  conv => lhs; cbv
  try rfl
theorem node12723_eq : Flapjack.WordAlloc.removeDeadStructural input12723 value6367 value1 value2 = (output12723, value5, value1) := by
  rw [input12723_def, output12723_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12723 input12722)).val
theorem input12724_def : input12724 = (.seq input12723 input12722) := by
  unfold input12724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12723 output12722)).val
theorem output12724_def : output12724 = (.seq output12723 output12722) := by
  unfold output12724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12724_skip : Flapjack.WordAlloc.isSkip output12724 = false := by
  rw [output12724_def]
  conv => lhs; cbv
  try rfl
theorem node12724_eq : Flapjack.WordAlloc.removeDeadStructural input12724 value6366 value1 value2 = (output12724, value5, value1) := by
  rw [input12724_def, output12724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12722_eq]
  dsimp only
  rw [node12723_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12724 input12721)).val
theorem input12725_def : input12725 = (.seq input12724 input12721) := by
  unfold input12725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12724 output12721)).val
theorem output12725_def : output12725 = (.seq output12724 output12721) := by
  unfold output12725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12725_skip : Flapjack.WordAlloc.isSkip output12725 = false := by
  rw [output12725_def]
  conv => lhs; cbv
  try rfl
theorem node12725_eq : Flapjack.WordAlloc.removeDeadStructural input12725 value6365 value1 value2 = (output12725, value5, value1) := by
  rw [input12725_def, output12725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12721_eq]
  dsimp only
  rw [node12724_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12725 input12720)).val
theorem input12726_def : input12726 = (.seq input12725 input12720) := by
  unfold input12726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12725 output12720)).val
theorem output12726_def : output12726 = (.seq output12725 output12720) := by
  unfold output12726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12726_skip : Flapjack.WordAlloc.isSkip output12726 = false := by
  rw [output12726_def]
  conv => lhs; cbv
  try rfl
theorem node12726_eq : Flapjack.WordAlloc.removeDeadStructural input12726 value6364 value1 value2 = (output12726, value5, value1) := by
  rw [input12726_def, output12726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12720_eq]
  dsimp only
  rw [node12725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12726 input12719)).val
theorem input12727_def : input12727 = (.seq input12726 input12719) := by
  unfold input12727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12726 output12719)).val
theorem output12727_def : output12727 = (.seq output12726 output12719) := by
  unfold output12727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12727_skip : Flapjack.WordAlloc.isSkip output12727 = false := by
  rw [output12727_def]
  conv => lhs; cbv
  try rfl
theorem node12727_eq : Flapjack.WordAlloc.removeDeadStructural input12727 value6363 value1 value2 = (output12727, value5, value1) := by
  rw [input12727_def, output12727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12719_eq]
  dsimp only
  rw [node12726_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6368 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2489 (Flapjack.WordLangAddr.addr 2493 0#64)))).val
theorem input12728_def : input12728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2489 (Flapjack.WordLangAddr.addr 2493 0#64))) := by
  unfold input12728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2489 (Flapjack.WordLangAddr.addr 2493 0#64)))).val
theorem output12728_def : output12728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2489 (Flapjack.WordLangAddr.addr 2493 0#64))) := by
  unfold output12728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12728_skip : Flapjack.WordAlloc.isSkip output12728 = false := by
  rw [output12728_def]
  conv => lhs; cbv
  try rfl
theorem node12728_eq : Flapjack.WordAlloc.removeDeadStructural input12728 value5 value1 value2 = (output12728, value6368, value1) := by
  rw [input12728_def, output12728_def]
  try (conv => lhs; cbv)
  try rfl

def value6369 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2493, 2481)])).val
theorem input12729_def : input12729 = (Flapjack.WordLangProgHOL.move 0 [(2493, 2481)]) := by
  unfold input12729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2493, 2481)])).val
theorem output12729_def : output12729 = (Flapjack.WordLangProgHOL.move 0 [(2493, 2481)]) := by
  unfold output12729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12729_skip : Flapjack.WordAlloc.isSkip output12729 = false := by
  rw [output12729_def]
  conv => lhs; cbv
  try rfl
theorem node12729_eq : Flapjack.WordAlloc.removeDeadStructural input12729 value6368 value1 value2 = (output12729, value6369, value1) := by
  rw [input12729_def, output12729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12729 input12728)).val
theorem input12730_def : input12730 = (.seq input12729 input12728) := by
  unfold input12730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12729 output12728)).val
theorem output12730_def : output12730 = (.seq output12729 output12728) := by
  unfold output12730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12730_skip : Flapjack.WordAlloc.isSkip output12730 = false := by
  rw [output12730_def]
  conv => lhs; cbv
  try rfl
theorem node12730_eq : Flapjack.WordAlloc.removeDeadStructural input12730 value5 value1 value2 = (output12730, value6369, value1) := by
  rw [input12730_def, output12730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12728_eq]
  dsimp only
  rw [node12729_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6370 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2489 10536956157198377609#64))).val
theorem input12731_def : input12731 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2489 10536956157198377609#64)) := by
  unfold input12731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2489 10536956157198377609#64))).val
theorem output12731_def : output12731 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2489 10536956157198377609#64)) := by
  unfold output12731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12731_skip : Flapjack.WordAlloc.isSkip output12731 = false := by
  rw [output12731_def]
  conv => lhs; cbv
  try rfl
theorem node12731_eq : Flapjack.WordAlloc.removeDeadStructural input12731 value6369 value1 value2 = (output12731, value6370, value1) := by
  rw [input12731_def, output12731_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2485 10536956157198377609#64))).val
theorem input12732_def : input12732 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2485 10536956157198377609#64)) := by
  unfold input12732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12732_def : output12732 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12732_skip : Flapjack.WordAlloc.isSkip output12732 = true := by
  rw [output12732_def]
  conv => lhs; cbv
  try rfl
theorem node12732_eq : Flapjack.WordAlloc.removeDeadStructural input12732 value6370 value1 value2 = (output12732, value6370, value1) := by
  rw [input12732_def, output12732_def]
  try (conv => lhs; cbv)
  try rfl

def value6371 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2481 2477 (Flapjack.WordRegImm.imm 584#64))))).val
theorem input12733_def : input12733 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2481 2477 (Flapjack.WordRegImm.imm 584#64)))) := by
  unfold input12733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2481 2477 (Flapjack.WordRegImm.imm 584#64))))).val
theorem output12733_def : output12733 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2481 2477 (Flapjack.WordRegImm.imm 584#64)))) := by
  unfold output12733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12733_skip : Flapjack.WordAlloc.isSkip output12733 = false := by
  rw [output12733_def]
  conv => lhs; cbv
  try rfl
theorem node12733_eq : Flapjack.WordAlloc.removeDeadStructural input12733 value6370 value1 value2 = (output12733, value6371, value1) := by
  rw [input12733_def, output12733_def]
  try (conv => lhs; cbv)
  try rfl

def value6372 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2477 (Flapjack.WordLangAddr.addr 2473 18446744073709551104#64)))).val
theorem input12734_def : input12734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2477 (Flapjack.WordLangAddr.addr 2473 18446744073709551104#64))) := by
  unfold input12734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2477 (Flapjack.WordLangAddr.addr 2473 18446744073709551104#64)))).val
theorem output12734_def : output12734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2477 (Flapjack.WordLangAddr.addr 2473 18446744073709551104#64))) := by
  unfold output12734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12734_skip : Flapjack.WordAlloc.isSkip output12734 = false := by
  rw [output12734_def]
  conv => lhs; cbv
  try rfl
theorem node12734_eq : Flapjack.WordAlloc.removeDeadStructural input12734 value6371 value1 value2 = (output12734, value6372, value1) := by
  rw [input12734_def, output12734_def]
  try (conv => lhs; cbv)
  try rfl

def value6373 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2473 2469)).val
theorem input12735_def : input12735 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2473 2469) := by
  unfold input12735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2473 2469)).val
theorem output12735_def : output12735 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2473 2469) := by
  unfold output12735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12735_skip : Flapjack.WordAlloc.isSkip output12735 = false := by
  rw [output12735_def]
  conv => lhs; cbv
  try rfl
theorem node12735_eq : Flapjack.WordAlloc.removeDeadStructural input12735 value6372 value1 value2 = (output12735, value6373, value1) := by
  rw [input12735_def, output12735_def]
  try (conv => lhs; cbv)
  try rfl

def value6374 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2469 2465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12736_def : input12736 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2469 2465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2469 2465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12736_def : output12736 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2469 2465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12736_skip : Flapjack.WordAlloc.isSkip output12736 = false := by
  rw [output12736_def]
  conv => lhs; cbv
  try rfl
theorem node12736_eq : Flapjack.WordAlloc.removeDeadStructural input12736 value6373 value1 value2 = (output12736, value6374, value1) := by
  rw [input12736_def, output12736_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2465 Flapjack.WordStore.heapLength)).val
theorem input12737_def : input12737 = (Flapjack.WordLangProgHOL.get 2465 Flapjack.WordStore.heapLength) := by
  unfold input12737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2465 Flapjack.WordStore.heapLength)).val
theorem output12737_def : output12737 = (Flapjack.WordLangProgHOL.get 2465 Flapjack.WordStore.heapLength) := by
  unfold output12737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12737_skip : Flapjack.WordAlloc.isSkip output12737 = false := by
  rw [output12737_def]
  conv => lhs; cbv
  try rfl
theorem node12737_eq : Flapjack.WordAlloc.removeDeadStructural input12737 value6374 value1 value2 = (output12737, value5, value1) := by
  rw [input12737_def, output12737_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12737 input12736)).val
theorem input12738_def : input12738 = (.seq input12737 input12736) := by
  unfold input12738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12737 output12736)).val
theorem output12738_def : output12738 = (.seq output12737 output12736) := by
  unfold output12738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12738_skip : Flapjack.WordAlloc.isSkip output12738 = false := by
  rw [output12738_def]
  conv => lhs; cbv
  try rfl
theorem node12738_eq : Flapjack.WordAlloc.removeDeadStructural input12738 value6373 value1 value2 = (output12738, value5, value1) := by
  rw [input12738_def, output12738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12736_eq]
  dsimp only
  rw [node12737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12738 input12735)).val
theorem input12739_def : input12739 = (.seq input12738 input12735) := by
  unfold input12739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12738 output12735)).val
theorem output12739_def : output12739 = (.seq output12738 output12735) := by
  unfold output12739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12739_skip : Flapjack.WordAlloc.isSkip output12739 = false := by
  rw [output12739_def]
  conv => lhs; cbv
  try rfl
theorem node12739_eq : Flapjack.WordAlloc.removeDeadStructural input12739 value6372 value1 value2 = (output12739, value5, value1) := by
  rw [input12739_def, output12739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12735_eq]
  dsimp only
  rw [node12738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12739 input12734)).val
theorem input12740_def : input12740 = (.seq input12739 input12734) := by
  unfold input12740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12739 output12734)).val
theorem output12740_def : output12740 = (.seq output12739 output12734) := by
  unfold output12740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12740_skip : Flapjack.WordAlloc.isSkip output12740 = false := by
  rw [output12740_def]
  conv => lhs; cbv
  try rfl
theorem node12740_eq : Flapjack.WordAlloc.removeDeadStructural input12740 value6371 value1 value2 = (output12740, value5, value1) := by
  rw [input12740_def, output12740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12734_eq]
  dsimp only
  rw [node12739_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12740 input12733)).val
theorem input12741_def : input12741 = (.seq input12740 input12733) := by
  unfold input12741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12740 output12733)).val
theorem output12741_def : output12741 = (.seq output12740 output12733) := by
  unfold output12741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12741_skip : Flapjack.WordAlloc.isSkip output12741 = false := by
  rw [output12741_def]
  conv => lhs; cbv
  try rfl
theorem node12741_eq : Flapjack.WordAlloc.removeDeadStructural input12741 value6370 value1 value2 = (output12741, value5, value1) := by
  rw [input12741_def, output12741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12733_eq]
  dsimp only
  rw [node12740_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6375 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2457 (Flapjack.WordLangAddr.addr 2461 0#64)))).val
theorem input12742_def : input12742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2457 (Flapjack.WordLangAddr.addr 2461 0#64))) := by
  unfold input12742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2457 (Flapjack.WordLangAddr.addr 2461 0#64)))).val
theorem output12742_def : output12742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2457 (Flapjack.WordLangAddr.addr 2461 0#64))) := by
  unfold output12742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12742_skip : Flapjack.WordAlloc.isSkip output12742 = false := by
  rw [output12742_def]
  conv => lhs; cbv
  try rfl
theorem node12742_eq : Flapjack.WordAlloc.removeDeadStructural input12742 value5 value1 value2 = (output12742, value6375, value1) := by
  rw [input12742_def, output12742_def]
  try (conv => lhs; cbv)
  try rfl

def value6376 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2461, 2449)])).val
theorem input12743_def : input12743 = (Flapjack.WordLangProgHOL.move 0 [(2461, 2449)]) := by
  unfold input12743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2461, 2449)])).val
theorem output12743_def : output12743 = (Flapjack.WordLangProgHOL.move 0 [(2461, 2449)]) := by
  unfold output12743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12743_skip : Flapjack.WordAlloc.isSkip output12743 = false := by
  rw [output12743_def]
  conv => lhs; cbv
  try rfl
theorem node12743_eq : Flapjack.WordAlloc.removeDeadStructural input12743 value6375 value1 value2 = (output12743, value6376, value1) := by
  rw [input12743_def, output12743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12743 input12742)).val
theorem input12744_def : input12744 = (.seq input12743 input12742) := by
  unfold input12744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12743 output12742)).val
theorem output12744_def : output12744 = (.seq output12743 output12742) := by
  unfold output12744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12744_skip : Flapjack.WordAlloc.isSkip output12744 = false := by
  rw [output12744_def]
  conv => lhs; cbv
  try rfl
theorem node12744_eq : Flapjack.WordAlloc.removeDeadStructural input12744 value5 value1 value2 = (output12744, value6376, value1) := by
  rw [input12744_def, output12744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12742_eq]
  dsimp only
  rw [node12743_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6377 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2457 16254428414758889473#64))).val
theorem input12745_def : input12745 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2457 16254428414758889473#64)) := by
  unfold input12745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2457 16254428414758889473#64))).val
theorem output12745_def : output12745 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2457 16254428414758889473#64)) := by
  unfold output12745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12745_skip : Flapjack.WordAlloc.isSkip output12745 = false := by
  rw [output12745_def]
  conv => lhs; cbv
  try rfl
theorem node12745_eq : Flapjack.WordAlloc.removeDeadStructural input12745 value6376 value1 value2 = (output12745, value6377, value1) := by
  rw [input12745_def, output12745_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2453 16254428414758889473#64))).val
theorem input12746_def : input12746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2453 16254428414758889473#64)) := by
  unfold input12746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12746_def : output12746 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12746_skip : Flapjack.WordAlloc.isSkip output12746 = true := by
  rw [output12746_def]
  conv => lhs; cbv
  try rfl
theorem node12746_eq : Flapjack.WordAlloc.removeDeadStructural input12746 value6377 value1 value2 = (output12746, value6377, value1) := by
  rw [input12746_def, output12746_def]
  try (conv => lhs; cbv)
  try rfl

def value6378 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2449 2445 (Flapjack.WordRegImm.imm 576#64))))).val
theorem input12747_def : input12747 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2449 2445 (Flapjack.WordRegImm.imm 576#64)))) := by
  unfold input12747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2449 2445 (Flapjack.WordRegImm.imm 576#64))))).val
theorem output12747_def : output12747 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2449 2445 (Flapjack.WordRegImm.imm 576#64)))) := by
  unfold output12747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12747_skip : Flapjack.WordAlloc.isSkip output12747 = false := by
  rw [output12747_def]
  conv => lhs; cbv
  try rfl
theorem node12747_eq : Flapjack.WordAlloc.removeDeadStructural input12747 value6377 value1 value2 = (output12747, value6378, value1) := by
  rw [input12747_def, output12747_def]
  try (conv => lhs; cbv)
  try rfl

def value6379 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2445 (Flapjack.WordLangAddr.addr 2441 18446744073709551104#64)))).val
theorem input12748_def : input12748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2445 (Flapjack.WordLangAddr.addr 2441 18446744073709551104#64))) := by
  unfold input12748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2445 (Flapjack.WordLangAddr.addr 2441 18446744073709551104#64)))).val
theorem output12748_def : output12748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2445 (Flapjack.WordLangAddr.addr 2441 18446744073709551104#64))) := by
  unfold output12748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12748_skip : Flapjack.WordAlloc.isSkip output12748 = false := by
  rw [output12748_def]
  conv => lhs; cbv
  try rfl
theorem node12748_eq : Flapjack.WordAlloc.removeDeadStructural input12748 value6378 value1 value2 = (output12748, value6379, value1) := by
  rw [input12748_def, output12748_def]
  try (conv => lhs; cbv)
  try rfl

def value6380 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2441 2437)).val
theorem input12749_def : input12749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2441 2437) := by
  unfold input12749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2441 2437)).val
theorem output12749_def : output12749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2441 2437) := by
  unfold output12749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12749_skip : Flapjack.WordAlloc.isSkip output12749 = false := by
  rw [output12749_def]
  conv => lhs; cbv
  try rfl
theorem node12749_eq : Flapjack.WordAlloc.removeDeadStructural input12749 value6379 value1 value2 = (output12749, value6380, value1) := by
  rw [input12749_def, output12749_def]
  try (conv => lhs; cbv)
  try rfl

def value6381 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2437 2433 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12750_def : input12750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2437 2433 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2437 2433 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12750_def : output12750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2437 2433 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12750_skip : Flapjack.WordAlloc.isSkip output12750 = false := by
  rw [output12750_def]
  conv => lhs; cbv
  try rfl
theorem node12750_eq : Flapjack.WordAlloc.removeDeadStructural input12750 value6380 value1 value2 = (output12750, value6381, value1) := by
  rw [input12750_def, output12750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2433 Flapjack.WordStore.heapLength)).val
theorem input12751_def : input12751 = (Flapjack.WordLangProgHOL.get 2433 Flapjack.WordStore.heapLength) := by
  unfold input12751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2433 Flapjack.WordStore.heapLength)).val
theorem output12751_def : output12751 = (Flapjack.WordLangProgHOL.get 2433 Flapjack.WordStore.heapLength) := by
  unfold output12751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12751_skip : Flapjack.WordAlloc.isSkip output12751 = false := by
  rw [output12751_def]
  conv => lhs; cbv
  try rfl
theorem node12751_eq : Flapjack.WordAlloc.removeDeadStructural input12751 value6381 value1 value2 = (output12751, value5, value1) := by
  rw [input12751_def, output12751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12751 input12750)).val
theorem input12752_def : input12752 = (.seq input12751 input12750) := by
  unfold input12752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12751 output12750)).val
theorem output12752_def : output12752 = (.seq output12751 output12750) := by
  unfold output12752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12752_skip : Flapjack.WordAlloc.isSkip output12752 = false := by
  rw [output12752_def]
  conv => lhs; cbv
  try rfl
theorem node12752_eq : Flapjack.WordAlloc.removeDeadStructural input12752 value6380 value1 value2 = (output12752, value5, value1) := by
  rw [input12752_def, output12752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12750_eq]
  dsimp only
  rw [node12751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12752 input12749)).val
theorem input12753_def : input12753 = (.seq input12752 input12749) := by
  unfold input12753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12752 output12749)).val
theorem output12753_def : output12753 = (.seq output12752 output12749) := by
  unfold output12753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12753_skip : Flapjack.WordAlloc.isSkip output12753 = false := by
  rw [output12753_def]
  conv => lhs; cbv
  try rfl
theorem node12753_eq : Flapjack.WordAlloc.removeDeadStructural input12753 value6379 value1 value2 = (output12753, value5, value1) := by
  rw [input12753_def, output12753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12749_eq]
  dsimp only
  rw [node12752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12753 input12748)).val
theorem input12754_def : input12754 = (.seq input12753 input12748) := by
  unfold input12754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12753 output12748)).val
theorem output12754_def : output12754 = (.seq output12753 output12748) := by
  unfold output12754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12754_skip : Flapjack.WordAlloc.isSkip output12754 = false := by
  rw [output12754_def]
  conv => lhs; cbv
  try rfl
theorem node12754_eq : Flapjack.WordAlloc.removeDeadStructural input12754 value6378 value1 value2 = (output12754, value5, value1) := by
  rw [input12754_def, output12754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12748_eq]
  dsimp only
  rw [node12753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12754 input12747)).val
theorem input12755_def : input12755 = (.seq input12754 input12747) := by
  unfold input12755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12754 output12747)).val
theorem output12755_def : output12755 = (.seq output12754 output12747) := by
  unfold output12755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12755_skip : Flapjack.WordAlloc.isSkip output12755 = false := by
  rw [output12755_def]
  conv => lhs; cbv
  try rfl
theorem node12755_eq : Flapjack.WordAlloc.removeDeadStructural input12755 value6377 value1 value2 = (output12755, value5, value1) := by
  rw [input12755_def, output12755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12747_eq]
  dsimp only
  rw [node12754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6382 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2425 (Flapjack.WordLangAddr.addr 2429 0#64)))).val
theorem input12756_def : input12756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2425 (Flapjack.WordLangAddr.addr 2429 0#64))) := by
  unfold input12756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2425 (Flapjack.WordLangAddr.addr 2429 0#64)))).val
theorem output12756_def : output12756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2425 (Flapjack.WordLangAddr.addr 2429 0#64))) := by
  unfold output12756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12756_skip : Flapjack.WordAlloc.isSkip output12756 = false := by
  rw [output12756_def]
  conv => lhs; cbv
  try rfl
theorem node12756_eq : Flapjack.WordAlloc.removeDeadStructural input12756 value5 value1 value2 = (output12756, value6382, value1) := by
  rw [input12756_def, output12756_def]
  try (conv => lhs; cbv)
  try rfl

def value6383 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2429, 2417)])).val
theorem input12757_def : input12757 = (Flapjack.WordLangProgHOL.move 0 [(2429, 2417)]) := by
  unfold input12757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2429, 2417)])).val
theorem output12757_def : output12757 = (Flapjack.WordLangProgHOL.move 0 [(2429, 2417)]) := by
  unfold output12757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12757_skip : Flapjack.WordAlloc.isSkip output12757 = false := by
  rw [output12757_def]
  conv => lhs; cbv
  try rfl
theorem node12757_eq : Flapjack.WordAlloc.removeDeadStructural input12757 value6382 value1 value2 = (output12757, value6383, value1) := by
  rw [input12757_def, output12757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12757 input12756)).val
theorem input12758_def : input12758 = (.seq input12757 input12756) := by
  unfold input12758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12757 output12756)).val
theorem output12758_def : output12758 = (.seq output12757 output12756) := by
  unfold output12758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12758_skip : Flapjack.WordAlloc.isSkip output12758 = false := by
  rw [output12758_def]
  conv => lhs; cbv
  try rfl
theorem node12758_eq : Flapjack.WordAlloc.removeDeadStructural input12758 value5 value1 value2 = (output12758, value6383, value1) := by
  rw [input12758_def, output12758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12756_eq]
  dsimp only
  rw [node12757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6384 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2425 1432192374203850592#64))).val
theorem input12759_def : input12759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2425 1432192374203850592#64)) := by
  unfold input12759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2425 1432192374203850592#64))).val
theorem output12759_def : output12759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2425 1432192374203850592#64)) := by
  unfold output12759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12759_skip : Flapjack.WordAlloc.isSkip output12759 = false := by
  rw [output12759_def]
  conv => lhs; cbv
  try rfl
theorem node12759_eq : Flapjack.WordAlloc.removeDeadStructural input12759 value6383 value1 value2 = (output12759, value6384, value1) := by
  rw [input12759_def, output12759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2421 1432192374203850592#64))).val
theorem input12760_def : input12760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2421 1432192374203850592#64)) := by
  unfold input12760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12760_def : output12760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12760_skip : Flapjack.WordAlloc.isSkip output12760 = true := by
  rw [output12760_def]
  conv => lhs; cbv
  try rfl
theorem node12760_eq : Flapjack.WordAlloc.removeDeadStructural input12760 value6384 value1 value2 = (output12760, value6384, value1) := by
  rw [input12760_def, output12760_def]
  try (conv => lhs; cbv)
  try rfl

def value6385 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2417 2413 (Flapjack.WordRegImm.imm 568#64))))).val
theorem input12761_def : input12761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2417 2413 (Flapjack.WordRegImm.imm 568#64)))) := by
  unfold input12761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2417 2413 (Flapjack.WordRegImm.imm 568#64))))).val
theorem output12761_def : output12761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2417 2413 (Flapjack.WordRegImm.imm 568#64)))) := by
  unfold output12761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12761_skip : Flapjack.WordAlloc.isSkip output12761 = false := by
  rw [output12761_def]
  conv => lhs; cbv
  try rfl
theorem node12761_eq : Flapjack.WordAlloc.removeDeadStructural input12761 value6384 value1 value2 = (output12761, value6385, value1) := by
  rw [input12761_def, output12761_def]
  try (conv => lhs; cbv)
  try rfl

def value6386 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2413 (Flapjack.WordLangAddr.addr 2409 18446744073709551104#64)))).val
theorem input12762_def : input12762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2413 (Flapjack.WordLangAddr.addr 2409 18446744073709551104#64))) := by
  unfold input12762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2413 (Flapjack.WordLangAddr.addr 2409 18446744073709551104#64)))).val
theorem output12762_def : output12762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2413 (Flapjack.WordLangAddr.addr 2409 18446744073709551104#64))) := by
  unfold output12762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12762_skip : Flapjack.WordAlloc.isSkip output12762 = false := by
  rw [output12762_def]
  conv => lhs; cbv
  try rfl
theorem node12762_eq : Flapjack.WordAlloc.removeDeadStructural input12762 value6385 value1 value2 = (output12762, value6386, value1) := by
  rw [input12762_def, output12762_def]
  try (conv => lhs; cbv)
  try rfl

def value6387 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2409 2405)).val
theorem input12763_def : input12763 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2409 2405) := by
  unfold input12763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2409 2405)).val
theorem output12763_def : output12763 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2409 2405) := by
  unfold output12763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12763_skip : Flapjack.WordAlloc.isSkip output12763 = false := by
  rw [output12763_def]
  conv => lhs; cbv
  try rfl
theorem node12763_eq : Flapjack.WordAlloc.removeDeadStructural input12763 value6386 value1 value2 = (output12763, value6387, value1) := by
  rw [input12763_def, output12763_def]
  try (conv => lhs; cbv)
  try rfl

def value6388 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2405 2401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12764_def : input12764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2405 2401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2405 2401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12764_def : output12764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2405 2401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12764_skip : Flapjack.WordAlloc.isSkip output12764 = false := by
  rw [output12764_def]
  conv => lhs; cbv
  try rfl
theorem node12764_eq : Flapjack.WordAlloc.removeDeadStructural input12764 value6387 value1 value2 = (output12764, value6388, value1) := by
  rw [input12764_def, output12764_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2401 Flapjack.WordStore.heapLength)).val
theorem input12765_def : input12765 = (Flapjack.WordLangProgHOL.get 2401 Flapjack.WordStore.heapLength) := by
  unfold input12765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2401 Flapjack.WordStore.heapLength)).val
theorem output12765_def : output12765 = (Flapjack.WordLangProgHOL.get 2401 Flapjack.WordStore.heapLength) := by
  unfold output12765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12765_skip : Flapjack.WordAlloc.isSkip output12765 = false := by
  rw [output12765_def]
  conv => lhs; cbv
  try rfl
theorem node12765_eq : Flapjack.WordAlloc.removeDeadStructural input12765 value6388 value1 value2 = (output12765, value5, value1) := by
  rw [input12765_def, output12765_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12765 input12764)).val
theorem input12766_def : input12766 = (.seq input12765 input12764) := by
  unfold input12766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12765 output12764)).val
theorem output12766_def : output12766 = (.seq output12765 output12764) := by
  unfold output12766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12766_skip : Flapjack.WordAlloc.isSkip output12766 = false := by
  rw [output12766_def]
  conv => lhs; cbv
  try rfl
theorem node12766_eq : Flapjack.WordAlloc.removeDeadStructural input12766 value6387 value1 value2 = (output12766, value5, value1) := by
  rw [input12766_def, output12766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12764_eq]
  dsimp only
  rw [node12765_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12766 input12763)).val
theorem input12767_def : input12767 = (.seq input12766 input12763) := by
  unfold input12767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12766 output12763)).val
theorem output12767_def : output12767 = (.seq output12766 output12763) := by
  unfold output12767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12767_skip : Flapjack.WordAlloc.isSkip output12767 = false := by
  rw [output12767_def]
  conv => lhs; cbv
  try rfl
theorem node12767_eq : Flapjack.WordAlloc.removeDeadStructural input12767 value6386 value1 value2 = (output12767, value5, value1) := by
  rw [input12767_def, output12767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12763_eq]
  dsimp only
  rw [node12766_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12767 input12762)).val
theorem input12768_def : input12768 = (.seq input12767 input12762) := by
  unfold input12768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12767 output12762)).val
theorem output12768_def : output12768 = (.seq output12767 output12762) := by
  unfold output12768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12768_skip : Flapjack.WordAlloc.isSkip output12768 = false := by
  rw [output12768_def]
  conv => lhs; cbv
  try rfl
theorem node12768_eq : Flapjack.WordAlloc.removeDeadStructural input12768 value6385 value1 value2 = (output12768, value5, value1) := by
  rw [input12768_def, output12768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12762_eq]
  dsimp only
  rw [node12767_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12768 input12761)).val
theorem input12769_def : input12769 = (.seq input12768 input12761) := by
  unfold input12769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12768 output12761)).val
theorem output12769_def : output12769 = (.seq output12768 output12761) := by
  unfold output12769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12769_skip : Flapjack.WordAlloc.isSkip output12769 = false := by
  rw [output12769_def]
  conv => lhs; cbv
  try rfl
theorem node12769_eq : Flapjack.WordAlloc.removeDeadStructural input12769 value6384 value1 value2 = (output12769, value5, value1) := by
  rw [input12769_def, output12769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12761_eq]
  dsimp only
  rw [node12768_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6389 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2393 (Flapjack.WordLangAddr.addr 2397 0#64)))).val
theorem input12770_def : input12770 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2393 (Flapjack.WordLangAddr.addr 2397 0#64))) := by
  unfold input12770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2393 (Flapjack.WordLangAddr.addr 2397 0#64)))).val
theorem output12770_def : output12770 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2393 (Flapjack.WordLangAddr.addr 2397 0#64))) := by
  unfold output12770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12770_skip : Flapjack.WordAlloc.isSkip output12770 = false := by
  rw [output12770_def]
  conv => lhs; cbv
  try rfl
theorem node12770_eq : Flapjack.WordAlloc.removeDeadStructural input12770 value5 value1 value2 = (output12770, value6389, value1) := by
  rw [input12770_def, output12770_def]
  try (conv => lhs; cbv)
  try rfl

def value6390 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2397, 2385)])).val
theorem input12771_def : input12771 = (Flapjack.WordLangProgHOL.move 0 [(2397, 2385)]) := by
  unfold input12771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2397, 2385)])).val
theorem output12771_def : output12771 = (Flapjack.WordLangProgHOL.move 0 [(2397, 2385)]) := by
  unfold output12771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12771_skip : Flapjack.WordAlloc.isSkip output12771 = false := by
  rw [output12771_def]
  conv => lhs; cbv
  try rfl
theorem node12771_eq : Flapjack.WordAlloc.removeDeadStructural input12771 value6389 value1 value2 = (output12771, value6390, value1) := by
  rw [input12771_def, output12771_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12771 input12770)).val
theorem input12772_def : input12772 = (.seq input12771 input12770) := by
  unfold input12772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12771 output12770)).val
theorem output12772_def : output12772 = (.seq output12771 output12770) := by
  unfold output12772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12772_skip : Flapjack.WordAlloc.isSkip output12772 = false := by
  rw [output12772_def]
  conv => lhs; cbv
  try rfl
theorem node12772_eq : Flapjack.WordAlloc.removeDeadStructural input12772 value5 value1 value2 = (output12772, value6390, value1) := by
  rw [input12772_def, output12772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12770_eq]
  dsimp only
  rw [node12771_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6391 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 9055845637167730533#64))).val
theorem input12773_def : input12773 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 9055845637167730533#64)) := by
  unfold input12773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 9055845637167730533#64))).val
theorem output12773_def : output12773 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2393 9055845637167730533#64)) := by
  unfold output12773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12773_skip : Flapjack.WordAlloc.isSkip output12773 = false := by
  rw [output12773_def]
  conv => lhs; cbv
  try rfl
theorem node12773_eq : Flapjack.WordAlloc.removeDeadStructural input12773 value6390 value1 value2 = (output12773, value6391, value1) := by
  rw [input12773_def, output12773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2389 9055845637167730533#64))).val
theorem input12774_def : input12774 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2389 9055845637167730533#64)) := by
  unfold input12774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12774_def : output12774 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12774_skip : Flapjack.WordAlloc.isSkip output12774 = true := by
  rw [output12774_def]
  conv => lhs; cbv
  try rfl
theorem node12774_eq : Flapjack.WordAlloc.removeDeadStructural input12774 value6391 value1 value2 = (output12774, value6391, value1) := by
  rw [input12774_def, output12774_def]
  try (conv => lhs; cbv)
  try rfl

def value6392 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2385 2381 (Flapjack.WordRegImm.imm 560#64))))).val
theorem input12775_def : input12775 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2385 2381 (Flapjack.WordRegImm.imm 560#64)))) := by
  unfold input12775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2385 2381 (Flapjack.WordRegImm.imm 560#64))))).val
theorem output12775_def : output12775 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2385 2381 (Flapjack.WordRegImm.imm 560#64)))) := by
  unfold output12775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12775_skip : Flapjack.WordAlloc.isSkip output12775 = false := by
  rw [output12775_def]
  conv => lhs; cbv
  try rfl
theorem node12775_eq : Flapjack.WordAlloc.removeDeadStructural input12775 value6391 value1 value2 = (output12775, value6392, value1) := by
  rw [input12775_def, output12775_def]
  try (conv => lhs; cbv)
  try rfl

def value6393 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2381 (Flapjack.WordLangAddr.addr 2377 18446744073709551104#64)))).val
theorem input12776_def : input12776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2381 (Flapjack.WordLangAddr.addr 2377 18446744073709551104#64))) := by
  unfold input12776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2381 (Flapjack.WordLangAddr.addr 2377 18446744073709551104#64)))).val
theorem output12776_def : output12776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2381 (Flapjack.WordLangAddr.addr 2377 18446744073709551104#64))) := by
  unfold output12776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12776_skip : Flapjack.WordAlloc.isSkip output12776 = false := by
  rw [output12776_def]
  conv => lhs; cbv
  try rfl
theorem node12776_eq : Flapjack.WordAlloc.removeDeadStructural input12776 value6392 value1 value2 = (output12776, value6393, value1) := by
  rw [input12776_def, output12776_def]
  try (conv => lhs; cbv)
  try rfl

def value6394 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2377 2373)).val
theorem input12777_def : input12777 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2377 2373) := by
  unfold input12777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2377 2373)).val
theorem output12777_def : output12777 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2377 2373) := by
  unfold output12777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12777_skip : Flapjack.WordAlloc.isSkip output12777 = false := by
  rw [output12777_def]
  conv => lhs; cbv
  try rfl
theorem node12777_eq : Flapjack.WordAlloc.removeDeadStructural input12777 value6393 value1 value2 = (output12777, value6394, value1) := by
  rw [input12777_def, output12777_def]
  try (conv => lhs; cbv)
  try rfl

def value6395 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2373 2369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12778_def : input12778 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2373 2369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2373 2369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12778_def : output12778 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2373 2369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12778_skip : Flapjack.WordAlloc.isSkip output12778 = false := by
  rw [output12778_def]
  conv => lhs; cbv
  try rfl
theorem node12778_eq : Flapjack.WordAlloc.removeDeadStructural input12778 value6394 value1 value2 = (output12778, value6395, value1) := by
  rw [input12778_def, output12778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2369 Flapjack.WordStore.heapLength)).val
theorem input12779_def : input12779 = (Flapjack.WordLangProgHOL.get 2369 Flapjack.WordStore.heapLength) := by
  unfold input12779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2369 Flapjack.WordStore.heapLength)).val
theorem output12779_def : output12779 = (Flapjack.WordLangProgHOL.get 2369 Flapjack.WordStore.heapLength) := by
  unfold output12779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12779_skip : Flapjack.WordAlloc.isSkip output12779 = false := by
  rw [output12779_def]
  conv => lhs; cbv
  try rfl
theorem node12779_eq : Flapjack.WordAlloc.removeDeadStructural input12779 value6395 value1 value2 = (output12779, value5, value1) := by
  rw [input12779_def, output12779_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12779 input12778)).val
theorem input12780_def : input12780 = (.seq input12779 input12778) := by
  unfold input12780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12779 output12778)).val
theorem output12780_def : output12780 = (.seq output12779 output12778) := by
  unfold output12780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12780_skip : Flapjack.WordAlloc.isSkip output12780 = false := by
  rw [output12780_def]
  conv => lhs; cbv
  try rfl
theorem node12780_eq : Flapjack.WordAlloc.removeDeadStructural input12780 value6394 value1 value2 = (output12780, value5, value1) := by
  rw [input12780_def, output12780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12778_eq]
  dsimp only
  rw [node12779_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12780 input12777)).val
theorem input12781_def : input12781 = (.seq input12780 input12777) := by
  unfold input12781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12780 output12777)).val
theorem output12781_def : output12781 = (.seq output12780 output12777) := by
  unfold output12781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12781_skip : Flapjack.WordAlloc.isSkip output12781 = false := by
  rw [output12781_def]
  conv => lhs; cbv
  try rfl
theorem node12781_eq : Flapjack.WordAlloc.removeDeadStructural input12781 value6393 value1 value2 = (output12781, value5, value1) := by
  rw [input12781_def, output12781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12777_eq]
  dsimp only
  rw [node12780_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12781 input12776)).val
theorem input12782_def : input12782 = (.seq input12781 input12776) := by
  unfold input12782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12781 output12776)).val
theorem output12782_def : output12782 = (.seq output12781 output12776) := by
  unfold output12782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12782_skip : Flapjack.WordAlloc.isSkip output12782 = false := by
  rw [output12782_def]
  conv => lhs; cbv
  try rfl
theorem node12782_eq : Flapjack.WordAlloc.removeDeadStructural input12782 value6392 value1 value2 = (output12782, value5, value1) := by
  rw [input12782_def, output12782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12776_eq]
  dsimp only
  rw [node12781_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12782 input12775)).val
theorem input12783_def : input12783 = (.seq input12782 input12775) := by
  unfold input12783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12782 output12775)).val
theorem output12783_def : output12783 = (.seq output12782 output12775) := by
  unfold output12783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12783_skip : Flapjack.WordAlloc.isSkip output12783 = false := by
  rw [output12783_def]
  conv => lhs; cbv
  try rfl
theorem node12783_eq : Flapjack.WordAlloc.removeDeadStructural input12783 value6391 value1 value2 = (output12783, value5, value1) := by
  rw [input12783_def, output12783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12775_eq]
  dsimp only
  rw [node12782_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6396 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2361 (Flapjack.WordLangAddr.addr 2365 0#64)))).val
theorem input12784_def : input12784 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2361 (Flapjack.WordLangAddr.addr 2365 0#64))) := by
  unfold input12784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2361 (Flapjack.WordLangAddr.addr 2365 0#64)))).val
theorem output12784_def : output12784 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2361 (Flapjack.WordLangAddr.addr 2365 0#64))) := by
  unfold output12784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12784_skip : Flapjack.WordAlloc.isSkip output12784 = false := by
  rw [output12784_def]
  conv => lhs; cbv
  try rfl
theorem node12784_eq : Flapjack.WordAlloc.removeDeadStructural input12784 value5 value1 value2 = (output12784, value6396, value1) := by
  rw [input12784_def, output12784_def]
  try (conv => lhs; cbv)
  try rfl

def value6397 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2365, 2353)])).val
theorem input12785_def : input12785 = (Flapjack.WordLangProgHOL.move 0 [(2365, 2353)]) := by
  unfold input12785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2365, 2353)])).val
theorem output12785_def : output12785 = (Flapjack.WordLangProgHOL.move 0 [(2365, 2353)]) := by
  unfold output12785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12785_skip : Flapjack.WordAlloc.isSkip output12785 = false := by
  rw [output12785_def]
  conv => lhs; cbv
  try rfl
theorem node12785_eq : Flapjack.WordAlloc.removeDeadStructural input12785 value6396 value1 value2 = (output12785, value6397, value1) := by
  rw [input12785_def, output12785_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12785 input12784)).val
theorem input12786_def : input12786 = (.seq input12785 input12784) := by
  unfold input12786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12785 output12784)).val
theorem output12786_def : output12786 = (.seq output12785 output12784) := by
  unfold output12786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12786_skip : Flapjack.WordAlloc.isSkip output12786 = false := by
  rw [output12786_def]
  conv => lhs; cbv
  try rfl
theorem node12786_eq : Flapjack.WordAlloc.removeDeadStructural input12786 value5 value1 value2 = (output12786, value6397, value1) := by
  rw [input12786_def, output12786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12784_eq]
  dsimp only
  rw [node12785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6398 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 6443473286224459290#64))).val
theorem input12787_def : input12787 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 6443473286224459290#64)) := by
  unfold input12787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 6443473286224459290#64))).val
theorem output12787_def : output12787 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2361 6443473286224459290#64)) := by
  unfold output12787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12787_skip : Flapjack.WordAlloc.isSkip output12787 = false := by
  rw [output12787_def]
  conv => lhs; cbv
  try rfl
theorem node12787_eq : Flapjack.WordAlloc.removeDeadStructural input12787 value6397 value1 value2 = (output12787, value6398, value1) := by
  rw [input12787_def, output12787_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 6443473286224459290#64))).val
theorem input12788_def : input12788 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2357 6443473286224459290#64)) := by
  unfold input12788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12788_def : output12788 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12788_skip : Flapjack.WordAlloc.isSkip output12788 = true := by
  rw [output12788_def]
  conv => lhs; cbv
  try rfl
theorem node12788_eq : Flapjack.WordAlloc.removeDeadStructural input12788 value6398 value1 value2 = (output12788, value6398, value1) := by
  rw [input12788_def, output12788_def]
  try (conv => lhs; cbv)
  try rfl

def value6399 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2353 2349 (Flapjack.WordRegImm.imm 552#64))))).val
theorem input12789_def : input12789 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2353 2349 (Flapjack.WordRegImm.imm 552#64)))) := by
  unfold input12789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2353 2349 (Flapjack.WordRegImm.imm 552#64))))).val
theorem output12789_def : output12789 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2353 2349 (Flapjack.WordRegImm.imm 552#64)))) := by
  unfold output12789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12789_skip : Flapjack.WordAlloc.isSkip output12789 = false := by
  rw [output12789_def]
  conv => lhs; cbv
  try rfl
theorem node12789_eq : Flapjack.WordAlloc.removeDeadStructural input12789 value6398 value1 value2 = (output12789, value6399, value1) := by
  rw [input12789_def, output12789_def]
  try (conv => lhs; cbv)
  try rfl

def value6400 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2349 (Flapjack.WordLangAddr.addr 2345 18446744073709551104#64)))).val
theorem input12790_def : input12790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2349 (Flapjack.WordLangAddr.addr 2345 18446744073709551104#64))) := by
  unfold input12790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2349 (Flapjack.WordLangAddr.addr 2345 18446744073709551104#64)))).val
theorem output12790_def : output12790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2349 (Flapjack.WordLangAddr.addr 2345 18446744073709551104#64))) := by
  unfold output12790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12790_skip : Flapjack.WordAlloc.isSkip output12790 = false := by
  rw [output12790_def]
  conv => lhs; cbv
  try rfl
theorem node12790_eq : Flapjack.WordAlloc.removeDeadStructural input12790 value6399 value1 value2 = (output12790, value6400, value1) := by
  rw [input12790_def, output12790_def]
  try (conv => lhs; cbv)
  try rfl

def value6401 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341)).val
theorem input12791_def : input12791 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341) := by
  unfold input12791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341)).val
theorem output12791_def : output12791 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2345 2341) := by
  unfold output12791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12791_skip : Flapjack.WordAlloc.isSkip output12791 = false := by
  rw [output12791_def]
  conv => lhs; cbv
  try rfl
theorem node12791_eq : Flapjack.WordAlloc.removeDeadStructural input12791 value6400 value1 value2 = (output12791, value6401, value1) := by
  rw [input12791_def, output12791_def]
  try (conv => lhs; cbv)
  try rfl

def value6402 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12792_def : input12792 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12792_def : output12792 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2341 2337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12792_skip : Flapjack.WordAlloc.isSkip output12792 = false := by
  rw [output12792_def]
  conv => lhs; cbv
  try rfl
theorem node12792_eq : Flapjack.WordAlloc.removeDeadStructural input12792 value6401 value1 value2 = (output12792, value6402, value1) := by
  rw [input12792_def, output12792_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength)).val
theorem input12793_def : input12793 = (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength) := by
  unfold input12793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength)).val
theorem output12793_def : output12793 = (Flapjack.WordLangProgHOL.get 2337 Flapjack.WordStore.heapLength) := by
  unfold output12793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12793_skip : Flapjack.WordAlloc.isSkip output12793 = false := by
  rw [output12793_def]
  conv => lhs; cbv
  try rfl
theorem node12793_eq : Flapjack.WordAlloc.removeDeadStructural input12793 value6402 value1 value2 = (output12793, value5, value1) := by
  rw [input12793_def, output12793_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12793 input12792)).val
theorem input12794_def : input12794 = (.seq input12793 input12792) := by
  unfold input12794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12793 output12792)).val
theorem output12794_def : output12794 = (.seq output12793 output12792) := by
  unfold output12794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12794_skip : Flapjack.WordAlloc.isSkip output12794 = false := by
  rw [output12794_def]
  conv => lhs; cbv
  try rfl
theorem node12794_eq : Flapjack.WordAlloc.removeDeadStructural input12794 value6401 value1 value2 = (output12794, value5, value1) := by
  rw [input12794_def, output12794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12792_eq]
  dsimp only
  rw [node12793_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12794 input12791)).val
theorem input12795_def : input12795 = (.seq input12794 input12791) := by
  unfold input12795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12794 output12791)).val
theorem output12795_def : output12795 = (.seq output12794 output12791) := by
  unfold output12795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12795_skip : Flapjack.WordAlloc.isSkip output12795 = false := by
  rw [output12795_def]
  conv => lhs; cbv
  try rfl
theorem node12795_eq : Flapjack.WordAlloc.removeDeadStructural input12795 value6400 value1 value2 = (output12795, value5, value1) := by
  rw [input12795_def, output12795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12791_eq]
  dsimp only
  rw [node12794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12795 input12790)).val
theorem input12796_def : input12796 = (.seq input12795 input12790) := by
  unfold input12796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12795 output12790)).val
theorem output12796_def : output12796 = (.seq output12795 output12790) := by
  unfold output12796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12796_skip : Flapjack.WordAlloc.isSkip output12796 = false := by
  rw [output12796_def]
  conv => lhs; cbv
  try rfl
theorem node12796_eq : Flapjack.WordAlloc.removeDeadStructural input12796 value6399 value1 value2 = (output12796, value5, value1) := by
  rw [input12796_def, output12796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12790_eq]
  dsimp only
  rw [node12795_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12796 input12789)).val
theorem input12797_def : input12797 = (.seq input12796 input12789) := by
  unfold input12797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12796 output12789)).val
theorem output12797_def : output12797 = (.seq output12796 output12789) := by
  unfold output12797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12797_skip : Flapjack.WordAlloc.isSkip output12797 = false := by
  rw [output12797_def]
  conv => lhs; cbv
  try rfl
theorem node12797_eq : Flapjack.WordAlloc.removeDeadStructural input12797 value6398 value1 value2 = (output12797, value5, value1) := by
  rw [input12797_def, output12797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12789_eq]
  dsimp only
  rw [node12796_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6403 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64)))).val
theorem input12798_def : input12798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64))) := by
  unfold input12798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64)))).val
theorem output12798_def : output12798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2329 (Flapjack.WordLangAddr.addr 2333 0#64))) := by
  unfold output12798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12798_skip : Flapjack.WordAlloc.isSkip output12798 = false := by
  rw [output12798_def]
  conv => lhs; cbv
  try rfl
theorem node12798_eq : Flapjack.WordAlloc.removeDeadStructural input12798 value5 value1 value2 = (output12798, value6403, value1) := by
  rw [input12798_def, output12798_def]
  try (conv => lhs; cbv)
  try rfl

def value6404 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)])).val
theorem input12799_def : input12799 = (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)]) := by
  unfold input12799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)])).val
theorem output12799_def : output12799 = (Flapjack.WordLangProgHOL.move 0 [(2333, 2321)]) := by
  unfold output12799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12799_skip : Flapjack.WordAlloc.isSkip output12799 = false := by
  rw [output12799_def]
  conv => lhs; cbv
  try rfl
theorem node12799_eq : Flapjack.WordAlloc.removeDeadStructural input12799 value6403 value1 value2 = (output12799, value6404, value1) := by
  rw [input12799_def, output12799_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node12799_eq
end InitECandidate.Proofs.DeadStages713
