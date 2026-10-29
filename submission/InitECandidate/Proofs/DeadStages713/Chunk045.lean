import InitECandidate.Proofs.DeadStages713.Chunk044
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input11520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11519 input11518)).val
theorem input11520_def : input11520 = (.seq input11519 input11518) := by
  unfold input11520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11519 output11518)).val
theorem output11520_def : output11520 = (.seq output11519 output11518) := by
  unfold output11520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11520_skip : Flapjack.WordAlloc.isSkip output11520 = false := by
  rw [output11520_def]
  conv => lhs; cbv
  try rfl
theorem node11520_eq : Flapjack.WordAlloc.removeDeadStructural input11520 value5764 value1 value2 = (output11520, value5, value1) := by
  rw [input11520_def, output11520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11518_eq]
  dsimp only
  rw [node11519_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11520 input11517)).val
theorem input11521_def : input11521 = (.seq input11520 input11517) := by
  unfold input11521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11520 output11517)).val
theorem output11521_def : output11521 = (.seq output11520 output11517) := by
  unfold output11521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11521_skip : Flapjack.WordAlloc.isSkip output11521 = false := by
  rw [output11521_def]
  conv => lhs; cbv
  try rfl
theorem node11521_eq : Flapjack.WordAlloc.removeDeadStructural input11521 value5763 value1 value2 = (output11521, value5, value1) := by
  rw [input11521_def, output11521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11517_eq]
  dsimp only
  rw [node11520_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11521 input11516)).val
theorem input11522_def : input11522 = (.seq input11521 input11516) := by
  unfold input11522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11521 output11516)).val
theorem output11522_def : output11522 = (.seq output11521 output11516) := by
  unfold output11522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11522_skip : Flapjack.WordAlloc.isSkip output11522 = false := by
  rw [output11522_def]
  conv => lhs; cbv
  try rfl
theorem node11522_eq : Flapjack.WordAlloc.removeDeadStructural input11522 value5762 value1 value2 = (output11522, value5, value1) := by
  rw [input11522_def, output11522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11516_eq]
  dsimp only
  rw [node11521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11522 input11515)).val
theorem input11523_def : input11523 = (.seq input11522 input11515) := by
  unfold input11523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11522 output11515)).val
theorem output11523_def : output11523 = (.seq output11522 output11515) := by
  unfold output11523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11523_skip : Flapjack.WordAlloc.isSkip output11523 = false := by
  rw [output11523_def]
  conv => lhs; cbv
  try rfl
theorem node11523_eq : Flapjack.WordAlloc.removeDeadStructural input11523 value5761 value1 value2 = (output11523, value5, value1) := by
  rw [input11523_def, output11523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11515_eq]
  dsimp only
  rw [node11522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5766 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5241 (Flapjack.WordLangAddr.addr 5245 0#64)))).val
theorem input11524_def : input11524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5241 (Flapjack.WordLangAddr.addr 5245 0#64))) := by
  unfold input11524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5241 (Flapjack.WordLangAddr.addr 5245 0#64)))).val
theorem output11524_def : output11524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5241 (Flapjack.WordLangAddr.addr 5245 0#64))) := by
  unfold output11524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11524_skip : Flapjack.WordAlloc.isSkip output11524 = false := by
  rw [output11524_def]
  conv => lhs; cbv
  try rfl
theorem node11524_eq : Flapjack.WordAlloc.removeDeadStructural input11524 value5 value1 value2 = (output11524, value5766, value1) := by
  rw [input11524_def, output11524_def]
  try (conv => lhs; cbv)
  try rfl

def value5767 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5245, 5233)])).val
theorem input11525_def : input11525 = (Flapjack.WordLangProgHOL.move 0 [(5245, 5233)]) := by
  unfold input11525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5245, 5233)])).val
theorem output11525_def : output11525 = (Flapjack.WordLangProgHOL.move 0 [(5245, 5233)]) := by
  unfold output11525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11525_skip : Flapjack.WordAlloc.isSkip output11525 = false := by
  rw [output11525_def]
  conv => lhs; cbv
  try rfl
theorem node11525_eq : Flapjack.WordAlloc.removeDeadStructural input11525 value5766 value1 value2 = (output11525, value5767, value1) := by
  rw [input11525_def, output11525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11525 input11524)).val
theorem input11526_def : input11526 = (.seq input11525 input11524) := by
  unfold input11526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11525 output11524)).val
theorem output11526_def : output11526 = (.seq output11525 output11524) := by
  unfold output11526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11526_skip : Flapjack.WordAlloc.isSkip output11526 = false := by
  rw [output11526_def]
  conv => lhs; cbv
  try rfl
theorem node11526_eq : Flapjack.WordAlloc.removeDeadStructural input11526 value5 value1 value2 = (output11526, value5767, value1) := by
  rw [input11526_def, output11526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11524_eq]
  dsimp only
  rw [node11525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5768 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5241 17552803891753226222#64))).val
theorem input11527_def : input11527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5241 17552803891753226222#64)) := by
  unfold input11527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5241 17552803891753226222#64))).val
theorem output11527_def : output11527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5241 17552803891753226222#64)) := by
  unfold output11527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11527_skip : Flapjack.WordAlloc.isSkip output11527 = false := by
  rw [output11527_def]
  conv => lhs; cbv
  try rfl
theorem node11527_eq : Flapjack.WordAlloc.removeDeadStructural input11527 value5767 value1 value2 = (output11527, value5768, value1) := by
  rw [input11527_def, output11527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5237 17552803891753226222#64))).val
theorem input11528_def : input11528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5237 17552803891753226222#64)) := by
  unfold input11528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11528_def : output11528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11528_skip : Flapjack.WordAlloc.isSkip output11528 = true := by
  rw [output11528_def]
  conv => lhs; cbv
  try rfl
theorem node11528_eq : Flapjack.WordAlloc.removeDeadStructural input11528 value5768 value1 value2 = (output11528, value5768, value1) := by
  rw [input11528_def, output11528_def]
  try (conv => lhs; cbv)
  try rfl

def value5769 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5233 5229 (Flapjack.WordRegImm.imm 1272#64))))).val
theorem input11529_def : input11529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5233 5229 (Flapjack.WordRegImm.imm 1272#64)))) := by
  unfold input11529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5233 5229 (Flapjack.WordRegImm.imm 1272#64))))).val
theorem output11529_def : output11529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5233 5229 (Flapjack.WordRegImm.imm 1272#64)))) := by
  unfold output11529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11529_skip : Flapjack.WordAlloc.isSkip output11529 = false := by
  rw [output11529_def]
  conv => lhs; cbv
  try rfl
theorem node11529_eq : Flapjack.WordAlloc.removeDeadStructural input11529 value5768 value1 value2 = (output11529, value5769, value1) := by
  rw [input11529_def, output11529_def]
  try (conv => lhs; cbv)
  try rfl

def value5770 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5229 (Flapjack.WordLangAddr.addr 5225 18446744073709551104#64)))).val
theorem input11530_def : input11530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5229 (Flapjack.WordLangAddr.addr 5225 18446744073709551104#64))) := by
  unfold input11530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5229 (Flapjack.WordLangAddr.addr 5225 18446744073709551104#64)))).val
theorem output11530_def : output11530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5229 (Flapjack.WordLangAddr.addr 5225 18446744073709551104#64))) := by
  unfold output11530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11530_skip : Flapjack.WordAlloc.isSkip output11530 = false := by
  rw [output11530_def]
  conv => lhs; cbv
  try rfl
theorem node11530_eq : Flapjack.WordAlloc.removeDeadStructural input11530 value5769 value1 value2 = (output11530, value5770, value1) := by
  rw [input11530_def, output11530_def]
  try (conv => lhs; cbv)
  try rfl

def value5771 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5225 5221)).val
theorem input11531_def : input11531 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5225 5221) := by
  unfold input11531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5225 5221)).val
theorem output11531_def : output11531 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5225 5221) := by
  unfold output11531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11531_skip : Flapjack.WordAlloc.isSkip output11531 = false := by
  rw [output11531_def]
  conv => lhs; cbv
  try rfl
theorem node11531_eq : Flapjack.WordAlloc.removeDeadStructural input11531 value5770 value1 value2 = (output11531, value5771, value1) := by
  rw [input11531_def, output11531_def]
  try (conv => lhs; cbv)
  try rfl

def value5772 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5221 5217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11532_def : input11532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5221 5217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5221 5217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11532_def : output11532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5221 5217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11532_skip : Flapjack.WordAlloc.isSkip output11532 = false := by
  rw [output11532_def]
  conv => lhs; cbv
  try rfl
theorem node11532_eq : Flapjack.WordAlloc.removeDeadStructural input11532 value5771 value1 value2 = (output11532, value5772, value1) := by
  rw [input11532_def, output11532_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5217 Flapjack.WordStore.heapLength)).val
theorem input11533_def : input11533 = (Flapjack.WordLangProgHOL.get 5217 Flapjack.WordStore.heapLength) := by
  unfold input11533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5217 Flapjack.WordStore.heapLength)).val
theorem output11533_def : output11533 = (Flapjack.WordLangProgHOL.get 5217 Flapjack.WordStore.heapLength) := by
  unfold output11533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11533_skip : Flapjack.WordAlloc.isSkip output11533 = false := by
  rw [output11533_def]
  conv => lhs; cbv
  try rfl
theorem node11533_eq : Flapjack.WordAlloc.removeDeadStructural input11533 value5772 value1 value2 = (output11533, value5, value1) := by
  rw [input11533_def, output11533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11533 input11532)).val
theorem input11534_def : input11534 = (.seq input11533 input11532) := by
  unfold input11534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11533 output11532)).val
theorem output11534_def : output11534 = (.seq output11533 output11532) := by
  unfold output11534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11534_skip : Flapjack.WordAlloc.isSkip output11534 = false := by
  rw [output11534_def]
  conv => lhs; cbv
  try rfl
theorem node11534_eq : Flapjack.WordAlloc.removeDeadStructural input11534 value5771 value1 value2 = (output11534, value5, value1) := by
  rw [input11534_def, output11534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11532_eq]
  dsimp only
  rw [node11533_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11534 input11531)).val
theorem input11535_def : input11535 = (.seq input11534 input11531) := by
  unfold input11535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11534 output11531)).val
theorem output11535_def : output11535 = (.seq output11534 output11531) := by
  unfold output11535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11535_skip : Flapjack.WordAlloc.isSkip output11535 = false := by
  rw [output11535_def]
  conv => lhs; cbv
  try rfl
theorem node11535_eq : Flapjack.WordAlloc.removeDeadStructural input11535 value5770 value1 value2 = (output11535, value5, value1) := by
  rw [input11535_def, output11535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11531_eq]
  dsimp only
  rw [node11534_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11535 input11530)).val
theorem input11536_def : input11536 = (.seq input11535 input11530) := by
  unfold input11536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11535 output11530)).val
theorem output11536_def : output11536 = (.seq output11535 output11530) := by
  unfold output11536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11536_skip : Flapjack.WordAlloc.isSkip output11536 = false := by
  rw [output11536_def]
  conv => lhs; cbv
  try rfl
theorem node11536_eq : Flapjack.WordAlloc.removeDeadStructural input11536 value5769 value1 value2 = (output11536, value5, value1) := by
  rw [input11536_def, output11536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11530_eq]
  dsimp only
  rw [node11535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11536 input11529)).val
theorem input11537_def : input11537 = (.seq input11536 input11529) := by
  unfold input11537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11536 output11529)).val
theorem output11537_def : output11537 = (.seq output11536 output11529) := by
  unfold output11537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11537_skip : Flapjack.WordAlloc.isSkip output11537 = false := by
  rw [output11537_def]
  conv => lhs; cbv
  try rfl
theorem node11537_eq : Flapjack.WordAlloc.removeDeadStructural input11537 value5768 value1 value2 = (output11537, value5, value1) := by
  rw [input11537_def, output11537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11529_eq]
  dsimp only
  rw [node11536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5773 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5209 (Flapjack.WordLangAddr.addr 5213 0#64)))).val
theorem input11538_def : input11538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5209 (Flapjack.WordLangAddr.addr 5213 0#64))) := by
  unfold input11538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5209 (Flapjack.WordLangAddr.addr 5213 0#64)))).val
theorem output11538_def : output11538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5209 (Flapjack.WordLangAddr.addr 5213 0#64))) := by
  unfold output11538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11538_skip : Flapjack.WordAlloc.isSkip output11538 = false := by
  rw [output11538_def]
  conv => lhs; cbv
  try rfl
theorem node11538_eq : Flapjack.WordAlloc.removeDeadStructural input11538 value5 value1 value2 = (output11538, value5773, value1) := by
  rw [input11538_def, output11538_def]
  try (conv => lhs; cbv)
  try rfl

def value5774 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5213, 5201)])).val
theorem input11539_def : input11539 = (Flapjack.WordLangProgHOL.move 0 [(5213, 5201)]) := by
  unfold input11539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5213, 5201)])).val
theorem output11539_def : output11539 = (Flapjack.WordLangProgHOL.move 0 [(5213, 5201)]) := by
  unfold output11539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11539_skip : Flapjack.WordAlloc.isSkip output11539 = false := by
  rw [output11539_def]
  conv => lhs; cbv
  try rfl
theorem node11539_eq : Flapjack.WordAlloc.removeDeadStructural input11539 value5773 value1 value2 = (output11539, value5774, value1) := by
  rw [input11539_def, output11539_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11539 input11538)).val
theorem input11540_def : input11540 = (.seq input11539 input11538) := by
  unfold input11540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11539 output11538)).val
theorem output11540_def : output11540 = (.seq output11539 output11538) := by
  unfold output11540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11540_skip : Flapjack.WordAlloc.isSkip output11540 = false := by
  rw [output11540_def]
  conv => lhs; cbv
  try rfl
theorem node11540_eq : Flapjack.WordAlloc.removeDeadStructural input11540 value5 value1 value2 = (output11540, value5774, value1) := by
  rw [input11540_def, output11540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11538_eq]
  dsimp only
  rw [node11539_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5775 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5209 10082116240020342118#64))).val
theorem input11541_def : input11541 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5209 10082116240020342118#64)) := by
  unfold input11541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5209 10082116240020342118#64))).val
theorem output11541_def : output11541 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5209 10082116240020342118#64)) := by
  unfold output11541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11541_skip : Flapjack.WordAlloc.isSkip output11541 = false := by
  rw [output11541_def]
  conv => lhs; cbv
  try rfl
theorem node11541_eq : Flapjack.WordAlloc.removeDeadStructural input11541 value5774 value1 value2 = (output11541, value5775, value1) := by
  rw [input11541_def, output11541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5205 10082116240020342118#64))).val
theorem input11542_def : input11542 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5205 10082116240020342118#64)) := by
  unfold input11542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11542_def : output11542 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11542_skip : Flapjack.WordAlloc.isSkip output11542 = true := by
  rw [output11542_def]
  conv => lhs; cbv
  try rfl
theorem node11542_eq : Flapjack.WordAlloc.removeDeadStructural input11542 value5775 value1 value2 = (output11542, value5775, value1) := by
  rw [input11542_def, output11542_def]
  try (conv => lhs; cbv)
  try rfl

def value5776 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5201 5197 (Flapjack.WordRegImm.imm 1264#64))))).val
theorem input11543_def : input11543 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5201 5197 (Flapjack.WordRegImm.imm 1264#64)))) := by
  unfold input11543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5201 5197 (Flapjack.WordRegImm.imm 1264#64))))).val
theorem output11543_def : output11543 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5201 5197 (Flapjack.WordRegImm.imm 1264#64)))) := by
  unfold output11543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11543_skip : Flapjack.WordAlloc.isSkip output11543 = false := by
  rw [output11543_def]
  conv => lhs; cbv
  try rfl
theorem node11543_eq : Flapjack.WordAlloc.removeDeadStructural input11543 value5775 value1 value2 = (output11543, value5776, value1) := by
  rw [input11543_def, output11543_def]
  try (conv => lhs; cbv)
  try rfl

def value5777 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5197 (Flapjack.WordLangAddr.addr 5193 18446744073709551104#64)))).val
theorem input11544_def : input11544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5197 (Flapjack.WordLangAddr.addr 5193 18446744073709551104#64))) := by
  unfold input11544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5197 (Flapjack.WordLangAddr.addr 5193 18446744073709551104#64)))).val
theorem output11544_def : output11544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5197 (Flapjack.WordLangAddr.addr 5193 18446744073709551104#64))) := by
  unfold output11544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11544_skip : Flapjack.WordAlloc.isSkip output11544 = false := by
  rw [output11544_def]
  conv => lhs; cbv
  try rfl
theorem node11544_eq : Flapjack.WordAlloc.removeDeadStructural input11544 value5776 value1 value2 = (output11544, value5777, value1) := by
  rw [input11544_def, output11544_def]
  try (conv => lhs; cbv)
  try rfl

def value5778 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5193 5189)).val
theorem input11545_def : input11545 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5193 5189) := by
  unfold input11545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5193 5189)).val
theorem output11545_def : output11545 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5193 5189) := by
  unfold output11545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11545_skip : Flapjack.WordAlloc.isSkip output11545 = false := by
  rw [output11545_def]
  conv => lhs; cbv
  try rfl
theorem node11545_eq : Flapjack.WordAlloc.removeDeadStructural input11545 value5777 value1 value2 = (output11545, value5778, value1) := by
  rw [input11545_def, output11545_def]
  try (conv => lhs; cbv)
  try rfl

def value5779 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5189 5185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11546_def : input11546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5189 5185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5189 5185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11546_def : output11546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5189 5185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11546_skip : Flapjack.WordAlloc.isSkip output11546 = false := by
  rw [output11546_def]
  conv => lhs; cbv
  try rfl
theorem node11546_eq : Flapjack.WordAlloc.removeDeadStructural input11546 value5778 value1 value2 = (output11546, value5779, value1) := by
  rw [input11546_def, output11546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5185 Flapjack.WordStore.heapLength)).val
theorem input11547_def : input11547 = (Flapjack.WordLangProgHOL.get 5185 Flapjack.WordStore.heapLength) := by
  unfold input11547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5185 Flapjack.WordStore.heapLength)).val
theorem output11547_def : output11547 = (Flapjack.WordLangProgHOL.get 5185 Flapjack.WordStore.heapLength) := by
  unfold output11547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11547_skip : Flapjack.WordAlloc.isSkip output11547 = false := by
  rw [output11547_def]
  conv => lhs; cbv
  try rfl
theorem node11547_eq : Flapjack.WordAlloc.removeDeadStructural input11547 value5779 value1 value2 = (output11547, value5, value1) := by
  rw [input11547_def, output11547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11547 input11546)).val
theorem input11548_def : input11548 = (.seq input11547 input11546) := by
  unfold input11548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11547 output11546)).val
theorem output11548_def : output11548 = (.seq output11547 output11546) := by
  unfold output11548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11548_skip : Flapjack.WordAlloc.isSkip output11548 = false := by
  rw [output11548_def]
  conv => lhs; cbv
  try rfl
theorem node11548_eq : Flapjack.WordAlloc.removeDeadStructural input11548 value5778 value1 value2 = (output11548, value5, value1) := by
  rw [input11548_def, output11548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11546_eq]
  dsimp only
  rw [node11547_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11548 input11545)).val
theorem input11549_def : input11549 = (.seq input11548 input11545) := by
  unfold input11549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11548 output11545)).val
theorem output11549_def : output11549 = (.seq output11548 output11545) := by
  unfold output11549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11549_skip : Flapjack.WordAlloc.isSkip output11549 = false := by
  rw [output11549_def]
  conv => lhs; cbv
  try rfl
theorem node11549_eq : Flapjack.WordAlloc.removeDeadStructural input11549 value5777 value1 value2 = (output11549, value5, value1) := by
  rw [input11549_def, output11549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11545_eq]
  dsimp only
  rw [node11548_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11549 input11544)).val
theorem input11550_def : input11550 = (.seq input11549 input11544) := by
  unfold input11550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11549 output11544)).val
theorem output11550_def : output11550 = (.seq output11549 output11544) := by
  unfold output11550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11550_skip : Flapjack.WordAlloc.isSkip output11550 = false := by
  rw [output11550_def]
  conv => lhs; cbv
  try rfl
theorem node11550_eq : Flapjack.WordAlloc.removeDeadStructural input11550 value5776 value1 value2 = (output11550, value5, value1) := by
  rw [input11550_def, output11550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11544_eq]
  dsimp only
  rw [node11549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11550 input11543)).val
theorem input11551_def : input11551 = (.seq input11550 input11543) := by
  unfold input11551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11550 output11543)).val
theorem output11551_def : output11551 = (.seq output11550 output11543) := by
  unfold output11551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11551_skip : Flapjack.WordAlloc.isSkip output11551 = false := by
  rw [output11551_def]
  conv => lhs; cbv
  try rfl
theorem node11551_eq : Flapjack.WordAlloc.removeDeadStructural input11551 value5775 value1 value2 = (output11551, value5, value1) := by
  rw [input11551_def, output11551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11543_eq]
  dsimp only
  rw [node11550_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5780 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5177 (Flapjack.WordLangAddr.addr 5181 0#64)))).val
theorem input11552_def : input11552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5177 (Flapjack.WordLangAddr.addr 5181 0#64))) := by
  unfold input11552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5177 (Flapjack.WordLangAddr.addr 5181 0#64)))).val
theorem output11552_def : output11552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5177 (Flapjack.WordLangAddr.addr 5181 0#64))) := by
  unfold output11552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11552_skip : Flapjack.WordAlloc.isSkip output11552 = false := by
  rw [output11552_def]
  conv => lhs; cbv
  try rfl
theorem node11552_eq : Flapjack.WordAlloc.removeDeadStructural input11552 value5 value1 value2 = (output11552, value5780, value1) := by
  rw [input11552_def, output11552_def]
  try (conv => lhs; cbv)
  try rfl

def value5781 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5181, 5169)])).val
theorem input11553_def : input11553 = (Flapjack.WordLangProgHOL.move 0 [(5181, 5169)]) := by
  unfold input11553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5181, 5169)])).val
theorem output11553_def : output11553 = (Flapjack.WordLangProgHOL.move 0 [(5181, 5169)]) := by
  unfold output11553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11553_skip : Flapjack.WordAlloc.isSkip output11553 = false := by
  rw [output11553_def]
  conv => lhs; cbv
  try rfl
theorem node11553_eq : Flapjack.WordAlloc.removeDeadStructural input11553 value5780 value1 value2 = (output11553, value5781, value1) := by
  rw [input11553_def, output11553_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11553 input11552)).val
theorem input11554_def : input11554 = (.seq input11553 input11552) := by
  unfold input11554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11553 output11552)).val
theorem output11554_def : output11554 = (.seq output11553 output11552) := by
  unfold output11554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11554_skip : Flapjack.WordAlloc.isSkip output11554 = false := by
  rw [output11554_def]
  conv => lhs; cbv
  try rfl
theorem node11554_eq : Flapjack.WordAlloc.removeDeadStructural input11554 value5 value1 value2 = (output11554, value5781, value1) := by
  rw [input11554_def, output11554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11552_eq]
  dsimp only
  rw [node11553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5782 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5177 14283797810955388722#64))).val
theorem input11555_def : input11555 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5177 14283797810955388722#64)) := by
  unfold input11555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5177 14283797810955388722#64))).val
theorem output11555_def : output11555 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5177 14283797810955388722#64)) := by
  unfold output11555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11555_skip : Flapjack.WordAlloc.isSkip output11555 = false := by
  rw [output11555_def]
  conv => lhs; cbv
  try rfl
theorem node11555_eq : Flapjack.WordAlloc.removeDeadStructural input11555 value5781 value1 value2 = (output11555, value5782, value1) := by
  rw [input11555_def, output11555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5173 14283797810955388722#64))).val
theorem input11556_def : input11556 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5173 14283797810955388722#64)) := by
  unfold input11556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11556_def : output11556 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11556_skip : Flapjack.WordAlloc.isSkip output11556 = true := by
  rw [output11556_def]
  conv => lhs; cbv
  try rfl
theorem node11556_eq : Flapjack.WordAlloc.removeDeadStructural input11556 value5782 value1 value2 = (output11556, value5782, value1) := by
  rw [input11556_def, output11556_def]
  try (conv => lhs; cbv)
  try rfl

def value5783 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5169 5165 (Flapjack.WordRegImm.imm 1256#64))))).val
theorem input11557_def : input11557 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5169 5165 (Flapjack.WordRegImm.imm 1256#64)))) := by
  unfold input11557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5169 5165 (Flapjack.WordRegImm.imm 1256#64))))).val
theorem output11557_def : output11557 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5169 5165 (Flapjack.WordRegImm.imm 1256#64)))) := by
  unfold output11557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11557_skip : Flapjack.WordAlloc.isSkip output11557 = false := by
  rw [output11557_def]
  conv => lhs; cbv
  try rfl
theorem node11557_eq : Flapjack.WordAlloc.removeDeadStructural input11557 value5782 value1 value2 = (output11557, value5783, value1) := by
  rw [input11557_def, output11557_def]
  try (conv => lhs; cbv)
  try rfl

def value5784 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5165 (Flapjack.WordLangAddr.addr 5161 18446744073709551104#64)))).val
theorem input11558_def : input11558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5165 (Flapjack.WordLangAddr.addr 5161 18446744073709551104#64))) := by
  unfold input11558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5165 (Flapjack.WordLangAddr.addr 5161 18446744073709551104#64)))).val
theorem output11558_def : output11558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5165 (Flapjack.WordLangAddr.addr 5161 18446744073709551104#64))) := by
  unfold output11558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11558_skip : Flapjack.WordAlloc.isSkip output11558 = false := by
  rw [output11558_def]
  conv => lhs; cbv
  try rfl
theorem node11558_eq : Flapjack.WordAlloc.removeDeadStructural input11558 value5783 value1 value2 = (output11558, value5784, value1) := by
  rw [input11558_def, output11558_def]
  try (conv => lhs; cbv)
  try rfl

def value5785 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5161 5157)).val
theorem input11559_def : input11559 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5161 5157) := by
  unfold input11559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5161 5157)).val
theorem output11559_def : output11559 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5161 5157) := by
  unfold output11559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11559_skip : Flapjack.WordAlloc.isSkip output11559 = false := by
  rw [output11559_def]
  conv => lhs; cbv
  try rfl
theorem node11559_eq : Flapjack.WordAlloc.removeDeadStructural input11559 value5784 value1 value2 = (output11559, value5785, value1) := by
  rw [input11559_def, output11559_def]
  try (conv => lhs; cbv)
  try rfl

def value5786 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5157 5153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11560_def : input11560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5157 5153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5157 5153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11560_def : output11560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5157 5153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11560_skip : Flapjack.WordAlloc.isSkip output11560 = false := by
  rw [output11560_def]
  conv => lhs; cbv
  try rfl
theorem node11560_eq : Flapjack.WordAlloc.removeDeadStructural input11560 value5785 value1 value2 = (output11560, value5786, value1) := by
  rw [input11560_def, output11560_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5153 Flapjack.WordStore.heapLength)).val
theorem input11561_def : input11561 = (Flapjack.WordLangProgHOL.get 5153 Flapjack.WordStore.heapLength) := by
  unfold input11561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5153 Flapjack.WordStore.heapLength)).val
theorem output11561_def : output11561 = (Flapjack.WordLangProgHOL.get 5153 Flapjack.WordStore.heapLength) := by
  unfold output11561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11561_skip : Flapjack.WordAlloc.isSkip output11561 = false := by
  rw [output11561_def]
  conv => lhs; cbv
  try rfl
theorem node11561_eq : Flapjack.WordAlloc.removeDeadStructural input11561 value5786 value1 value2 = (output11561, value5, value1) := by
  rw [input11561_def, output11561_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11561 input11560)).val
theorem input11562_def : input11562 = (.seq input11561 input11560) := by
  unfold input11562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11561 output11560)).val
theorem output11562_def : output11562 = (.seq output11561 output11560) := by
  unfold output11562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11562_skip : Flapjack.WordAlloc.isSkip output11562 = false := by
  rw [output11562_def]
  conv => lhs; cbv
  try rfl
theorem node11562_eq : Flapjack.WordAlloc.removeDeadStructural input11562 value5785 value1 value2 = (output11562, value5, value1) := by
  rw [input11562_def, output11562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11560_eq]
  dsimp only
  rw [node11561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11562 input11559)).val
theorem input11563_def : input11563 = (.seq input11562 input11559) := by
  unfold input11563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11562 output11559)).val
theorem output11563_def : output11563 = (.seq output11562 output11559) := by
  unfold output11563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11563_skip : Flapjack.WordAlloc.isSkip output11563 = false := by
  rw [output11563_def]
  conv => lhs; cbv
  try rfl
theorem node11563_eq : Flapjack.WordAlloc.removeDeadStructural input11563 value5784 value1 value2 = (output11563, value5, value1) := by
  rw [input11563_def, output11563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11559_eq]
  dsimp only
  rw [node11562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11563 input11558)).val
theorem input11564_def : input11564 = (.seq input11563 input11558) := by
  unfold input11564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11563 output11558)).val
theorem output11564_def : output11564 = (.seq output11563 output11558) := by
  unfold output11564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11564_skip : Flapjack.WordAlloc.isSkip output11564 = false := by
  rw [output11564_def]
  conv => lhs; cbv
  try rfl
theorem node11564_eq : Flapjack.WordAlloc.removeDeadStructural input11564 value5783 value1 value2 = (output11564, value5, value1) := by
  rw [input11564_def, output11564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11558_eq]
  dsimp only
  rw [node11563_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11564 input11557)).val
theorem input11565_def : input11565 = (.seq input11564 input11557) := by
  unfold input11565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11564 output11557)).val
theorem output11565_def : output11565 = (.seq output11564 output11557) := by
  unfold output11565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11565_skip : Flapjack.WordAlloc.isSkip output11565 = false := by
  rw [output11565_def]
  conv => lhs; cbv
  try rfl
theorem node11565_eq : Flapjack.WordAlloc.removeDeadStructural input11565 value5782 value1 value2 = (output11565, value5, value1) := by
  rw [input11565_def, output11565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11557_eq]
  dsimp only
  rw [node11564_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5787 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5145 (Flapjack.WordLangAddr.addr 5149 0#64)))).val
theorem input11566_def : input11566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5145 (Flapjack.WordLangAddr.addr 5149 0#64))) := by
  unfold input11566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5145 (Flapjack.WordLangAddr.addr 5149 0#64)))).val
theorem output11566_def : output11566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5145 (Flapjack.WordLangAddr.addr 5149 0#64))) := by
  unfold output11566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11566_skip : Flapjack.WordAlloc.isSkip output11566 = false := by
  rw [output11566_def]
  conv => lhs; cbv
  try rfl
theorem node11566_eq : Flapjack.WordAlloc.removeDeadStructural input11566 value5 value1 value2 = (output11566, value5787, value1) := by
  rw [input11566_def, output11566_def]
  try (conv => lhs; cbv)
  try rfl

def value5788 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5149, 5137)])).val
theorem input11567_def : input11567 = (Flapjack.WordLangProgHOL.move 0 [(5149, 5137)]) := by
  unfold input11567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5149, 5137)])).val
theorem output11567_def : output11567 = (Flapjack.WordLangProgHOL.move 0 [(5149, 5137)]) := by
  unfold output11567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11567_skip : Flapjack.WordAlloc.isSkip output11567 = false := by
  rw [output11567_def]
  conv => lhs; cbv
  try rfl
theorem node11567_eq : Flapjack.WordAlloc.removeDeadStructural input11567 value5787 value1 value2 = (output11567, value5788, value1) := by
  rw [input11567_def, output11567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11567 input11566)).val
theorem input11568_def : input11568 = (.seq input11567 input11566) := by
  unfold input11568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11567 output11566)).val
theorem output11568_def : output11568 = (.seq output11567 output11566) := by
  unfold output11568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11568_skip : Flapjack.WordAlloc.isSkip output11568 = false := by
  rw [output11568_def]
  conv => lhs; cbv
  try rfl
theorem node11568_eq : Flapjack.WordAlloc.removeDeadStructural input11568 value5 value1 value2 = (output11568, value5788, value1) := by
  rw [input11568_def, output11568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11566_eq]
  dsimp only
  rw [node11567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5789 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5145 11175958356102185238#64))).val
theorem input11569_def : input11569 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5145 11175958356102185238#64)) := by
  unfold input11569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5145 11175958356102185238#64))).val
theorem output11569_def : output11569 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5145 11175958356102185238#64)) := by
  unfold output11569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11569_skip : Flapjack.WordAlloc.isSkip output11569 = false := by
  rw [output11569_def]
  conv => lhs; cbv
  try rfl
theorem node11569_eq : Flapjack.WordAlloc.removeDeadStructural input11569 value5788 value1 value2 = (output11569, value5789, value1) := by
  rw [input11569_def, output11569_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5141 11175958356102185238#64))).val
theorem input11570_def : input11570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5141 11175958356102185238#64)) := by
  unfold input11570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11570_def : output11570 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11570_skip : Flapjack.WordAlloc.isSkip output11570 = true := by
  rw [output11570_def]
  conv => lhs; cbv
  try rfl
theorem node11570_eq : Flapjack.WordAlloc.removeDeadStructural input11570 value5789 value1 value2 = (output11570, value5789, value1) := by
  rw [input11570_def, output11570_def]
  try (conv => lhs; cbv)
  try rfl

def value5790 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5137 5133 (Flapjack.WordRegImm.imm 1248#64))))).val
theorem input11571_def : input11571 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5137 5133 (Flapjack.WordRegImm.imm 1248#64)))) := by
  unfold input11571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5137 5133 (Flapjack.WordRegImm.imm 1248#64))))).val
theorem output11571_def : output11571 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5137 5133 (Flapjack.WordRegImm.imm 1248#64)))) := by
  unfold output11571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11571_skip : Flapjack.WordAlloc.isSkip output11571 = false := by
  rw [output11571_def]
  conv => lhs; cbv
  try rfl
theorem node11571_eq : Flapjack.WordAlloc.removeDeadStructural input11571 value5789 value1 value2 = (output11571, value5790, value1) := by
  rw [input11571_def, output11571_def]
  try (conv => lhs; cbv)
  try rfl

def value5791 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5133 (Flapjack.WordLangAddr.addr 5129 18446744073709551104#64)))).val
theorem input11572_def : input11572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5133 (Flapjack.WordLangAddr.addr 5129 18446744073709551104#64))) := by
  unfold input11572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5133 (Flapjack.WordLangAddr.addr 5129 18446744073709551104#64)))).val
theorem output11572_def : output11572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5133 (Flapjack.WordLangAddr.addr 5129 18446744073709551104#64))) := by
  unfold output11572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11572_skip : Flapjack.WordAlloc.isSkip output11572 = false := by
  rw [output11572_def]
  conv => lhs; cbv
  try rfl
theorem node11572_eq : Flapjack.WordAlloc.removeDeadStructural input11572 value5790 value1 value2 = (output11572, value5791, value1) := by
  rw [input11572_def, output11572_def]
  try (conv => lhs; cbv)
  try rfl

def value5792 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5129 5125)).val
theorem input11573_def : input11573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5129 5125) := by
  unfold input11573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5129 5125)).val
theorem output11573_def : output11573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5129 5125) := by
  unfold output11573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11573_skip : Flapjack.WordAlloc.isSkip output11573 = false := by
  rw [output11573_def]
  conv => lhs; cbv
  try rfl
theorem node11573_eq : Flapjack.WordAlloc.removeDeadStructural input11573 value5791 value1 value2 = (output11573, value5792, value1) := by
  rw [input11573_def, output11573_def]
  try (conv => lhs; cbv)
  try rfl

def value5793 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5125 5121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11574_def : input11574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5125 5121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5125 5121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11574_def : output11574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5125 5121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11574_skip : Flapjack.WordAlloc.isSkip output11574 = false := by
  rw [output11574_def]
  conv => lhs; cbv
  try rfl
theorem node11574_eq : Flapjack.WordAlloc.removeDeadStructural input11574 value5792 value1 value2 = (output11574, value5793, value1) := by
  rw [input11574_def, output11574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5121 Flapjack.WordStore.heapLength)).val
theorem input11575_def : input11575 = (Flapjack.WordLangProgHOL.get 5121 Flapjack.WordStore.heapLength) := by
  unfold input11575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5121 Flapjack.WordStore.heapLength)).val
theorem output11575_def : output11575 = (Flapjack.WordLangProgHOL.get 5121 Flapjack.WordStore.heapLength) := by
  unfold output11575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11575_skip : Flapjack.WordAlloc.isSkip output11575 = false := by
  rw [output11575_def]
  conv => lhs; cbv
  try rfl
theorem node11575_eq : Flapjack.WordAlloc.removeDeadStructural input11575 value5793 value1 value2 = (output11575, value5, value1) := by
  rw [input11575_def, output11575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11575 input11574)).val
theorem input11576_def : input11576 = (.seq input11575 input11574) := by
  unfold input11576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11575 output11574)).val
theorem output11576_def : output11576 = (.seq output11575 output11574) := by
  unfold output11576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11576_skip : Flapjack.WordAlloc.isSkip output11576 = false := by
  rw [output11576_def]
  conv => lhs; cbv
  try rfl
theorem node11576_eq : Flapjack.WordAlloc.removeDeadStructural input11576 value5792 value1 value2 = (output11576, value5, value1) := by
  rw [input11576_def, output11576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11574_eq]
  dsimp only
  rw [node11575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11576 input11573)).val
theorem input11577_def : input11577 = (.seq input11576 input11573) := by
  unfold input11577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11576 output11573)).val
theorem output11577_def : output11577 = (.seq output11576 output11573) := by
  unfold output11577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11577_skip : Flapjack.WordAlloc.isSkip output11577 = false := by
  rw [output11577_def]
  conv => lhs; cbv
  try rfl
theorem node11577_eq : Flapjack.WordAlloc.removeDeadStructural input11577 value5791 value1 value2 = (output11577, value5, value1) := by
  rw [input11577_def, output11577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11573_eq]
  dsimp only
  rw [node11576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11577 input11572)).val
theorem input11578_def : input11578 = (.seq input11577 input11572) := by
  unfold input11578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11577 output11572)).val
theorem output11578_def : output11578 = (.seq output11577 output11572) := by
  unfold output11578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11578_skip : Flapjack.WordAlloc.isSkip output11578 = false := by
  rw [output11578_def]
  conv => lhs; cbv
  try rfl
theorem node11578_eq : Flapjack.WordAlloc.removeDeadStructural input11578 value5790 value1 value2 = (output11578, value5, value1) := by
  rw [input11578_def, output11578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11572_eq]
  dsimp only
  rw [node11577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11578 input11571)).val
theorem input11579_def : input11579 = (.seq input11578 input11571) := by
  unfold input11579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11578 output11571)).val
theorem output11579_def : output11579 = (.seq output11578 output11571) := by
  unfold output11579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11579_skip : Flapjack.WordAlloc.isSkip output11579 = false := by
  rw [output11579_def]
  conv => lhs; cbv
  try rfl
theorem node11579_eq : Flapjack.WordAlloc.removeDeadStructural input11579 value5789 value1 value2 = (output11579, value5, value1) := by
  rw [input11579_def, output11579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11571_eq]
  dsimp only
  rw [node11578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5794 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5113 (Flapjack.WordLangAddr.addr 5117 0#64)))).val
theorem input11580_def : input11580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5113 (Flapjack.WordLangAddr.addr 5117 0#64))) := by
  unfold input11580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5113 (Flapjack.WordLangAddr.addr 5117 0#64)))).val
theorem output11580_def : output11580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5113 (Flapjack.WordLangAddr.addr 5117 0#64))) := by
  unfold output11580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11580_skip : Flapjack.WordAlloc.isSkip output11580 = false := by
  rw [output11580_def]
  conv => lhs; cbv
  try rfl
theorem node11580_eq : Flapjack.WordAlloc.removeDeadStructural input11580 value5 value1 value2 = (output11580, value5794, value1) := by
  rw [input11580_def, output11580_def]
  try (conv => lhs; cbv)
  try rfl

def value5795 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5117, 5105)])).val
theorem input11581_def : input11581 = (Flapjack.WordLangProgHOL.move 0 [(5117, 5105)]) := by
  unfold input11581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5117, 5105)])).val
theorem output11581_def : output11581 = (Flapjack.WordLangProgHOL.move 0 [(5117, 5105)]) := by
  unfold output11581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11581_skip : Flapjack.WordAlloc.isSkip output11581 = false := by
  rw [output11581_def]
  conv => lhs; cbv
  try rfl
theorem node11581_eq : Flapjack.WordAlloc.removeDeadStructural input11581 value5794 value1 value2 = (output11581, value5795, value1) := by
  rw [input11581_def, output11581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11581 input11580)).val
theorem input11582_def : input11582 = (.seq input11581 input11580) := by
  unfold input11582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11581 output11580)).val
theorem output11582_def : output11582 = (.seq output11581 output11580) := by
  unfold output11582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11582_skip : Flapjack.WordAlloc.isSkip output11582 = false := by
  rw [output11582_def]
  conv => lhs; cbv
  try rfl
theorem node11582_eq : Flapjack.WordAlloc.removeDeadStructural input11582 value5 value1 value2 = (output11582, value5795, value1) := by
  rw [input11582_def, output11582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11580_eq]
  dsimp only
  rw [node11581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5796 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5113 0#64))).val
theorem input11583_def : input11583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5113 0#64)) := by
  unfold input11583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5113 0#64))).val
theorem output11583_def : output11583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5113 0#64)) := by
  unfold output11583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11583_skip : Flapjack.WordAlloc.isSkip output11583 = false := by
  rw [output11583_def]
  conv => lhs; cbv
  try rfl
theorem node11583_eq : Flapjack.WordAlloc.removeDeadStructural input11583 value5795 value1 value2 = (output11583, value5796, value1) := by
  rw [input11583_def, output11583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5109 0#64))).val
theorem input11584_def : input11584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5109 0#64)) := by
  unfold input11584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11584_def : output11584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11584_skip : Flapjack.WordAlloc.isSkip output11584 = true := by
  rw [output11584_def]
  conv => lhs; cbv
  try rfl
theorem node11584_eq : Flapjack.WordAlloc.removeDeadStructural input11584 value5796 value1 value2 = (output11584, value5796, value1) := by
  rw [input11584_def, output11584_def]
  try (conv => lhs; cbv)
  try rfl

def value5797 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5105 5101 (Flapjack.WordRegImm.imm 1240#64))))).val
theorem input11585_def : input11585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5105 5101 (Flapjack.WordRegImm.imm 1240#64)))) := by
  unfold input11585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5105 5101 (Flapjack.WordRegImm.imm 1240#64))))).val
theorem output11585_def : output11585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5105 5101 (Flapjack.WordRegImm.imm 1240#64)))) := by
  unfold output11585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11585_skip : Flapjack.WordAlloc.isSkip output11585 = false := by
  rw [output11585_def]
  conv => lhs; cbv
  try rfl
theorem node11585_eq : Flapjack.WordAlloc.removeDeadStructural input11585 value5796 value1 value2 = (output11585, value5797, value1) := by
  rw [input11585_def, output11585_def]
  try (conv => lhs; cbv)
  try rfl

def value5798 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5101 (Flapjack.WordLangAddr.addr 5097 18446744073709551104#64)))).val
theorem input11586_def : input11586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5101 (Flapjack.WordLangAddr.addr 5097 18446744073709551104#64))) := by
  unfold input11586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5101 (Flapjack.WordLangAddr.addr 5097 18446744073709551104#64)))).val
theorem output11586_def : output11586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5101 (Flapjack.WordLangAddr.addr 5097 18446744073709551104#64))) := by
  unfold output11586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11586_skip : Flapjack.WordAlloc.isSkip output11586 = false := by
  rw [output11586_def]
  conv => lhs; cbv
  try rfl
theorem node11586_eq : Flapjack.WordAlloc.removeDeadStructural input11586 value5797 value1 value2 = (output11586, value5798, value1) := by
  rw [input11586_def, output11586_def]
  try (conv => lhs; cbv)
  try rfl

def value5799 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5097 5093)).val
theorem input11587_def : input11587 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5097 5093) := by
  unfold input11587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5097 5093)).val
theorem output11587_def : output11587 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5097 5093) := by
  unfold output11587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11587_skip : Flapjack.WordAlloc.isSkip output11587 = false := by
  rw [output11587_def]
  conv => lhs; cbv
  try rfl
theorem node11587_eq : Flapjack.WordAlloc.removeDeadStructural input11587 value5798 value1 value2 = (output11587, value5799, value1) := by
  rw [input11587_def, output11587_def]
  try (conv => lhs; cbv)
  try rfl

def value5800 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5093 5089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11588_def : input11588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5093 5089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5093 5089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11588_def : output11588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5093 5089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11588_skip : Flapjack.WordAlloc.isSkip output11588 = false := by
  rw [output11588_def]
  conv => lhs; cbv
  try rfl
theorem node11588_eq : Flapjack.WordAlloc.removeDeadStructural input11588 value5799 value1 value2 = (output11588, value5800, value1) := by
  rw [input11588_def, output11588_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5089 Flapjack.WordStore.heapLength)).val
theorem input11589_def : input11589 = (Flapjack.WordLangProgHOL.get 5089 Flapjack.WordStore.heapLength) := by
  unfold input11589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5089 Flapjack.WordStore.heapLength)).val
theorem output11589_def : output11589 = (Flapjack.WordLangProgHOL.get 5089 Flapjack.WordStore.heapLength) := by
  unfold output11589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11589_skip : Flapjack.WordAlloc.isSkip output11589 = false := by
  rw [output11589_def]
  conv => lhs; cbv
  try rfl
theorem node11589_eq : Flapjack.WordAlloc.removeDeadStructural input11589 value5800 value1 value2 = (output11589, value5, value1) := by
  rw [input11589_def, output11589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11589 input11588)).val
theorem input11590_def : input11590 = (.seq input11589 input11588) := by
  unfold input11590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11589 output11588)).val
theorem output11590_def : output11590 = (.seq output11589 output11588) := by
  unfold output11590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11590_skip : Flapjack.WordAlloc.isSkip output11590 = false := by
  rw [output11590_def]
  conv => lhs; cbv
  try rfl
theorem node11590_eq : Flapjack.WordAlloc.removeDeadStructural input11590 value5799 value1 value2 = (output11590, value5, value1) := by
  rw [input11590_def, output11590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11588_eq]
  dsimp only
  rw [node11589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11590 input11587)).val
theorem input11591_def : input11591 = (.seq input11590 input11587) := by
  unfold input11591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11590 output11587)).val
theorem output11591_def : output11591 = (.seq output11590 output11587) := by
  unfold output11591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11591_skip : Flapjack.WordAlloc.isSkip output11591 = false := by
  rw [output11591_def]
  conv => lhs; cbv
  try rfl
theorem node11591_eq : Flapjack.WordAlloc.removeDeadStructural input11591 value5798 value1 value2 = (output11591, value5, value1) := by
  rw [input11591_def, output11591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11587_eq]
  dsimp only
  rw [node11590_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11591 input11586)).val
theorem input11592_def : input11592 = (.seq input11591 input11586) := by
  unfold input11592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11591 output11586)).val
theorem output11592_def : output11592 = (.seq output11591 output11586) := by
  unfold output11592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11592_skip : Flapjack.WordAlloc.isSkip output11592 = false := by
  rw [output11592_def]
  conv => lhs; cbv
  try rfl
theorem node11592_eq : Flapjack.WordAlloc.removeDeadStructural input11592 value5797 value1 value2 = (output11592, value5, value1) := by
  rw [input11592_def, output11592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11586_eq]
  dsimp only
  rw [node11591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11592 input11585)).val
theorem input11593_def : input11593 = (.seq input11592 input11585) := by
  unfold input11593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11592 output11585)).val
theorem output11593_def : output11593 = (.seq output11592 output11585) := by
  unfold output11593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11593_skip : Flapjack.WordAlloc.isSkip output11593 = false := by
  rw [output11593_def]
  conv => lhs; cbv
  try rfl
theorem node11593_eq : Flapjack.WordAlloc.removeDeadStructural input11593 value5796 value1 value2 = (output11593, value5, value1) := by
  rw [input11593_def, output11593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11585_eq]
  dsimp only
  rw [node11592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5801 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5081 (Flapjack.WordLangAddr.addr 5085 0#64)))).val
theorem input11594_def : input11594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5081 (Flapjack.WordLangAddr.addr 5085 0#64))) := by
  unfold input11594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5081 (Flapjack.WordLangAddr.addr 5085 0#64)))).val
theorem output11594_def : output11594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5081 (Flapjack.WordLangAddr.addr 5085 0#64))) := by
  unfold output11594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11594_skip : Flapjack.WordAlloc.isSkip output11594 = false := by
  rw [output11594_def]
  conv => lhs; cbv
  try rfl
theorem node11594_eq : Flapjack.WordAlloc.removeDeadStructural input11594 value5 value1 value2 = (output11594, value5801, value1) := by
  rw [input11594_def, output11594_def]
  try (conv => lhs; cbv)
  try rfl

def value5802 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5085, 5073)])).val
theorem input11595_def : input11595 = (Flapjack.WordLangProgHOL.move 0 [(5085, 5073)]) := by
  unfold input11595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5085, 5073)])).val
theorem output11595_def : output11595 = (Flapjack.WordLangProgHOL.move 0 [(5085, 5073)]) := by
  unfold output11595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11595_skip : Flapjack.WordAlloc.isSkip output11595 = false := by
  rw [output11595_def]
  conv => lhs; cbv
  try rfl
theorem node11595_eq : Flapjack.WordAlloc.removeDeadStructural input11595 value5801 value1 value2 = (output11595, value5802, value1) := by
  rw [input11595_def, output11595_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11595 input11594)).val
theorem input11596_def : input11596 = (.seq input11595 input11594) := by
  unfold input11596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11595 output11594)).val
theorem output11596_def : output11596 = (.seq output11595 output11594) := by
  unfold output11596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11596_skip : Flapjack.WordAlloc.isSkip output11596 = false := by
  rw [output11596_def]
  conv => lhs; cbv
  try rfl
theorem node11596_eq : Flapjack.WordAlloc.removeDeadStructural input11596 value5 value1 value2 = (output11596, value5802, value1) := by
  rw [input11596_def, output11596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11594_eq]
  dsimp only
  rw [node11595_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5803 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5081 0#64))).val
theorem input11597_def : input11597 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5081 0#64)) := by
  unfold input11597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5081 0#64))).val
theorem output11597_def : output11597 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5081 0#64)) := by
  unfold output11597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11597_skip : Flapjack.WordAlloc.isSkip output11597 = false := by
  rw [output11597_def]
  conv => lhs; cbv
  try rfl
theorem node11597_eq : Flapjack.WordAlloc.removeDeadStructural input11597 value5802 value1 value2 = (output11597, value5803, value1) := by
  rw [input11597_def, output11597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5077 0#64))).val
theorem input11598_def : input11598 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5077 0#64)) := by
  unfold input11598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11598_def : output11598 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11598_skip : Flapjack.WordAlloc.isSkip output11598 = true := by
  rw [output11598_def]
  conv => lhs; cbv
  try rfl
theorem node11598_eq : Flapjack.WordAlloc.removeDeadStructural input11598 value5803 value1 value2 = (output11598, value5803, value1) := by
  rw [input11598_def, output11598_def]
  try (conv => lhs; cbv)
  try rfl

def value5804 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5073 5069 (Flapjack.WordRegImm.imm 1232#64))))).val
theorem input11599_def : input11599 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5073 5069 (Flapjack.WordRegImm.imm 1232#64)))) := by
  unfold input11599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5073 5069 (Flapjack.WordRegImm.imm 1232#64))))).val
theorem output11599_def : output11599 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5073 5069 (Flapjack.WordRegImm.imm 1232#64)))) := by
  unfold output11599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11599_skip : Flapjack.WordAlloc.isSkip output11599 = false := by
  rw [output11599_def]
  conv => lhs; cbv
  try rfl
theorem node11599_eq : Flapjack.WordAlloc.removeDeadStructural input11599 value5803 value1 value2 = (output11599, value5804, value1) := by
  rw [input11599_def, output11599_def]
  try (conv => lhs; cbv)
  try rfl

def value5805 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5069 (Flapjack.WordLangAddr.addr 5065 18446744073709551104#64)))).val
theorem input11600_def : input11600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5069 (Flapjack.WordLangAddr.addr 5065 18446744073709551104#64))) := by
  unfold input11600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5069 (Flapjack.WordLangAddr.addr 5065 18446744073709551104#64)))).val
theorem output11600_def : output11600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5069 (Flapjack.WordLangAddr.addr 5065 18446744073709551104#64))) := by
  unfold output11600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11600_skip : Flapjack.WordAlloc.isSkip output11600 = false := by
  rw [output11600_def]
  conv => lhs; cbv
  try rfl
theorem node11600_eq : Flapjack.WordAlloc.removeDeadStructural input11600 value5804 value1 value2 = (output11600, value5805, value1) := by
  rw [input11600_def, output11600_def]
  try (conv => lhs; cbv)
  try rfl

def value5806 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5065 5061)).val
theorem input11601_def : input11601 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5065 5061) := by
  unfold input11601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5065 5061)).val
theorem output11601_def : output11601 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5065 5061) := by
  unfold output11601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11601_skip : Flapjack.WordAlloc.isSkip output11601 = false := by
  rw [output11601_def]
  conv => lhs; cbv
  try rfl
theorem node11601_eq : Flapjack.WordAlloc.removeDeadStructural input11601 value5805 value1 value2 = (output11601, value5806, value1) := by
  rw [input11601_def, output11601_def]
  try (conv => lhs; cbv)
  try rfl

def value5807 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5061 5057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11602_def : input11602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5061 5057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5061 5057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11602_def : output11602 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5061 5057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11602_skip : Flapjack.WordAlloc.isSkip output11602 = false := by
  rw [output11602_def]
  conv => lhs; cbv
  try rfl
theorem node11602_eq : Flapjack.WordAlloc.removeDeadStructural input11602 value5806 value1 value2 = (output11602, value5807, value1) := by
  rw [input11602_def, output11602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5057 Flapjack.WordStore.heapLength)).val
theorem input11603_def : input11603 = (Flapjack.WordLangProgHOL.get 5057 Flapjack.WordStore.heapLength) := by
  unfold input11603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5057 Flapjack.WordStore.heapLength)).val
theorem output11603_def : output11603 = (Flapjack.WordLangProgHOL.get 5057 Flapjack.WordStore.heapLength) := by
  unfold output11603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11603_skip : Flapjack.WordAlloc.isSkip output11603 = false := by
  rw [output11603_def]
  conv => lhs; cbv
  try rfl
theorem node11603_eq : Flapjack.WordAlloc.removeDeadStructural input11603 value5807 value1 value2 = (output11603, value5, value1) := by
  rw [input11603_def, output11603_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11603 input11602)).val
theorem input11604_def : input11604 = (.seq input11603 input11602) := by
  unfold input11604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11603 output11602)).val
theorem output11604_def : output11604 = (.seq output11603 output11602) := by
  unfold output11604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11604_skip : Flapjack.WordAlloc.isSkip output11604 = false := by
  rw [output11604_def]
  conv => lhs; cbv
  try rfl
theorem node11604_eq : Flapjack.WordAlloc.removeDeadStructural input11604 value5806 value1 value2 = (output11604, value5, value1) := by
  rw [input11604_def, output11604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11602_eq]
  dsimp only
  rw [node11603_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11604 input11601)).val
theorem input11605_def : input11605 = (.seq input11604 input11601) := by
  unfold input11605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11604 output11601)).val
theorem output11605_def : output11605 = (.seq output11604 output11601) := by
  unfold output11605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11605_skip : Flapjack.WordAlloc.isSkip output11605 = false := by
  rw [output11605_def]
  conv => lhs; cbv
  try rfl
theorem node11605_eq : Flapjack.WordAlloc.removeDeadStructural input11605 value5805 value1 value2 = (output11605, value5, value1) := by
  rw [input11605_def, output11605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11601_eq]
  dsimp only
  rw [node11604_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11605 input11600)).val
theorem input11606_def : input11606 = (.seq input11605 input11600) := by
  unfold input11606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11605 output11600)).val
theorem output11606_def : output11606 = (.seq output11605 output11600) := by
  unfold output11606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11606_skip : Flapjack.WordAlloc.isSkip output11606 = false := by
  rw [output11606_def]
  conv => lhs; cbv
  try rfl
theorem node11606_eq : Flapjack.WordAlloc.removeDeadStructural input11606 value5804 value1 value2 = (output11606, value5, value1) := by
  rw [input11606_def, output11606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11600_eq]
  dsimp only
  rw [node11605_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11606 input11599)).val
theorem input11607_def : input11607 = (.seq input11606 input11599) := by
  unfold input11607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11606 output11599)).val
theorem output11607_def : output11607 = (.seq output11606 output11599) := by
  unfold output11607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11607_skip : Flapjack.WordAlloc.isSkip output11607 = false := by
  rw [output11607_def]
  conv => lhs; cbv
  try rfl
theorem node11607_eq : Flapjack.WordAlloc.removeDeadStructural input11607 value5803 value1 value2 = (output11607, value5, value1) := by
  rw [input11607_def, output11607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11599_eq]
  dsimp only
  rw [node11606_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5808 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5049 (Flapjack.WordLangAddr.addr 5053 0#64)))).val
theorem input11608_def : input11608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5049 (Flapjack.WordLangAddr.addr 5053 0#64))) := by
  unfold input11608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5049 (Flapjack.WordLangAddr.addr 5053 0#64)))).val
theorem output11608_def : output11608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5049 (Flapjack.WordLangAddr.addr 5053 0#64))) := by
  unfold output11608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11608_skip : Flapjack.WordAlloc.isSkip output11608 = false := by
  rw [output11608_def]
  conv => lhs; cbv
  try rfl
theorem node11608_eq : Flapjack.WordAlloc.removeDeadStructural input11608 value5 value1 value2 = (output11608, value5808, value1) := by
  rw [input11608_def, output11608_def]
  try (conv => lhs; cbv)
  try rfl

def value5809 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5053, 5041)])).val
theorem input11609_def : input11609 = (Flapjack.WordLangProgHOL.move 0 [(5053, 5041)]) := by
  unfold input11609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5053, 5041)])).val
theorem output11609_def : output11609 = (Flapjack.WordLangProgHOL.move 0 [(5053, 5041)]) := by
  unfold output11609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11609_skip : Flapjack.WordAlloc.isSkip output11609 = false := by
  rw [output11609_def]
  conv => lhs; cbv
  try rfl
theorem node11609_eq : Flapjack.WordAlloc.removeDeadStructural input11609 value5808 value1 value2 = (output11609, value5809, value1) := by
  rw [input11609_def, output11609_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11609 input11608)).val
theorem input11610_def : input11610 = (.seq input11609 input11608) := by
  unfold input11610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11609 output11608)).val
theorem output11610_def : output11610 = (.seq output11609 output11608) := by
  unfold output11610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11610_skip : Flapjack.WordAlloc.isSkip output11610 = false := by
  rw [output11610_def]
  conv => lhs; cbv
  try rfl
theorem node11610_eq : Flapjack.WordAlloc.removeDeadStructural input11610 value5 value1 value2 = (output11610, value5809, value1) := by
  rw [input11610_def, output11610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11608_eq]
  dsimp only
  rw [node11609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5810 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 0#64))).val
theorem input11611_def : input11611 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 0#64)) := by
  unfold input11611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 0#64))).val
theorem output11611_def : output11611 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 0#64)) := by
  unfold output11611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11611_skip : Flapjack.WordAlloc.isSkip output11611 = false := by
  rw [output11611_def]
  conv => lhs; cbv
  try rfl
theorem node11611_eq : Flapjack.WordAlloc.removeDeadStructural input11611 value5809 value1 value2 = (output11611, value5810, value1) := by
  rw [input11611_def, output11611_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5045 0#64))).val
theorem input11612_def : input11612 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5045 0#64)) := by
  unfold input11612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11612_def : output11612 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11612_skip : Flapjack.WordAlloc.isSkip output11612 = true := by
  rw [output11612_def]
  conv => lhs; cbv
  try rfl
theorem node11612_eq : Flapjack.WordAlloc.removeDeadStructural input11612 value5810 value1 value2 = (output11612, value5810, value1) := by
  rw [input11612_def, output11612_def]
  try (conv => lhs; cbv)
  try rfl

def value5811 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5041 5037 (Flapjack.WordRegImm.imm 1224#64))))).val
theorem input11613_def : input11613 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5041 5037 (Flapjack.WordRegImm.imm 1224#64)))) := by
  unfold input11613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5041 5037 (Flapjack.WordRegImm.imm 1224#64))))).val
theorem output11613_def : output11613 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5041 5037 (Flapjack.WordRegImm.imm 1224#64)))) := by
  unfold output11613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11613_skip : Flapjack.WordAlloc.isSkip output11613 = false := by
  rw [output11613_def]
  conv => lhs; cbv
  try rfl
theorem node11613_eq : Flapjack.WordAlloc.removeDeadStructural input11613 value5810 value1 value2 = (output11613, value5811, value1) := by
  rw [input11613_def, output11613_def]
  try (conv => lhs; cbv)
  try rfl

def value5812 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5037 (Flapjack.WordLangAddr.addr 5033 18446744073709551104#64)))).val
theorem input11614_def : input11614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5037 (Flapjack.WordLangAddr.addr 5033 18446744073709551104#64))) := by
  unfold input11614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5037 (Flapjack.WordLangAddr.addr 5033 18446744073709551104#64)))).val
theorem output11614_def : output11614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5037 (Flapjack.WordLangAddr.addr 5033 18446744073709551104#64))) := by
  unfold output11614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11614_skip : Flapjack.WordAlloc.isSkip output11614 = false := by
  rw [output11614_def]
  conv => lhs; cbv
  try rfl
theorem node11614_eq : Flapjack.WordAlloc.removeDeadStructural input11614 value5811 value1 value2 = (output11614, value5812, value1) := by
  rw [input11614_def, output11614_def]
  try (conv => lhs; cbv)
  try rfl

def value5813 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5033 5029)).val
theorem input11615_def : input11615 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5033 5029) := by
  unfold input11615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5033 5029)).val
theorem output11615_def : output11615 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5033 5029) := by
  unfold output11615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11615_skip : Flapjack.WordAlloc.isSkip output11615 = false := by
  rw [output11615_def]
  conv => lhs; cbv
  try rfl
theorem node11615_eq : Flapjack.WordAlloc.removeDeadStructural input11615 value5812 value1 value2 = (output11615, value5813, value1) := by
  rw [input11615_def, output11615_def]
  try (conv => lhs; cbv)
  try rfl

def value5814 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5029 5025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11616_def : input11616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5029 5025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5029 5025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11616_def : output11616 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5029 5025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11616_skip : Flapjack.WordAlloc.isSkip output11616 = false := by
  rw [output11616_def]
  conv => lhs; cbv
  try rfl
theorem node11616_eq : Flapjack.WordAlloc.removeDeadStructural input11616 value5813 value1 value2 = (output11616, value5814, value1) := by
  rw [input11616_def, output11616_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5025 Flapjack.WordStore.heapLength)).val
theorem input11617_def : input11617 = (Flapjack.WordLangProgHOL.get 5025 Flapjack.WordStore.heapLength) := by
  unfold input11617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5025 Flapjack.WordStore.heapLength)).val
theorem output11617_def : output11617 = (Flapjack.WordLangProgHOL.get 5025 Flapjack.WordStore.heapLength) := by
  unfold output11617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11617_skip : Flapjack.WordAlloc.isSkip output11617 = false := by
  rw [output11617_def]
  conv => lhs; cbv
  try rfl
theorem node11617_eq : Flapjack.WordAlloc.removeDeadStructural input11617 value5814 value1 value2 = (output11617, value5, value1) := by
  rw [input11617_def, output11617_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11617 input11616)).val
theorem input11618_def : input11618 = (.seq input11617 input11616) := by
  unfold input11618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11617 output11616)).val
theorem output11618_def : output11618 = (.seq output11617 output11616) := by
  unfold output11618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11618_skip : Flapjack.WordAlloc.isSkip output11618 = false := by
  rw [output11618_def]
  conv => lhs; cbv
  try rfl
theorem node11618_eq : Flapjack.WordAlloc.removeDeadStructural input11618 value5813 value1 value2 = (output11618, value5, value1) := by
  rw [input11618_def, output11618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11616_eq]
  dsimp only
  rw [node11617_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11618 input11615)).val
theorem input11619_def : input11619 = (.seq input11618 input11615) := by
  unfold input11619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11618 output11615)).val
theorem output11619_def : output11619 = (.seq output11618 output11615) := by
  unfold output11619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11619_skip : Flapjack.WordAlloc.isSkip output11619 = false := by
  rw [output11619_def]
  conv => lhs; cbv
  try rfl
theorem node11619_eq : Flapjack.WordAlloc.removeDeadStructural input11619 value5812 value1 value2 = (output11619, value5, value1) := by
  rw [input11619_def, output11619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11615_eq]
  dsimp only
  rw [node11618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11619 input11614)).val
theorem input11620_def : input11620 = (.seq input11619 input11614) := by
  unfold input11620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11619 output11614)).val
theorem output11620_def : output11620 = (.seq output11619 output11614) := by
  unfold output11620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11620_skip : Flapjack.WordAlloc.isSkip output11620 = false := by
  rw [output11620_def]
  conv => lhs; cbv
  try rfl
theorem node11620_eq : Flapjack.WordAlloc.removeDeadStructural input11620 value5811 value1 value2 = (output11620, value5, value1) := by
  rw [input11620_def, output11620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11614_eq]
  dsimp only
  rw [node11619_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11620 input11613)).val
theorem input11621_def : input11621 = (.seq input11620 input11613) := by
  unfold input11621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11620 output11613)).val
theorem output11621_def : output11621 = (.seq output11620 output11613) := by
  unfold output11621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11621_skip : Flapjack.WordAlloc.isSkip output11621 = false := by
  rw [output11621_def]
  conv => lhs; cbv
  try rfl
theorem node11621_eq : Flapjack.WordAlloc.removeDeadStructural input11621 value5810 value1 value2 = (output11621, value5, value1) := by
  rw [input11621_def, output11621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11613_eq]
  dsimp only
  rw [node11620_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5017 (Flapjack.WordLangAddr.addr 5021 0#64)))).val
theorem input11622_def : input11622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5017 (Flapjack.WordLangAddr.addr 5021 0#64))) := by
  unfold input11622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5017 (Flapjack.WordLangAddr.addr 5021 0#64)))).val
theorem output11622_def : output11622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5017 (Flapjack.WordLangAddr.addr 5021 0#64))) := by
  unfold output11622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11622_skip : Flapjack.WordAlloc.isSkip output11622 = false := by
  rw [output11622_def]
  conv => lhs; cbv
  try rfl
theorem node11622_eq : Flapjack.WordAlloc.removeDeadStructural input11622 value5 value1 value2 = (output11622, value5815, value1) := by
  rw [input11622_def, output11622_def]
  try (conv => lhs; cbv)
  try rfl

def value5816 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5021, 5009)])).val
theorem input11623_def : input11623 = (Flapjack.WordLangProgHOL.move 0 [(5021, 5009)]) := by
  unfold input11623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5021, 5009)])).val
theorem output11623_def : output11623 = (Flapjack.WordLangProgHOL.move 0 [(5021, 5009)]) := by
  unfold output11623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11623_skip : Flapjack.WordAlloc.isSkip output11623 = false := by
  rw [output11623_def]
  conv => lhs; cbv
  try rfl
theorem node11623_eq : Flapjack.WordAlloc.removeDeadStructural input11623 value5815 value1 value2 = (output11623, value5816, value1) := by
  rw [input11623_def, output11623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11623 input11622)).val
theorem input11624_def : input11624 = (.seq input11623 input11622) := by
  unfold input11624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11623 output11622)).val
theorem output11624_def : output11624 = (.seq output11623 output11622) := by
  unfold output11624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11624_skip : Flapjack.WordAlloc.isSkip output11624 = false := by
  rw [output11624_def]
  conv => lhs; cbv
  try rfl
theorem node11624_eq : Flapjack.WordAlloc.removeDeadStructural input11624 value5 value1 value2 = (output11624, value5816, value1) := by
  rw [input11624_def, output11624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11622_eq]
  dsimp only
  rw [node11623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5817 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5017 0#64))).val
theorem input11625_def : input11625 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5017 0#64)) := by
  unfold input11625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5017 0#64))).val
theorem output11625_def : output11625 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5017 0#64)) := by
  unfold output11625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11625_skip : Flapjack.WordAlloc.isSkip output11625 = false := by
  rw [output11625_def]
  conv => lhs; cbv
  try rfl
theorem node11625_eq : Flapjack.WordAlloc.removeDeadStructural input11625 value5816 value1 value2 = (output11625, value5817, value1) := by
  rw [input11625_def, output11625_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5013 0#64))).val
theorem input11626_def : input11626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5013 0#64)) := by
  unfold input11626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11626_def : output11626 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11626_skip : Flapjack.WordAlloc.isSkip output11626 = true := by
  rw [output11626_def]
  conv => lhs; cbv
  try rfl
theorem node11626_eq : Flapjack.WordAlloc.removeDeadStructural input11626 value5817 value1 value2 = (output11626, value5817, value1) := by
  rw [input11626_def, output11626_def]
  try (conv => lhs; cbv)
  try rfl

def value5818 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5009 5005 (Flapjack.WordRegImm.imm 1216#64))))).val
theorem input11627_def : input11627 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5009 5005 (Flapjack.WordRegImm.imm 1216#64)))) := by
  unfold input11627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5009 5005 (Flapjack.WordRegImm.imm 1216#64))))).val
theorem output11627_def : output11627 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5009 5005 (Flapjack.WordRegImm.imm 1216#64)))) := by
  unfold output11627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11627_skip : Flapjack.WordAlloc.isSkip output11627 = false := by
  rw [output11627_def]
  conv => lhs; cbv
  try rfl
theorem node11627_eq : Flapjack.WordAlloc.removeDeadStructural input11627 value5817 value1 value2 = (output11627, value5818, value1) := by
  rw [input11627_def, output11627_def]
  try (conv => lhs; cbv)
  try rfl

def value5819 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5005 (Flapjack.WordLangAddr.addr 5001 18446744073709551104#64)))).val
theorem input11628_def : input11628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5005 (Flapjack.WordLangAddr.addr 5001 18446744073709551104#64))) := by
  unfold input11628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5005 (Flapjack.WordLangAddr.addr 5001 18446744073709551104#64)))).val
theorem output11628_def : output11628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5005 (Flapjack.WordLangAddr.addr 5001 18446744073709551104#64))) := by
  unfold output11628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11628_skip : Flapjack.WordAlloc.isSkip output11628 = false := by
  rw [output11628_def]
  conv => lhs; cbv
  try rfl
theorem node11628_eq : Flapjack.WordAlloc.removeDeadStructural input11628 value5818 value1 value2 = (output11628, value5819, value1) := by
  rw [input11628_def, output11628_def]
  try (conv => lhs; cbv)
  try rfl

def value5820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5001 4997)).val
theorem input11629_def : input11629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5001 4997) := by
  unfold input11629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5001 4997)).val
theorem output11629_def : output11629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5001 4997) := by
  unfold output11629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11629_skip : Flapjack.WordAlloc.isSkip output11629 = false := by
  rw [output11629_def]
  conv => lhs; cbv
  try rfl
theorem node11629_eq : Flapjack.WordAlloc.removeDeadStructural input11629 value5819 value1 value2 = (output11629, value5820, value1) := by
  rw [input11629_def, output11629_def]
  try (conv => lhs; cbv)
  try rfl

def value5821 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4997 4993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11630_def : input11630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4997 4993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4997 4993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11630_def : output11630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4997 4993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11630_skip : Flapjack.WordAlloc.isSkip output11630 = false := by
  rw [output11630_def]
  conv => lhs; cbv
  try rfl
theorem node11630_eq : Flapjack.WordAlloc.removeDeadStructural input11630 value5820 value1 value2 = (output11630, value5821, value1) := by
  rw [input11630_def, output11630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4993 Flapjack.WordStore.heapLength)).val
theorem input11631_def : input11631 = (Flapjack.WordLangProgHOL.get 4993 Flapjack.WordStore.heapLength) := by
  unfold input11631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4993 Flapjack.WordStore.heapLength)).val
theorem output11631_def : output11631 = (Flapjack.WordLangProgHOL.get 4993 Flapjack.WordStore.heapLength) := by
  unfold output11631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11631_skip : Flapjack.WordAlloc.isSkip output11631 = false := by
  rw [output11631_def]
  conv => lhs; cbv
  try rfl
theorem node11631_eq : Flapjack.WordAlloc.removeDeadStructural input11631 value5821 value1 value2 = (output11631, value5, value1) := by
  rw [input11631_def, output11631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11631 input11630)).val
theorem input11632_def : input11632 = (.seq input11631 input11630) := by
  unfold input11632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11631 output11630)).val
theorem output11632_def : output11632 = (.seq output11631 output11630) := by
  unfold output11632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11632_skip : Flapjack.WordAlloc.isSkip output11632 = false := by
  rw [output11632_def]
  conv => lhs; cbv
  try rfl
theorem node11632_eq : Flapjack.WordAlloc.removeDeadStructural input11632 value5820 value1 value2 = (output11632, value5, value1) := by
  rw [input11632_def, output11632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11630_eq]
  dsimp only
  rw [node11631_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11632 input11629)).val
theorem input11633_def : input11633 = (.seq input11632 input11629) := by
  unfold input11633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11632 output11629)).val
theorem output11633_def : output11633 = (.seq output11632 output11629) := by
  unfold output11633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11633_skip : Flapjack.WordAlloc.isSkip output11633 = false := by
  rw [output11633_def]
  conv => lhs; cbv
  try rfl
theorem node11633_eq : Flapjack.WordAlloc.removeDeadStructural input11633 value5819 value1 value2 = (output11633, value5, value1) := by
  rw [input11633_def, output11633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11629_eq]
  dsimp only
  rw [node11632_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11633 input11628)).val
theorem input11634_def : input11634 = (.seq input11633 input11628) := by
  unfold input11634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11633 output11628)).val
theorem output11634_def : output11634 = (.seq output11633 output11628) := by
  unfold output11634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11634_skip : Flapjack.WordAlloc.isSkip output11634 = false := by
  rw [output11634_def]
  conv => lhs; cbv
  try rfl
theorem node11634_eq : Flapjack.WordAlloc.removeDeadStructural input11634 value5818 value1 value2 = (output11634, value5, value1) := by
  rw [input11634_def, output11634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11628_eq]
  dsimp only
  rw [node11633_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11634 input11627)).val
theorem input11635_def : input11635 = (.seq input11634 input11627) := by
  unfold input11635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11634 output11627)).val
theorem output11635_def : output11635 = (.seq output11634 output11627) := by
  unfold output11635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11635_skip : Flapjack.WordAlloc.isSkip output11635 = false := by
  rw [output11635_def]
  conv => lhs; cbv
  try rfl
theorem node11635_eq : Flapjack.WordAlloc.removeDeadStructural input11635 value5817 value1 value2 = (output11635, value5, value1) := by
  rw [input11635_def, output11635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11627_eq]
  dsimp only
  rw [node11634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4985 (Flapjack.WordLangAddr.addr 4989 0#64)))).val
theorem input11636_def : input11636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4985 (Flapjack.WordLangAddr.addr 4989 0#64))) := by
  unfold input11636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4985 (Flapjack.WordLangAddr.addr 4989 0#64)))).val
theorem output11636_def : output11636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4985 (Flapjack.WordLangAddr.addr 4989 0#64))) := by
  unfold output11636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11636_skip : Flapjack.WordAlloc.isSkip output11636 = false := by
  rw [output11636_def]
  conv => lhs; cbv
  try rfl
theorem node11636_eq : Flapjack.WordAlloc.removeDeadStructural input11636 value5 value1 value2 = (output11636, value5822, value1) := by
  rw [input11636_def, output11636_def]
  try (conv => lhs; cbv)
  try rfl

def value5823 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4989, 4977)])).val
theorem input11637_def : input11637 = (Flapjack.WordLangProgHOL.move 0 [(4989, 4977)]) := by
  unfold input11637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4989, 4977)])).val
theorem output11637_def : output11637 = (Flapjack.WordLangProgHOL.move 0 [(4989, 4977)]) := by
  unfold output11637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11637_skip : Flapjack.WordAlloc.isSkip output11637 = false := by
  rw [output11637_def]
  conv => lhs; cbv
  try rfl
theorem node11637_eq : Flapjack.WordAlloc.removeDeadStructural input11637 value5822 value1 value2 = (output11637, value5823, value1) := by
  rw [input11637_def, output11637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11637 input11636)).val
theorem input11638_def : input11638 = (.seq input11637 input11636) := by
  unfold input11638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11637 output11636)).val
theorem output11638_def : output11638 = (.seq output11637 output11636) := by
  unfold output11638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11638_skip : Flapjack.WordAlloc.isSkip output11638 = false := by
  rw [output11638_def]
  conv => lhs; cbv
  try rfl
theorem node11638_eq : Flapjack.WordAlloc.removeDeadStructural input11638 value5 value1 value2 = (output11638, value5823, value1) := by
  rw [input11638_def, output11638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11636_eq]
  dsimp only
  rw [node11637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5824 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4985 0#64))).val
theorem input11639_def : input11639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4985 0#64)) := by
  unfold input11639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4985 0#64))).val
theorem output11639_def : output11639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4985 0#64)) := by
  unfold output11639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11639_skip : Flapjack.WordAlloc.isSkip output11639 = false := by
  rw [output11639_def]
  conv => lhs; cbv
  try rfl
theorem node11639_eq : Flapjack.WordAlloc.removeDeadStructural input11639 value5823 value1 value2 = (output11639, value5824, value1) := by
  rw [input11639_def, output11639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4981 0#64))).val
theorem input11640_def : input11640 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4981 0#64)) := by
  unfold input11640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11640_def : output11640 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11640_skip : Flapjack.WordAlloc.isSkip output11640 = true := by
  rw [output11640_def]
  conv => lhs; cbv
  try rfl
theorem node11640_eq : Flapjack.WordAlloc.removeDeadStructural input11640 value5824 value1 value2 = (output11640, value5824, value1) := by
  rw [input11640_def, output11640_def]
  try (conv => lhs; cbv)
  try rfl

def value5825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4977 4973 (Flapjack.WordRegImm.imm 1208#64))))).val
theorem input11641_def : input11641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4977 4973 (Flapjack.WordRegImm.imm 1208#64)))) := by
  unfold input11641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4977 4973 (Flapjack.WordRegImm.imm 1208#64))))).val
theorem output11641_def : output11641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4977 4973 (Flapjack.WordRegImm.imm 1208#64)))) := by
  unfold output11641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11641_skip : Flapjack.WordAlloc.isSkip output11641 = false := by
  rw [output11641_def]
  conv => lhs; cbv
  try rfl
theorem node11641_eq : Flapjack.WordAlloc.removeDeadStructural input11641 value5824 value1 value2 = (output11641, value5825, value1) := by
  rw [input11641_def, output11641_def]
  try (conv => lhs; cbv)
  try rfl

def value5826 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4973 (Flapjack.WordLangAddr.addr 4969 18446744073709551104#64)))).val
theorem input11642_def : input11642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4973 (Flapjack.WordLangAddr.addr 4969 18446744073709551104#64))) := by
  unfold input11642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4973 (Flapjack.WordLangAddr.addr 4969 18446744073709551104#64)))).val
theorem output11642_def : output11642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4973 (Flapjack.WordLangAddr.addr 4969 18446744073709551104#64))) := by
  unfold output11642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11642_skip : Flapjack.WordAlloc.isSkip output11642 = false := by
  rw [output11642_def]
  conv => lhs; cbv
  try rfl
theorem node11642_eq : Flapjack.WordAlloc.removeDeadStructural input11642 value5825 value1 value2 = (output11642, value5826, value1) := by
  rw [input11642_def, output11642_def]
  try (conv => lhs; cbv)
  try rfl

def value5827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4969 4965)).val
theorem input11643_def : input11643 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4969 4965) := by
  unfold input11643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4969 4965)).val
theorem output11643_def : output11643 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4969 4965) := by
  unfold output11643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11643_skip : Flapjack.WordAlloc.isSkip output11643 = false := by
  rw [output11643_def]
  conv => lhs; cbv
  try rfl
theorem node11643_eq : Flapjack.WordAlloc.removeDeadStructural input11643 value5826 value1 value2 = (output11643, value5827, value1) := by
  rw [input11643_def, output11643_def]
  try (conv => lhs; cbv)
  try rfl

def value5828 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4965 4961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11644_def : input11644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4965 4961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4965 4961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11644_def : output11644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4965 4961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11644_skip : Flapjack.WordAlloc.isSkip output11644 = false := by
  rw [output11644_def]
  conv => lhs; cbv
  try rfl
theorem node11644_eq : Flapjack.WordAlloc.removeDeadStructural input11644 value5827 value1 value2 = (output11644, value5828, value1) := by
  rw [input11644_def, output11644_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4961 Flapjack.WordStore.heapLength)).val
theorem input11645_def : input11645 = (Flapjack.WordLangProgHOL.get 4961 Flapjack.WordStore.heapLength) := by
  unfold input11645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4961 Flapjack.WordStore.heapLength)).val
theorem output11645_def : output11645 = (Flapjack.WordLangProgHOL.get 4961 Flapjack.WordStore.heapLength) := by
  unfold output11645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11645_skip : Flapjack.WordAlloc.isSkip output11645 = false := by
  rw [output11645_def]
  conv => lhs; cbv
  try rfl
theorem node11645_eq : Flapjack.WordAlloc.removeDeadStructural input11645 value5828 value1 value2 = (output11645, value5, value1) := by
  rw [input11645_def, output11645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11645 input11644)).val
theorem input11646_def : input11646 = (.seq input11645 input11644) := by
  unfold input11646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11645 output11644)).val
theorem output11646_def : output11646 = (.seq output11645 output11644) := by
  unfold output11646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11646_skip : Flapjack.WordAlloc.isSkip output11646 = false := by
  rw [output11646_def]
  conv => lhs; cbv
  try rfl
theorem node11646_eq : Flapjack.WordAlloc.removeDeadStructural input11646 value5827 value1 value2 = (output11646, value5, value1) := by
  rw [input11646_def, output11646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11644_eq]
  dsimp only
  rw [node11645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11646 input11643)).val
theorem input11647_def : input11647 = (.seq input11646 input11643) := by
  unfold input11647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11646 output11643)).val
theorem output11647_def : output11647 = (.seq output11646 output11643) := by
  unfold output11647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11647_skip : Flapjack.WordAlloc.isSkip output11647 = false := by
  rw [output11647_def]
  conv => lhs; cbv
  try rfl
theorem node11647_eq : Flapjack.WordAlloc.removeDeadStructural input11647 value5826 value1 value2 = (output11647, value5, value1) := by
  rw [input11647_def, output11647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11643_eq]
  dsimp only
  rw [node11646_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11647 input11642)).val
theorem input11648_def : input11648 = (.seq input11647 input11642) := by
  unfold input11648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11647 output11642)).val
theorem output11648_def : output11648 = (.seq output11647 output11642) := by
  unfold output11648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11648_skip : Flapjack.WordAlloc.isSkip output11648 = false := by
  rw [output11648_def]
  conv => lhs; cbv
  try rfl
theorem node11648_eq : Flapjack.WordAlloc.removeDeadStructural input11648 value5825 value1 value2 = (output11648, value5, value1) := by
  rw [input11648_def, output11648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11642_eq]
  dsimp only
  rw [node11647_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11648 input11641)).val
theorem input11649_def : input11649 = (.seq input11648 input11641) := by
  unfold input11649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11648 output11641)).val
theorem output11649_def : output11649 = (.seq output11648 output11641) := by
  unfold output11649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11649_skip : Flapjack.WordAlloc.isSkip output11649 = false := by
  rw [output11649_def]
  conv => lhs; cbv
  try rfl
theorem node11649_eq : Flapjack.WordAlloc.removeDeadStructural input11649 value5824 value1 value2 = (output11649, value5, value1) := by
  rw [input11649_def, output11649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11641_eq]
  dsimp only
  rw [node11648_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4953 (Flapjack.WordLangAddr.addr 4957 0#64)))).val
theorem input11650_def : input11650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4953 (Flapjack.WordLangAddr.addr 4957 0#64))) := by
  unfold input11650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4953 (Flapjack.WordLangAddr.addr 4957 0#64)))).val
theorem output11650_def : output11650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4953 (Flapjack.WordLangAddr.addr 4957 0#64))) := by
  unfold output11650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11650_skip : Flapjack.WordAlloc.isSkip output11650 = false := by
  rw [output11650_def]
  conv => lhs; cbv
  try rfl
theorem node11650_eq : Flapjack.WordAlloc.removeDeadStructural input11650 value5 value1 value2 = (output11650, value5829, value1) := by
  rw [input11650_def, output11650_def]
  try (conv => lhs; cbv)
  try rfl

def value5830 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4957, 4945)])).val
theorem input11651_def : input11651 = (Flapjack.WordLangProgHOL.move 0 [(4957, 4945)]) := by
  unfold input11651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4957, 4945)])).val
theorem output11651_def : output11651 = (Flapjack.WordLangProgHOL.move 0 [(4957, 4945)]) := by
  unfold output11651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11651_skip : Flapjack.WordAlloc.isSkip output11651 = false := by
  rw [output11651_def]
  conv => lhs; cbv
  try rfl
theorem node11651_eq : Flapjack.WordAlloc.removeDeadStructural input11651 value5829 value1 value2 = (output11651, value5830, value1) := by
  rw [input11651_def, output11651_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11651 input11650)).val
theorem input11652_def : input11652 = (.seq input11651 input11650) := by
  unfold input11652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11651 output11650)).val
theorem output11652_def : output11652 = (.seq output11651 output11650) := by
  unfold output11652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11652_skip : Flapjack.WordAlloc.isSkip output11652 = false := by
  rw [output11652_def]
  conv => lhs; cbv
  try rfl
theorem node11652_eq : Flapjack.WordAlloc.removeDeadStructural input11652 value5 value1 value2 = (output11652, value5830, value1) := by
  rw [input11652_def, output11652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11650_eq]
  dsimp only
  rw [node11651_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5831 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4953 0#64))).val
theorem input11653_def : input11653 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4953 0#64)) := by
  unfold input11653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4953 0#64))).val
theorem output11653_def : output11653 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4953 0#64)) := by
  unfold output11653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11653_skip : Flapjack.WordAlloc.isSkip output11653 = false := by
  rw [output11653_def]
  conv => lhs; cbv
  try rfl
theorem node11653_eq : Flapjack.WordAlloc.removeDeadStructural input11653 value5830 value1 value2 = (output11653, value5831, value1) := by
  rw [input11653_def, output11653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4949 0#64))).val
theorem input11654_def : input11654 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4949 0#64)) := by
  unfold input11654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11654_def : output11654 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11654_skip : Flapjack.WordAlloc.isSkip output11654 = true := by
  rw [output11654_def]
  conv => lhs; cbv
  try rfl
theorem node11654_eq : Flapjack.WordAlloc.removeDeadStructural input11654 value5831 value1 value2 = (output11654, value5831, value1) := by
  rw [input11654_def, output11654_def]
  try (conv => lhs; cbv)
  try rfl

def value5832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4945 4941 (Flapjack.WordRegImm.imm 1200#64))))).val
theorem input11655_def : input11655 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4945 4941 (Flapjack.WordRegImm.imm 1200#64)))) := by
  unfold input11655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4945 4941 (Flapjack.WordRegImm.imm 1200#64))))).val
theorem output11655_def : output11655 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4945 4941 (Flapjack.WordRegImm.imm 1200#64)))) := by
  unfold output11655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11655_skip : Flapjack.WordAlloc.isSkip output11655 = false := by
  rw [output11655_def]
  conv => lhs; cbv
  try rfl
theorem node11655_eq : Flapjack.WordAlloc.removeDeadStructural input11655 value5831 value1 value2 = (output11655, value5832, value1) := by
  rw [input11655_def, output11655_def]
  try (conv => lhs; cbv)
  try rfl

def value5833 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551104#64)))).val
theorem input11656_def : input11656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551104#64))) := by
  unfold input11656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551104#64)))).val
theorem output11656_def : output11656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551104#64))) := by
  unfold output11656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11656_skip : Flapjack.WordAlloc.isSkip output11656 = false := by
  rw [output11656_def]
  conv => lhs; cbv
  try rfl
theorem node11656_eq : Flapjack.WordAlloc.removeDeadStructural input11656 value5832 value1 value2 = (output11656, value5833, value1) := by
  rw [input11656_def, output11656_def]
  try (conv => lhs; cbv)
  try rfl

def value5834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933)).val
theorem input11657_def : input11657 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933) := by
  unfold input11657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933)).val
theorem output11657_def : output11657 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933) := by
  unfold output11657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11657_skip : Flapjack.WordAlloc.isSkip output11657 = false := by
  rw [output11657_def]
  conv => lhs; cbv
  try rfl
theorem node11657_eq : Flapjack.WordAlloc.removeDeadStructural input11657 value5833 value1 value2 = (output11657, value5834, value1) := by
  rw [input11657_def, output11657_def]
  try (conv => lhs; cbv)
  try rfl

def value5835 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11658_def : input11658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11658_def : output11658 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11658_skip : Flapjack.WordAlloc.isSkip output11658 = false := by
  rw [output11658_def]
  conv => lhs; cbv
  try rfl
theorem node11658_eq : Flapjack.WordAlloc.removeDeadStructural input11658 value5834 value1 value2 = (output11658, value5835, value1) := by
  rw [input11658_def, output11658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength)).val
theorem input11659_def : input11659 = (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength) := by
  unfold input11659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength)).val
theorem output11659_def : output11659 = (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength) := by
  unfold output11659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11659_skip : Flapjack.WordAlloc.isSkip output11659 = false := by
  rw [output11659_def]
  conv => lhs; cbv
  try rfl
theorem node11659_eq : Flapjack.WordAlloc.removeDeadStructural input11659 value5835 value1 value2 = (output11659, value5, value1) := by
  rw [input11659_def, output11659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11659 input11658)).val
theorem input11660_def : input11660 = (.seq input11659 input11658) := by
  unfold input11660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11659 output11658)).val
theorem output11660_def : output11660 = (.seq output11659 output11658) := by
  unfold output11660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11660_skip : Flapjack.WordAlloc.isSkip output11660 = false := by
  rw [output11660_def]
  conv => lhs; cbv
  try rfl
theorem node11660_eq : Flapjack.WordAlloc.removeDeadStructural input11660 value5834 value1 value2 = (output11660, value5, value1) := by
  rw [input11660_def, output11660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11658_eq]
  dsimp only
  rw [node11659_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11660 input11657)).val
theorem input11661_def : input11661 = (.seq input11660 input11657) := by
  unfold input11661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11660 output11657)).val
theorem output11661_def : output11661 = (.seq output11660 output11657) := by
  unfold output11661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11661_skip : Flapjack.WordAlloc.isSkip output11661 = false := by
  rw [output11661_def]
  conv => lhs; cbv
  try rfl
theorem node11661_eq : Flapjack.WordAlloc.removeDeadStructural input11661 value5833 value1 value2 = (output11661, value5, value1) := by
  rw [input11661_def, output11661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11657_eq]
  dsimp only
  rw [node11660_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11661 input11656)).val
theorem input11662_def : input11662 = (.seq input11661 input11656) := by
  unfold input11662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11661 output11656)).val
theorem output11662_def : output11662 = (.seq output11661 output11656) := by
  unfold output11662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11662_skip : Flapjack.WordAlloc.isSkip output11662 = false := by
  rw [output11662_def]
  conv => lhs; cbv
  try rfl
theorem node11662_eq : Flapjack.WordAlloc.removeDeadStructural input11662 value5832 value1 value2 = (output11662, value5, value1) := by
  rw [input11662_def, output11662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11656_eq]
  dsimp only
  rw [node11661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11662 input11655)).val
theorem input11663_def : input11663 = (.seq input11662 input11655) := by
  unfold input11663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11662 output11655)).val
theorem output11663_def : output11663 = (.seq output11662 output11655) := by
  unfold output11663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11663_skip : Flapjack.WordAlloc.isSkip output11663 = false := by
  rw [output11663_def]
  conv => lhs; cbv
  try rfl
theorem node11663_eq : Flapjack.WordAlloc.removeDeadStructural input11663 value5831 value1 value2 = (output11663, value5, value1) := by
  rw [input11663_def, output11663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11655_eq]
  dsimp only
  rw [node11662_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5836 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64)))).val
theorem input11664_def : input11664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64))) := by
  unfold input11664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64)))).val
theorem output11664_def : output11664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64))) := by
  unfold output11664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11664_skip : Flapjack.WordAlloc.isSkip output11664 = false := by
  rw [output11664_def]
  conv => lhs; cbv
  try rfl
theorem node11664_eq : Flapjack.WordAlloc.removeDeadStructural input11664 value5 value1 value2 = (output11664, value5836, value1) := by
  rw [input11664_def, output11664_def]
  try (conv => lhs; cbv)
  try rfl

def value5837 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)])).val
theorem input11665_def : input11665 = (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)]) := by
  unfold input11665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)])).val
theorem output11665_def : output11665 = (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)]) := by
  unfold output11665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11665_skip : Flapjack.WordAlloc.isSkip output11665 = false := by
  rw [output11665_def]
  conv => lhs; cbv
  try rfl
theorem node11665_eq : Flapjack.WordAlloc.removeDeadStructural input11665 value5836 value1 value2 = (output11665, value5837, value1) := by
  rw [input11665_def, output11665_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11665 input11664)).val
theorem input11666_def : input11666 = (.seq input11665 input11664) := by
  unfold input11666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11665 output11664)).val
theorem output11666_def : output11666 = (.seq output11665 output11664) := by
  unfold output11666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11666_skip : Flapjack.WordAlloc.isSkip output11666 = false := by
  rw [output11666_def]
  conv => lhs; cbv
  try rfl
theorem node11666_eq : Flapjack.WordAlloc.removeDeadStructural input11666 value5 value1 value2 = (output11666, value5837, value1) := by
  rw [input11666_def, output11666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11664_eq]
  dsimp only
  rw [node11665_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5838 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 1873798617647539865#64))).val
theorem input11667_def : input11667 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 1873798617647539865#64)) := by
  unfold input11667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 1873798617647539865#64))).val
theorem output11667_def : output11667 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 1873798617647539865#64)) := by
  unfold output11667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11667_skip : Flapjack.WordAlloc.isSkip output11667 = false := by
  rw [output11667_def]
  conv => lhs; cbv
  try rfl
theorem node11667_eq : Flapjack.WordAlloc.removeDeadStructural input11667 value5837 value1 value2 = (output11667, value5838, value1) := by
  rw [input11667_def, output11667_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4917 1873798617647539865#64))).val
theorem input11668_def : input11668 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4917 1873798617647539865#64)) := by
  unfold input11668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11668_def : output11668 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11668_skip : Flapjack.WordAlloc.isSkip output11668 = true := by
  rw [output11668_def]
  conv => lhs; cbv
  try rfl
theorem node11668_eq : Flapjack.WordAlloc.removeDeadStructural input11668 value5838 value1 value2 = (output11668, value5838, value1) := by
  rw [input11668_def, output11668_def]
  try (conv => lhs; cbv)
  try rfl

def value5839 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1192#64))))).val
theorem input11669_def : input11669 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1192#64)))) := by
  unfold input11669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1192#64))))).val
theorem output11669_def : output11669 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1192#64)))) := by
  unfold output11669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11669_skip : Flapjack.WordAlloc.isSkip output11669 = false := by
  rw [output11669_def]
  conv => lhs; cbv
  try rfl
theorem node11669_eq : Flapjack.WordAlloc.removeDeadStructural input11669 value5838 value1 value2 = (output11669, value5839, value1) := by
  rw [input11669_def, output11669_def]
  try (conv => lhs; cbv)
  try rfl

def value5840 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551104#64)))).val
theorem input11670_def : input11670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551104#64))) := by
  unfold input11670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551104#64)))).val
theorem output11670_def : output11670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551104#64))) := by
  unfold output11670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11670_skip : Flapjack.WordAlloc.isSkip output11670 = false := by
  rw [output11670_def]
  conv => lhs; cbv
  try rfl
theorem node11670_eq : Flapjack.WordAlloc.removeDeadStructural input11670 value5839 value1 value2 = (output11670, value5840, value1) := by
  rw [input11670_def, output11670_def]
  try (conv => lhs; cbv)
  try rfl

def value5841 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901)).val
theorem input11671_def : input11671 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901) := by
  unfold input11671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901)).val
theorem output11671_def : output11671 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901) := by
  unfold output11671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11671_skip : Flapjack.WordAlloc.isSkip output11671 = false := by
  rw [output11671_def]
  conv => lhs; cbv
  try rfl
theorem node11671_eq : Flapjack.WordAlloc.removeDeadStructural input11671 value5840 value1 value2 = (output11671, value5841, value1) := by
  rw [input11671_def, output11671_def]
  try (conv => lhs; cbv)
  try rfl

def value5842 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11672_def : input11672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11672_def : output11672 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11672_skip : Flapjack.WordAlloc.isSkip output11672 = false := by
  rw [output11672_def]
  conv => lhs; cbv
  try rfl
theorem node11672_eq : Flapjack.WordAlloc.removeDeadStructural input11672 value5841 value1 value2 = (output11672, value5842, value1) := by
  rw [input11672_def, output11672_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength)).val
theorem input11673_def : input11673 = (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength) := by
  unfold input11673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength)).val
theorem output11673_def : output11673 = (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength) := by
  unfold output11673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11673_skip : Flapjack.WordAlloc.isSkip output11673 = false := by
  rw [output11673_def]
  conv => lhs; cbv
  try rfl
theorem node11673_eq : Flapjack.WordAlloc.removeDeadStructural input11673 value5842 value1 value2 = (output11673, value5, value1) := by
  rw [input11673_def, output11673_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11673 input11672)).val
theorem input11674_def : input11674 = (.seq input11673 input11672) := by
  unfold input11674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11673 output11672)).val
theorem output11674_def : output11674 = (.seq output11673 output11672) := by
  unfold output11674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11674_skip : Flapjack.WordAlloc.isSkip output11674 = false := by
  rw [output11674_def]
  conv => lhs; cbv
  try rfl
theorem node11674_eq : Flapjack.WordAlloc.removeDeadStructural input11674 value5841 value1 value2 = (output11674, value5, value1) := by
  rw [input11674_def, output11674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11672_eq]
  dsimp only
  rw [node11673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11674 input11671)).val
theorem input11675_def : input11675 = (.seq input11674 input11671) := by
  unfold input11675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11674 output11671)).val
theorem output11675_def : output11675 = (.seq output11674 output11671) := by
  unfold output11675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11675_skip : Flapjack.WordAlloc.isSkip output11675 = false := by
  rw [output11675_def]
  conv => lhs; cbv
  try rfl
theorem node11675_eq : Flapjack.WordAlloc.removeDeadStructural input11675 value5840 value1 value2 = (output11675, value5, value1) := by
  rw [input11675_def, output11675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11671_eq]
  dsimp only
  rw [node11674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11675 input11670)).val
theorem input11676_def : input11676 = (.seq input11675 input11670) := by
  unfold input11676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11675 output11670)).val
theorem output11676_def : output11676 = (.seq output11675 output11670) := by
  unfold output11676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11676_skip : Flapjack.WordAlloc.isSkip output11676 = false := by
  rw [output11676_def]
  conv => lhs; cbv
  try rfl
theorem node11676_eq : Flapjack.WordAlloc.removeDeadStructural input11676 value5839 value1 value2 = (output11676, value5, value1) := by
  rw [input11676_def, output11676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11670_eq]
  dsimp only
  rw [node11675_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11676 input11669)).val
theorem input11677_def : input11677 = (.seq input11676 input11669) := by
  unfold input11677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11676 output11669)).val
theorem output11677_def : output11677 = (.seq output11676 output11669) := by
  unfold output11677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11677_skip : Flapjack.WordAlloc.isSkip output11677 = false := by
  rw [output11677_def]
  conv => lhs; cbv
  try rfl
theorem node11677_eq : Flapjack.WordAlloc.removeDeadStructural input11677 value5838 value1 value2 = (output11677, value5, value1) := by
  rw [input11677_def, output11677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11669_eq]
  dsimp only
  rw [node11676_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5843 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64)))).val
theorem input11678_def : input11678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64))) := by
  unfold input11678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64)))).val
theorem output11678_def : output11678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64))) := by
  unfold output11678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11678_skip : Flapjack.WordAlloc.isSkip output11678 = false := by
  rw [output11678_def]
  conv => lhs; cbv
  try rfl
theorem node11678_eq : Flapjack.WordAlloc.removeDeadStructural input11678 value5 value1 value2 = (output11678, value5843, value1) := by
  rw [input11678_def, output11678_def]
  try (conv => lhs; cbv)
  try rfl

def value5844 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)])).val
theorem input11679_def : input11679 = (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)]) := by
  unfold input11679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)])).val
theorem output11679_def : output11679 = (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)]) := by
  unfold output11679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11679_skip : Flapjack.WordAlloc.isSkip output11679 = false := by
  rw [output11679_def]
  conv => lhs; cbv
  try rfl
theorem node11679_eq : Flapjack.WordAlloc.removeDeadStructural input11679 value5843 value1 value2 = (output11679, value5844, value1) := by
  rw [input11679_def, output11679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11679 input11678)).val
theorem input11680_def : input11680 = (.seq input11679 input11678) := by
  unfold input11680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11679 output11678)).val
theorem output11680_def : output11680 = (.seq output11679 output11678) := by
  unfold output11680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11680_skip : Flapjack.WordAlloc.isSkip output11680 = false := by
  rw [output11680_def]
  conv => lhs; cbv
  try rfl
theorem node11680_eq : Flapjack.WordAlloc.removeDeadStructural input11680 value5 value1 value2 = (output11680, value5844, value1) := by
  rw [input11680_def, output11680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11678_eq]
  dsimp only
  rw [node11679_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5845 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 17006226088849104517#64))).val
theorem input11681_def : input11681 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 17006226088849104517#64)) := by
  unfold input11681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 17006226088849104517#64))).val
theorem output11681_def : output11681 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 17006226088849104517#64)) := by
  unfold output11681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11681_skip : Flapjack.WordAlloc.isSkip output11681 = false := by
  rw [output11681_def]
  conv => lhs; cbv
  try rfl
theorem node11681_eq : Flapjack.WordAlloc.removeDeadStructural input11681 value5844 value1 value2 = (output11681, value5845, value1) := by
  rw [input11681_def, output11681_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4885 17006226088849104517#64))).val
theorem input11682_def : input11682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4885 17006226088849104517#64)) := by
  unfold input11682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11682_def : output11682 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11682_skip : Flapjack.WordAlloc.isSkip output11682 = true := by
  rw [output11682_def]
  conv => lhs; cbv
  try rfl
theorem node11682_eq : Flapjack.WordAlloc.removeDeadStructural input11682 value5845 value1 value2 = (output11682, value5845, value1) := by
  rw [input11682_def, output11682_def]
  try (conv => lhs; cbv)
  try rfl

def value5846 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1184#64))))).val
theorem input11683_def : input11683 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1184#64)))) := by
  unfold input11683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1184#64))))).val
theorem output11683_def : output11683 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1184#64)))) := by
  unfold output11683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11683_skip : Flapjack.WordAlloc.isSkip output11683 = false := by
  rw [output11683_def]
  conv => lhs; cbv
  try rfl
theorem node11683_eq : Flapjack.WordAlloc.removeDeadStructural input11683 value5845 value1 value2 = (output11683, value5846, value1) := by
  rw [input11683_def, output11683_def]
  try (conv => lhs; cbv)
  try rfl

def value5847 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551104#64)))).val
theorem input11684_def : input11684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551104#64))) := by
  unfold input11684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551104#64)))).val
theorem output11684_def : output11684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551104#64))) := by
  unfold output11684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11684_skip : Flapjack.WordAlloc.isSkip output11684 = false := by
  rw [output11684_def]
  conv => lhs; cbv
  try rfl
theorem node11684_eq : Flapjack.WordAlloc.removeDeadStructural input11684 value5846 value1 value2 = (output11684, value5847, value1) := by
  rw [input11684_def, output11684_def]
  try (conv => lhs; cbv)
  try rfl

def value5848 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869)).val
theorem input11685_def : input11685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869) := by
  unfold input11685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869)).val
theorem output11685_def : output11685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869) := by
  unfold output11685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11685_skip : Flapjack.WordAlloc.isSkip output11685 = false := by
  rw [output11685_def]
  conv => lhs; cbv
  try rfl
theorem node11685_eq : Flapjack.WordAlloc.removeDeadStructural input11685 value5847 value1 value2 = (output11685, value5848, value1) := by
  rw [input11685_def, output11685_def]
  try (conv => lhs; cbv)
  try rfl

def value5849 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11686_def : input11686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11686_def : output11686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11686_skip : Flapjack.WordAlloc.isSkip output11686 = false := by
  rw [output11686_def]
  conv => lhs; cbv
  try rfl
theorem node11686_eq : Flapjack.WordAlloc.removeDeadStructural input11686 value5848 value1 value2 = (output11686, value5849, value1) := by
  rw [input11686_def, output11686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength)).val
theorem input11687_def : input11687 = (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength) := by
  unfold input11687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength)).val
theorem output11687_def : output11687 = (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength) := by
  unfold output11687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11687_skip : Flapjack.WordAlloc.isSkip output11687 = false := by
  rw [output11687_def]
  conv => lhs; cbv
  try rfl
theorem node11687_eq : Flapjack.WordAlloc.removeDeadStructural input11687 value5849 value1 value2 = (output11687, value5, value1) := by
  rw [input11687_def, output11687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11687 input11686)).val
theorem input11688_def : input11688 = (.seq input11687 input11686) := by
  unfold input11688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11687 output11686)).val
theorem output11688_def : output11688 = (.seq output11687 output11686) := by
  unfold output11688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11688_skip : Flapjack.WordAlloc.isSkip output11688 = false := by
  rw [output11688_def]
  conv => lhs; cbv
  try rfl
theorem node11688_eq : Flapjack.WordAlloc.removeDeadStructural input11688 value5848 value1 value2 = (output11688, value5, value1) := by
  rw [input11688_def, output11688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11686_eq]
  dsimp only
  rw [node11687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11688 input11685)).val
theorem input11689_def : input11689 = (.seq input11688 input11685) := by
  unfold input11689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11688 output11685)).val
theorem output11689_def : output11689 = (.seq output11688 output11685) := by
  unfold output11689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11689_skip : Flapjack.WordAlloc.isSkip output11689 = false := by
  rw [output11689_def]
  conv => lhs; cbv
  try rfl
theorem node11689_eq : Flapjack.WordAlloc.removeDeadStructural input11689 value5847 value1 value2 = (output11689, value5, value1) := by
  rw [input11689_def, output11689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11685_eq]
  dsimp only
  rw [node11688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11689 input11684)).val
theorem input11690_def : input11690 = (.seq input11689 input11684) := by
  unfold input11690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11689 output11684)).val
theorem output11690_def : output11690 = (.seq output11689 output11684) := by
  unfold output11690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11690_skip : Flapjack.WordAlloc.isSkip output11690 = false := by
  rw [output11690_def]
  conv => lhs; cbv
  try rfl
theorem node11690_eq : Flapjack.WordAlloc.removeDeadStructural input11690 value5846 value1 value2 = (output11690, value5, value1) := by
  rw [input11690_def, output11690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11684_eq]
  dsimp only
  rw [node11689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11690 input11683)).val
theorem input11691_def : input11691 = (.seq input11690 input11683) := by
  unfold input11691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11690 output11683)).val
theorem output11691_def : output11691 = (.seq output11690 output11683) := by
  unfold output11691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11691_skip : Flapjack.WordAlloc.isSkip output11691 = false := by
  rw [output11691_def]
  conv => lhs; cbv
  try rfl
theorem node11691_eq : Flapjack.WordAlloc.removeDeadStructural input11691 value5845 value1 value2 = (output11691, value5, value1) := by
  rw [input11691_def, output11691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11683_eq]
  dsimp only
  rw [node11690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5850 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64)))).val
theorem input11692_def : input11692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64))) := by
  unfold input11692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64)))).val
theorem output11692_def : output11692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64))) := by
  unfold output11692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11692_skip : Flapjack.WordAlloc.isSkip output11692 = false := by
  rw [output11692_def]
  conv => lhs; cbv
  try rfl
theorem node11692_eq : Flapjack.WordAlloc.removeDeadStructural input11692 value5 value1 value2 = (output11692, value5850, value1) := by
  rw [input11692_def, output11692_def]
  try (conv => lhs; cbv)
  try rfl

def value5851 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)])).val
theorem input11693_def : input11693 = (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)]) := by
  unfold input11693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)])).val
theorem output11693_def : output11693 = (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)]) := by
  unfold output11693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11693_skip : Flapjack.WordAlloc.isSkip output11693 = false := by
  rw [output11693_def]
  conv => lhs; cbv
  try rfl
theorem node11693_eq : Flapjack.WordAlloc.removeDeadStructural input11693 value5850 value1 value2 = (output11693, value5851, value1) := by
  rw [input11693_def, output11693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11693 input11692)).val
theorem input11694_def : input11694 = (.seq input11693 input11692) := by
  unfold input11694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11693 output11692)).val
theorem output11694_def : output11694 = (.seq output11693 output11692) := by
  unfold output11694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11694_skip : Flapjack.WordAlloc.isSkip output11694 = false := by
  rw [output11694_def]
  conv => lhs; cbv
  try rfl
theorem node11694_eq : Flapjack.WordAlloc.removeDeadStructural input11694 value5 value1 value2 = (output11694, value5851, value1) := by
  rw [input11694_def, output11694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11692_eq]
  dsimp only
  rw [node11693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5852 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 12253596935368579796#64))).val
theorem input11695_def : input11695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 12253596935368579796#64)) := by
  unfold input11695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 12253596935368579796#64))).val
theorem output11695_def : output11695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 12253596935368579796#64)) := by
  unfold output11695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11695_skip : Flapjack.WordAlloc.isSkip output11695 = false := by
  rw [output11695_def]
  conv => lhs; cbv
  try rfl
theorem node11695_eq : Flapjack.WordAlloc.removeDeadStructural input11695 value5851 value1 value2 = (output11695, value5852, value1) := by
  rw [input11695_def, output11695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4853 12253596935368579796#64))).val
theorem input11696_def : input11696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4853 12253596935368579796#64)) := by
  unfold input11696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11696_def : output11696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11696_skip : Flapjack.WordAlloc.isSkip output11696 = true := by
  rw [output11696_def]
  conv => lhs; cbv
  try rfl
theorem node11696_eq : Flapjack.WordAlloc.removeDeadStructural input11696 value5852 value1 value2 = (output11696, value5852, value1) := by
  rw [input11696_def, output11696_def]
  try (conv => lhs; cbv)
  try rfl

def value5853 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1176#64))))).val
theorem input11697_def : input11697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1176#64)))) := by
  unfold input11697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1176#64))))).val
theorem output11697_def : output11697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1176#64)))) := by
  unfold output11697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11697_skip : Flapjack.WordAlloc.isSkip output11697 = false := by
  rw [output11697_def]
  conv => lhs; cbv
  try rfl
theorem node11697_eq : Flapjack.WordAlloc.removeDeadStructural input11697 value5852 value1 value2 = (output11697, value5853, value1) := by
  rw [input11697_def, output11697_def]
  try (conv => lhs; cbv)
  try rfl

def value5854 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551104#64)))).val
theorem input11698_def : input11698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551104#64))) := by
  unfold input11698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551104#64)))).val
theorem output11698_def : output11698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551104#64))) := by
  unfold output11698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11698_skip : Flapjack.WordAlloc.isSkip output11698 = false := by
  rw [output11698_def]
  conv => lhs; cbv
  try rfl
theorem node11698_eq : Flapjack.WordAlloc.removeDeadStructural input11698 value5853 value1 value2 = (output11698, value5854, value1) := by
  rw [input11698_def, output11698_def]
  try (conv => lhs; cbv)
  try rfl

def value5855 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837)).val
theorem input11699_def : input11699 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837) := by
  unfold input11699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837)).val
theorem output11699_def : output11699 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837) := by
  unfold output11699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11699_skip : Flapjack.WordAlloc.isSkip output11699 = false := by
  rw [output11699_def]
  conv => lhs; cbv
  try rfl
theorem node11699_eq : Flapjack.WordAlloc.removeDeadStructural input11699 value5854 value1 value2 = (output11699, value5855, value1) := by
  rw [input11699_def, output11699_def]
  try (conv => lhs; cbv)
  try rfl

def value5856 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11700_def : input11700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11700_def : output11700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11700_skip : Flapjack.WordAlloc.isSkip output11700 = false := by
  rw [output11700_def]
  conv => lhs; cbv
  try rfl
theorem node11700_eq : Flapjack.WordAlloc.removeDeadStructural input11700 value5855 value1 value2 = (output11700, value5856, value1) := by
  rw [input11700_def, output11700_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength)).val
theorem input11701_def : input11701 = (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength) := by
  unfold input11701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength)).val
theorem output11701_def : output11701 = (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength) := by
  unfold output11701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11701_skip : Flapjack.WordAlloc.isSkip output11701 = false := by
  rw [output11701_def]
  conv => lhs; cbv
  try rfl
theorem node11701_eq : Flapjack.WordAlloc.removeDeadStructural input11701 value5856 value1 value2 = (output11701, value5, value1) := by
  rw [input11701_def, output11701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11701 input11700)).val
theorem input11702_def : input11702 = (.seq input11701 input11700) := by
  unfold input11702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11701 output11700)).val
theorem output11702_def : output11702 = (.seq output11701 output11700) := by
  unfold output11702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11702_skip : Flapjack.WordAlloc.isSkip output11702 = false := by
  rw [output11702_def]
  conv => lhs; cbv
  try rfl
theorem node11702_eq : Flapjack.WordAlloc.removeDeadStructural input11702 value5855 value1 value2 = (output11702, value5, value1) := by
  rw [input11702_def, output11702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11700_eq]
  dsimp only
  rw [node11701_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11702 input11699)).val
theorem input11703_def : input11703 = (.seq input11702 input11699) := by
  unfold input11703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11702 output11699)).val
theorem output11703_def : output11703 = (.seq output11702 output11699) := by
  unfold output11703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11703_skip : Flapjack.WordAlloc.isSkip output11703 = false := by
  rw [output11703_def]
  conv => lhs; cbv
  try rfl
theorem node11703_eq : Flapjack.WordAlloc.removeDeadStructural input11703 value5854 value1 value2 = (output11703, value5, value1) := by
  rw [input11703_def, output11703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11699_eq]
  dsimp only
  rw [node11702_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11703 input11698)).val
theorem input11704_def : input11704 = (.seq input11703 input11698) := by
  unfold input11704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11703 output11698)).val
theorem output11704_def : output11704 = (.seq output11703 output11698) := by
  unfold output11704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11704_skip : Flapjack.WordAlloc.isSkip output11704 = false := by
  rw [output11704_def]
  conv => lhs; cbv
  try rfl
theorem node11704_eq : Flapjack.WordAlloc.removeDeadStructural input11704 value5853 value1 value2 = (output11704, value5, value1) := by
  rw [input11704_def, output11704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11698_eq]
  dsimp only
  rw [node11703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11704 input11697)).val
theorem input11705_def : input11705 = (.seq input11704 input11697) := by
  unfold input11705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11704 output11697)).val
theorem output11705_def : output11705 = (.seq output11704 output11697) := by
  unfold output11705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11705_skip : Flapjack.WordAlloc.isSkip output11705 = false := by
  rw [output11705_def]
  conv => lhs; cbv
  try rfl
theorem node11705_eq : Flapjack.WordAlloc.removeDeadStructural input11705 value5852 value1 value2 = (output11705, value5, value1) := by
  rw [input11705_def, output11705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11697_eq]
  dsimp only
  rw [node11704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5857 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64)))).val
theorem input11706_def : input11706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64))) := by
  unfold input11706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64)))).val
theorem output11706_def : output11706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64))) := by
  unfold output11706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11706_skip : Flapjack.WordAlloc.isSkip output11706 = false := by
  rw [output11706_def]
  conv => lhs; cbv
  try rfl
theorem node11706_eq : Flapjack.WordAlloc.removeDeadStructural input11706 value5 value1 value2 = (output11706, value5857, value1) := by
  rw [input11706_def, output11706_def]
  try (conv => lhs; cbv)
  try rfl

def value5858 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)])).val
theorem input11707_def : input11707 = (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)]) := by
  unfold input11707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)])).val
theorem output11707_def : output11707 = (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)]) := by
  unfold output11707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11707_skip : Flapjack.WordAlloc.isSkip output11707 = false := by
  rw [output11707_def]
  conv => lhs; cbv
  try rfl
theorem node11707_eq : Flapjack.WordAlloc.removeDeadStructural input11707 value5857 value1 value2 = (output11707, value5858, value1) := by
  rw [input11707_def, output11707_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11707 input11706)).val
theorem input11708_def : input11708 = (.seq input11707 input11706) := by
  unfold input11708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11707 output11706)).val
theorem output11708_def : output11708 = (.seq output11707 output11706) := by
  unfold output11708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11708_skip : Flapjack.WordAlloc.isSkip output11708 = false := by
  rw [output11708_def]
  conv => lhs; cbv
  try rfl
theorem node11708_eq : Flapjack.WordAlloc.removeDeadStructural input11708 value5 value1 value2 = (output11708, value5858, value1) := by
  rw [input11708_def, output11708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11706_eq]
  dsimp only
  rw [node11707_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5859 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 9907120269317136283#64))).val
theorem input11709_def : input11709 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 9907120269317136283#64)) := by
  unfold input11709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 9907120269317136283#64))).val
theorem output11709_def : output11709 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 9907120269317136283#64)) := by
  unfold output11709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11709_skip : Flapjack.WordAlloc.isSkip output11709 = false := by
  rw [output11709_def]
  conv => lhs; cbv
  try rfl
theorem node11709_eq : Flapjack.WordAlloc.removeDeadStructural input11709 value5858 value1 value2 = (output11709, value5859, value1) := by
  rw [input11709_def, output11709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4821 9907120269317136283#64))).val
theorem input11710_def : input11710 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4821 9907120269317136283#64)) := by
  unfold input11710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11710_def : output11710 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11710_skip : Flapjack.WordAlloc.isSkip output11710 = true := by
  rw [output11710_def]
  conv => lhs; cbv
  try rfl
theorem node11710_eq : Flapjack.WordAlloc.removeDeadStructural input11710 value5859 value1 value2 = (output11710, value5859, value1) := by
  rw [input11710_def, output11710_def]
  try (conv => lhs; cbv)
  try rfl

def value5860 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1168#64))))).val
theorem input11711_def : input11711 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1168#64)))) := by
  unfold input11711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1168#64))))).val
theorem output11711_def : output11711 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1168#64)))) := by
  unfold output11711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11711_skip : Flapjack.WordAlloc.isSkip output11711 = false := by
  rw [output11711_def]
  conv => lhs; cbv
  try rfl
theorem node11711_eq : Flapjack.WordAlloc.removeDeadStructural input11711 value5859 value1 value2 = (output11711, value5860, value1) := by
  rw [input11711_def, output11711_def]
  try (conv => lhs; cbv)
  try rfl

def value5861 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551104#64)))).val
theorem input11712_def : input11712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551104#64))) := by
  unfold input11712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551104#64)))).val
theorem output11712_def : output11712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551104#64))) := by
  unfold output11712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11712_skip : Flapjack.WordAlloc.isSkip output11712 = false := by
  rw [output11712_def]
  conv => lhs; cbv
  try rfl
theorem node11712_eq : Flapjack.WordAlloc.removeDeadStructural input11712 value5860 value1 value2 = (output11712, value5861, value1) := by
  rw [input11712_def, output11712_def]
  try (conv => lhs; cbv)
  try rfl

def value5862 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805)).val
theorem input11713_def : input11713 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805) := by
  unfold input11713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805)).val
theorem output11713_def : output11713 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805) := by
  unfold output11713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11713_skip : Flapjack.WordAlloc.isSkip output11713 = false := by
  rw [output11713_def]
  conv => lhs; cbv
  try rfl
theorem node11713_eq : Flapjack.WordAlloc.removeDeadStructural input11713 value5861 value1 value2 = (output11713, value5862, value1) := by
  rw [input11713_def, output11713_def]
  try (conv => lhs; cbv)
  try rfl

def value5863 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11714_def : input11714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11714_def : output11714 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11714_skip : Flapjack.WordAlloc.isSkip output11714 = false := by
  rw [output11714_def]
  conv => lhs; cbv
  try rfl
theorem node11714_eq : Flapjack.WordAlloc.removeDeadStructural input11714 value5862 value1 value2 = (output11714, value5863, value1) := by
  rw [input11714_def, output11714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength)).val
theorem input11715_def : input11715 = (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength) := by
  unfold input11715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength)).val
theorem output11715_def : output11715 = (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength) := by
  unfold output11715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11715_skip : Flapjack.WordAlloc.isSkip output11715 = false := by
  rw [output11715_def]
  conv => lhs; cbv
  try rfl
theorem node11715_eq : Flapjack.WordAlloc.removeDeadStructural input11715 value5863 value1 value2 = (output11715, value5, value1) := by
  rw [input11715_def, output11715_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11715 input11714)).val
theorem input11716_def : input11716 = (.seq input11715 input11714) := by
  unfold input11716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11715 output11714)).val
theorem output11716_def : output11716 = (.seq output11715 output11714) := by
  unfold output11716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11716_skip : Flapjack.WordAlloc.isSkip output11716 = false := by
  rw [output11716_def]
  conv => lhs; cbv
  try rfl
theorem node11716_eq : Flapjack.WordAlloc.removeDeadStructural input11716 value5862 value1 value2 = (output11716, value5, value1) := by
  rw [input11716_def, output11716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11714_eq]
  dsimp only
  rw [node11715_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11716 input11713)).val
theorem input11717_def : input11717 = (.seq input11716 input11713) := by
  unfold input11717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11716 output11713)).val
theorem output11717_def : output11717 = (.seq output11716 output11713) := by
  unfold output11717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11717_skip : Flapjack.WordAlloc.isSkip output11717 = false := by
  rw [output11717_def]
  conv => lhs; cbv
  try rfl
theorem node11717_eq : Flapjack.WordAlloc.removeDeadStructural input11717 value5861 value1 value2 = (output11717, value5, value1) := by
  rw [input11717_def, output11717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11713_eq]
  dsimp only
  rw [node11716_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11717 input11712)).val
theorem input11718_def : input11718 = (.seq input11717 input11712) := by
  unfold input11718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11717 output11712)).val
theorem output11718_def : output11718 = (.seq output11717 output11712) := by
  unfold output11718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11718_skip : Flapjack.WordAlloc.isSkip output11718 = false := by
  rw [output11718_def]
  conv => lhs; cbv
  try rfl
theorem node11718_eq : Flapjack.WordAlloc.removeDeadStructural input11718 value5860 value1 value2 = (output11718, value5, value1) := by
  rw [input11718_def, output11718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11712_eq]
  dsimp only
  rw [node11717_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11718 input11711)).val
theorem input11719_def : input11719 = (.seq input11718 input11711) := by
  unfold input11719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11718 output11711)).val
theorem output11719_def : output11719 = (.seq output11718 output11711) := by
  unfold output11719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11719_skip : Flapjack.WordAlloc.isSkip output11719 = false := by
  rw [output11719_def]
  conv => lhs; cbv
  try rfl
theorem node11719_eq : Flapjack.WordAlloc.removeDeadStructural input11719 value5859 value1 value2 = (output11719, value5, value1) := by
  rw [input11719_def, output11719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11711_eq]
  dsimp only
  rw [node11718_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5864 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64)))).val
theorem input11720_def : input11720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64))) := by
  unfold input11720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64)))).val
theorem output11720_def : output11720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64))) := by
  unfold output11720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11720_skip : Flapjack.WordAlloc.isSkip output11720 = false := by
  rw [output11720_def]
  conv => lhs; cbv
  try rfl
theorem node11720_eq : Flapjack.WordAlloc.removeDeadStructural input11720 value5 value1 value2 = (output11720, value5864, value1) := by
  rw [input11720_def, output11720_def]
  try (conv => lhs; cbv)
  try rfl

def value5865 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)])).val
theorem input11721_def : input11721 = (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)]) := by
  unfold input11721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)])).val
theorem output11721_def : output11721 = (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)]) := by
  unfold output11721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11721_skip : Flapjack.WordAlloc.isSkip output11721 = false := by
  rw [output11721_def]
  conv => lhs; cbv
  try rfl
theorem node11721_eq : Flapjack.WordAlloc.removeDeadStructural input11721 value5864 value1 value2 = (output11721, value5865, value1) := by
  rw [input11721_def, output11721_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11721 input11720)).val
theorem input11722_def : input11722 = (.seq input11721 input11720) := by
  unfold input11722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11721 output11720)).val
theorem output11722_def : output11722 = (.seq output11721 output11720) := by
  unfold output11722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11722_skip : Flapjack.WordAlloc.isSkip output11722 = false := by
  rw [output11722_def]
  conv => lhs; cbv
  try rfl
theorem node11722_eq : Flapjack.WordAlloc.removeDeadStructural input11722 value5 value1 value2 = (output11722, value5865, value1) := by
  rw [input11722_def, output11722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11720_eq]
  dsimp only
  rw [node11721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5866 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 4653388206581612541#64))).val
theorem input11723_def : input11723 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 4653388206581612541#64)) := by
  unfold input11723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 4653388206581612541#64))).val
theorem output11723_def : output11723 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 4653388206581612541#64)) := by
  unfold output11723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11723_skip : Flapjack.WordAlloc.isSkip output11723 = false := by
  rw [output11723_def]
  conv => lhs; cbv
  try rfl
theorem node11723_eq : Flapjack.WordAlloc.removeDeadStructural input11723 value5865 value1 value2 = (output11723, value5866, value1) := by
  rw [input11723_def, output11723_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4789 4653388206581612541#64))).val
theorem input11724_def : input11724 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4789 4653388206581612541#64)) := by
  unfold input11724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11724_def : output11724 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11724_skip : Flapjack.WordAlloc.isSkip output11724 = true := by
  rw [output11724_def]
  conv => lhs; cbv
  try rfl
theorem node11724_eq : Flapjack.WordAlloc.removeDeadStructural input11724 value5866 value1 value2 = (output11724, value5866, value1) := by
  rw [input11724_def, output11724_def]
  try (conv => lhs; cbv)
  try rfl

def value5867 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1160#64))))).val
theorem input11725_def : input11725 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1160#64)))) := by
  unfold input11725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1160#64))))).val
theorem output11725_def : output11725 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1160#64)))) := by
  unfold output11725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11725_skip : Flapjack.WordAlloc.isSkip output11725 = false := by
  rw [output11725_def]
  conv => lhs; cbv
  try rfl
theorem node11725_eq : Flapjack.WordAlloc.removeDeadStructural input11725 value5866 value1 value2 = (output11725, value5867, value1) := by
  rw [input11725_def, output11725_def]
  try (conv => lhs; cbv)
  try rfl

def value5868 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551104#64)))).val
theorem input11726_def : input11726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551104#64))) := by
  unfold input11726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551104#64)))).val
theorem output11726_def : output11726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551104#64))) := by
  unfold output11726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11726_skip : Flapjack.WordAlloc.isSkip output11726 = false := by
  rw [output11726_def]
  conv => lhs; cbv
  try rfl
theorem node11726_eq : Flapjack.WordAlloc.removeDeadStructural input11726 value5867 value1 value2 = (output11726, value5868, value1) := by
  rw [input11726_def, output11726_def]
  try (conv => lhs; cbv)
  try rfl

def value5869 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773)).val
theorem input11727_def : input11727 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773) := by
  unfold input11727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773)).val
theorem output11727_def : output11727 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773) := by
  unfold output11727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11727_skip : Flapjack.WordAlloc.isSkip output11727 = false := by
  rw [output11727_def]
  conv => lhs; cbv
  try rfl
theorem node11727_eq : Flapjack.WordAlloc.removeDeadStructural input11727 value5868 value1 value2 = (output11727, value5869, value1) := by
  rw [input11727_def, output11727_def]
  try (conv => lhs; cbv)
  try rfl

def value5870 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11728_def : input11728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11728_def : output11728 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11728_skip : Flapjack.WordAlloc.isSkip output11728 = false := by
  rw [output11728_def]
  conv => lhs; cbv
  try rfl
theorem node11728_eq : Flapjack.WordAlloc.removeDeadStructural input11728 value5869 value1 value2 = (output11728, value5870, value1) := by
  rw [input11728_def, output11728_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength)).val
theorem input11729_def : input11729 = (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength) := by
  unfold input11729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength)).val
theorem output11729_def : output11729 = (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength) := by
  unfold output11729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11729_skip : Flapjack.WordAlloc.isSkip output11729 = false := by
  rw [output11729_def]
  conv => lhs; cbv
  try rfl
theorem node11729_eq : Flapjack.WordAlloc.removeDeadStructural input11729 value5870 value1 value2 = (output11729, value5, value1) := by
  rw [input11729_def, output11729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11729 input11728)).val
theorem input11730_def : input11730 = (.seq input11729 input11728) := by
  unfold input11730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11729 output11728)).val
theorem output11730_def : output11730 = (.seq output11729 output11728) := by
  unfold output11730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11730_skip : Flapjack.WordAlloc.isSkip output11730 = false := by
  rw [output11730_def]
  conv => lhs; cbv
  try rfl
theorem node11730_eq : Flapjack.WordAlloc.removeDeadStructural input11730 value5869 value1 value2 = (output11730, value5, value1) := by
  rw [input11730_def, output11730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11728_eq]
  dsimp only
  rw [node11729_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11730 input11727)).val
theorem input11731_def : input11731 = (.seq input11730 input11727) := by
  unfold input11731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11730 output11727)).val
theorem output11731_def : output11731 = (.seq output11730 output11727) := by
  unfold output11731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11731_skip : Flapjack.WordAlloc.isSkip output11731 = false := by
  rw [output11731_def]
  conv => lhs; cbv
  try rfl
theorem node11731_eq : Flapjack.WordAlloc.removeDeadStructural input11731 value5868 value1 value2 = (output11731, value5, value1) := by
  rw [input11731_def, output11731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11727_eq]
  dsimp only
  rw [node11730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11731 input11726)).val
theorem input11732_def : input11732 = (.seq input11731 input11726) := by
  unfold input11732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11731 output11726)).val
theorem output11732_def : output11732 = (.seq output11731 output11726) := by
  unfold output11732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11732_skip : Flapjack.WordAlloc.isSkip output11732 = false := by
  rw [output11732_def]
  conv => lhs; cbv
  try rfl
theorem node11732_eq : Flapjack.WordAlloc.removeDeadStructural input11732 value5867 value1 value2 = (output11732, value5, value1) := by
  rw [input11732_def, output11732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11726_eq]
  dsimp only
  rw [node11731_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11732 input11725)).val
theorem input11733_def : input11733 = (.seq input11732 input11725) := by
  unfold input11733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11732 output11725)).val
theorem output11733_def : output11733 = (.seq output11732 output11725) := by
  unfold output11733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11733_skip : Flapjack.WordAlloc.isSkip output11733 = false := by
  rw [output11733_def]
  conv => lhs; cbv
  try rfl
theorem node11733_eq : Flapjack.WordAlloc.removeDeadStructural input11733 value5866 value1 value2 = (output11733, value5, value1) := by
  rw [input11733_def, output11733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11725_eq]
  dsimp only
  rw [node11732_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5871 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64)))).val
theorem input11734_def : input11734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64))) := by
  unfold input11734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64)))).val
theorem output11734_def : output11734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64))) := by
  unfold output11734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11734_skip : Flapjack.WordAlloc.isSkip output11734 = false := by
  rw [output11734_def]
  conv => lhs; cbv
  try rfl
theorem node11734_eq : Flapjack.WordAlloc.removeDeadStructural input11734 value5 value1 value2 = (output11734, value5871, value1) := by
  rw [input11734_def, output11734_def]
  try (conv => lhs; cbv)
  try rfl

def value5872 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)])).val
theorem input11735_def : input11735 = (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)]) := by
  unfold input11735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)])).val
theorem output11735_def : output11735 = (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)]) := by
  unfold output11735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11735_skip : Flapjack.WordAlloc.isSkip output11735 = false := by
  rw [output11735_def]
  conv => lhs; cbv
  try rfl
theorem node11735_eq : Flapjack.WordAlloc.removeDeadStructural input11735 value5871 value1 value2 = (output11735, value5872, value1) := by
  rw [input11735_def, output11735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11735 input11734)).val
theorem input11736_def : input11736 = (.seq input11735 input11734) := by
  unfold input11736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11735 output11734)).val
theorem output11736_def : output11736 = (.seq output11735 output11734) := by
  unfold output11736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11736_skip : Flapjack.WordAlloc.isSkip output11736 = false := by
  rw [output11736_def]
  conv => lhs; cbv
  try rfl
theorem node11736_eq : Flapjack.WordAlloc.removeDeadStructural input11736 value5 value1 value2 = (output11736, value5872, value1) := by
  rw [input11736_def, output11736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11734_eq]
  dsimp only
  rw [node11735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5873 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 10087218740379822765#64))).val
theorem input11737_def : input11737 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 10087218740379822765#64)) := by
  unfold input11737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 10087218740379822765#64))).val
theorem output11737_def : output11737 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 10087218740379822765#64)) := by
  unfold output11737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11737_skip : Flapjack.WordAlloc.isSkip output11737 = false := by
  rw [output11737_def]
  conv => lhs; cbv
  try rfl
theorem node11737_eq : Flapjack.WordAlloc.removeDeadStructural input11737 value5872 value1 value2 = (output11737, value5873, value1) := by
  rw [input11737_def, output11737_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4757 10087218740379822765#64))).val
theorem input11738_def : input11738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4757 10087218740379822765#64)) := by
  unfold input11738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11738_def : output11738 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11738_skip : Flapjack.WordAlloc.isSkip output11738 = true := by
  rw [output11738_def]
  conv => lhs; cbv
  try rfl
theorem node11738_eq : Flapjack.WordAlloc.removeDeadStructural input11738 value5873 value1 value2 = (output11738, value5873, value1) := by
  rw [input11738_def, output11738_def]
  try (conv => lhs; cbv)
  try rfl

def value5874 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1152#64))))).val
theorem input11739_def : input11739 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1152#64)))) := by
  unfold input11739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1152#64))))).val
theorem output11739_def : output11739 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1152#64)))) := by
  unfold output11739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11739_skip : Flapjack.WordAlloc.isSkip output11739 = false := by
  rw [output11739_def]
  conv => lhs; cbv
  try rfl
theorem node11739_eq : Flapjack.WordAlloc.removeDeadStructural input11739 value5873 value1 value2 = (output11739, value5874, value1) := by
  rw [input11739_def, output11739_def]
  try (conv => lhs; cbv)
  try rfl

def value5875 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551104#64)))).val
theorem input11740_def : input11740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551104#64))) := by
  unfold input11740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551104#64)))).val
theorem output11740_def : output11740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551104#64))) := by
  unfold output11740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11740_skip : Flapjack.WordAlloc.isSkip output11740 = false := by
  rw [output11740_def]
  conv => lhs; cbv
  try rfl
theorem node11740_eq : Flapjack.WordAlloc.removeDeadStructural input11740 value5874 value1 value2 = (output11740, value5875, value1) := by
  rw [input11740_def, output11740_def]
  try (conv => lhs; cbv)
  try rfl

def value5876 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741)).val
theorem input11741_def : input11741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741) := by
  unfold input11741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741)).val
theorem output11741_def : output11741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741) := by
  unfold output11741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11741_skip : Flapjack.WordAlloc.isSkip output11741 = false := by
  rw [output11741_def]
  conv => lhs; cbv
  try rfl
theorem node11741_eq : Flapjack.WordAlloc.removeDeadStructural input11741 value5875 value1 value2 = (output11741, value5876, value1) := by
  rw [input11741_def, output11741_def]
  try (conv => lhs; cbv)
  try rfl

def value5877 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11742_def : input11742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11742_def : output11742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11742_skip : Flapjack.WordAlloc.isSkip output11742 = false := by
  rw [output11742_def]
  conv => lhs; cbv
  try rfl
theorem node11742_eq : Flapjack.WordAlloc.removeDeadStructural input11742 value5876 value1 value2 = (output11742, value5877, value1) := by
  rw [input11742_def, output11742_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength)).val
theorem input11743_def : input11743 = (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength) := by
  unfold input11743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength)).val
theorem output11743_def : output11743 = (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength) := by
  unfold output11743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11743_skip : Flapjack.WordAlloc.isSkip output11743 = false := by
  rw [output11743_def]
  conv => lhs; cbv
  try rfl
theorem node11743_eq : Flapjack.WordAlloc.removeDeadStructural input11743 value5877 value1 value2 = (output11743, value5, value1) := by
  rw [input11743_def, output11743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11743 input11742)).val
theorem input11744_def : input11744 = (.seq input11743 input11742) := by
  unfold input11744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11743 output11742)).val
theorem output11744_def : output11744 = (.seq output11743 output11742) := by
  unfold output11744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11744_skip : Flapjack.WordAlloc.isSkip output11744 = false := by
  rw [output11744_def]
  conv => lhs; cbv
  try rfl
theorem node11744_eq : Flapjack.WordAlloc.removeDeadStructural input11744 value5876 value1 value2 = (output11744, value5, value1) := by
  rw [input11744_def, output11744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11742_eq]
  dsimp only
  rw [node11743_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11744 input11741)).val
theorem input11745_def : input11745 = (.seq input11744 input11741) := by
  unfold input11745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11744 output11741)).val
theorem output11745_def : output11745 = (.seq output11744 output11741) := by
  unfold output11745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11745_skip : Flapjack.WordAlloc.isSkip output11745 = false := by
  rw [output11745_def]
  conv => lhs; cbv
  try rfl
theorem node11745_eq : Flapjack.WordAlloc.removeDeadStructural input11745 value5875 value1 value2 = (output11745, value5, value1) := by
  rw [input11745_def, output11745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11741_eq]
  dsimp only
  rw [node11744_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11745 input11740)).val
theorem input11746_def : input11746 = (.seq input11745 input11740) := by
  unfold input11746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11745 output11740)).val
theorem output11746_def : output11746 = (.seq output11745 output11740) := by
  unfold output11746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11746_skip : Flapjack.WordAlloc.isSkip output11746 = false := by
  rw [output11746_def]
  conv => lhs; cbv
  try rfl
theorem node11746_eq : Flapjack.WordAlloc.removeDeadStructural input11746 value5874 value1 value2 = (output11746, value5, value1) := by
  rw [input11746_def, output11746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11740_eq]
  dsimp only
  rw [node11745_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11746 input11739)).val
theorem input11747_def : input11747 = (.seq input11746 input11739) := by
  unfold input11747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11746 output11739)).val
theorem output11747_def : output11747 = (.seq output11746 output11739) := by
  unfold output11747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11747_skip : Flapjack.WordAlloc.isSkip output11747 = false := by
  rw [output11747_def]
  conv => lhs; cbv
  try rfl
theorem node11747_eq : Flapjack.WordAlloc.removeDeadStructural input11747 value5873 value1 value2 = (output11747, value5, value1) := by
  rw [input11747_def, output11747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11739_eq]
  dsimp only
  rw [node11746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5878 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64)))).val
theorem input11748_def : input11748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64))) := by
  unfold input11748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64)))).val
theorem output11748_def : output11748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64))) := by
  unfold output11748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11748_skip : Flapjack.WordAlloc.isSkip output11748 = false := by
  rw [output11748_def]
  conv => lhs; cbv
  try rfl
theorem node11748_eq : Flapjack.WordAlloc.removeDeadStructural input11748 value5 value1 value2 = (output11748, value5878, value1) := by
  rw [input11748_def, output11748_def]
  try (conv => lhs; cbv)
  try rfl

def value5879 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)])).val
theorem input11749_def : input11749 = (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)]) := by
  unfold input11749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)])).val
theorem output11749_def : output11749 = (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)]) := by
  unfold output11749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11749_skip : Flapjack.WordAlloc.isSkip output11749 = false := by
  rw [output11749_def]
  conv => lhs; cbv
  try rfl
theorem node11749_eq : Flapjack.WordAlloc.removeDeadStructural input11749 value5878 value1 value2 = (output11749, value5879, value1) := by
  rw [input11749_def, output11749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11749 input11748)).val
theorem input11750_def : input11750 = (.seq input11749 input11748) := by
  unfold input11750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11749 output11748)).val
theorem output11750_def : output11750 = (.seq output11749 output11748) := by
  unfold output11750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11750_skip : Flapjack.WordAlloc.isSkip output11750 = false := by
  rw [output11750_def]
  conv => lhs; cbv
  try rfl
theorem node11750_eq : Flapjack.WordAlloc.removeDeadStructural input11750 value5 value1 value2 = (output11750, value5879, value1) := by
  rw [input11750_def, output11750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11748_eq]
  dsimp only
  rw [node11749_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5880 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 481619096434065419#64))).val
theorem input11751_def : input11751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 481619096434065419#64)) := by
  unfold input11751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 481619096434065419#64))).val
theorem output11751_def : output11751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 481619096434065419#64)) := by
  unfold output11751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11751_skip : Flapjack.WordAlloc.isSkip output11751 = false := by
  rw [output11751_def]
  conv => lhs; cbv
  try rfl
theorem node11751_eq : Flapjack.WordAlloc.removeDeadStructural input11751 value5879 value1 value2 = (output11751, value5880, value1) := by
  rw [input11751_def, output11751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4725 481619096434065419#64))).val
theorem input11752_def : input11752 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4725 481619096434065419#64)) := by
  unfold input11752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11752_def : output11752 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11752_skip : Flapjack.WordAlloc.isSkip output11752 = true := by
  rw [output11752_def]
  conv => lhs; cbv
  try rfl
theorem node11752_eq : Flapjack.WordAlloc.removeDeadStructural input11752 value5880 value1 value2 = (output11752, value5880, value1) := by
  rw [input11752_def, output11752_def]
  try (conv => lhs; cbv)
  try rfl

def value5881 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1144#64))))).val
theorem input11753_def : input11753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1144#64)))) := by
  unfold input11753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1144#64))))).val
theorem output11753_def : output11753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1144#64)))) := by
  unfold output11753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11753_skip : Flapjack.WordAlloc.isSkip output11753 = false := by
  rw [output11753_def]
  conv => lhs; cbv
  try rfl
theorem node11753_eq : Flapjack.WordAlloc.removeDeadStructural input11753 value5880 value1 value2 = (output11753, value5881, value1) := by
  rw [input11753_def, output11753_def]
  try (conv => lhs; cbv)
  try rfl

def value5882 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551104#64)))).val
theorem input11754_def : input11754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551104#64))) := by
  unfold input11754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551104#64)))).val
theorem output11754_def : output11754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551104#64))) := by
  unfold output11754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11754_skip : Flapjack.WordAlloc.isSkip output11754 = false := by
  rw [output11754_def]
  conv => lhs; cbv
  try rfl
theorem node11754_eq : Flapjack.WordAlloc.removeDeadStructural input11754 value5881 value1 value2 = (output11754, value5882, value1) := by
  rw [input11754_def, output11754_def]
  try (conv => lhs; cbv)
  try rfl

def value5883 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709)).val
theorem input11755_def : input11755 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709) := by
  unfold input11755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709)).val
theorem output11755_def : output11755 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709) := by
  unfold output11755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11755_skip : Flapjack.WordAlloc.isSkip output11755 = false := by
  rw [output11755_def]
  conv => lhs; cbv
  try rfl
theorem node11755_eq : Flapjack.WordAlloc.removeDeadStructural input11755 value5882 value1 value2 = (output11755, value5883, value1) := by
  rw [input11755_def, output11755_def]
  try (conv => lhs; cbv)
  try rfl

def value5884 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11756_def : input11756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11756_def : output11756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11756_skip : Flapjack.WordAlloc.isSkip output11756 = false := by
  rw [output11756_def]
  conv => lhs; cbv
  try rfl
theorem node11756_eq : Flapjack.WordAlloc.removeDeadStructural input11756 value5883 value1 value2 = (output11756, value5884, value1) := by
  rw [input11756_def, output11756_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength)).val
theorem input11757_def : input11757 = (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength) := by
  unfold input11757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength)).val
theorem output11757_def : output11757 = (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength) := by
  unfold output11757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11757_skip : Flapjack.WordAlloc.isSkip output11757 = false := by
  rw [output11757_def]
  conv => lhs; cbv
  try rfl
theorem node11757_eq : Flapjack.WordAlloc.removeDeadStructural input11757 value5884 value1 value2 = (output11757, value5, value1) := by
  rw [input11757_def, output11757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11757 input11756)).val
theorem input11758_def : input11758 = (.seq input11757 input11756) := by
  unfold input11758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11757 output11756)).val
theorem output11758_def : output11758 = (.seq output11757 output11756) := by
  unfold output11758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11758_skip : Flapjack.WordAlloc.isSkip output11758 = false := by
  rw [output11758_def]
  conv => lhs; cbv
  try rfl
theorem node11758_eq : Flapjack.WordAlloc.removeDeadStructural input11758 value5883 value1 value2 = (output11758, value5, value1) := by
  rw [input11758_def, output11758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11756_eq]
  dsimp only
  rw [node11757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11758 input11755)).val
theorem input11759_def : input11759 = (.seq input11758 input11755) := by
  unfold input11759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11758 output11755)).val
theorem output11759_def : output11759 = (.seq output11758 output11755) := by
  unfold output11759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11759_skip : Flapjack.WordAlloc.isSkip output11759 = false := by
  rw [output11759_def]
  conv => lhs; cbv
  try rfl
theorem node11759_eq : Flapjack.WordAlloc.removeDeadStructural input11759 value5882 value1 value2 = (output11759, value5, value1) := by
  rw [input11759_def, output11759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11755_eq]
  dsimp only
  rw [node11758_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11759 input11754)).val
theorem input11760_def : input11760 = (.seq input11759 input11754) := by
  unfold input11760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11759 output11754)).val
theorem output11760_def : output11760 = (.seq output11759 output11754) := by
  unfold output11760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11760_skip : Flapjack.WordAlloc.isSkip output11760 = false := by
  rw [output11760_def]
  conv => lhs; cbv
  try rfl
theorem node11760_eq : Flapjack.WordAlloc.removeDeadStructural input11760 value5881 value1 value2 = (output11760, value5, value1) := by
  rw [input11760_def, output11760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11754_eq]
  dsimp only
  rw [node11759_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11760 input11753)).val
theorem input11761_def : input11761 = (.seq input11760 input11753) := by
  unfold input11761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11760 output11753)).val
theorem output11761_def : output11761 = (.seq output11760 output11753) := by
  unfold output11761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11761_skip : Flapjack.WordAlloc.isSkip output11761 = false := by
  rw [output11761_def]
  conv => lhs; cbv
  try rfl
theorem node11761_eq : Flapjack.WordAlloc.removeDeadStructural input11761 value5880 value1 value2 = (output11761, value5, value1) := by
  rw [input11761_def, output11761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11753_eq]
  dsimp only
  rw [node11760_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5885 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64)))).val
theorem input11762_def : input11762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64))) := by
  unfold input11762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64)))).val
theorem output11762_def : output11762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64))) := by
  unfold output11762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11762_skip : Flapjack.WordAlloc.isSkip output11762 = false := by
  rw [output11762_def]
  conv => lhs; cbv
  try rfl
theorem node11762_eq : Flapjack.WordAlloc.removeDeadStructural input11762 value5 value1 value2 = (output11762, value5885, value1) := by
  rw [input11762_def, output11762_def]
  try (conv => lhs; cbv)
  try rfl

def value5886 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)])).val
theorem input11763_def : input11763 = (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)]) := by
  unfold input11763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)])).val
theorem output11763_def : output11763 = (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)]) := by
  unfold output11763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11763_skip : Flapjack.WordAlloc.isSkip output11763 = false := by
  rw [output11763_def]
  conv => lhs; cbv
  try rfl
theorem node11763_eq : Flapjack.WordAlloc.removeDeadStructural input11763 value5885 value1 value2 = (output11763, value5886, value1) := by
  rw [input11763_def, output11763_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11763 input11762)).val
theorem input11764_def : input11764 = (.seq input11763 input11762) := by
  unfold input11764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11763 output11762)).val
theorem output11764_def : output11764 = (.seq output11763 output11762) := by
  unfold output11764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11764_skip : Flapjack.WordAlloc.isSkip output11764 = false := by
  rw [output11764_def]
  conv => lhs; cbv
  try rfl
theorem node11764_eq : Flapjack.WordAlloc.removeDeadStructural input11764 value5 value1 value2 = (output11764, value5886, value1) := by
  rw [input11764_def, output11764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11762_eq]
  dsimp only
  rw [node11763_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5887 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 7508032112903159806#64))).val
theorem input11765_def : input11765 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 7508032112903159806#64)) := by
  unfold input11765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 7508032112903159806#64))).val
theorem output11765_def : output11765 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 7508032112903159806#64)) := by
  unfold output11765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11765_skip : Flapjack.WordAlloc.isSkip output11765 = false := by
  rw [output11765_def]
  conv => lhs; cbv
  try rfl
theorem node11765_eq : Flapjack.WordAlloc.removeDeadStructural input11765 value5886 value1 value2 = (output11765, value5887, value1) := by
  rw [input11765_def, output11765_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4693 7508032112903159806#64))).val
theorem input11766_def : input11766 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4693 7508032112903159806#64)) := by
  unfold input11766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11766_def : output11766 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11766_skip : Flapjack.WordAlloc.isSkip output11766 = true := by
  rw [output11766_def]
  conv => lhs; cbv
  try rfl
theorem node11766_eq : Flapjack.WordAlloc.removeDeadStructural input11766 value5887 value1 value2 = (output11766, value5887, value1) := by
  rw [input11766_def, output11766_def]
  try (conv => lhs; cbv)
  try rfl

def value5888 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1136#64))))).val
theorem input11767_def : input11767 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1136#64)))) := by
  unfold input11767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1136#64))))).val
theorem output11767_def : output11767 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1136#64)))) := by
  unfold output11767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11767_skip : Flapjack.WordAlloc.isSkip output11767 = false := by
  rw [output11767_def]
  conv => lhs; cbv
  try rfl
theorem node11767_eq : Flapjack.WordAlloc.removeDeadStructural input11767 value5887 value1 value2 = (output11767, value5888, value1) := by
  rw [input11767_def, output11767_def]
  try (conv => lhs; cbv)
  try rfl

def value5889 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551104#64)))).val
theorem input11768_def : input11768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551104#64))) := by
  unfold input11768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551104#64)))).val
theorem output11768_def : output11768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551104#64))) := by
  unfold output11768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11768_skip : Flapjack.WordAlloc.isSkip output11768 = false := by
  rw [output11768_def]
  conv => lhs; cbv
  try rfl
theorem node11768_eq : Flapjack.WordAlloc.removeDeadStructural input11768 value5888 value1 value2 = (output11768, value5889, value1) := by
  rw [input11768_def, output11768_def]
  try (conv => lhs; cbv)
  try rfl

def value5890 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677)).val
theorem input11769_def : input11769 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677) := by
  unfold input11769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677)).val
theorem output11769_def : output11769 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677) := by
  unfold output11769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11769_skip : Flapjack.WordAlloc.isSkip output11769 = false := by
  rw [output11769_def]
  conv => lhs; cbv
  try rfl
theorem node11769_eq : Flapjack.WordAlloc.removeDeadStructural input11769 value5889 value1 value2 = (output11769, value5890, value1) := by
  rw [input11769_def, output11769_def]
  try (conv => lhs; cbv)
  try rfl

def value5891 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11770_def : input11770 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11770_def : output11770 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11770_skip : Flapjack.WordAlloc.isSkip output11770 = false := by
  rw [output11770_def]
  conv => lhs; cbv
  try rfl
theorem node11770_eq : Flapjack.WordAlloc.removeDeadStructural input11770 value5890 value1 value2 = (output11770, value5891, value1) := by
  rw [input11770_def, output11770_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength)).val
theorem input11771_def : input11771 = (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength) := by
  unfold input11771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength)).val
theorem output11771_def : output11771 = (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength) := by
  unfold output11771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11771_skip : Flapjack.WordAlloc.isSkip output11771 = false := by
  rw [output11771_def]
  conv => lhs; cbv
  try rfl
theorem node11771_eq : Flapjack.WordAlloc.removeDeadStructural input11771 value5891 value1 value2 = (output11771, value5, value1) := by
  rw [input11771_def, output11771_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11771 input11770)).val
theorem input11772_def : input11772 = (.seq input11771 input11770) := by
  unfold input11772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11771 output11770)).val
theorem output11772_def : output11772 = (.seq output11771 output11770) := by
  unfold output11772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11772_skip : Flapjack.WordAlloc.isSkip output11772 = false := by
  rw [output11772_def]
  conv => lhs; cbv
  try rfl
theorem node11772_eq : Flapjack.WordAlloc.removeDeadStructural input11772 value5890 value1 value2 = (output11772, value5, value1) := by
  rw [input11772_def, output11772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11770_eq]
  dsimp only
  rw [node11771_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11772 input11769)).val
theorem input11773_def : input11773 = (.seq input11772 input11769) := by
  unfold input11773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11772 output11769)).val
theorem output11773_def : output11773 = (.seq output11772 output11769) := by
  unfold output11773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11773_skip : Flapjack.WordAlloc.isSkip output11773 = false := by
  rw [output11773_def]
  conv => lhs; cbv
  try rfl
theorem node11773_eq : Flapjack.WordAlloc.removeDeadStructural input11773 value5889 value1 value2 = (output11773, value5, value1) := by
  rw [input11773_def, output11773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11769_eq]
  dsimp only
  rw [node11772_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11773 input11768)).val
theorem input11774_def : input11774 = (.seq input11773 input11768) := by
  unfold input11774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11773 output11768)).val
theorem output11774_def : output11774 = (.seq output11773 output11768) := by
  unfold output11774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11774_skip : Flapjack.WordAlloc.isSkip output11774 = false := by
  rw [output11774_def]
  conv => lhs; cbv
  try rfl
theorem node11774_eq : Flapjack.WordAlloc.removeDeadStructural input11774 value5888 value1 value2 = (output11774, value5, value1) := by
  rw [input11774_def, output11774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11768_eq]
  dsimp only
  rw [node11773_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11774 input11767)).val
theorem input11775_def : input11775 = (.seq input11774 input11767) := by
  unfold input11775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11774 output11767)).val
theorem output11775_def : output11775 = (.seq output11774 output11767) := by
  unfold output11775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11775_skip : Flapjack.WordAlloc.isSkip output11775 = false := by
  rw [output11775_def]
  conv => lhs; cbv
  try rfl
theorem node11775_eq : Flapjack.WordAlloc.removeDeadStructural input11775 value5887 value1 value2 = (output11775, value5, value1) := by
  rw [input11775_def, output11775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11767_eq]
  dsimp only
  rw [node11774_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5892 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

#print axioms node11775_eq
end InitECandidate.Proofs.DeadStages713
