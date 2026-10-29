import InitECandidate.Proofs.DeadStages713.Chunk040
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input10496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7589 7585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10496_def : input10496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7589 7585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7589 7585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10496_def : output10496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7589 7585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10496_skip : Flapjack.WordAlloc.isSkip output10496 = false := by
  rw [output10496_def]
  conv => lhs; cbv
  try rfl
theorem node10496_eq : Flapjack.WordAlloc.removeDeadStructural input10496 value5253 value1 value2 = (output10496, value5254, value1) := by
  rw [input10496_def, output10496_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7585 Flapjack.WordStore.heapLength)).val
theorem input10497_def : input10497 = (Flapjack.WordLangProgHOL.get 7585 Flapjack.WordStore.heapLength) := by
  unfold input10497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7585 Flapjack.WordStore.heapLength)).val
theorem output10497_def : output10497 = (Flapjack.WordLangProgHOL.get 7585 Flapjack.WordStore.heapLength) := by
  unfold output10497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10497_skip : Flapjack.WordAlloc.isSkip output10497 = false := by
  rw [output10497_def]
  conv => lhs; cbv
  try rfl
theorem node10497_eq : Flapjack.WordAlloc.removeDeadStructural input10497 value5254 value1 value2 = (output10497, value5, value1) := by
  rw [input10497_def, output10497_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10497 input10496)).val
theorem input10498_def : input10498 = (.seq input10497 input10496) := by
  unfold input10498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10497 output10496)).val
theorem output10498_def : output10498 = (.seq output10497 output10496) := by
  unfold output10498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10498_skip : Flapjack.WordAlloc.isSkip output10498 = false := by
  rw [output10498_def]
  conv => lhs; cbv
  try rfl
theorem node10498_eq : Flapjack.WordAlloc.removeDeadStructural input10498 value5253 value1 value2 = (output10498, value5, value1) := by
  rw [input10498_def, output10498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10496_eq]
  dsimp only
  rw [node10497_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10498 input10495)).val
theorem input10499_def : input10499 = (.seq input10498 input10495) := by
  unfold input10499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10498 output10495)).val
theorem output10499_def : output10499 = (.seq output10498 output10495) := by
  unfold output10499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10499_skip : Flapjack.WordAlloc.isSkip output10499 = false := by
  rw [output10499_def]
  conv => lhs; cbv
  try rfl
theorem node10499_eq : Flapjack.WordAlloc.removeDeadStructural input10499 value5252 value1 value2 = (output10499, value5, value1) := by
  rw [input10499_def, output10499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10495_eq]
  dsimp only
  rw [node10498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10499 input10494)).val
theorem input10500_def : input10500 = (.seq input10499 input10494) := by
  unfold input10500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10499 output10494)).val
theorem output10500_def : output10500 = (.seq output10499 output10494) := by
  unfold output10500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10500_skip : Flapjack.WordAlloc.isSkip output10500 = false := by
  rw [output10500_def]
  conv => lhs; cbv
  try rfl
theorem node10500_eq : Flapjack.WordAlloc.removeDeadStructural input10500 value5251 value1 value2 = (output10500, value5, value1) := by
  rw [input10500_def, output10500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10494_eq]
  dsimp only
  rw [node10499_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10500 input10493)).val
theorem input10501_def : input10501 = (.seq input10500 input10493) := by
  unfold input10501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10500 output10493)).val
theorem output10501_def : output10501 = (.seq output10500 output10493) := by
  unfold output10501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10501_skip : Flapjack.WordAlloc.isSkip output10501 = false := by
  rw [output10501_def]
  conv => lhs; cbv
  try rfl
theorem node10501_eq : Flapjack.WordAlloc.removeDeadStructural input10501 value5250 value1 value2 = (output10501, value5, value1) := by
  rw [input10501_def, output10501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10493_eq]
  dsimp only
  rw [node10500_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5255 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7577 (Flapjack.WordLangAddr.addr 7581 0#64)))).val
theorem input10502_def : input10502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7577 (Flapjack.WordLangAddr.addr 7581 0#64))) := by
  unfold input10502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7577 (Flapjack.WordLangAddr.addr 7581 0#64)))).val
theorem output10502_def : output10502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7577 (Flapjack.WordLangAddr.addr 7581 0#64))) := by
  unfold output10502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10502_skip : Flapjack.WordAlloc.isSkip output10502 = false := by
  rw [output10502_def]
  conv => lhs; cbv
  try rfl
theorem node10502_eq : Flapjack.WordAlloc.removeDeadStructural input10502 value5 value1 value2 = (output10502, value5255, value1) := by
  rw [input10502_def, output10502_def]
  try (conv => lhs; cbv)
  try rfl

def value5256 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7581, 7569)])).val
theorem input10503_def : input10503 = (Flapjack.WordLangProgHOL.move 0 [(7581, 7569)]) := by
  unfold input10503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7581, 7569)])).val
theorem output10503_def : output10503 = (Flapjack.WordLangProgHOL.move 0 [(7581, 7569)]) := by
  unfold output10503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10503_skip : Flapjack.WordAlloc.isSkip output10503 = false := by
  rw [output10503_def]
  conv => lhs; cbv
  try rfl
theorem node10503_eq : Flapjack.WordAlloc.removeDeadStructural input10503 value5255 value1 value2 = (output10503, value5256, value1) := by
  rw [input10503_def, output10503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10503 input10502)).val
theorem input10504_def : input10504 = (.seq input10503 input10502) := by
  unfold input10504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10503 output10502)).val
theorem output10504_def : output10504 = (.seq output10503 output10502) := by
  unfold output10504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10504_skip : Flapjack.WordAlloc.isSkip output10504 = false := by
  rw [output10504_def]
  conv => lhs; cbv
  try rfl
theorem node10504_eq : Flapjack.WordAlloc.removeDeadStructural input10504 value5 value1 value2 = (output10504, value5256, value1) := by
  rw [input10504_def, output10504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10502_eq]
  dsimp only
  rw [node10503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5257 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7577 8011268957077696501#64))).val
theorem input10505_def : input10505 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7577 8011268957077696501#64)) := by
  unfold input10505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7577 8011268957077696501#64))).val
theorem output10505_def : output10505 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7577 8011268957077696501#64)) := by
  unfold output10505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10505_skip : Flapjack.WordAlloc.isSkip output10505 = false := by
  rw [output10505_def]
  conv => lhs; cbv
  try rfl
theorem node10505_eq : Flapjack.WordAlloc.removeDeadStructural input10505 value5256 value1 value2 = (output10505, value5257, value1) := by
  rw [input10505_def, output10505_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7573 8011268957077696501#64))).val
theorem input10506_def : input10506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7573 8011268957077696501#64)) := by
  unfold input10506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10506_def : output10506 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10506_skip : Flapjack.WordAlloc.isSkip output10506 = true := by
  rw [output10506_def]
  conv => lhs; cbv
  try rfl
theorem node10506_eq : Flapjack.WordAlloc.removeDeadStructural input10506 value5257 value1 value2 = (output10506, value5257, value1) := by
  rw [input10506_def, output10506_def]
  try (conv => lhs; cbv)
  try rfl

def value5258 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7569 7565 (Flapjack.WordRegImm.imm 1856#64))))).val
theorem input10507_def : input10507 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7569 7565 (Flapjack.WordRegImm.imm 1856#64)))) := by
  unfold input10507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7569 7565 (Flapjack.WordRegImm.imm 1856#64))))).val
theorem output10507_def : output10507 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7569 7565 (Flapjack.WordRegImm.imm 1856#64)))) := by
  unfold output10507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10507_skip : Flapjack.WordAlloc.isSkip output10507 = false := by
  rw [output10507_def]
  conv => lhs; cbv
  try rfl
theorem node10507_eq : Flapjack.WordAlloc.removeDeadStructural input10507 value5257 value1 value2 = (output10507, value5258, value1) := by
  rw [input10507_def, output10507_def]
  try (conv => lhs; cbv)
  try rfl

def value5259 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7565 (Flapjack.WordLangAddr.addr 7561 18446744073709551104#64)))).val
theorem input10508_def : input10508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7565 (Flapjack.WordLangAddr.addr 7561 18446744073709551104#64))) := by
  unfold input10508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7565 (Flapjack.WordLangAddr.addr 7561 18446744073709551104#64)))).val
theorem output10508_def : output10508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7565 (Flapjack.WordLangAddr.addr 7561 18446744073709551104#64))) := by
  unfold output10508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10508_skip : Flapjack.WordAlloc.isSkip output10508 = false := by
  rw [output10508_def]
  conv => lhs; cbv
  try rfl
theorem node10508_eq : Flapjack.WordAlloc.removeDeadStructural input10508 value5258 value1 value2 = (output10508, value5259, value1) := by
  rw [input10508_def, output10508_def]
  try (conv => lhs; cbv)
  try rfl

def value5260 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7561 7557)).val
theorem input10509_def : input10509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7561 7557) := by
  unfold input10509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7561 7557)).val
theorem output10509_def : output10509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7561 7557) := by
  unfold output10509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10509_skip : Flapjack.WordAlloc.isSkip output10509 = false := by
  rw [output10509_def]
  conv => lhs; cbv
  try rfl
theorem node10509_eq : Flapjack.WordAlloc.removeDeadStructural input10509 value5259 value1 value2 = (output10509, value5260, value1) := by
  rw [input10509_def, output10509_def]
  try (conv => lhs; cbv)
  try rfl

def value5261 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7557 7553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10510_def : input10510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7557 7553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7557 7553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10510_def : output10510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7557 7553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10510_skip : Flapjack.WordAlloc.isSkip output10510 = false := by
  rw [output10510_def]
  conv => lhs; cbv
  try rfl
theorem node10510_eq : Flapjack.WordAlloc.removeDeadStructural input10510 value5260 value1 value2 = (output10510, value5261, value1) := by
  rw [input10510_def, output10510_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7553 Flapjack.WordStore.heapLength)).val
theorem input10511_def : input10511 = (Flapjack.WordLangProgHOL.get 7553 Flapjack.WordStore.heapLength) := by
  unfold input10511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7553 Flapjack.WordStore.heapLength)).val
theorem output10511_def : output10511 = (Flapjack.WordLangProgHOL.get 7553 Flapjack.WordStore.heapLength) := by
  unfold output10511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10511_skip : Flapjack.WordAlloc.isSkip output10511 = false := by
  rw [output10511_def]
  conv => lhs; cbv
  try rfl
theorem node10511_eq : Flapjack.WordAlloc.removeDeadStructural input10511 value5261 value1 value2 = (output10511, value5, value1) := by
  rw [input10511_def, output10511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10511 input10510)).val
theorem input10512_def : input10512 = (.seq input10511 input10510) := by
  unfold input10512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10511 output10510)).val
theorem output10512_def : output10512 = (.seq output10511 output10510) := by
  unfold output10512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10512_skip : Flapjack.WordAlloc.isSkip output10512 = false := by
  rw [output10512_def]
  conv => lhs; cbv
  try rfl
theorem node10512_eq : Flapjack.WordAlloc.removeDeadStructural input10512 value5260 value1 value2 = (output10512, value5, value1) := by
  rw [input10512_def, output10512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10510_eq]
  dsimp only
  rw [node10511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10512 input10509)).val
theorem input10513_def : input10513 = (.seq input10512 input10509) := by
  unfold input10513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10512 output10509)).val
theorem output10513_def : output10513 = (.seq output10512 output10509) := by
  unfold output10513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10513_skip : Flapjack.WordAlloc.isSkip output10513 = false := by
  rw [output10513_def]
  conv => lhs; cbv
  try rfl
theorem node10513_eq : Flapjack.WordAlloc.removeDeadStructural input10513 value5259 value1 value2 = (output10513, value5, value1) := by
  rw [input10513_def, output10513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10509_eq]
  dsimp only
  rw [node10512_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10513 input10508)).val
theorem input10514_def : input10514 = (.seq input10513 input10508) := by
  unfold input10514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10513 output10508)).val
theorem output10514_def : output10514 = (.seq output10513 output10508) := by
  unfold output10514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10514_skip : Flapjack.WordAlloc.isSkip output10514 = false := by
  rw [output10514_def]
  conv => lhs; cbv
  try rfl
theorem node10514_eq : Flapjack.WordAlloc.removeDeadStructural input10514 value5258 value1 value2 = (output10514, value5, value1) := by
  rw [input10514_def, output10514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10508_eq]
  dsimp only
  rw [node10513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10514 input10507)).val
theorem input10515_def : input10515 = (.seq input10514 input10507) := by
  unfold input10515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10514 output10507)).val
theorem output10515_def : output10515 = (.seq output10514 output10507) := by
  unfold output10515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10515_skip : Flapjack.WordAlloc.isSkip output10515 = false := by
  rw [output10515_def]
  conv => lhs; cbv
  try rfl
theorem node10515_eq : Flapjack.WordAlloc.removeDeadStructural input10515 value5257 value1 value2 = (output10515, value5, value1) := by
  rw [input10515_def, output10515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10507_eq]
  dsimp only
  rw [node10514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5262 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7545 (Flapjack.WordLangAddr.addr 7549 0#64)))).val
theorem input10516_def : input10516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7545 (Flapjack.WordLangAddr.addr 7549 0#64))) := by
  unfold input10516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7545 (Flapjack.WordLangAddr.addr 7549 0#64)))).val
theorem output10516_def : output10516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7545 (Flapjack.WordLangAddr.addr 7549 0#64))) := by
  unfold output10516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10516_skip : Flapjack.WordAlloc.isSkip output10516 = false := by
  rw [output10516_def]
  conv => lhs; cbv
  try rfl
theorem node10516_eq : Flapjack.WordAlloc.removeDeadStructural input10516 value5 value1 value2 = (output10516, value5262, value1) := by
  rw [input10516_def, output10516_def]
  try (conv => lhs; cbv)
  try rfl

def value5263 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7549, 7537)])).val
theorem input10517_def : input10517 = (Flapjack.WordLangProgHOL.move 0 [(7549, 7537)]) := by
  unfold input10517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7549, 7537)])).val
theorem output10517_def : output10517 = (Flapjack.WordLangProgHOL.move 0 [(7549, 7537)]) := by
  unfold output10517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10517_skip : Flapjack.WordAlloc.isSkip output10517 = false := by
  rw [output10517_def]
  conv => lhs; cbv
  try rfl
theorem node10517_eq : Flapjack.WordAlloc.removeDeadStructural input10517 value5262 value1 value2 = (output10517, value5263, value1) := by
  rw [input10517_def, output10517_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10517 input10516)).val
theorem input10518_def : input10518 = (.seq input10517 input10516) := by
  unfold input10518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10517 output10516)).val
theorem output10518_def : output10518 = (.seq output10517 output10516) := by
  unfold output10518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10518_skip : Flapjack.WordAlloc.isSkip output10518 = false := by
  rw [output10518_def]
  conv => lhs; cbv
  try rfl
theorem node10518_eq : Flapjack.WordAlloc.removeDeadStructural input10518 value5 value1 value2 = (output10518, value5263, value1) := by
  rw [input10518_def, output10518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10516_eq]
  dsimp only
  rw [node10517_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5264 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7545 0#64))).val
theorem input10519_def : input10519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7545 0#64)) := by
  unfold input10519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7545 0#64))).val
theorem output10519_def : output10519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7545 0#64)) := by
  unfold output10519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10519_skip : Flapjack.WordAlloc.isSkip output10519 = false := by
  rw [output10519_def]
  conv => lhs; cbv
  try rfl
theorem node10519_eq : Flapjack.WordAlloc.removeDeadStructural input10519 value5263 value1 value2 = (output10519, value5264, value1) := by
  rw [input10519_def, output10519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7541 0#64))).val
theorem input10520_def : input10520 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7541 0#64)) := by
  unfold input10520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10520_def : output10520 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10520_skip : Flapjack.WordAlloc.isSkip output10520 = true := by
  rw [output10520_def]
  conv => lhs; cbv
  try rfl
theorem node10520_eq : Flapjack.WordAlloc.removeDeadStructural input10520 value5264 value1 value2 = (output10520, value5264, value1) := by
  rw [input10520_def, output10520_def]
  try (conv => lhs; cbv)
  try rfl

def value5265 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7537 7533 (Flapjack.WordRegImm.imm 1848#64))))).val
theorem input10521_def : input10521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7537 7533 (Flapjack.WordRegImm.imm 1848#64)))) := by
  unfold input10521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7537 7533 (Flapjack.WordRegImm.imm 1848#64))))).val
theorem output10521_def : output10521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7537 7533 (Flapjack.WordRegImm.imm 1848#64)))) := by
  unfold output10521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10521_skip : Flapjack.WordAlloc.isSkip output10521 = false := by
  rw [output10521_def]
  conv => lhs; cbv
  try rfl
theorem node10521_eq : Flapjack.WordAlloc.removeDeadStructural input10521 value5264 value1 value2 = (output10521, value5265, value1) := by
  rw [input10521_def, output10521_def]
  try (conv => lhs; cbv)
  try rfl

def value5266 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7533 (Flapjack.WordLangAddr.addr 7529 18446744073709551104#64)))).val
theorem input10522_def : input10522 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7533 (Flapjack.WordLangAddr.addr 7529 18446744073709551104#64))) := by
  unfold input10522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7533 (Flapjack.WordLangAddr.addr 7529 18446744073709551104#64)))).val
theorem output10522_def : output10522 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7533 (Flapjack.WordLangAddr.addr 7529 18446744073709551104#64))) := by
  unfold output10522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10522_skip : Flapjack.WordAlloc.isSkip output10522 = false := by
  rw [output10522_def]
  conv => lhs; cbv
  try rfl
theorem node10522_eq : Flapjack.WordAlloc.removeDeadStructural input10522 value5265 value1 value2 = (output10522, value5266, value1) := by
  rw [input10522_def, output10522_def]
  try (conv => lhs; cbv)
  try rfl

def value5267 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7529 7525)).val
theorem input10523_def : input10523 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7529 7525) := by
  unfold input10523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7529 7525)).val
theorem output10523_def : output10523 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7529 7525) := by
  unfold output10523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10523_skip : Flapjack.WordAlloc.isSkip output10523 = false := by
  rw [output10523_def]
  conv => lhs; cbv
  try rfl
theorem node10523_eq : Flapjack.WordAlloc.removeDeadStructural input10523 value5266 value1 value2 = (output10523, value5267, value1) := by
  rw [input10523_def, output10523_def]
  try (conv => lhs; cbv)
  try rfl

def value5268 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7525 7521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10524_def : input10524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7525 7521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7525 7521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10524_def : output10524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7525 7521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10524_skip : Flapjack.WordAlloc.isSkip output10524 = false := by
  rw [output10524_def]
  conv => lhs; cbv
  try rfl
theorem node10524_eq : Flapjack.WordAlloc.removeDeadStructural input10524 value5267 value1 value2 = (output10524, value5268, value1) := by
  rw [input10524_def, output10524_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7521 Flapjack.WordStore.heapLength)).val
theorem input10525_def : input10525 = (Flapjack.WordLangProgHOL.get 7521 Flapjack.WordStore.heapLength) := by
  unfold input10525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7521 Flapjack.WordStore.heapLength)).val
theorem output10525_def : output10525 = (Flapjack.WordLangProgHOL.get 7521 Flapjack.WordStore.heapLength) := by
  unfold output10525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10525_skip : Flapjack.WordAlloc.isSkip output10525 = false := by
  rw [output10525_def]
  conv => lhs; cbv
  try rfl
theorem node10525_eq : Flapjack.WordAlloc.removeDeadStructural input10525 value5268 value1 value2 = (output10525, value5, value1) := by
  rw [input10525_def, output10525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10525 input10524)).val
theorem input10526_def : input10526 = (.seq input10525 input10524) := by
  unfold input10526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10525 output10524)).val
theorem output10526_def : output10526 = (.seq output10525 output10524) := by
  unfold output10526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10526_skip : Flapjack.WordAlloc.isSkip output10526 = false := by
  rw [output10526_def]
  conv => lhs; cbv
  try rfl
theorem node10526_eq : Flapjack.WordAlloc.removeDeadStructural input10526 value5267 value1 value2 = (output10526, value5, value1) := by
  rw [input10526_def, output10526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10524_eq]
  dsimp only
  rw [node10525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10526 input10523)).val
theorem input10527_def : input10527 = (.seq input10526 input10523) := by
  unfold input10527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10526 output10523)).val
theorem output10527_def : output10527 = (.seq output10526 output10523) := by
  unfold output10527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10527_skip : Flapjack.WordAlloc.isSkip output10527 = false := by
  rw [output10527_def]
  conv => lhs; cbv
  try rfl
theorem node10527_eq : Flapjack.WordAlloc.removeDeadStructural input10527 value5266 value1 value2 = (output10527, value5, value1) := by
  rw [input10527_def, output10527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10523_eq]
  dsimp only
  rw [node10526_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10527 input10522)).val
theorem input10528_def : input10528 = (.seq input10527 input10522) := by
  unfold input10528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10527 output10522)).val
theorem output10528_def : output10528 = (.seq output10527 output10522) := by
  unfold output10528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10528_skip : Flapjack.WordAlloc.isSkip output10528 = false := by
  rw [output10528_def]
  conv => lhs; cbv
  try rfl
theorem node10528_eq : Flapjack.WordAlloc.removeDeadStructural input10528 value5265 value1 value2 = (output10528, value5, value1) := by
  rw [input10528_def, output10528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10522_eq]
  dsimp only
  rw [node10527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10528 input10521)).val
theorem input10529_def : input10529 = (.seq input10528 input10521) := by
  unfold input10529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10528 output10521)).val
theorem output10529_def : output10529 = (.seq output10528 output10521) := by
  unfold output10529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10529_skip : Flapjack.WordAlloc.isSkip output10529 = false := by
  rw [output10529_def]
  conv => lhs; cbv
  try rfl
theorem node10529_eq : Flapjack.WordAlloc.removeDeadStructural input10529 value5264 value1 value2 = (output10529, value5, value1) := by
  rw [input10529_def, output10529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10521_eq]
  dsimp only
  rw [node10528_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5269 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7513 (Flapjack.WordLangAddr.addr 7517 0#64)))).val
theorem input10530_def : input10530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7513 (Flapjack.WordLangAddr.addr 7517 0#64))) := by
  unfold input10530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7513 (Flapjack.WordLangAddr.addr 7517 0#64)))).val
theorem output10530_def : output10530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7513 (Flapjack.WordLangAddr.addr 7517 0#64))) := by
  unfold output10530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10530_skip : Flapjack.WordAlloc.isSkip output10530 = false := by
  rw [output10530_def]
  conv => lhs; cbv
  try rfl
theorem node10530_eq : Flapjack.WordAlloc.removeDeadStructural input10530 value5 value1 value2 = (output10530, value5269, value1) := by
  rw [input10530_def, output10530_def]
  try (conv => lhs; cbv)
  try rfl

def value5270 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7517, 7505)])).val
theorem input10531_def : input10531 = (Flapjack.WordLangProgHOL.move 0 [(7517, 7505)]) := by
  unfold input10531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7517, 7505)])).val
theorem output10531_def : output10531 = (Flapjack.WordLangProgHOL.move 0 [(7517, 7505)]) := by
  unfold output10531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10531_skip : Flapjack.WordAlloc.isSkip output10531 = false := by
  rw [output10531_def]
  conv => lhs; cbv
  try rfl
theorem node10531_eq : Flapjack.WordAlloc.removeDeadStructural input10531 value5269 value1 value2 = (output10531, value5270, value1) := by
  rw [input10531_def, output10531_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10531 input10530)).val
theorem input10532_def : input10532 = (.seq input10531 input10530) := by
  unfold input10532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10531 output10530)).val
theorem output10532_def : output10532 = (.seq output10531 output10530) := by
  unfold output10532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10532_skip : Flapjack.WordAlloc.isSkip output10532 = false := by
  rw [output10532_def]
  conv => lhs; cbv
  try rfl
theorem node10532_eq : Flapjack.WordAlloc.removeDeadStructural input10532 value5 value1 value2 = (output10532, value5270, value1) := by
  rw [input10532_def, output10532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10530_eq]
  dsimp only
  rw [node10531_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5271 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7513 0#64))).val
theorem input10533_def : input10533 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7513 0#64)) := by
  unfold input10533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7513 0#64))).val
theorem output10533_def : output10533 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7513 0#64)) := by
  unfold output10533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10533_skip : Flapjack.WordAlloc.isSkip output10533 = false := by
  rw [output10533_def]
  conv => lhs; cbv
  try rfl
theorem node10533_eq : Flapjack.WordAlloc.removeDeadStructural input10533 value5270 value1 value2 = (output10533, value5271, value1) := by
  rw [input10533_def, output10533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7509 0#64))).val
theorem input10534_def : input10534 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7509 0#64)) := by
  unfold input10534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10534_def : output10534 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10534_skip : Flapjack.WordAlloc.isSkip output10534 = true := by
  rw [output10534_def]
  conv => lhs; cbv
  try rfl
theorem node10534_eq : Flapjack.WordAlloc.removeDeadStructural input10534 value5271 value1 value2 = (output10534, value5271, value1) := by
  rw [input10534_def, output10534_def]
  try (conv => lhs; cbv)
  try rfl

def value5272 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7505 7501 (Flapjack.WordRegImm.imm 1840#64))))).val
theorem input10535_def : input10535 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7505 7501 (Flapjack.WordRegImm.imm 1840#64)))) := by
  unfold input10535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7505 7501 (Flapjack.WordRegImm.imm 1840#64))))).val
theorem output10535_def : output10535 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7505 7501 (Flapjack.WordRegImm.imm 1840#64)))) := by
  unfold output10535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10535_skip : Flapjack.WordAlloc.isSkip output10535 = false := by
  rw [output10535_def]
  conv => lhs; cbv
  try rfl
theorem node10535_eq : Flapjack.WordAlloc.removeDeadStructural input10535 value5271 value1 value2 = (output10535, value5272, value1) := by
  rw [input10535_def, output10535_def]
  try (conv => lhs; cbv)
  try rfl

def value5273 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7501 (Flapjack.WordLangAddr.addr 7497 18446744073709551104#64)))).val
theorem input10536_def : input10536 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7501 (Flapjack.WordLangAddr.addr 7497 18446744073709551104#64))) := by
  unfold input10536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7501 (Flapjack.WordLangAddr.addr 7497 18446744073709551104#64)))).val
theorem output10536_def : output10536 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7501 (Flapjack.WordLangAddr.addr 7497 18446744073709551104#64))) := by
  unfold output10536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10536_skip : Flapjack.WordAlloc.isSkip output10536 = false := by
  rw [output10536_def]
  conv => lhs; cbv
  try rfl
theorem node10536_eq : Flapjack.WordAlloc.removeDeadStructural input10536 value5272 value1 value2 = (output10536, value5273, value1) := by
  rw [input10536_def, output10536_def]
  try (conv => lhs; cbv)
  try rfl

def value5274 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7497 7493)).val
theorem input10537_def : input10537 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7497 7493) := by
  unfold input10537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7497 7493)).val
theorem output10537_def : output10537 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7497 7493) := by
  unfold output10537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10537_skip : Flapjack.WordAlloc.isSkip output10537 = false := by
  rw [output10537_def]
  conv => lhs; cbv
  try rfl
theorem node10537_eq : Flapjack.WordAlloc.removeDeadStructural input10537 value5273 value1 value2 = (output10537, value5274, value1) := by
  rw [input10537_def, output10537_def]
  try (conv => lhs; cbv)
  try rfl

def value5275 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7493 7489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10538_def : input10538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7493 7489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7493 7489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10538_def : output10538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7493 7489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10538_skip : Flapjack.WordAlloc.isSkip output10538 = false := by
  rw [output10538_def]
  conv => lhs; cbv
  try rfl
theorem node10538_eq : Flapjack.WordAlloc.removeDeadStructural input10538 value5274 value1 value2 = (output10538, value5275, value1) := by
  rw [input10538_def, output10538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7489 Flapjack.WordStore.heapLength)).val
theorem input10539_def : input10539 = (Flapjack.WordLangProgHOL.get 7489 Flapjack.WordStore.heapLength) := by
  unfold input10539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7489 Flapjack.WordStore.heapLength)).val
theorem output10539_def : output10539 = (Flapjack.WordLangProgHOL.get 7489 Flapjack.WordStore.heapLength) := by
  unfold output10539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10539_skip : Flapjack.WordAlloc.isSkip output10539 = false := by
  rw [output10539_def]
  conv => lhs; cbv
  try rfl
theorem node10539_eq : Flapjack.WordAlloc.removeDeadStructural input10539 value5275 value1 value2 = (output10539, value5, value1) := by
  rw [input10539_def, output10539_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10539 input10538)).val
theorem input10540_def : input10540 = (.seq input10539 input10538) := by
  unfold input10540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10539 output10538)).val
theorem output10540_def : output10540 = (.seq output10539 output10538) := by
  unfold output10540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10540_skip : Flapjack.WordAlloc.isSkip output10540 = false := by
  rw [output10540_def]
  conv => lhs; cbv
  try rfl
theorem node10540_eq : Flapjack.WordAlloc.removeDeadStructural input10540 value5274 value1 value2 = (output10540, value5, value1) := by
  rw [input10540_def, output10540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10538_eq]
  dsimp only
  rw [node10539_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10540 input10537)).val
theorem input10541_def : input10541 = (.seq input10540 input10537) := by
  unfold input10541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10540 output10537)).val
theorem output10541_def : output10541 = (.seq output10540 output10537) := by
  unfold output10541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10541_skip : Flapjack.WordAlloc.isSkip output10541 = false := by
  rw [output10541_def]
  conv => lhs; cbv
  try rfl
theorem node10541_eq : Flapjack.WordAlloc.removeDeadStructural input10541 value5273 value1 value2 = (output10541, value5, value1) := by
  rw [input10541_def, output10541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10537_eq]
  dsimp only
  rw [node10540_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10541 input10536)).val
theorem input10542_def : input10542 = (.seq input10541 input10536) := by
  unfold input10542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10541 output10536)).val
theorem output10542_def : output10542 = (.seq output10541 output10536) := by
  unfold output10542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10542_skip : Flapjack.WordAlloc.isSkip output10542 = false := by
  rw [output10542_def]
  conv => lhs; cbv
  try rfl
theorem node10542_eq : Flapjack.WordAlloc.removeDeadStructural input10542 value5272 value1 value2 = (output10542, value5, value1) := by
  rw [input10542_def, output10542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10536_eq]
  dsimp only
  rw [node10541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10542 input10535)).val
theorem input10543_def : input10543 = (.seq input10542 input10535) := by
  unfold input10543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10542 output10535)).val
theorem output10543_def : output10543 = (.seq output10542 output10535) := by
  unfold output10543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10543_skip : Flapjack.WordAlloc.isSkip output10543 = false := by
  rw [output10543_def]
  conv => lhs; cbv
  try rfl
theorem node10543_eq : Flapjack.WordAlloc.removeDeadStructural input10543 value5271 value1 value2 = (output10543, value5, value1) := by
  rw [input10543_def, output10543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10535_eq]
  dsimp only
  rw [node10542_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5276 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7481 (Flapjack.WordLangAddr.addr 7485 0#64)))).val
theorem input10544_def : input10544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7481 (Flapjack.WordLangAddr.addr 7485 0#64))) := by
  unfold input10544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7481 (Flapjack.WordLangAddr.addr 7485 0#64)))).val
theorem output10544_def : output10544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7481 (Flapjack.WordLangAddr.addr 7485 0#64))) := by
  unfold output10544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10544_skip : Flapjack.WordAlloc.isSkip output10544 = false := by
  rw [output10544_def]
  conv => lhs; cbv
  try rfl
theorem node10544_eq : Flapjack.WordAlloc.removeDeadStructural input10544 value5 value1 value2 = (output10544, value5276, value1) := by
  rw [input10544_def, output10544_def]
  try (conv => lhs; cbv)
  try rfl

def value5277 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7485, 7473)])).val
theorem input10545_def : input10545 = (Flapjack.WordLangProgHOL.move 0 [(7485, 7473)]) := by
  unfold input10545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7485, 7473)])).val
theorem output10545_def : output10545 = (Flapjack.WordLangProgHOL.move 0 [(7485, 7473)]) := by
  unfold output10545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10545_skip : Flapjack.WordAlloc.isSkip output10545 = false := by
  rw [output10545_def]
  conv => lhs; cbv
  try rfl
theorem node10545_eq : Flapjack.WordAlloc.removeDeadStructural input10545 value5276 value1 value2 = (output10545, value5277, value1) := by
  rw [input10545_def, output10545_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10545 input10544)).val
theorem input10546_def : input10546 = (.seq input10545 input10544) := by
  unfold input10546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10545 output10544)).val
theorem output10546_def : output10546 = (.seq output10545 output10544) := by
  unfold output10546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10546_skip : Flapjack.WordAlloc.isSkip output10546 = false := by
  rw [output10546_def]
  conv => lhs; cbv
  try rfl
theorem node10546_eq : Flapjack.WordAlloc.removeDeadStructural input10546 value5 value1 value2 = (output10546, value5277, value1) := by
  rw [input10546_def, output10546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10544_eq]
  dsimp only
  rw [node10545_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5278 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7481 0#64))).val
theorem input10547_def : input10547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7481 0#64)) := by
  unfold input10547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7481 0#64))).val
theorem output10547_def : output10547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7481 0#64)) := by
  unfold output10547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10547_skip : Flapjack.WordAlloc.isSkip output10547 = false := by
  rw [output10547_def]
  conv => lhs; cbv
  try rfl
theorem node10547_eq : Flapjack.WordAlloc.removeDeadStructural input10547 value5277 value1 value2 = (output10547, value5278, value1) := by
  rw [input10547_def, output10547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7477 0#64))).val
theorem input10548_def : input10548 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7477 0#64)) := by
  unfold input10548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10548_def : output10548 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10548_skip : Flapjack.WordAlloc.isSkip output10548 = true := by
  rw [output10548_def]
  conv => lhs; cbv
  try rfl
theorem node10548_eq : Flapjack.WordAlloc.removeDeadStructural input10548 value5278 value1 value2 = (output10548, value5278, value1) := by
  rw [input10548_def, output10548_def]
  try (conv => lhs; cbv)
  try rfl

def value5279 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7473 7469 (Flapjack.WordRegImm.imm 1832#64))))).val
theorem input10549_def : input10549 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7473 7469 (Flapjack.WordRegImm.imm 1832#64)))) := by
  unfold input10549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7473 7469 (Flapjack.WordRegImm.imm 1832#64))))).val
theorem output10549_def : output10549 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7473 7469 (Flapjack.WordRegImm.imm 1832#64)))) := by
  unfold output10549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10549_skip : Flapjack.WordAlloc.isSkip output10549 = false := by
  rw [output10549_def]
  conv => lhs; cbv
  try rfl
theorem node10549_eq : Flapjack.WordAlloc.removeDeadStructural input10549 value5278 value1 value2 = (output10549, value5279, value1) := by
  rw [input10549_def, output10549_def]
  try (conv => lhs; cbv)
  try rfl

def value5280 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7469 (Flapjack.WordLangAddr.addr 7465 18446744073709551104#64)))).val
theorem input10550_def : input10550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7469 (Flapjack.WordLangAddr.addr 7465 18446744073709551104#64))) := by
  unfold input10550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7469 (Flapjack.WordLangAddr.addr 7465 18446744073709551104#64)))).val
theorem output10550_def : output10550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7469 (Flapjack.WordLangAddr.addr 7465 18446744073709551104#64))) := by
  unfold output10550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10550_skip : Flapjack.WordAlloc.isSkip output10550 = false := by
  rw [output10550_def]
  conv => lhs; cbv
  try rfl
theorem node10550_eq : Flapjack.WordAlloc.removeDeadStructural input10550 value5279 value1 value2 = (output10550, value5280, value1) := by
  rw [input10550_def, output10550_def]
  try (conv => lhs; cbv)
  try rfl

def value5281 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7465 7461)).val
theorem input10551_def : input10551 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7465 7461) := by
  unfold input10551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7465 7461)).val
theorem output10551_def : output10551 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7465 7461) := by
  unfold output10551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10551_skip : Flapjack.WordAlloc.isSkip output10551 = false := by
  rw [output10551_def]
  conv => lhs; cbv
  try rfl
theorem node10551_eq : Flapjack.WordAlloc.removeDeadStructural input10551 value5280 value1 value2 = (output10551, value5281, value1) := by
  rw [input10551_def, output10551_def]
  try (conv => lhs; cbv)
  try rfl

def value5282 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7461 7457 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10552_def : input10552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7461 7457 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7461 7457 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10552_def : output10552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7461 7457 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10552_skip : Flapjack.WordAlloc.isSkip output10552 = false := by
  rw [output10552_def]
  conv => lhs; cbv
  try rfl
theorem node10552_eq : Flapjack.WordAlloc.removeDeadStructural input10552 value5281 value1 value2 = (output10552, value5282, value1) := by
  rw [input10552_def, output10552_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7457 Flapjack.WordStore.heapLength)).val
theorem input10553_def : input10553 = (Flapjack.WordLangProgHOL.get 7457 Flapjack.WordStore.heapLength) := by
  unfold input10553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7457 Flapjack.WordStore.heapLength)).val
theorem output10553_def : output10553 = (Flapjack.WordLangProgHOL.get 7457 Flapjack.WordStore.heapLength) := by
  unfold output10553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10553_skip : Flapjack.WordAlloc.isSkip output10553 = false := by
  rw [output10553_def]
  conv => lhs; cbv
  try rfl
theorem node10553_eq : Flapjack.WordAlloc.removeDeadStructural input10553 value5282 value1 value2 = (output10553, value5, value1) := by
  rw [input10553_def, output10553_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10553 input10552)).val
theorem input10554_def : input10554 = (.seq input10553 input10552) := by
  unfold input10554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10553 output10552)).val
theorem output10554_def : output10554 = (.seq output10553 output10552) := by
  unfold output10554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10554_skip : Flapjack.WordAlloc.isSkip output10554 = false := by
  rw [output10554_def]
  conv => lhs; cbv
  try rfl
theorem node10554_eq : Flapjack.WordAlloc.removeDeadStructural input10554 value5281 value1 value2 = (output10554, value5, value1) := by
  rw [input10554_def, output10554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10552_eq]
  dsimp only
  rw [node10553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10554 input10551)).val
theorem input10555_def : input10555 = (.seq input10554 input10551) := by
  unfold input10555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10554 output10551)).val
theorem output10555_def : output10555 = (.seq output10554 output10551) := by
  unfold output10555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10555_skip : Flapjack.WordAlloc.isSkip output10555 = false := by
  rw [output10555_def]
  conv => lhs; cbv
  try rfl
theorem node10555_eq : Flapjack.WordAlloc.removeDeadStructural input10555 value5280 value1 value2 = (output10555, value5, value1) := by
  rw [input10555_def, output10555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10551_eq]
  dsimp only
  rw [node10554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10555 input10550)).val
theorem input10556_def : input10556 = (.seq input10555 input10550) := by
  unfold input10556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10555 output10550)).val
theorem output10556_def : output10556 = (.seq output10555 output10550) := by
  unfold output10556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10556_skip : Flapjack.WordAlloc.isSkip output10556 = false := by
  rw [output10556_def]
  conv => lhs; cbv
  try rfl
theorem node10556_eq : Flapjack.WordAlloc.removeDeadStructural input10556 value5279 value1 value2 = (output10556, value5, value1) := by
  rw [input10556_def, output10556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10550_eq]
  dsimp only
  rw [node10555_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10556 input10549)).val
theorem input10557_def : input10557 = (.seq input10556 input10549) := by
  unfold input10557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10556 output10549)).val
theorem output10557_def : output10557 = (.seq output10556 output10549) := by
  unfold output10557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10557_skip : Flapjack.WordAlloc.isSkip output10557 = false := by
  rw [output10557_def]
  conv => lhs; cbv
  try rfl
theorem node10557_eq : Flapjack.WordAlloc.removeDeadStructural input10557 value5278 value1 value2 = (output10557, value5, value1) := by
  rw [input10557_def, output10557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10549_eq]
  dsimp only
  rw [node10556_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5283 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7449 (Flapjack.WordLangAddr.addr 7453 0#64)))).val
theorem input10558_def : input10558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7449 (Flapjack.WordLangAddr.addr 7453 0#64))) := by
  unfold input10558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7449 (Flapjack.WordLangAddr.addr 7453 0#64)))).val
theorem output10558_def : output10558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7449 (Flapjack.WordLangAddr.addr 7453 0#64))) := by
  unfold output10558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10558_skip : Flapjack.WordAlloc.isSkip output10558 = false := by
  rw [output10558_def]
  conv => lhs; cbv
  try rfl
theorem node10558_eq : Flapjack.WordAlloc.removeDeadStructural input10558 value5 value1 value2 = (output10558, value5283, value1) := by
  rw [input10558_def, output10558_def]
  try (conv => lhs; cbv)
  try rfl

def value5284 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7453, 7441)])).val
theorem input10559_def : input10559 = (Flapjack.WordLangProgHOL.move 0 [(7453, 7441)]) := by
  unfold input10559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7453, 7441)])).val
theorem output10559_def : output10559 = (Flapjack.WordLangProgHOL.move 0 [(7453, 7441)]) := by
  unfold output10559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10559_skip : Flapjack.WordAlloc.isSkip output10559 = false := by
  rw [output10559_def]
  conv => lhs; cbv
  try rfl
theorem node10559_eq : Flapjack.WordAlloc.removeDeadStructural input10559 value5283 value1 value2 = (output10559, value5284, value1) := by
  rw [input10559_def, output10559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10559 input10558)).val
theorem input10560_def : input10560 = (.seq input10559 input10558) := by
  unfold input10560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10559 output10558)).val
theorem output10560_def : output10560 = (.seq output10559 output10558) := by
  unfold output10560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10560_skip : Flapjack.WordAlloc.isSkip output10560 = false := by
  rw [output10560_def]
  conv => lhs; cbv
  try rfl
theorem node10560_eq : Flapjack.WordAlloc.removeDeadStructural input10560 value5 value1 value2 = (output10560, value5284, value1) := by
  rw [input10560_def, output10560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10558_eq]
  dsimp only
  rw [node10559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5285 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7449 0#64))).val
theorem input10561_def : input10561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7449 0#64)) := by
  unfold input10561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7449 0#64))).val
theorem output10561_def : output10561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7449 0#64)) := by
  unfold output10561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10561_skip : Flapjack.WordAlloc.isSkip output10561 = false := by
  rw [output10561_def]
  conv => lhs; cbv
  try rfl
theorem node10561_eq : Flapjack.WordAlloc.removeDeadStructural input10561 value5284 value1 value2 = (output10561, value5285, value1) := by
  rw [input10561_def, output10561_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7445 0#64))).val
theorem input10562_def : input10562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7445 0#64)) := by
  unfold input10562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10562_def : output10562 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10562_skip : Flapjack.WordAlloc.isSkip output10562 = true := by
  rw [output10562_def]
  conv => lhs; cbv
  try rfl
theorem node10562_eq : Flapjack.WordAlloc.removeDeadStructural input10562 value5285 value1 value2 = (output10562, value5285, value1) := by
  rw [input10562_def, output10562_def]
  try (conv => lhs; cbv)
  try rfl

def value5286 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7441 7437 (Flapjack.WordRegImm.imm 1824#64))))).val
theorem input10563_def : input10563 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7441 7437 (Flapjack.WordRegImm.imm 1824#64)))) := by
  unfold input10563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7441 7437 (Flapjack.WordRegImm.imm 1824#64))))).val
theorem output10563_def : output10563 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7441 7437 (Flapjack.WordRegImm.imm 1824#64)))) := by
  unfold output10563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10563_skip : Flapjack.WordAlloc.isSkip output10563 = false := by
  rw [output10563_def]
  conv => lhs; cbv
  try rfl
theorem node10563_eq : Flapjack.WordAlloc.removeDeadStructural input10563 value5285 value1 value2 = (output10563, value5286, value1) := by
  rw [input10563_def, output10563_def]
  try (conv => lhs; cbv)
  try rfl

def value5287 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7437 (Flapjack.WordLangAddr.addr 7433 18446744073709551104#64)))).val
theorem input10564_def : input10564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7437 (Flapjack.WordLangAddr.addr 7433 18446744073709551104#64))) := by
  unfold input10564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7437 (Flapjack.WordLangAddr.addr 7433 18446744073709551104#64)))).val
theorem output10564_def : output10564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7437 (Flapjack.WordLangAddr.addr 7433 18446744073709551104#64))) := by
  unfold output10564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10564_skip : Flapjack.WordAlloc.isSkip output10564 = false := by
  rw [output10564_def]
  conv => lhs; cbv
  try rfl
theorem node10564_eq : Flapjack.WordAlloc.removeDeadStructural input10564 value5286 value1 value2 = (output10564, value5287, value1) := by
  rw [input10564_def, output10564_def]
  try (conv => lhs; cbv)
  try rfl

def value5288 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7433 7429)).val
theorem input10565_def : input10565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7433 7429) := by
  unfold input10565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7433 7429)).val
theorem output10565_def : output10565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7433 7429) := by
  unfold output10565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10565_skip : Flapjack.WordAlloc.isSkip output10565 = false := by
  rw [output10565_def]
  conv => lhs; cbv
  try rfl
theorem node10565_eq : Flapjack.WordAlloc.removeDeadStructural input10565 value5287 value1 value2 = (output10565, value5288, value1) := by
  rw [input10565_def, output10565_def]
  try (conv => lhs; cbv)
  try rfl

def value5289 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7429 7425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10566_def : input10566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7429 7425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7429 7425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10566_def : output10566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7429 7425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10566_skip : Flapjack.WordAlloc.isSkip output10566 = false := by
  rw [output10566_def]
  conv => lhs; cbv
  try rfl
theorem node10566_eq : Flapjack.WordAlloc.removeDeadStructural input10566 value5288 value1 value2 = (output10566, value5289, value1) := by
  rw [input10566_def, output10566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7425 Flapjack.WordStore.heapLength)).val
theorem input10567_def : input10567 = (Flapjack.WordLangProgHOL.get 7425 Flapjack.WordStore.heapLength) := by
  unfold input10567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7425 Flapjack.WordStore.heapLength)).val
theorem output10567_def : output10567 = (Flapjack.WordLangProgHOL.get 7425 Flapjack.WordStore.heapLength) := by
  unfold output10567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10567_skip : Flapjack.WordAlloc.isSkip output10567 = false := by
  rw [output10567_def]
  conv => lhs; cbv
  try rfl
theorem node10567_eq : Flapjack.WordAlloc.removeDeadStructural input10567 value5289 value1 value2 = (output10567, value5, value1) := by
  rw [input10567_def, output10567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10567 input10566)).val
theorem input10568_def : input10568 = (.seq input10567 input10566) := by
  unfold input10568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10567 output10566)).val
theorem output10568_def : output10568 = (.seq output10567 output10566) := by
  unfold output10568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10568_skip : Flapjack.WordAlloc.isSkip output10568 = false := by
  rw [output10568_def]
  conv => lhs; cbv
  try rfl
theorem node10568_eq : Flapjack.WordAlloc.removeDeadStructural input10568 value5288 value1 value2 = (output10568, value5, value1) := by
  rw [input10568_def, output10568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10566_eq]
  dsimp only
  rw [node10567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10568 input10565)).val
theorem input10569_def : input10569 = (.seq input10568 input10565) := by
  unfold input10569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10568 output10565)).val
theorem output10569_def : output10569 = (.seq output10568 output10565) := by
  unfold output10569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10569_skip : Flapjack.WordAlloc.isSkip output10569 = false := by
  rw [output10569_def]
  conv => lhs; cbv
  try rfl
theorem node10569_eq : Flapjack.WordAlloc.removeDeadStructural input10569 value5287 value1 value2 = (output10569, value5, value1) := by
  rw [input10569_def, output10569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10565_eq]
  dsimp only
  rw [node10568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10569 input10564)).val
theorem input10570_def : input10570 = (.seq input10569 input10564) := by
  unfold input10570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10569 output10564)).val
theorem output10570_def : output10570 = (.seq output10569 output10564) := by
  unfold output10570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10570_skip : Flapjack.WordAlloc.isSkip output10570 = false := by
  rw [output10570_def]
  conv => lhs; cbv
  try rfl
theorem node10570_eq : Flapjack.WordAlloc.removeDeadStructural input10570 value5286 value1 value2 = (output10570, value5, value1) := by
  rw [input10570_def, output10570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10564_eq]
  dsimp only
  rw [node10569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10570 input10563)).val
theorem input10571_def : input10571 = (.seq input10570 input10563) := by
  unfold input10571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10570 output10563)).val
theorem output10571_def : output10571 = (.seq output10570 output10563) := by
  unfold output10571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10571_skip : Flapjack.WordAlloc.isSkip output10571 = false := by
  rw [output10571_def]
  conv => lhs; cbv
  try rfl
theorem node10571_eq : Flapjack.WordAlloc.removeDeadStructural input10571 value5285 value1 value2 = (output10571, value5, value1) := by
  rw [input10571_def, output10571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10563_eq]
  dsimp only
  rw [node10570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5290 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7417 (Flapjack.WordLangAddr.addr 7421 0#64)))).val
theorem input10572_def : input10572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7417 (Flapjack.WordLangAddr.addr 7421 0#64))) := by
  unfold input10572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7417 (Flapjack.WordLangAddr.addr 7421 0#64)))).val
theorem output10572_def : output10572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7417 (Flapjack.WordLangAddr.addr 7421 0#64))) := by
  unfold output10572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10572_skip : Flapjack.WordAlloc.isSkip output10572 = false := by
  rw [output10572_def]
  conv => lhs; cbv
  try rfl
theorem node10572_eq : Flapjack.WordAlloc.removeDeadStructural input10572 value5 value1 value2 = (output10572, value5290, value1) := by
  rw [input10572_def, output10572_def]
  try (conv => lhs; cbv)
  try rfl

def value5291 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7421, 7409)])).val
theorem input10573_def : input10573 = (Flapjack.WordLangProgHOL.move 0 [(7421, 7409)]) := by
  unfold input10573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7421, 7409)])).val
theorem output10573_def : output10573 = (Flapjack.WordLangProgHOL.move 0 [(7421, 7409)]) := by
  unfold output10573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10573_skip : Flapjack.WordAlloc.isSkip output10573 = false := by
  rw [output10573_def]
  conv => lhs; cbv
  try rfl
theorem node10573_eq : Flapjack.WordAlloc.removeDeadStructural input10573 value5290 value1 value2 = (output10573, value5291, value1) := by
  rw [input10573_def, output10573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10573 input10572)).val
theorem input10574_def : input10574 = (.seq input10573 input10572) := by
  unfold input10574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10573 output10572)).val
theorem output10574_def : output10574 = (.seq output10573 output10572) := by
  unfold output10574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10574_skip : Flapjack.WordAlloc.isSkip output10574 = false := by
  rw [output10574_def]
  conv => lhs; cbv
  try rfl
theorem node10574_eq : Flapjack.WordAlloc.removeDeadStructural input10574 value5 value1 value2 = (output10574, value5291, value1) := by
  rw [input10574_def, output10574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10572_eq]
  dsimp only
  rw [node10573_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5292 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7417 0#64))).val
theorem input10575_def : input10575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7417 0#64)) := by
  unfold input10575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7417 0#64))).val
theorem output10575_def : output10575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7417 0#64)) := by
  unfold output10575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10575_skip : Flapjack.WordAlloc.isSkip output10575 = false := by
  rw [output10575_def]
  conv => lhs; cbv
  try rfl
theorem node10575_eq : Flapjack.WordAlloc.removeDeadStructural input10575 value5291 value1 value2 = (output10575, value5292, value1) := by
  rw [input10575_def, output10575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7413 0#64))).val
theorem input10576_def : input10576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7413 0#64)) := by
  unfold input10576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10576_def : output10576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10576_skip : Flapjack.WordAlloc.isSkip output10576 = true := by
  rw [output10576_def]
  conv => lhs; cbv
  try rfl
theorem node10576_eq : Flapjack.WordAlloc.removeDeadStructural input10576 value5292 value1 value2 = (output10576, value5292, value1) := by
  rw [input10576_def, output10576_def]
  try (conv => lhs; cbv)
  try rfl

def value5293 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7409 7405 (Flapjack.WordRegImm.imm 1816#64))))).val
theorem input10577_def : input10577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7409 7405 (Flapjack.WordRegImm.imm 1816#64)))) := by
  unfold input10577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7409 7405 (Flapjack.WordRegImm.imm 1816#64))))).val
theorem output10577_def : output10577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7409 7405 (Flapjack.WordRegImm.imm 1816#64)))) := by
  unfold output10577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10577_skip : Flapjack.WordAlloc.isSkip output10577 = false := by
  rw [output10577_def]
  conv => lhs; cbv
  try rfl
theorem node10577_eq : Flapjack.WordAlloc.removeDeadStructural input10577 value5292 value1 value2 = (output10577, value5293, value1) := by
  rw [input10577_def, output10577_def]
  try (conv => lhs; cbv)
  try rfl

def value5294 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7405 (Flapjack.WordLangAddr.addr 7401 18446744073709551104#64)))).val
theorem input10578_def : input10578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7405 (Flapjack.WordLangAddr.addr 7401 18446744073709551104#64))) := by
  unfold input10578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7405 (Flapjack.WordLangAddr.addr 7401 18446744073709551104#64)))).val
theorem output10578_def : output10578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7405 (Flapjack.WordLangAddr.addr 7401 18446744073709551104#64))) := by
  unfold output10578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10578_skip : Flapjack.WordAlloc.isSkip output10578 = false := by
  rw [output10578_def]
  conv => lhs; cbv
  try rfl
theorem node10578_eq : Flapjack.WordAlloc.removeDeadStructural input10578 value5293 value1 value2 = (output10578, value5294, value1) := by
  rw [input10578_def, output10578_def]
  try (conv => lhs; cbv)
  try rfl

def value5295 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7401 7397)).val
theorem input10579_def : input10579 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7401 7397) := by
  unfold input10579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7401 7397)).val
theorem output10579_def : output10579 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7401 7397) := by
  unfold output10579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10579_skip : Flapjack.WordAlloc.isSkip output10579 = false := by
  rw [output10579_def]
  conv => lhs; cbv
  try rfl
theorem node10579_eq : Flapjack.WordAlloc.removeDeadStructural input10579 value5294 value1 value2 = (output10579, value5295, value1) := by
  rw [input10579_def, output10579_def]
  try (conv => lhs; cbv)
  try rfl

def value5296 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7397 7393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10580_def : input10580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7397 7393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7397 7393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10580_def : output10580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7397 7393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10580_skip : Flapjack.WordAlloc.isSkip output10580 = false := by
  rw [output10580_def]
  conv => lhs; cbv
  try rfl
theorem node10580_eq : Flapjack.WordAlloc.removeDeadStructural input10580 value5295 value1 value2 = (output10580, value5296, value1) := by
  rw [input10580_def, output10580_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7393 Flapjack.WordStore.heapLength)).val
theorem input10581_def : input10581 = (Flapjack.WordLangProgHOL.get 7393 Flapjack.WordStore.heapLength) := by
  unfold input10581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7393 Flapjack.WordStore.heapLength)).val
theorem output10581_def : output10581 = (Flapjack.WordLangProgHOL.get 7393 Flapjack.WordStore.heapLength) := by
  unfold output10581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10581_skip : Flapjack.WordAlloc.isSkip output10581 = false := by
  rw [output10581_def]
  conv => lhs; cbv
  try rfl
theorem node10581_eq : Flapjack.WordAlloc.removeDeadStructural input10581 value5296 value1 value2 = (output10581, value5, value1) := by
  rw [input10581_def, output10581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10581 input10580)).val
theorem input10582_def : input10582 = (.seq input10581 input10580) := by
  unfold input10582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10581 output10580)).val
theorem output10582_def : output10582 = (.seq output10581 output10580) := by
  unfold output10582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10582_skip : Flapjack.WordAlloc.isSkip output10582 = false := by
  rw [output10582_def]
  conv => lhs; cbv
  try rfl
theorem node10582_eq : Flapjack.WordAlloc.removeDeadStructural input10582 value5295 value1 value2 = (output10582, value5, value1) := by
  rw [input10582_def, output10582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10580_eq]
  dsimp only
  rw [node10581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10582 input10579)).val
theorem input10583_def : input10583 = (.seq input10582 input10579) := by
  unfold input10583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10582 output10579)).val
theorem output10583_def : output10583 = (.seq output10582 output10579) := by
  unfold output10583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10583_skip : Flapjack.WordAlloc.isSkip output10583 = false := by
  rw [output10583_def]
  conv => lhs; cbv
  try rfl
theorem node10583_eq : Flapjack.WordAlloc.removeDeadStructural input10583 value5294 value1 value2 = (output10583, value5, value1) := by
  rw [input10583_def, output10583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10579_eq]
  dsimp only
  rw [node10582_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10583 input10578)).val
theorem input10584_def : input10584 = (.seq input10583 input10578) := by
  unfold input10584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10583 output10578)).val
theorem output10584_def : output10584 = (.seq output10583 output10578) := by
  unfold output10584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10584_skip : Flapjack.WordAlloc.isSkip output10584 = false := by
  rw [output10584_def]
  conv => lhs; cbv
  try rfl
theorem node10584_eq : Flapjack.WordAlloc.removeDeadStructural input10584 value5293 value1 value2 = (output10584, value5, value1) := by
  rw [input10584_def, output10584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10578_eq]
  dsimp only
  rw [node10583_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10584 input10577)).val
theorem input10585_def : input10585 = (.seq input10584 input10577) := by
  unfold input10585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10584 output10577)).val
theorem output10585_def : output10585 = (.seq output10584 output10577) := by
  unfold output10585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10585_skip : Flapjack.WordAlloc.isSkip output10585 = false := by
  rw [output10585_def]
  conv => lhs; cbv
  try rfl
theorem node10585_eq : Flapjack.WordAlloc.removeDeadStructural input10585 value5292 value1 value2 = (output10585, value5, value1) := by
  rw [input10585_def, output10585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10577_eq]
  dsimp only
  rw [node10584_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5297 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7385 (Flapjack.WordLangAddr.addr 7389 0#64)))).val
theorem input10586_def : input10586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7385 (Flapjack.WordLangAddr.addr 7389 0#64))) := by
  unfold input10586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7385 (Flapjack.WordLangAddr.addr 7389 0#64)))).val
theorem output10586_def : output10586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7385 (Flapjack.WordLangAddr.addr 7389 0#64))) := by
  unfold output10586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10586_skip : Flapjack.WordAlloc.isSkip output10586 = false := by
  rw [output10586_def]
  conv => lhs; cbv
  try rfl
theorem node10586_eq : Flapjack.WordAlloc.removeDeadStructural input10586 value5 value1 value2 = (output10586, value5297, value1) := by
  rw [input10586_def, output10586_def]
  try (conv => lhs; cbv)
  try rfl

def value5298 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7389, 7377)])).val
theorem input10587_def : input10587 = (Flapjack.WordLangProgHOL.move 0 [(7389, 7377)]) := by
  unfold input10587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7389, 7377)])).val
theorem output10587_def : output10587 = (Flapjack.WordLangProgHOL.move 0 [(7389, 7377)]) := by
  unfold output10587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10587_skip : Flapjack.WordAlloc.isSkip output10587 = false := by
  rw [output10587_def]
  conv => lhs; cbv
  try rfl
theorem node10587_eq : Flapjack.WordAlloc.removeDeadStructural input10587 value5297 value1 value2 = (output10587, value5298, value1) := by
  rw [input10587_def, output10587_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10587 input10586)).val
theorem input10588_def : input10588 = (.seq input10587 input10586) := by
  unfold input10588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10587 output10586)).val
theorem output10588_def : output10588 = (.seq output10587 output10586) := by
  unfold output10588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10588_skip : Flapjack.WordAlloc.isSkip output10588 = false := by
  rw [output10588_def]
  conv => lhs; cbv
  try rfl
theorem node10588_eq : Flapjack.WordAlloc.removeDeadStructural input10588 value5 value1 value2 = (output10588, value5298, value1) := by
  rw [input10588_def, output10588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10586_eq]
  dsimp only
  rw [node10587_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5299 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7385 11#64))).val
theorem input10589_def : input10589 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7385 11#64)) := by
  unfold input10589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7385 11#64))).val
theorem output10589_def : output10589 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7385 11#64)) := by
  unfold output10589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10589_skip : Flapjack.WordAlloc.isSkip output10589 = false := by
  rw [output10589_def]
  conv => lhs; cbv
  try rfl
theorem node10589_eq : Flapjack.WordAlloc.removeDeadStructural input10589 value5298 value1 value2 = (output10589, value5299, value1) := by
  rw [input10589_def, output10589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7381 11#64))).val
theorem input10590_def : input10590 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7381 11#64)) := by
  unfold input10590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10590_def : output10590 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10590_skip : Flapjack.WordAlloc.isSkip output10590 = true := by
  rw [output10590_def]
  conv => lhs; cbv
  try rfl
theorem node10590_eq : Flapjack.WordAlloc.removeDeadStructural input10590 value5299 value1 value2 = (output10590, value5299, value1) := by
  rw [input10590_def, output10590_def]
  try (conv => lhs; cbv)
  try rfl

def value5300 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7377 7373 (Flapjack.WordRegImm.imm 1808#64))))).val
theorem input10591_def : input10591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7377 7373 (Flapjack.WordRegImm.imm 1808#64)))) := by
  unfold input10591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7377 7373 (Flapjack.WordRegImm.imm 1808#64))))).val
theorem output10591_def : output10591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7377 7373 (Flapjack.WordRegImm.imm 1808#64)))) := by
  unfold output10591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10591_skip : Flapjack.WordAlloc.isSkip output10591 = false := by
  rw [output10591_def]
  conv => lhs; cbv
  try rfl
theorem node10591_eq : Flapjack.WordAlloc.removeDeadStructural input10591 value5299 value1 value2 = (output10591, value5300, value1) := by
  rw [input10591_def, output10591_def]
  try (conv => lhs; cbv)
  try rfl

def value5301 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7373 (Flapjack.WordLangAddr.addr 7369 18446744073709551104#64)))).val
theorem input10592_def : input10592 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7373 (Flapjack.WordLangAddr.addr 7369 18446744073709551104#64))) := by
  unfold input10592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7373 (Flapjack.WordLangAddr.addr 7369 18446744073709551104#64)))).val
theorem output10592_def : output10592 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7373 (Flapjack.WordLangAddr.addr 7369 18446744073709551104#64))) := by
  unfold output10592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10592_skip : Flapjack.WordAlloc.isSkip output10592 = false := by
  rw [output10592_def]
  conv => lhs; cbv
  try rfl
theorem node10592_eq : Flapjack.WordAlloc.removeDeadStructural input10592 value5300 value1 value2 = (output10592, value5301, value1) := by
  rw [input10592_def, output10592_def]
  try (conv => lhs; cbv)
  try rfl

def value5302 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7369 7365)).val
theorem input10593_def : input10593 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7369 7365) := by
  unfold input10593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7369 7365)).val
theorem output10593_def : output10593 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7369 7365) := by
  unfold output10593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10593_skip : Flapjack.WordAlloc.isSkip output10593 = false := by
  rw [output10593_def]
  conv => lhs; cbv
  try rfl
theorem node10593_eq : Flapjack.WordAlloc.removeDeadStructural input10593 value5301 value1 value2 = (output10593, value5302, value1) := by
  rw [input10593_def, output10593_def]
  try (conv => lhs; cbv)
  try rfl

def value5303 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7365 7361 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10594_def : input10594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7365 7361 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7365 7361 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10594_def : output10594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7365 7361 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10594_skip : Flapjack.WordAlloc.isSkip output10594 = false := by
  rw [output10594_def]
  conv => lhs; cbv
  try rfl
theorem node10594_eq : Flapjack.WordAlloc.removeDeadStructural input10594 value5302 value1 value2 = (output10594, value5303, value1) := by
  rw [input10594_def, output10594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7361 Flapjack.WordStore.heapLength)).val
theorem input10595_def : input10595 = (Flapjack.WordLangProgHOL.get 7361 Flapjack.WordStore.heapLength) := by
  unfold input10595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7361 Flapjack.WordStore.heapLength)).val
theorem output10595_def : output10595 = (Flapjack.WordLangProgHOL.get 7361 Flapjack.WordStore.heapLength) := by
  unfold output10595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10595_skip : Flapjack.WordAlloc.isSkip output10595 = false := by
  rw [output10595_def]
  conv => lhs; cbv
  try rfl
theorem node10595_eq : Flapjack.WordAlloc.removeDeadStructural input10595 value5303 value1 value2 = (output10595, value5, value1) := by
  rw [input10595_def, output10595_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10595 input10594)).val
theorem input10596_def : input10596 = (.seq input10595 input10594) := by
  unfold input10596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10595 output10594)).val
theorem output10596_def : output10596 = (.seq output10595 output10594) := by
  unfold output10596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10596_skip : Flapjack.WordAlloc.isSkip output10596 = false := by
  rw [output10596_def]
  conv => lhs; cbv
  try rfl
theorem node10596_eq : Flapjack.WordAlloc.removeDeadStructural input10596 value5302 value1 value2 = (output10596, value5, value1) := by
  rw [input10596_def, output10596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10594_eq]
  dsimp only
  rw [node10595_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10596 input10593)).val
theorem input10597_def : input10597 = (.seq input10596 input10593) := by
  unfold input10597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10596 output10593)).val
theorem output10597_def : output10597 = (.seq output10596 output10593) := by
  unfold output10597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10597_skip : Flapjack.WordAlloc.isSkip output10597 = false := by
  rw [output10597_def]
  conv => lhs; cbv
  try rfl
theorem node10597_eq : Flapjack.WordAlloc.removeDeadStructural input10597 value5301 value1 value2 = (output10597, value5, value1) := by
  rw [input10597_def, output10597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10593_eq]
  dsimp only
  rw [node10596_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10597 input10592)).val
theorem input10598_def : input10598 = (.seq input10597 input10592) := by
  unfold input10598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10597 output10592)).val
theorem output10598_def : output10598 = (.seq output10597 output10592) := by
  unfold output10598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10598_skip : Flapjack.WordAlloc.isSkip output10598 = false := by
  rw [output10598_def]
  conv => lhs; cbv
  try rfl
theorem node10598_eq : Flapjack.WordAlloc.removeDeadStructural input10598 value5300 value1 value2 = (output10598, value5, value1) := by
  rw [input10598_def, output10598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10592_eq]
  dsimp only
  rw [node10597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10598 input10591)).val
theorem input10599_def : input10599 = (.seq input10598 input10591) := by
  unfold input10599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10598 output10591)).val
theorem output10599_def : output10599 = (.seq output10598 output10591) := by
  unfold output10599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10599_skip : Flapjack.WordAlloc.isSkip output10599 = false := by
  rw [output10599_def]
  conv => lhs; cbv
  try rfl
theorem node10599_eq : Flapjack.WordAlloc.removeDeadStructural input10599 value5299 value1 value2 = (output10599, value5, value1) := by
  rw [input10599_def, output10599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10591_eq]
  dsimp only
  rw [node10598_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5304 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7353 (Flapjack.WordLangAddr.addr 7357 0#64)))).val
theorem input10600_def : input10600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7353 (Flapjack.WordLangAddr.addr 7357 0#64))) := by
  unfold input10600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7353 (Flapjack.WordLangAddr.addr 7357 0#64)))).val
theorem output10600_def : output10600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7353 (Flapjack.WordLangAddr.addr 7357 0#64))) := by
  unfold output10600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10600_skip : Flapjack.WordAlloc.isSkip output10600 = false := by
  rw [output10600_def]
  conv => lhs; cbv
  try rfl
theorem node10600_eq : Flapjack.WordAlloc.removeDeadStructural input10600 value5 value1 value2 = (output10600, value5304, value1) := by
  rw [input10600_def, output10600_def]
  try (conv => lhs; cbv)
  try rfl

def value5305 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7357, 7345)])).val
theorem input10601_def : input10601 = (Flapjack.WordLangProgHOL.move 0 [(7357, 7345)]) := by
  unfold input10601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7357, 7345)])).val
theorem output10601_def : output10601 = (Flapjack.WordLangProgHOL.move 0 [(7357, 7345)]) := by
  unfold output10601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10601_skip : Flapjack.WordAlloc.isSkip output10601 = false := by
  rw [output10601_def]
  conv => lhs; cbv
  try rfl
theorem node10601_eq : Flapjack.WordAlloc.removeDeadStructural input10601 value5304 value1 value2 = (output10601, value5305, value1) := by
  rw [input10601_def, output10601_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10601 input10600)).val
theorem input10602_def : input10602 = (.seq input10601 input10600) := by
  unfold input10602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10601 output10600)).val
theorem output10602_def : output10602 = (.seq output10601 output10600) := by
  unfold output10602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10602_skip : Flapjack.WordAlloc.isSkip output10602 = false := by
  rw [output10602_def]
  conv => lhs; cbv
  try rfl
theorem node10602_eq : Flapjack.WordAlloc.removeDeadStructural input10602 value5 value1 value2 = (output10602, value5305, value1) := by
  rw [input10602_def, output10602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10600_eq]
  dsimp only
  rw [node10601_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5306 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7353 1360808972976160816#64))).val
theorem input10603_def : input10603 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7353 1360808972976160816#64)) := by
  unfold input10603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7353 1360808972976160816#64))).val
theorem output10603_def : output10603 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7353 1360808972976160816#64)) := by
  unfold output10603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10603_skip : Flapjack.WordAlloc.isSkip output10603 = false := by
  rw [output10603_def]
  conv => lhs; cbv
  try rfl
theorem node10603_eq : Flapjack.WordAlloc.removeDeadStructural input10603 value5305 value1 value2 = (output10603, value5306, value1) := by
  rw [input10603_def, output10603_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7349 1360808972976160816#64))).val
theorem input10604_def : input10604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7349 1360808972976160816#64)) := by
  unfold input10604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10604_def : output10604 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10604_skip : Flapjack.WordAlloc.isSkip output10604 = true := by
  rw [output10604_def]
  conv => lhs; cbv
  try rfl
theorem node10604_eq : Flapjack.WordAlloc.removeDeadStructural input10604 value5306 value1 value2 = (output10604, value5306, value1) := by
  rw [input10604_def, output10604_def]
  try (conv => lhs; cbv)
  try rfl

def value5307 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7345 7341 (Flapjack.WordRegImm.imm 1800#64))))).val
theorem input10605_def : input10605 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7345 7341 (Flapjack.WordRegImm.imm 1800#64)))) := by
  unfold input10605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7345 7341 (Flapjack.WordRegImm.imm 1800#64))))).val
theorem output10605_def : output10605 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7345 7341 (Flapjack.WordRegImm.imm 1800#64)))) := by
  unfold output10605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10605_skip : Flapjack.WordAlloc.isSkip output10605 = false := by
  rw [output10605_def]
  conv => lhs; cbv
  try rfl
theorem node10605_eq : Flapjack.WordAlloc.removeDeadStructural input10605 value5306 value1 value2 = (output10605, value5307, value1) := by
  rw [input10605_def, output10605_def]
  try (conv => lhs; cbv)
  try rfl

def value5308 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7341 (Flapjack.WordLangAddr.addr 7337 18446744073709551104#64)))).val
theorem input10606_def : input10606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7341 (Flapjack.WordLangAddr.addr 7337 18446744073709551104#64))) := by
  unfold input10606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7341 (Flapjack.WordLangAddr.addr 7337 18446744073709551104#64)))).val
theorem output10606_def : output10606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7341 (Flapjack.WordLangAddr.addr 7337 18446744073709551104#64))) := by
  unfold output10606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10606_skip : Flapjack.WordAlloc.isSkip output10606 = false := by
  rw [output10606_def]
  conv => lhs; cbv
  try rfl
theorem node10606_eq : Flapjack.WordAlloc.removeDeadStructural input10606 value5307 value1 value2 = (output10606, value5308, value1) := by
  rw [input10606_def, output10606_def]
  try (conv => lhs; cbv)
  try rfl

def value5309 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7337 7333)).val
theorem input10607_def : input10607 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7337 7333) := by
  unfold input10607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7337 7333)).val
theorem output10607_def : output10607 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7337 7333) := by
  unfold output10607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10607_skip : Flapjack.WordAlloc.isSkip output10607 = false := by
  rw [output10607_def]
  conv => lhs; cbv
  try rfl
theorem node10607_eq : Flapjack.WordAlloc.removeDeadStructural input10607 value5308 value1 value2 = (output10607, value5309, value1) := by
  rw [input10607_def, output10607_def]
  try (conv => lhs; cbv)
  try rfl

def value5310 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7333 7329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10608_def : input10608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7333 7329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7333 7329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10608_def : output10608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7333 7329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10608_skip : Flapjack.WordAlloc.isSkip output10608 = false := by
  rw [output10608_def]
  conv => lhs; cbv
  try rfl
theorem node10608_eq : Flapjack.WordAlloc.removeDeadStructural input10608 value5309 value1 value2 = (output10608, value5310, value1) := by
  rw [input10608_def, output10608_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7329 Flapjack.WordStore.heapLength)).val
theorem input10609_def : input10609 = (Flapjack.WordLangProgHOL.get 7329 Flapjack.WordStore.heapLength) := by
  unfold input10609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7329 Flapjack.WordStore.heapLength)).val
theorem output10609_def : output10609 = (Flapjack.WordLangProgHOL.get 7329 Flapjack.WordStore.heapLength) := by
  unfold output10609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10609_skip : Flapjack.WordAlloc.isSkip output10609 = false := by
  rw [output10609_def]
  conv => lhs; cbv
  try rfl
theorem node10609_eq : Flapjack.WordAlloc.removeDeadStructural input10609 value5310 value1 value2 = (output10609, value5, value1) := by
  rw [input10609_def, output10609_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10609 input10608)).val
theorem input10610_def : input10610 = (.seq input10609 input10608) := by
  unfold input10610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10609 output10608)).val
theorem output10610_def : output10610 = (.seq output10609 output10608) := by
  unfold output10610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10610_skip : Flapjack.WordAlloc.isSkip output10610 = false := by
  rw [output10610_def]
  conv => lhs; cbv
  try rfl
theorem node10610_eq : Flapjack.WordAlloc.removeDeadStructural input10610 value5309 value1 value2 = (output10610, value5, value1) := by
  rw [input10610_def, output10610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10608_eq]
  dsimp only
  rw [node10609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10610 input10607)).val
theorem input10611_def : input10611 = (.seq input10610 input10607) := by
  unfold input10611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10610 output10607)).val
theorem output10611_def : output10611 = (.seq output10610 output10607) := by
  unfold output10611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10611_skip : Flapjack.WordAlloc.isSkip output10611 = false := by
  rw [output10611_def]
  conv => lhs; cbv
  try rfl
theorem node10611_eq : Flapjack.WordAlloc.removeDeadStructural input10611 value5308 value1 value2 = (output10611, value5, value1) := by
  rw [input10611_def, output10611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10607_eq]
  dsimp only
  rw [node10610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10611 input10606)).val
theorem input10612_def : input10612 = (.seq input10611 input10606) := by
  unfold input10612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10611 output10606)).val
theorem output10612_def : output10612 = (.seq output10611 output10606) := by
  unfold output10612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10612_skip : Flapjack.WordAlloc.isSkip output10612 = false := by
  rw [output10612_def]
  conv => lhs; cbv
  try rfl
theorem node10612_eq : Flapjack.WordAlloc.removeDeadStructural input10612 value5307 value1 value2 = (output10612, value5, value1) := by
  rw [input10612_def, output10612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10606_eq]
  dsimp only
  rw [node10611_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10612 input10605)).val
theorem input10613_def : input10613 = (.seq input10612 input10605) := by
  unfold input10613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10612 output10605)).val
theorem output10613_def : output10613 = (.seq output10612 output10605) := by
  unfold output10613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10613_skip : Flapjack.WordAlloc.isSkip output10613 = false := by
  rw [output10613_def]
  conv => lhs; cbv
  try rfl
theorem node10613_eq : Flapjack.WordAlloc.removeDeadStructural input10613 value5306 value1 value2 = (output10613, value5, value1) := by
  rw [input10613_def, output10613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10605_eq]
  dsimp only
  rw [node10612_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5311 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7321 (Flapjack.WordLangAddr.addr 7325 0#64)))).val
theorem input10614_def : input10614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7321 (Flapjack.WordLangAddr.addr 7325 0#64))) := by
  unfold input10614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7321 (Flapjack.WordLangAddr.addr 7325 0#64)))).val
theorem output10614_def : output10614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7321 (Flapjack.WordLangAddr.addr 7325 0#64))) := by
  unfold output10614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10614_skip : Flapjack.WordAlloc.isSkip output10614 = false := by
  rw [output10614_def]
  conv => lhs; cbv
  try rfl
theorem node10614_eq : Flapjack.WordAlloc.removeDeadStructural input10614 value5 value1 value2 = (output10614, value5311, value1) := by
  rw [input10614_def, output10614_def]
  try (conv => lhs; cbv)
  try rfl

def value5312 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7325, 7313)])).val
theorem input10615_def : input10615 = (Flapjack.WordLangProgHOL.move 0 [(7325, 7313)]) := by
  unfold input10615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7325, 7313)])).val
theorem output10615_def : output10615 = (Flapjack.WordLangProgHOL.move 0 [(7325, 7313)]) := by
  unfold output10615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10615_skip : Flapjack.WordAlloc.isSkip output10615 = false := by
  rw [output10615_def]
  conv => lhs; cbv
  try rfl
theorem node10615_eq : Flapjack.WordAlloc.removeDeadStructural input10615 value5311 value1 value2 = (output10615, value5312, value1) := by
  rw [input10615_def, output10615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10615 input10614)).val
theorem input10616_def : input10616 = (.seq input10615 input10614) := by
  unfold input10616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10615 output10614)).val
theorem output10616_def : output10616 = (.seq output10615 output10614) := by
  unfold output10616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10616_skip : Flapjack.WordAlloc.isSkip output10616 = false := by
  rw [output10616_def]
  conv => lhs; cbv
  try rfl
theorem node10616_eq : Flapjack.WordAlloc.removeDeadStructural input10616 value5 value1 value2 = (output10616, value5312, value1) := by
  rw [input10616_def, output10616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10614_eq]
  dsimp only
  rw [node10615_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5313 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7321 111203405409480251#64))).val
theorem input10617_def : input10617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7321 111203405409480251#64)) := by
  unfold input10617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7321 111203405409480251#64))).val
theorem output10617_def : output10617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7321 111203405409480251#64)) := by
  unfold output10617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10617_skip : Flapjack.WordAlloc.isSkip output10617 = false := by
  rw [output10617_def]
  conv => lhs; cbv
  try rfl
theorem node10617_eq : Flapjack.WordAlloc.removeDeadStructural input10617 value5312 value1 value2 = (output10617, value5313, value1) := by
  rw [input10617_def, output10617_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7317 111203405409480251#64))).val
theorem input10618_def : input10618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7317 111203405409480251#64)) := by
  unfold input10618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10618_def : output10618 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10618_skip : Flapjack.WordAlloc.isSkip output10618 = true := by
  rw [output10618_def]
  conv => lhs; cbv
  try rfl
theorem node10618_eq : Flapjack.WordAlloc.removeDeadStructural input10618 value5313 value1 value2 = (output10618, value5313, value1) := by
  rw [input10618_def, output10618_def]
  try (conv => lhs; cbv)
  try rfl

def value5314 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7313 7309 (Flapjack.WordRegImm.imm 1792#64))))).val
theorem input10619_def : input10619 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7313 7309 (Flapjack.WordRegImm.imm 1792#64)))) := by
  unfold input10619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7313 7309 (Flapjack.WordRegImm.imm 1792#64))))).val
theorem output10619_def : output10619 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7313 7309 (Flapjack.WordRegImm.imm 1792#64)))) := by
  unfold output10619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10619_skip : Flapjack.WordAlloc.isSkip output10619 = false := by
  rw [output10619_def]
  conv => lhs; cbv
  try rfl
theorem node10619_eq : Flapjack.WordAlloc.removeDeadStructural input10619 value5313 value1 value2 = (output10619, value5314, value1) := by
  rw [input10619_def, output10619_def]
  try (conv => lhs; cbv)
  try rfl

def value5315 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7309 (Flapjack.WordLangAddr.addr 7305 18446744073709551104#64)))).val
theorem input10620_def : input10620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7309 (Flapjack.WordLangAddr.addr 7305 18446744073709551104#64))) := by
  unfold input10620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7309 (Flapjack.WordLangAddr.addr 7305 18446744073709551104#64)))).val
theorem output10620_def : output10620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7309 (Flapjack.WordLangAddr.addr 7305 18446744073709551104#64))) := by
  unfold output10620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10620_skip : Flapjack.WordAlloc.isSkip output10620 = false := by
  rw [output10620_def]
  conv => lhs; cbv
  try rfl
theorem node10620_eq : Flapjack.WordAlloc.removeDeadStructural input10620 value5314 value1 value2 = (output10620, value5315, value1) := by
  rw [input10620_def, output10620_def]
  try (conv => lhs; cbv)
  try rfl

def value5316 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7305 7301)).val
theorem input10621_def : input10621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7305 7301) := by
  unfold input10621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7305 7301)).val
theorem output10621_def : output10621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7305 7301) := by
  unfold output10621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10621_skip : Flapjack.WordAlloc.isSkip output10621 = false := by
  rw [output10621_def]
  conv => lhs; cbv
  try rfl
theorem node10621_eq : Flapjack.WordAlloc.removeDeadStructural input10621 value5315 value1 value2 = (output10621, value5316, value1) := by
  rw [input10621_def, output10621_def]
  try (conv => lhs; cbv)
  try rfl

def value5317 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7301 7297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10622_def : input10622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7301 7297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7301 7297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10622_def : output10622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7301 7297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10622_skip : Flapjack.WordAlloc.isSkip output10622 = false := by
  rw [output10622_def]
  conv => lhs; cbv
  try rfl
theorem node10622_eq : Flapjack.WordAlloc.removeDeadStructural input10622 value5316 value1 value2 = (output10622, value5317, value1) := by
  rw [input10622_def, output10622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7297 Flapjack.WordStore.heapLength)).val
theorem input10623_def : input10623 = (Flapjack.WordLangProgHOL.get 7297 Flapjack.WordStore.heapLength) := by
  unfold input10623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7297 Flapjack.WordStore.heapLength)).val
theorem output10623_def : output10623 = (Flapjack.WordLangProgHOL.get 7297 Flapjack.WordStore.heapLength) := by
  unfold output10623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10623_skip : Flapjack.WordAlloc.isSkip output10623 = false := by
  rw [output10623_def]
  conv => lhs; cbv
  try rfl
theorem node10623_eq : Flapjack.WordAlloc.removeDeadStructural input10623 value5317 value1 value2 = (output10623, value5, value1) := by
  rw [input10623_def, output10623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10623 input10622)).val
theorem input10624_def : input10624 = (.seq input10623 input10622) := by
  unfold input10624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10623 output10622)).val
theorem output10624_def : output10624 = (.seq output10623 output10622) := by
  unfold output10624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10624_skip : Flapjack.WordAlloc.isSkip output10624 = false := by
  rw [output10624_def]
  conv => lhs; cbv
  try rfl
theorem node10624_eq : Flapjack.WordAlloc.removeDeadStructural input10624 value5316 value1 value2 = (output10624, value5, value1) := by
  rw [input10624_def, output10624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10622_eq]
  dsimp only
  rw [node10623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10624 input10621)).val
theorem input10625_def : input10625 = (.seq input10624 input10621) := by
  unfold input10625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10624 output10621)).val
theorem output10625_def : output10625 = (.seq output10624 output10621) := by
  unfold output10625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10625_skip : Flapjack.WordAlloc.isSkip output10625 = false := by
  rw [output10625_def]
  conv => lhs; cbv
  try rfl
theorem node10625_eq : Flapjack.WordAlloc.removeDeadStructural input10625 value5315 value1 value2 = (output10625, value5, value1) := by
  rw [input10625_def, output10625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10621_eq]
  dsimp only
  rw [node10624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10625 input10620)).val
theorem input10626_def : input10626 = (.seq input10625 input10620) := by
  unfold input10626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10625 output10620)).val
theorem output10626_def : output10626 = (.seq output10625 output10620) := by
  unfold output10626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10626_skip : Flapjack.WordAlloc.isSkip output10626 = false := by
  rw [output10626_def]
  conv => lhs; cbv
  try rfl
theorem node10626_eq : Flapjack.WordAlloc.removeDeadStructural input10626 value5314 value1 value2 = (output10626, value5, value1) := by
  rw [input10626_def, output10626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10620_eq]
  dsimp only
  rw [node10625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10626 input10619)).val
theorem input10627_def : input10627 = (.seq input10626 input10619) := by
  unfold input10627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10626 output10619)).val
theorem output10627_def : output10627 = (.seq output10626 output10619) := by
  unfold output10627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10627_skip : Flapjack.WordAlloc.isSkip output10627 = false := by
  rw [output10627_def]
  conv => lhs; cbv
  try rfl
theorem node10627_eq : Flapjack.WordAlloc.removeDeadStructural input10627 value5313 value1 value2 = (output10627, value5, value1) := by
  rw [input10627_def, output10627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10619_eq]
  dsimp only
  rw [node10626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5318 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7289 (Flapjack.WordLangAddr.addr 7293 0#64)))).val
theorem input10628_def : input10628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7289 (Flapjack.WordLangAddr.addr 7293 0#64))) := by
  unfold input10628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7289 (Flapjack.WordLangAddr.addr 7293 0#64)))).val
theorem output10628_def : output10628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7289 (Flapjack.WordLangAddr.addr 7293 0#64))) := by
  unfold output10628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10628_skip : Flapjack.WordAlloc.isSkip output10628 = false := by
  rw [output10628_def]
  conv => lhs; cbv
  try rfl
theorem node10628_eq : Flapjack.WordAlloc.removeDeadStructural input10628 value5 value1 value2 = (output10628, value5318, value1) := by
  rw [input10628_def, output10628_def]
  try (conv => lhs; cbv)
  try rfl

def value5319 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7293, 7281)])).val
theorem input10629_def : input10629 = (Flapjack.WordLangProgHOL.move 0 [(7293, 7281)]) := by
  unfold input10629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7293, 7281)])).val
theorem output10629_def : output10629 = (Flapjack.WordLangProgHOL.move 0 [(7293, 7281)]) := by
  unfold output10629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10629_skip : Flapjack.WordAlloc.isSkip output10629 = false := by
  rw [output10629_def]
  conv => lhs; cbv
  try rfl
theorem node10629_eq : Flapjack.WordAlloc.removeDeadStructural input10629 value5318 value1 value2 = (output10629, value5319, value1) := by
  rw [input10629_def, output10629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10629 input10628)).val
theorem input10630_def : input10630 = (.seq input10629 input10628) := by
  unfold input10630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10629 output10628)).val
theorem output10630_def : output10630 = (.seq output10629 output10628) := by
  unfold output10630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10630_skip : Flapjack.WordAlloc.isSkip output10630 = false := by
  rw [output10630_def]
  conv => lhs; cbv
  try rfl
theorem node10630_eq : Flapjack.WordAlloc.removeDeadStructural input10630 value5 value1 value2 = (output10630, value5319, value1) := by
  rw [input10630_def, output10630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10628_eq]
  dsimp only
  rw [node10629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5320 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7289 2312248699302920304#64))).val
theorem input10631_def : input10631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7289 2312248699302920304#64)) := by
  unfold input10631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7289 2312248699302920304#64))).val
theorem output10631_def : output10631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7289 2312248699302920304#64)) := by
  unfold output10631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10631_skip : Flapjack.WordAlloc.isSkip output10631 = false := by
  rw [output10631_def]
  conv => lhs; cbv
  try rfl
theorem node10631_eq : Flapjack.WordAlloc.removeDeadStructural input10631 value5319 value1 value2 = (output10631, value5320, value1) := by
  rw [input10631_def, output10631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7285 2312248699302920304#64))).val
theorem input10632_def : input10632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7285 2312248699302920304#64)) := by
  unfold input10632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10632_def : output10632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10632_skip : Flapjack.WordAlloc.isSkip output10632 = true := by
  rw [output10632_def]
  conv => lhs; cbv
  try rfl
theorem node10632_eq : Flapjack.WordAlloc.removeDeadStructural input10632 value5320 value1 value2 = (output10632, value5320, value1) := by
  rw [input10632_def, output10632_def]
  try (conv => lhs; cbv)
  try rfl

def value5321 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7281 7277 (Flapjack.WordRegImm.imm 1784#64))))).val
theorem input10633_def : input10633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7281 7277 (Flapjack.WordRegImm.imm 1784#64)))) := by
  unfold input10633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7281 7277 (Flapjack.WordRegImm.imm 1784#64))))).val
theorem output10633_def : output10633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7281 7277 (Flapjack.WordRegImm.imm 1784#64)))) := by
  unfold output10633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10633_skip : Flapjack.WordAlloc.isSkip output10633 = false := by
  rw [output10633_def]
  conv => lhs; cbv
  try rfl
theorem node10633_eq : Flapjack.WordAlloc.removeDeadStructural input10633 value5320 value1 value2 = (output10633, value5321, value1) := by
  rw [input10633_def, output10633_def]
  try (conv => lhs; cbv)
  try rfl

def value5322 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7277 (Flapjack.WordLangAddr.addr 7273 18446744073709551104#64)))).val
theorem input10634_def : input10634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7277 (Flapjack.WordLangAddr.addr 7273 18446744073709551104#64))) := by
  unfold input10634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7277 (Flapjack.WordLangAddr.addr 7273 18446744073709551104#64)))).val
theorem output10634_def : output10634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7277 (Flapjack.WordLangAddr.addr 7273 18446744073709551104#64))) := by
  unfold output10634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10634_skip : Flapjack.WordAlloc.isSkip output10634 = false := by
  rw [output10634_def]
  conv => lhs; cbv
  try rfl
theorem node10634_eq : Flapjack.WordAlloc.removeDeadStructural input10634 value5321 value1 value2 = (output10634, value5322, value1) := by
  rw [input10634_def, output10634_def]
  try (conv => lhs; cbv)
  try rfl

def value5323 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7273 7269)).val
theorem input10635_def : input10635 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7273 7269) := by
  unfold input10635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7273 7269)).val
theorem output10635_def : output10635 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7273 7269) := by
  unfold output10635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10635_skip : Flapjack.WordAlloc.isSkip output10635 = false := by
  rw [output10635_def]
  conv => lhs; cbv
  try rfl
theorem node10635_eq : Flapjack.WordAlloc.removeDeadStructural input10635 value5322 value1 value2 = (output10635, value5323, value1) := by
  rw [input10635_def, output10635_def]
  try (conv => lhs; cbv)
  try rfl

def value5324 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7269 7265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10636_def : input10636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7269 7265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7269 7265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10636_def : output10636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7269 7265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10636_skip : Flapjack.WordAlloc.isSkip output10636 = false := by
  rw [output10636_def]
  conv => lhs; cbv
  try rfl
theorem node10636_eq : Flapjack.WordAlloc.removeDeadStructural input10636 value5323 value1 value2 = (output10636, value5324, value1) := by
  rw [input10636_def, output10636_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7265 Flapjack.WordStore.heapLength)).val
theorem input10637_def : input10637 = (Flapjack.WordLangProgHOL.get 7265 Flapjack.WordStore.heapLength) := by
  unfold input10637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7265 Flapjack.WordStore.heapLength)).val
theorem output10637_def : output10637 = (Flapjack.WordLangProgHOL.get 7265 Flapjack.WordStore.heapLength) := by
  unfold output10637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10637_skip : Flapjack.WordAlloc.isSkip output10637 = false := by
  rw [output10637_def]
  conv => lhs; cbv
  try rfl
theorem node10637_eq : Flapjack.WordAlloc.removeDeadStructural input10637 value5324 value1 value2 = (output10637, value5, value1) := by
  rw [input10637_def, output10637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10637 input10636)).val
theorem input10638_def : input10638 = (.seq input10637 input10636) := by
  unfold input10638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10637 output10636)).val
theorem output10638_def : output10638 = (.seq output10637 output10636) := by
  unfold output10638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10638_skip : Flapjack.WordAlloc.isSkip output10638 = false := by
  rw [output10638_def]
  conv => lhs; cbv
  try rfl
theorem node10638_eq : Flapjack.WordAlloc.removeDeadStructural input10638 value5323 value1 value2 = (output10638, value5, value1) := by
  rw [input10638_def, output10638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10636_eq]
  dsimp only
  rw [node10637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10638 input10635)).val
theorem input10639_def : input10639 = (.seq input10638 input10635) := by
  unfold input10639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10638 output10635)).val
theorem output10639_def : output10639 = (.seq output10638 output10635) := by
  unfold output10639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10639_skip : Flapjack.WordAlloc.isSkip output10639 = false := by
  rw [output10639_def]
  conv => lhs; cbv
  try rfl
theorem node10639_eq : Flapjack.WordAlloc.removeDeadStructural input10639 value5322 value1 value2 = (output10639, value5, value1) := by
  rw [input10639_def, output10639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10635_eq]
  dsimp only
  rw [node10638_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10639 input10634)).val
theorem input10640_def : input10640 = (.seq input10639 input10634) := by
  unfold input10640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10639 output10634)).val
theorem output10640_def : output10640 = (.seq output10639 output10634) := by
  unfold output10640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10640_skip : Flapjack.WordAlloc.isSkip output10640 = false := by
  rw [output10640_def]
  conv => lhs; cbv
  try rfl
theorem node10640_eq : Flapjack.WordAlloc.removeDeadStructural input10640 value5321 value1 value2 = (output10640, value5, value1) := by
  rw [input10640_def, output10640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10634_eq]
  dsimp only
  rw [node10639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10640 input10633)).val
theorem input10641_def : input10641 = (.seq input10640 input10633) := by
  unfold input10641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10640 output10633)).val
theorem output10641_def : output10641 = (.seq output10640 output10633) := by
  unfold output10641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10641_skip : Flapjack.WordAlloc.isSkip output10641 = false := by
  rw [output10641_def]
  conv => lhs; cbv
  try rfl
theorem node10641_eq : Flapjack.WordAlloc.removeDeadStructural input10641 value5320 value1 value2 = (output10641, value5, value1) := by
  rw [input10641_def, output10641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10633_eq]
  dsimp only
  rw [node10640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5325 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7257 (Flapjack.WordLangAddr.addr 7261 0#64)))).val
theorem input10642_def : input10642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7257 (Flapjack.WordLangAddr.addr 7261 0#64))) := by
  unfold input10642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7257 (Flapjack.WordLangAddr.addr 7261 0#64)))).val
theorem output10642_def : output10642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7257 (Flapjack.WordLangAddr.addr 7261 0#64))) := by
  unfold output10642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10642_skip : Flapjack.WordAlloc.isSkip output10642 = false := by
  rw [output10642_def]
  conv => lhs; cbv
  try rfl
theorem node10642_eq : Flapjack.WordAlloc.removeDeadStructural input10642 value5 value1 value2 = (output10642, value5325, value1) := by
  rw [input10642_def, output10642_def]
  try (conv => lhs; cbv)
  try rfl

def value5326 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7261, 7249)])).val
theorem input10643_def : input10643 = (Flapjack.WordLangProgHOL.move 0 [(7261, 7249)]) := by
  unfold input10643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7261, 7249)])).val
theorem output10643_def : output10643 = (Flapjack.WordLangProgHOL.move 0 [(7261, 7249)]) := by
  unfold output10643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10643_skip : Flapjack.WordAlloc.isSkip output10643 = false := by
  rw [output10643_def]
  conv => lhs; cbv
  try rfl
theorem node10643_eq : Flapjack.WordAlloc.removeDeadStructural input10643 value5325 value1 value2 = (output10643, value5326, value1) := by
  rw [input10643_def, output10643_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10643 input10642)).val
theorem input10644_def : input10644 = (.seq input10643 input10642) := by
  unfold input10644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10643 output10642)).val
theorem output10644_def : output10644 = (.seq output10643 output10642) := by
  unfold output10644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10644_skip : Flapjack.WordAlloc.isSkip output10644 = false := by
  rw [output10644_def]
  conv => lhs; cbv
  try rfl
theorem node10644_eq : Flapjack.WordAlloc.removeDeadStructural input10644 value5 value1 value2 = (output10644, value5326, value1) := by
  rw [input10644_def, output10644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10642_eq]
  dsimp only
  rw [node10643_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5327 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7257 11581500465278574325#64))).val
theorem input10645_def : input10645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7257 11581500465278574325#64)) := by
  unfold input10645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7257 11581500465278574325#64))).val
theorem output10645_def : output10645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7257 11581500465278574325#64)) := by
  unfold output10645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10645_skip : Flapjack.WordAlloc.isSkip output10645 = false := by
  rw [output10645_def]
  conv => lhs; cbv
  try rfl
theorem node10645_eq : Flapjack.WordAlloc.removeDeadStructural input10645 value5326 value1 value2 = (output10645, value5327, value1) := by
  rw [input10645_def, output10645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7253 11581500465278574325#64))).val
theorem input10646_def : input10646 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7253 11581500465278574325#64)) := by
  unfold input10646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10646_def : output10646 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10646_skip : Flapjack.WordAlloc.isSkip output10646 = true := by
  rw [output10646_def]
  conv => lhs; cbv
  try rfl
theorem node10646_eq : Flapjack.WordAlloc.removeDeadStructural input10646 value5327 value1 value2 = (output10646, value5327, value1) := by
  rw [input10646_def, output10646_def]
  try (conv => lhs; cbv)
  try rfl

def value5328 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7249 7245 (Flapjack.WordRegImm.imm 1776#64))))).val
theorem input10647_def : input10647 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7249 7245 (Flapjack.WordRegImm.imm 1776#64)))) := by
  unfold input10647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7249 7245 (Flapjack.WordRegImm.imm 1776#64))))).val
theorem output10647_def : output10647 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7249 7245 (Flapjack.WordRegImm.imm 1776#64)))) := by
  unfold output10647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10647_skip : Flapjack.WordAlloc.isSkip output10647 = false := by
  rw [output10647_def]
  conv => lhs; cbv
  try rfl
theorem node10647_eq : Flapjack.WordAlloc.removeDeadStructural input10647 value5327 value1 value2 = (output10647, value5328, value1) := by
  rw [input10647_def, output10647_def]
  try (conv => lhs; cbv)
  try rfl

def value5329 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7245 (Flapjack.WordLangAddr.addr 7241 18446744073709551104#64)))).val
theorem input10648_def : input10648 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7245 (Flapjack.WordLangAddr.addr 7241 18446744073709551104#64))) := by
  unfold input10648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7245 (Flapjack.WordLangAddr.addr 7241 18446744073709551104#64)))).val
theorem output10648_def : output10648 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7245 (Flapjack.WordLangAddr.addr 7241 18446744073709551104#64))) := by
  unfold output10648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10648_skip : Flapjack.WordAlloc.isSkip output10648 = false := by
  rw [output10648_def]
  conv => lhs; cbv
  try rfl
theorem node10648_eq : Flapjack.WordAlloc.removeDeadStructural input10648 value5328 value1 value2 = (output10648, value5329, value1) := by
  rw [input10648_def, output10648_def]
  try (conv => lhs; cbv)
  try rfl

def value5330 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7241 7237)).val
theorem input10649_def : input10649 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7241 7237) := by
  unfold input10649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7241 7237)).val
theorem output10649_def : output10649 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7241 7237) := by
  unfold output10649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10649_skip : Flapjack.WordAlloc.isSkip output10649 = false := by
  rw [output10649_def]
  conv => lhs; cbv
  try rfl
theorem node10649_eq : Flapjack.WordAlloc.removeDeadStructural input10649 value5329 value1 value2 = (output10649, value5330, value1) := by
  rw [input10649_def, output10649_def]
  try (conv => lhs; cbv)
  try rfl

def value5331 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7237 7233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10650_def : input10650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7237 7233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7237 7233 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10650_def : output10650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7237 7233 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10650_skip : Flapjack.WordAlloc.isSkip output10650 = false := by
  rw [output10650_def]
  conv => lhs; cbv
  try rfl
theorem node10650_eq : Flapjack.WordAlloc.removeDeadStructural input10650 value5330 value1 value2 = (output10650, value5331, value1) := by
  rw [input10650_def, output10650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7233 Flapjack.WordStore.heapLength)).val
theorem input10651_def : input10651 = (Flapjack.WordLangProgHOL.get 7233 Flapjack.WordStore.heapLength) := by
  unfold input10651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7233 Flapjack.WordStore.heapLength)).val
theorem output10651_def : output10651 = (Flapjack.WordLangProgHOL.get 7233 Flapjack.WordStore.heapLength) := by
  unfold output10651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10651_skip : Flapjack.WordAlloc.isSkip output10651 = false := by
  rw [output10651_def]
  conv => lhs; cbv
  try rfl
theorem node10651_eq : Flapjack.WordAlloc.removeDeadStructural input10651 value5331 value1 value2 = (output10651, value5, value1) := by
  rw [input10651_def, output10651_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10651 input10650)).val
theorem input10652_def : input10652 = (.seq input10651 input10650) := by
  unfold input10652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10651 output10650)).val
theorem output10652_def : output10652 = (.seq output10651 output10650) := by
  unfold output10652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10652_skip : Flapjack.WordAlloc.isSkip output10652 = false := by
  rw [output10652_def]
  conv => lhs; cbv
  try rfl
theorem node10652_eq : Flapjack.WordAlloc.removeDeadStructural input10652 value5330 value1 value2 = (output10652, value5, value1) := by
  rw [input10652_def, output10652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10650_eq]
  dsimp only
  rw [node10651_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10652 input10649)).val
theorem input10653_def : input10653 = (.seq input10652 input10649) := by
  unfold input10653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10652 output10649)).val
theorem output10653_def : output10653 = (.seq output10652 output10649) := by
  unfold output10653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10653_skip : Flapjack.WordAlloc.isSkip output10653 = false := by
  rw [output10653_def]
  conv => lhs; cbv
  try rfl
theorem node10653_eq : Flapjack.WordAlloc.removeDeadStructural input10653 value5329 value1 value2 = (output10653, value5, value1) := by
  rw [input10653_def, output10653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10649_eq]
  dsimp only
  rw [node10652_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10653 input10648)).val
theorem input10654_def : input10654 = (.seq input10653 input10648) := by
  unfold input10654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10653 output10648)).val
theorem output10654_def : output10654 = (.seq output10653 output10648) := by
  unfold output10654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10654_skip : Flapjack.WordAlloc.isSkip output10654 = false := by
  rw [output10654_def]
  conv => lhs; cbv
  try rfl
theorem node10654_eq : Flapjack.WordAlloc.removeDeadStructural input10654 value5328 value1 value2 = (output10654, value5, value1) := by
  rw [input10654_def, output10654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10648_eq]
  dsimp only
  rw [node10653_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10654 input10647)).val
theorem input10655_def : input10655 = (.seq input10654 input10647) := by
  unfold input10655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10654 output10647)).val
theorem output10655_def : output10655 = (.seq output10654 output10647) := by
  unfold output10655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10655_skip : Flapjack.WordAlloc.isSkip output10655 = false := by
  rw [output10655_def]
  conv => lhs; cbv
  try rfl
theorem node10655_eq : Flapjack.WordAlloc.removeDeadStructural input10655 value5327 value1 value2 = (output10655, value5, value1) := by
  rw [input10655_def, output10655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10647_eq]
  dsimp only
  rw [node10654_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5332 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7225 (Flapjack.WordLangAddr.addr 7229 0#64)))).val
theorem input10656_def : input10656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7225 (Flapjack.WordLangAddr.addr 7229 0#64))) := by
  unfold input10656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7225 (Flapjack.WordLangAddr.addr 7229 0#64)))).val
theorem output10656_def : output10656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7225 (Flapjack.WordLangAddr.addr 7229 0#64))) := by
  unfold output10656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10656_skip : Flapjack.WordAlloc.isSkip output10656 = false := by
  rw [output10656_def]
  conv => lhs; cbv
  try rfl
theorem node10656_eq : Flapjack.WordAlloc.removeDeadStructural input10656 value5 value1 value2 = (output10656, value5332, value1) := by
  rw [input10656_def, output10656_def]
  try (conv => lhs; cbv)
  try rfl

def value5333 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7229, 7217)])).val
theorem input10657_def : input10657 = (Flapjack.WordLangProgHOL.move 0 [(7229, 7217)]) := by
  unfold input10657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7229, 7217)])).val
theorem output10657_def : output10657 = (Flapjack.WordLangProgHOL.move 0 [(7229, 7217)]) := by
  unfold output10657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10657_skip : Flapjack.WordAlloc.isSkip output10657 = false := by
  rw [output10657_def]
  conv => lhs; cbv
  try rfl
theorem node10657_eq : Flapjack.WordAlloc.removeDeadStructural input10657 value5332 value1 value2 = (output10657, value5333, value1) := by
  rw [input10657_def, output10657_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10657 input10656)).val
theorem input10658_def : input10658 = (.seq input10657 input10656) := by
  unfold input10658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10657 output10656)).val
theorem output10658_def : output10658 = (.seq output10657 output10656) := by
  unfold output10658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10658_skip : Flapjack.WordAlloc.isSkip output10658 = false := by
  rw [output10658_def]
  conv => lhs; cbv
  try rfl
theorem node10658_eq : Flapjack.WordAlloc.removeDeadStructural input10658 value5 value1 value2 = (output10658, value5333, value1) := by
  rw [input10658_def, output10658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10656_eq]
  dsimp only
  rw [node10657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5334 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7225 6495071758858381989#64))).val
theorem input10659_def : input10659 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7225 6495071758858381989#64)) := by
  unfold input10659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7225 6495071758858381989#64))).val
theorem output10659_def : output10659 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7225 6495071758858381989#64)) := by
  unfold output10659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10659_skip : Flapjack.WordAlloc.isSkip output10659 = false := by
  rw [output10659_def]
  conv => lhs; cbv
  try rfl
theorem node10659_eq : Flapjack.WordAlloc.removeDeadStructural input10659 value5333 value1 value2 = (output10659, value5334, value1) := by
  rw [input10659_def, output10659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7221 6495071758858381989#64))).val
theorem input10660_def : input10660 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7221 6495071758858381989#64)) := by
  unfold input10660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10660_def : output10660 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10660_skip : Flapjack.WordAlloc.isSkip output10660 = true := by
  rw [output10660_def]
  conv => lhs; cbv
  try rfl
theorem node10660_eq : Flapjack.WordAlloc.removeDeadStructural input10660 value5334 value1 value2 = (output10660, value5334, value1) := by
  rw [input10660_def, output10660_def]
  try (conv => lhs; cbv)
  try rfl

def value5335 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7217 7213 (Flapjack.WordRegImm.imm 1768#64))))).val
theorem input10661_def : input10661 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7217 7213 (Flapjack.WordRegImm.imm 1768#64)))) := by
  unfold input10661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7217 7213 (Flapjack.WordRegImm.imm 1768#64))))).val
theorem output10661_def : output10661 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7217 7213 (Flapjack.WordRegImm.imm 1768#64)))) := by
  unfold output10661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10661_skip : Flapjack.WordAlloc.isSkip output10661 = false := by
  rw [output10661_def]
  conv => lhs; cbv
  try rfl
theorem node10661_eq : Flapjack.WordAlloc.removeDeadStructural input10661 value5334 value1 value2 = (output10661, value5335, value1) := by
  rw [input10661_def, output10661_def]
  try (conv => lhs; cbv)
  try rfl

def value5336 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7213 (Flapjack.WordLangAddr.addr 7209 18446744073709551104#64)))).val
theorem input10662_def : input10662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7213 (Flapjack.WordLangAddr.addr 7209 18446744073709551104#64))) := by
  unfold input10662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7213 (Flapjack.WordLangAddr.addr 7209 18446744073709551104#64)))).val
theorem output10662_def : output10662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7213 (Flapjack.WordLangAddr.addr 7209 18446744073709551104#64))) := by
  unfold output10662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10662_skip : Flapjack.WordAlloc.isSkip output10662 = false := by
  rw [output10662_def]
  conv => lhs; cbv
  try rfl
theorem node10662_eq : Flapjack.WordAlloc.removeDeadStructural input10662 value5335 value1 value2 = (output10662, value5336, value1) := by
  rw [input10662_def, output10662_def]
  try (conv => lhs; cbv)
  try rfl

def value5337 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7209 7205)).val
theorem input10663_def : input10663 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7209 7205) := by
  unfold input10663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7209 7205)).val
theorem output10663_def : output10663 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7209 7205) := by
  unfold output10663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10663_skip : Flapjack.WordAlloc.isSkip output10663 = false := by
  rw [output10663_def]
  conv => lhs; cbv
  try rfl
theorem node10663_eq : Flapjack.WordAlloc.removeDeadStructural input10663 value5336 value1 value2 = (output10663, value5337, value1) := by
  rw [input10663_def, output10663_def]
  try (conv => lhs; cbv)
  try rfl

def value5338 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7205 7201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10664_def : input10664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7205 7201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7205 7201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10664_def : output10664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7205 7201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10664_skip : Flapjack.WordAlloc.isSkip output10664 = false := by
  rw [output10664_def]
  conv => lhs; cbv
  try rfl
theorem node10664_eq : Flapjack.WordAlloc.removeDeadStructural input10664 value5337 value1 value2 = (output10664, value5338, value1) := by
  rw [input10664_def, output10664_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7201 Flapjack.WordStore.heapLength)).val
theorem input10665_def : input10665 = (Flapjack.WordLangProgHOL.get 7201 Flapjack.WordStore.heapLength) := by
  unfold input10665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7201 Flapjack.WordStore.heapLength)).val
theorem output10665_def : output10665 = (Flapjack.WordLangProgHOL.get 7201 Flapjack.WordStore.heapLength) := by
  unfold output10665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10665_skip : Flapjack.WordAlloc.isSkip output10665 = false := by
  rw [output10665_def]
  conv => lhs; cbv
  try rfl
theorem node10665_eq : Flapjack.WordAlloc.removeDeadStructural input10665 value5338 value1 value2 = (output10665, value5, value1) := by
  rw [input10665_def, output10665_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10665 input10664)).val
theorem input10666_def : input10666 = (.seq input10665 input10664) := by
  unfold input10666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10665 output10664)).val
theorem output10666_def : output10666 = (.seq output10665 output10664) := by
  unfold output10666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10666_skip : Flapjack.WordAlloc.isSkip output10666 = false := by
  rw [output10666_def]
  conv => lhs; cbv
  try rfl
theorem node10666_eq : Flapjack.WordAlloc.removeDeadStructural input10666 value5337 value1 value2 = (output10666, value5, value1) := by
  rw [input10666_def, output10666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10664_eq]
  dsimp only
  rw [node10665_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10666 input10663)).val
theorem input10667_def : input10667 = (.seq input10666 input10663) := by
  unfold input10667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10666 output10663)).val
theorem output10667_def : output10667 = (.seq output10666 output10663) := by
  unfold output10667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10667_skip : Flapjack.WordAlloc.isSkip output10667 = false := by
  rw [output10667_def]
  conv => lhs; cbv
  try rfl
theorem node10667_eq : Flapjack.WordAlloc.removeDeadStructural input10667 value5336 value1 value2 = (output10667, value5, value1) := by
  rw [input10667_def, output10667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10663_eq]
  dsimp only
  rw [node10666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10667 input10662)).val
theorem input10668_def : input10668 = (.seq input10667 input10662) := by
  unfold input10668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10667 output10662)).val
theorem output10668_def : output10668 = (.seq output10667 output10662) := by
  unfold output10668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10668_skip : Flapjack.WordAlloc.isSkip output10668 = false := by
  rw [output10668_def]
  conv => lhs; cbv
  try rfl
theorem node10668_eq : Flapjack.WordAlloc.removeDeadStructural input10668 value5335 value1 value2 = (output10668, value5, value1) := by
  rw [input10668_def, output10668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10662_eq]
  dsimp only
  rw [node10667_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10668 input10661)).val
theorem input10669_def : input10669 = (.seq input10668 input10661) := by
  unfold input10669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10668 output10661)).val
theorem output10669_def : output10669 = (.seq output10668 output10661) := by
  unfold output10669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10669_skip : Flapjack.WordAlloc.isSkip output10669 = false := by
  rw [output10669_def]
  conv => lhs; cbv
  try rfl
theorem node10669_eq : Flapjack.WordAlloc.removeDeadStructural input10669 value5334 value1 value2 = (output10669, value5, value1) := by
  rw [input10669_def, output10669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10661_eq]
  dsimp only
  rw [node10668_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5339 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7193 (Flapjack.WordLangAddr.addr 7197 0#64)))).val
theorem input10670_def : input10670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7193 (Flapjack.WordLangAddr.addr 7197 0#64))) := by
  unfold input10670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7193 (Flapjack.WordLangAddr.addr 7197 0#64)))).val
theorem output10670_def : output10670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7193 (Flapjack.WordLangAddr.addr 7197 0#64))) := by
  unfold output10670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10670_skip : Flapjack.WordAlloc.isSkip output10670 = false := by
  rw [output10670_def]
  conv => lhs; cbv
  try rfl
theorem node10670_eq : Flapjack.WordAlloc.removeDeadStructural input10670 value5 value1 value2 = (output10670, value5339, value1) := by
  rw [input10670_def, output10670_def]
  try (conv => lhs; cbv)
  try rfl

def value5340 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7197, 7185)])).val
theorem input10671_def : input10671 = (Flapjack.WordLangProgHOL.move 0 [(7197, 7185)]) := by
  unfold input10671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7197, 7185)])).val
theorem output10671_def : output10671 = (Flapjack.WordLangProgHOL.move 0 [(7197, 7185)]) := by
  unfold output10671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10671_skip : Flapjack.WordAlloc.isSkip output10671 = false := by
  rw [output10671_def]
  conv => lhs; cbv
  try rfl
theorem node10671_eq : Flapjack.WordAlloc.removeDeadStructural input10671 value5339 value1 value2 = (output10671, value5340, value1) := by
  rw [input10671_def, output10671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10671 input10670)).val
theorem input10672_def : input10672 = (.seq input10671 input10670) := by
  unfold input10672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10671 output10670)).val
theorem output10672_def : output10672 = (.seq output10671 output10670) := by
  unfold output10672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10672_skip : Flapjack.WordAlloc.isSkip output10672 = false := by
  rw [output10672_def]
  conv => lhs; cbv
  try rfl
theorem node10672_eq : Flapjack.WordAlloc.removeDeadStructural input10672 value5 value1 value2 = (output10672, value5340, value1) := by
  rw [input10672_def, output10672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10670_eq]
  dsimp only
  rw [node10671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5341 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7193 15117538217124375520#64))).val
theorem input10673_def : input10673 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7193 15117538217124375520#64)) := by
  unfold input10673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7193 15117538217124375520#64))).val
theorem output10673_def : output10673 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7193 15117538217124375520#64)) := by
  unfold output10673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10673_skip : Flapjack.WordAlloc.isSkip output10673 = false := by
  rw [output10673_def]
  conv => lhs; cbv
  try rfl
theorem node10673_eq : Flapjack.WordAlloc.removeDeadStructural input10673 value5340 value1 value2 = (output10673, value5341, value1) := by
  rw [input10673_def, output10673_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7189 15117538217124375520#64))).val
theorem input10674_def : input10674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7189 15117538217124375520#64)) := by
  unfold input10674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10674_def : output10674 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10674_skip : Flapjack.WordAlloc.isSkip output10674 = true := by
  rw [output10674_def]
  conv => lhs; cbv
  try rfl
theorem node10674_eq : Flapjack.WordAlloc.removeDeadStructural input10674 value5341 value1 value2 = (output10674, value5341, value1) := by
  rw [input10674_def, output10674_def]
  try (conv => lhs; cbv)
  try rfl

def value5342 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7185 7181 (Flapjack.WordRegImm.imm 1760#64))))).val
theorem input10675_def : input10675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7185 7181 (Flapjack.WordRegImm.imm 1760#64)))) := by
  unfold input10675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7185 7181 (Flapjack.WordRegImm.imm 1760#64))))).val
theorem output10675_def : output10675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7185 7181 (Flapjack.WordRegImm.imm 1760#64)))) := by
  unfold output10675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10675_skip : Flapjack.WordAlloc.isSkip output10675 = false := by
  rw [output10675_def]
  conv => lhs; cbv
  try rfl
theorem node10675_eq : Flapjack.WordAlloc.removeDeadStructural input10675 value5341 value1 value2 = (output10675, value5342, value1) := by
  rw [input10675_def, output10675_def]
  try (conv => lhs; cbv)
  try rfl

def value5343 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7181 (Flapjack.WordLangAddr.addr 7177 18446744073709551104#64)))).val
theorem input10676_def : input10676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7181 (Flapjack.WordLangAddr.addr 7177 18446744073709551104#64))) := by
  unfold input10676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7181 (Flapjack.WordLangAddr.addr 7177 18446744073709551104#64)))).val
theorem output10676_def : output10676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7181 (Flapjack.WordLangAddr.addr 7177 18446744073709551104#64))) := by
  unfold output10676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10676_skip : Flapjack.WordAlloc.isSkip output10676 = false := by
  rw [output10676_def]
  conv => lhs; cbv
  try rfl
theorem node10676_eq : Flapjack.WordAlloc.removeDeadStructural input10676 value5342 value1 value2 = (output10676, value5343, value1) := by
  rw [input10676_def, output10676_def]
  try (conv => lhs; cbv)
  try rfl

def value5344 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7177 7173)).val
theorem input10677_def : input10677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7177 7173) := by
  unfold input10677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7177 7173)).val
theorem output10677_def : output10677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7177 7173) := by
  unfold output10677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10677_skip : Flapjack.WordAlloc.isSkip output10677 = false := by
  rw [output10677_def]
  conv => lhs; cbv
  try rfl
theorem node10677_eq : Flapjack.WordAlloc.removeDeadStructural input10677 value5343 value1 value2 = (output10677, value5344, value1) := by
  rw [input10677_def, output10677_def]
  try (conv => lhs; cbv)
  try rfl

def value5345 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7173 7169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10678_def : input10678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7173 7169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7173 7169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10678_def : output10678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7173 7169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10678_skip : Flapjack.WordAlloc.isSkip output10678 = false := by
  rw [output10678_def]
  conv => lhs; cbv
  try rfl
theorem node10678_eq : Flapjack.WordAlloc.removeDeadStructural input10678 value5344 value1 value2 = (output10678, value5345, value1) := by
  rw [input10678_def, output10678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7169 Flapjack.WordStore.heapLength)).val
theorem input10679_def : input10679 = (Flapjack.WordLangProgHOL.get 7169 Flapjack.WordStore.heapLength) := by
  unfold input10679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7169 Flapjack.WordStore.heapLength)).val
theorem output10679_def : output10679 = (Flapjack.WordLangProgHOL.get 7169 Flapjack.WordStore.heapLength) := by
  unfold output10679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10679_skip : Flapjack.WordAlloc.isSkip output10679 = false := by
  rw [output10679_def]
  conv => lhs; cbv
  try rfl
theorem node10679_eq : Flapjack.WordAlloc.removeDeadStructural input10679 value5345 value1 value2 = (output10679, value5, value1) := by
  rw [input10679_def, output10679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10679 input10678)).val
theorem input10680_def : input10680 = (.seq input10679 input10678) := by
  unfold input10680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10679 output10678)).val
theorem output10680_def : output10680 = (.seq output10679 output10678) := by
  unfold output10680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10680_skip : Flapjack.WordAlloc.isSkip output10680 = false := by
  rw [output10680_def]
  conv => lhs; cbv
  try rfl
theorem node10680_eq : Flapjack.WordAlloc.removeDeadStructural input10680 value5344 value1 value2 = (output10680, value5, value1) := by
  rw [input10680_def, output10680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10678_eq]
  dsimp only
  rw [node10679_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10680 input10677)).val
theorem input10681_def : input10681 = (.seq input10680 input10677) := by
  unfold input10681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10680 output10677)).val
theorem output10681_def : output10681 = (.seq output10680 output10677) := by
  unfold output10681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10681_skip : Flapjack.WordAlloc.isSkip output10681 = false := by
  rw [output10681_def]
  conv => lhs; cbv
  try rfl
theorem node10681_eq : Flapjack.WordAlloc.removeDeadStructural input10681 value5343 value1 value2 = (output10681, value5, value1) := by
  rw [input10681_def, output10681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10677_eq]
  dsimp only
  rw [node10680_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10681 input10676)).val
theorem input10682_def : input10682 = (.seq input10681 input10676) := by
  unfold input10682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10681 output10676)).val
theorem output10682_def : output10682 = (.seq output10681 output10676) := by
  unfold output10682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10682_skip : Flapjack.WordAlloc.isSkip output10682 = false := by
  rw [output10682_def]
  conv => lhs; cbv
  try rfl
theorem node10682_eq : Flapjack.WordAlloc.removeDeadStructural input10682 value5342 value1 value2 = (output10682, value5, value1) := by
  rw [input10682_def, output10682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10676_eq]
  dsimp only
  rw [node10681_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10682 input10675)).val
theorem input10683_def : input10683 = (.seq input10682 input10675) := by
  unfold input10683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10682 output10675)).val
theorem output10683_def : output10683 = (.seq output10682 output10675) := by
  unfold output10683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10683_skip : Flapjack.WordAlloc.isSkip output10683 = false := by
  rw [output10683_def]
  conv => lhs; cbv
  try rfl
theorem node10683_eq : Flapjack.WordAlloc.removeDeadStructural input10683 value5341 value1 value2 = (output10683, value5, value1) := by
  rw [input10683_def, output10683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10675_eq]
  dsimp only
  rw [node10682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5346 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7161 (Flapjack.WordLangAddr.addr 7165 0#64)))).val
theorem input10684_def : input10684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7161 (Flapjack.WordLangAddr.addr 7165 0#64))) := by
  unfold input10684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7161 (Flapjack.WordLangAddr.addr 7165 0#64)))).val
theorem output10684_def : output10684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7161 (Flapjack.WordLangAddr.addr 7165 0#64))) := by
  unfold output10684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10684_skip : Flapjack.WordAlloc.isSkip output10684 = false := by
  rw [output10684_def]
  conv => lhs; cbv
  try rfl
theorem node10684_eq : Flapjack.WordAlloc.removeDeadStructural input10684 value5 value1 value2 = (output10684, value5346, value1) := by
  rw [input10684_def, output10684_def]
  try (conv => lhs; cbv)
  try rfl

def value5347 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7165, 7153)])).val
theorem input10685_def : input10685 = (Flapjack.WordLangProgHOL.move 0 [(7165, 7153)]) := by
  unfold input10685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7165, 7153)])).val
theorem output10685_def : output10685 = (Flapjack.WordLangProgHOL.move 0 [(7165, 7153)]) := by
  unfold output10685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10685_skip : Flapjack.WordAlloc.isSkip output10685 = false := by
  rw [output10685_def]
  conv => lhs; cbv
  try rfl
theorem node10685_eq : Flapjack.WordAlloc.removeDeadStructural input10685 value5346 value1 value2 = (output10685, value5347, value1) := by
  rw [input10685_def, output10685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10685 input10684)).val
theorem input10686_def : input10686 = (.seq input10685 input10684) := by
  unfold input10686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10685 output10684)).val
theorem output10686_def : output10686 = (.seq output10685 output10684) := by
  unfold output10686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10686_skip : Flapjack.WordAlloc.isSkip output10686 = false := by
  rw [output10686_def]
  conv => lhs; cbv
  try rfl
theorem node10686_eq : Flapjack.WordAlloc.removeDeadStructural input10686 value5 value1 value2 = (output10686, value5347, value1) := by
  rw [input10686_def, output10686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10684_eq]
  dsimp only
  rw [node10685_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5348 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 5707120929990979#64))).val
theorem input10687_def : input10687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 5707120929990979#64)) := by
  unfold input10687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 5707120929990979#64))).val
theorem output10687_def : output10687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 5707120929990979#64)) := by
  unfold output10687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10687_skip : Flapjack.WordAlloc.isSkip output10687 = false := by
  rw [output10687_def]
  conv => lhs; cbv
  try rfl
theorem node10687_eq : Flapjack.WordAlloc.removeDeadStructural input10687 value5347 value1 value2 = (output10687, value5348, value1) := by
  rw [input10687_def, output10687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7157 5707120929990979#64))).val
theorem input10688_def : input10688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7157 5707120929990979#64)) := by
  unfold input10688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10688_def : output10688 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10688_skip : Flapjack.WordAlloc.isSkip output10688 = true := by
  rw [output10688_def]
  conv => lhs; cbv
  try rfl
theorem node10688_eq : Flapjack.WordAlloc.removeDeadStructural input10688 value5348 value1 value2 = (output10688, value5348, value1) := by
  rw [input10688_def, output10688_def]
  try (conv => lhs; cbv)
  try rfl

def value5349 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7153 7149 (Flapjack.WordRegImm.imm 1752#64))))).val
theorem input10689_def : input10689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7153 7149 (Flapjack.WordRegImm.imm 1752#64)))) := by
  unfold input10689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7153 7149 (Flapjack.WordRegImm.imm 1752#64))))).val
theorem output10689_def : output10689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7153 7149 (Flapjack.WordRegImm.imm 1752#64)))) := by
  unfold output10689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10689_skip : Flapjack.WordAlloc.isSkip output10689 = false := by
  rw [output10689_def]
  conv => lhs; cbv
  try rfl
theorem node10689_eq : Flapjack.WordAlloc.removeDeadStructural input10689 value5348 value1 value2 = (output10689, value5349, value1) := by
  rw [input10689_def, output10689_def]
  try (conv => lhs; cbv)
  try rfl

def value5350 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7149 (Flapjack.WordLangAddr.addr 7145 18446744073709551104#64)))).val
theorem input10690_def : input10690 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7149 (Flapjack.WordLangAddr.addr 7145 18446744073709551104#64))) := by
  unfold input10690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7149 (Flapjack.WordLangAddr.addr 7145 18446744073709551104#64)))).val
theorem output10690_def : output10690 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7149 (Flapjack.WordLangAddr.addr 7145 18446744073709551104#64))) := by
  unfold output10690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10690_skip : Flapjack.WordAlloc.isSkip output10690 = false := by
  rw [output10690_def]
  conv => lhs; cbv
  try rfl
theorem node10690_eq : Flapjack.WordAlloc.removeDeadStructural input10690 value5349 value1 value2 = (output10690, value5350, value1) := by
  rw [input10690_def, output10690_def]
  try (conv => lhs; cbv)
  try rfl

def value5351 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7145 7141)).val
theorem input10691_def : input10691 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7145 7141) := by
  unfold input10691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7145 7141)).val
theorem output10691_def : output10691 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7145 7141) := by
  unfold output10691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10691_skip : Flapjack.WordAlloc.isSkip output10691 = false := by
  rw [output10691_def]
  conv => lhs; cbv
  try rfl
theorem node10691_eq : Flapjack.WordAlloc.removeDeadStructural input10691 value5350 value1 value2 = (output10691, value5351, value1) := by
  rw [input10691_def, output10691_def]
  try (conv => lhs; cbv)
  try rfl

def value5352 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7141 7137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10692_def : input10692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7141 7137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7141 7137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10692_def : output10692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7141 7137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10692_skip : Flapjack.WordAlloc.isSkip output10692 = false := by
  rw [output10692_def]
  conv => lhs; cbv
  try rfl
theorem node10692_eq : Flapjack.WordAlloc.removeDeadStructural input10692 value5351 value1 value2 = (output10692, value5352, value1) := by
  rw [input10692_def, output10692_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7137 Flapjack.WordStore.heapLength)).val
theorem input10693_def : input10693 = (Flapjack.WordLangProgHOL.get 7137 Flapjack.WordStore.heapLength) := by
  unfold input10693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7137 Flapjack.WordStore.heapLength)).val
theorem output10693_def : output10693 = (Flapjack.WordLangProgHOL.get 7137 Flapjack.WordStore.heapLength) := by
  unfold output10693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10693_skip : Flapjack.WordAlloc.isSkip output10693 = false := by
  rw [output10693_def]
  conv => lhs; cbv
  try rfl
theorem node10693_eq : Flapjack.WordAlloc.removeDeadStructural input10693 value5352 value1 value2 = (output10693, value5, value1) := by
  rw [input10693_def, output10693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10693 input10692)).val
theorem input10694_def : input10694 = (.seq input10693 input10692) := by
  unfold input10694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10693 output10692)).val
theorem output10694_def : output10694 = (.seq output10693 output10692) := by
  unfold output10694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10694_skip : Flapjack.WordAlloc.isSkip output10694 = false := by
  rw [output10694_def]
  conv => lhs; cbv
  try rfl
theorem node10694_eq : Flapjack.WordAlloc.removeDeadStructural input10694 value5351 value1 value2 = (output10694, value5, value1) := by
  rw [input10694_def, output10694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10692_eq]
  dsimp only
  rw [node10693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10694 input10691)).val
theorem input10695_def : input10695 = (.seq input10694 input10691) := by
  unfold input10695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10694 output10691)).val
theorem output10695_def : output10695 = (.seq output10694 output10691) := by
  unfold output10695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10695_skip : Flapjack.WordAlloc.isSkip output10695 = false := by
  rw [output10695_def]
  conv => lhs; cbv
  try rfl
theorem node10695_eq : Flapjack.WordAlloc.removeDeadStructural input10695 value5350 value1 value2 = (output10695, value5, value1) := by
  rw [input10695_def, output10695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10691_eq]
  dsimp only
  rw [node10694_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10695 input10690)).val
theorem input10696_def : input10696 = (.seq input10695 input10690) := by
  unfold input10696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10695 output10690)).val
theorem output10696_def : output10696 = (.seq output10695 output10690) := by
  unfold output10696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10696_skip : Flapjack.WordAlloc.isSkip output10696 = false := by
  rw [output10696_def]
  conv => lhs; cbv
  try rfl
theorem node10696_eq : Flapjack.WordAlloc.removeDeadStructural input10696 value5349 value1 value2 = (output10696, value5, value1) := by
  rw [input10696_def, output10696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10690_eq]
  dsimp only
  rw [node10695_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10696 input10689)).val
theorem input10697_def : input10697 = (.seq input10696 input10689) := by
  unfold input10697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10696 output10689)).val
theorem output10697_def : output10697 = (.seq output10696 output10689) := by
  unfold output10697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10697_skip : Flapjack.WordAlloc.isSkip output10697 = false := by
  rw [output10697_def]
  conv => lhs; cbv
  try rfl
theorem node10697_eq : Flapjack.WordAlloc.removeDeadStructural input10697 value5348 value1 value2 = (output10697, value5, value1) := by
  rw [input10697_def, output10697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10689_eq]
  dsimp only
  rw [node10696_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5353 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7129 (Flapjack.WordLangAddr.addr 7133 0#64)))).val
theorem input10698_def : input10698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7129 (Flapjack.WordLangAddr.addr 7133 0#64))) := by
  unfold input10698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7129 (Flapjack.WordLangAddr.addr 7133 0#64)))).val
theorem output10698_def : output10698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7129 (Flapjack.WordLangAddr.addr 7133 0#64))) := by
  unfold output10698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10698_skip : Flapjack.WordAlloc.isSkip output10698 = false := by
  rw [output10698_def]
  conv => lhs; cbv
  try rfl
theorem node10698_eq : Flapjack.WordAlloc.removeDeadStructural input10698 value5 value1 value2 = (output10698, value5353, value1) := by
  rw [input10698_def, output10698_def]
  try (conv => lhs; cbv)
  try rfl

def value5354 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7133, 7121)])).val
theorem input10699_def : input10699 = (Flapjack.WordLangProgHOL.move 0 [(7133, 7121)]) := by
  unfold input10699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7133, 7121)])).val
theorem output10699_def : output10699 = (Flapjack.WordLangProgHOL.move 0 [(7133, 7121)]) := by
  unfold output10699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10699_skip : Flapjack.WordAlloc.isSkip output10699 = false := by
  rw [output10699_def]
  conv => lhs; cbv
  try rfl
theorem node10699_eq : Flapjack.WordAlloc.removeDeadStructural input10699 value5353 value1 value2 = (output10699, value5354, value1) := by
  rw [input10699_def, output10699_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10699 input10698)).val
theorem input10700_def : input10700 = (.seq input10699 input10698) := by
  unfold input10700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10699 output10698)).val
theorem output10700_def : output10700 = (.seq output10699 output10698) := by
  unfold output10700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10700_skip : Flapjack.WordAlloc.isSkip output10700 = false := by
  rw [output10700_def]
  conv => lhs; cbv
  try rfl
theorem node10700_eq : Flapjack.WordAlloc.removeDeadStructural input10700 value5 value1 value2 = (output10700, value5354, value1) := by
  rw [input10700_def, output10700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10698_eq]
  dsimp only
  rw [node10699_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5355 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7129 4425131892511951234#64))).val
theorem input10701_def : input10701 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7129 4425131892511951234#64)) := by
  unfold input10701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7129 4425131892511951234#64))).val
theorem output10701_def : output10701 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7129 4425131892511951234#64)) := by
  unfold output10701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10701_skip : Flapjack.WordAlloc.isSkip output10701 = false := by
  rw [output10701_def]
  conv => lhs; cbv
  try rfl
theorem node10701_eq : Flapjack.WordAlloc.removeDeadStructural input10701 value5354 value1 value2 = (output10701, value5355, value1) := by
  rw [input10701_def, output10701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 4425131892511951234#64))).val
theorem input10702_def : input10702 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 4425131892511951234#64)) := by
  unfold input10702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10702_def : output10702 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10702_skip : Flapjack.WordAlloc.isSkip output10702 = true := by
  rw [output10702_def]
  conv => lhs; cbv
  try rfl
theorem node10702_eq : Flapjack.WordAlloc.removeDeadStructural input10702 value5355 value1 value2 = (output10702, value5355, value1) := by
  rw [input10702_def, output10702_def]
  try (conv => lhs; cbv)
  try rfl

def value5356 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7121 7117 (Flapjack.WordRegImm.imm 1744#64))))).val
theorem input10703_def : input10703 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7121 7117 (Flapjack.WordRegImm.imm 1744#64)))) := by
  unfold input10703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7121 7117 (Flapjack.WordRegImm.imm 1744#64))))).val
theorem output10703_def : output10703 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7121 7117 (Flapjack.WordRegImm.imm 1744#64)))) := by
  unfold output10703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10703_skip : Flapjack.WordAlloc.isSkip output10703 = false := by
  rw [output10703_def]
  conv => lhs; cbv
  try rfl
theorem node10703_eq : Flapjack.WordAlloc.removeDeadStructural input10703 value5355 value1 value2 = (output10703, value5356, value1) := by
  rw [input10703_def, output10703_def]
  try (conv => lhs; cbv)
  try rfl

def value5357 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7117 (Flapjack.WordLangAddr.addr 7113 18446744073709551104#64)))).val
theorem input10704_def : input10704 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7117 (Flapjack.WordLangAddr.addr 7113 18446744073709551104#64))) := by
  unfold input10704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7117 (Flapjack.WordLangAddr.addr 7113 18446744073709551104#64)))).val
theorem output10704_def : output10704 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7117 (Flapjack.WordLangAddr.addr 7113 18446744073709551104#64))) := by
  unfold output10704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10704_skip : Flapjack.WordAlloc.isSkip output10704 = false := by
  rw [output10704_def]
  conv => lhs; cbv
  try rfl
theorem node10704_eq : Flapjack.WordAlloc.removeDeadStructural input10704 value5356 value1 value2 = (output10704, value5357, value1) := by
  rw [input10704_def, output10704_def]
  try (conv => lhs; cbv)
  try rfl

def value5358 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7113 7109)).val
theorem input10705_def : input10705 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7113 7109) := by
  unfold input10705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7113 7109)).val
theorem output10705_def : output10705 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7113 7109) := by
  unfold output10705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10705_skip : Flapjack.WordAlloc.isSkip output10705 = false := by
  rw [output10705_def]
  conv => lhs; cbv
  try rfl
theorem node10705_eq : Flapjack.WordAlloc.removeDeadStructural input10705 value5357 value1 value2 = (output10705, value5358, value1) := by
  rw [input10705_def, output10705_def]
  try (conv => lhs; cbv)
  try rfl

def value5359 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7109 7105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10706_def : input10706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7109 7105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7109 7105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10706_def : output10706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7109 7105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10706_skip : Flapjack.WordAlloc.isSkip output10706 = false := by
  rw [output10706_def]
  conv => lhs; cbv
  try rfl
theorem node10706_eq : Flapjack.WordAlloc.removeDeadStructural input10706 value5358 value1 value2 = (output10706, value5359, value1) := by
  rw [input10706_def, output10706_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7105 Flapjack.WordStore.heapLength)).val
theorem input10707_def : input10707 = (Flapjack.WordLangProgHOL.get 7105 Flapjack.WordStore.heapLength) := by
  unfold input10707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7105 Flapjack.WordStore.heapLength)).val
theorem output10707_def : output10707 = (Flapjack.WordLangProgHOL.get 7105 Flapjack.WordStore.heapLength) := by
  unfold output10707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10707_skip : Flapjack.WordAlloc.isSkip output10707 = false := by
  rw [output10707_def]
  conv => lhs; cbv
  try rfl
theorem node10707_eq : Flapjack.WordAlloc.removeDeadStructural input10707 value5359 value1 value2 = (output10707, value5, value1) := by
  rw [input10707_def, output10707_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10707 input10706)).val
theorem input10708_def : input10708 = (.seq input10707 input10706) := by
  unfold input10708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10707 output10706)).val
theorem output10708_def : output10708 = (.seq output10707 output10706) := by
  unfold output10708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10708_skip : Flapjack.WordAlloc.isSkip output10708 = false := by
  rw [output10708_def]
  conv => lhs; cbv
  try rfl
theorem node10708_eq : Flapjack.WordAlloc.removeDeadStructural input10708 value5358 value1 value2 = (output10708, value5, value1) := by
  rw [input10708_def, output10708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10706_eq]
  dsimp only
  rw [node10707_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10708 input10705)).val
theorem input10709_def : input10709 = (.seq input10708 input10705) := by
  unfold input10709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10708 output10705)).val
theorem output10709_def : output10709 = (.seq output10708 output10705) := by
  unfold output10709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10709_skip : Flapjack.WordAlloc.isSkip output10709 = false := by
  rw [output10709_def]
  conv => lhs; cbv
  try rfl
theorem node10709_eq : Flapjack.WordAlloc.removeDeadStructural input10709 value5357 value1 value2 = (output10709, value5, value1) := by
  rw [input10709_def, output10709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10705_eq]
  dsimp only
  rw [node10708_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10709 input10704)).val
theorem input10710_def : input10710 = (.seq input10709 input10704) := by
  unfold input10710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10709 output10704)).val
theorem output10710_def : output10710 = (.seq output10709 output10704) := by
  unfold output10710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10710_skip : Flapjack.WordAlloc.isSkip output10710 = false := by
  rw [output10710_def]
  conv => lhs; cbv
  try rfl
theorem node10710_eq : Flapjack.WordAlloc.removeDeadStructural input10710 value5356 value1 value2 = (output10710, value5, value1) := by
  rw [input10710_def, output10710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10704_eq]
  dsimp only
  rw [node10709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10710 input10703)).val
theorem input10711_def : input10711 = (.seq input10710 input10703) := by
  unfold input10711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10710 output10703)).val
theorem output10711_def : output10711 = (.seq output10710 output10703) := by
  unfold output10711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10711_skip : Flapjack.WordAlloc.isSkip output10711 = false := by
  rw [output10711_def]
  conv => lhs; cbv
  try rfl
theorem node10711_eq : Flapjack.WordAlloc.removeDeadStructural input10711 value5355 value1 value2 = (output10711, value5, value1) := by
  rw [input10711_def, output10711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10703_eq]
  dsimp only
  rw [node10710_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5360 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7097 (Flapjack.WordLangAddr.addr 7101 0#64)))).val
theorem input10712_def : input10712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7097 (Flapjack.WordLangAddr.addr 7101 0#64))) := by
  unfold input10712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7097 (Flapjack.WordLangAddr.addr 7101 0#64)))).val
theorem output10712_def : output10712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7097 (Flapjack.WordLangAddr.addr 7101 0#64))) := by
  unfold output10712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10712_skip : Flapjack.WordAlloc.isSkip output10712 = false := by
  rw [output10712_def]
  conv => lhs; cbv
  try rfl
theorem node10712_eq : Flapjack.WordAlloc.removeDeadStructural input10712 value5 value1 value2 = (output10712, value5360, value1) := by
  rw [input10712_def, output10712_def]
  try (conv => lhs; cbv)
  try rfl

def value5361 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7101, 7089)])).val
theorem input10713_def : input10713 = (Flapjack.WordLangProgHOL.move 0 [(7101, 7089)]) := by
  unfold input10713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7101, 7089)])).val
theorem output10713_def : output10713 = (Flapjack.WordLangProgHOL.move 0 [(7101, 7089)]) := by
  unfold output10713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10713_skip : Flapjack.WordAlloc.isSkip output10713 = false := by
  rw [output10713_def]
  conv => lhs; cbv
  try rfl
theorem node10713_eq : Flapjack.WordAlloc.removeDeadStructural input10713 value5360 value1 value2 = (output10713, value5361, value1) := by
  rw [input10713_def, output10713_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10713 input10712)).val
theorem input10714_def : input10714 = (.seq input10713 input10712) := by
  unfold input10714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10713 output10712)).val
theorem output10714_def : output10714 = (.seq output10713 output10712) := by
  unfold output10714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10714_skip : Flapjack.WordAlloc.isSkip output10714 = false := by
  rw [output10714_def]
  conv => lhs; cbv
  try rfl
theorem node10714_eq : Flapjack.WordAlloc.removeDeadStructural input10714 value5 value1 value2 = (output10714, value5361, value1) := by
  rw [input10714_def, output10714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10712_eq]
  dsimp only
  rw [node10713_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5362 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7097 12748169179688756904#64))).val
theorem input10715_def : input10715 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7097 12748169179688756904#64)) := by
  unfold input10715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7097 12748169179688756904#64))).val
theorem output10715_def : output10715 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7097 12748169179688756904#64)) := by
  unfold output10715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10715_skip : Flapjack.WordAlloc.isSkip output10715 = false := by
  rw [output10715_def]
  conv => lhs; cbv
  try rfl
theorem node10715_eq : Flapjack.WordAlloc.removeDeadStructural input10715 value5361 value1 value2 = (output10715, value5362, value1) := by
  rw [input10715_def, output10715_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7093 12748169179688756904#64))).val
theorem input10716_def : input10716 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7093 12748169179688756904#64)) := by
  unfold input10716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10716_def : output10716 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10716_skip : Flapjack.WordAlloc.isSkip output10716 = true := by
  rw [output10716_def]
  conv => lhs; cbv
  try rfl
theorem node10716_eq : Flapjack.WordAlloc.removeDeadStructural input10716 value5362 value1 value2 = (output10716, value5362, value1) := by
  rw [input10716_def, output10716_def]
  try (conv => lhs; cbv)
  try rfl

def value5363 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7089 7085 (Flapjack.WordRegImm.imm 1736#64))))).val
theorem input10717_def : input10717 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7089 7085 (Flapjack.WordRegImm.imm 1736#64)))) := by
  unfold input10717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7089 7085 (Flapjack.WordRegImm.imm 1736#64))))).val
theorem output10717_def : output10717 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7089 7085 (Flapjack.WordRegImm.imm 1736#64)))) := by
  unfold output10717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10717_skip : Flapjack.WordAlloc.isSkip output10717 = false := by
  rw [output10717_def]
  conv => lhs; cbv
  try rfl
theorem node10717_eq : Flapjack.WordAlloc.removeDeadStructural input10717 value5362 value1 value2 = (output10717, value5363, value1) := by
  rw [input10717_def, output10717_def]
  try (conv => lhs; cbv)
  try rfl

def value5364 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7085 (Flapjack.WordLangAddr.addr 7081 18446744073709551104#64)))).val
theorem input10718_def : input10718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7085 (Flapjack.WordLangAddr.addr 7081 18446744073709551104#64))) := by
  unfold input10718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7085 (Flapjack.WordLangAddr.addr 7081 18446744073709551104#64)))).val
theorem output10718_def : output10718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7085 (Flapjack.WordLangAddr.addr 7081 18446744073709551104#64))) := by
  unfold output10718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10718_skip : Flapjack.WordAlloc.isSkip output10718 = false := by
  rw [output10718_def]
  conv => lhs; cbv
  try rfl
theorem node10718_eq : Flapjack.WordAlloc.removeDeadStructural input10718 value5363 value1 value2 = (output10718, value5364, value1) := by
  rw [input10718_def, output10718_def]
  try (conv => lhs; cbv)
  try rfl

def value5365 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7081 7077)).val
theorem input10719_def : input10719 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7081 7077) := by
  unfold input10719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7081 7077)).val
theorem output10719_def : output10719 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7081 7077) := by
  unfold output10719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10719_skip : Flapjack.WordAlloc.isSkip output10719 = false := by
  rw [output10719_def]
  conv => lhs; cbv
  try rfl
theorem node10719_eq : Flapjack.WordAlloc.removeDeadStructural input10719 value5364 value1 value2 = (output10719, value5365, value1) := by
  rw [input10719_def, output10719_def]
  try (conv => lhs; cbv)
  try rfl

def value5366 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7077 7073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10720_def : input10720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7077 7073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7077 7073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10720_def : output10720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7077 7073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10720_skip : Flapjack.WordAlloc.isSkip output10720 = false := by
  rw [output10720_def]
  conv => lhs; cbv
  try rfl
theorem node10720_eq : Flapjack.WordAlloc.removeDeadStructural input10720 value5365 value1 value2 = (output10720, value5366, value1) := by
  rw [input10720_def, output10720_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7073 Flapjack.WordStore.heapLength)).val
theorem input10721_def : input10721 = (Flapjack.WordLangProgHOL.get 7073 Flapjack.WordStore.heapLength) := by
  unfold input10721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7073 Flapjack.WordStore.heapLength)).val
theorem output10721_def : output10721 = (Flapjack.WordLangProgHOL.get 7073 Flapjack.WordStore.heapLength) := by
  unfold output10721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10721_skip : Flapjack.WordAlloc.isSkip output10721 = false := by
  rw [output10721_def]
  conv => lhs; cbv
  try rfl
theorem node10721_eq : Flapjack.WordAlloc.removeDeadStructural input10721 value5366 value1 value2 = (output10721, value5, value1) := by
  rw [input10721_def, output10721_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10721 input10720)).val
theorem input10722_def : input10722 = (.seq input10721 input10720) := by
  unfold input10722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10721 output10720)).val
theorem output10722_def : output10722 = (.seq output10721 output10720) := by
  unfold output10722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10722_skip : Flapjack.WordAlloc.isSkip output10722 = false := by
  rw [output10722_def]
  conv => lhs; cbv
  try rfl
theorem node10722_eq : Flapjack.WordAlloc.removeDeadStructural input10722 value5365 value1 value2 = (output10722, value5, value1) := by
  rw [input10722_def, output10722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10720_eq]
  dsimp only
  rw [node10721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10722 input10719)).val
theorem input10723_def : input10723 = (.seq input10722 input10719) := by
  unfold input10723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10722 output10719)).val
theorem output10723_def : output10723 = (.seq output10722 output10719) := by
  unfold output10723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10723_skip : Flapjack.WordAlloc.isSkip output10723 = false := by
  rw [output10723_def]
  conv => lhs; cbv
  try rfl
theorem node10723_eq : Flapjack.WordAlloc.removeDeadStructural input10723 value5364 value1 value2 = (output10723, value5, value1) := by
  rw [input10723_def, output10723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10719_eq]
  dsimp only
  rw [node10722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10723 input10718)).val
theorem input10724_def : input10724 = (.seq input10723 input10718) := by
  unfold input10724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10723 output10718)).val
theorem output10724_def : output10724 = (.seq output10723 output10718) := by
  unfold output10724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10724_skip : Flapjack.WordAlloc.isSkip output10724 = false := by
  rw [output10724_def]
  conv => lhs; cbv
  try rfl
theorem node10724_eq : Flapjack.WordAlloc.removeDeadStructural input10724 value5363 value1 value2 = (output10724, value5, value1) := by
  rw [input10724_def, output10724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10718_eq]
  dsimp only
  rw [node10723_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10724 input10717)).val
theorem input10725_def : input10725 = (.seq input10724 input10717) := by
  unfold input10725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10724 output10717)).val
theorem output10725_def : output10725 = (.seq output10724 output10717) := by
  unfold output10725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10725_skip : Flapjack.WordAlloc.isSkip output10725 = false := by
  rw [output10725_def]
  conv => lhs; cbv
  try rfl
theorem node10725_eq : Flapjack.WordAlloc.removeDeadStructural input10725 value5362 value1 value2 = (output10725, value5, value1) := by
  rw [input10725_def, output10725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10717_eq]
  dsimp only
  rw [node10724_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5367 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7065 (Flapjack.WordLangAddr.addr 7069 0#64)))).val
theorem input10726_def : input10726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7065 (Flapjack.WordLangAddr.addr 7069 0#64))) := by
  unfold input10726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7065 (Flapjack.WordLangAddr.addr 7069 0#64)))).val
theorem output10726_def : output10726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7065 (Flapjack.WordLangAddr.addr 7069 0#64))) := by
  unfold output10726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10726_skip : Flapjack.WordAlloc.isSkip output10726 = false := by
  rw [output10726_def]
  conv => lhs; cbv
  try rfl
theorem node10726_eq : Flapjack.WordAlloc.removeDeadStructural input10726 value5 value1 value2 = (output10726, value5367, value1) := by
  rw [input10726_def, output10726_def]
  try (conv => lhs; cbv)
  try rfl

def value5368 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7069, 7057)])).val
theorem input10727_def : input10727 = (Flapjack.WordLangProgHOL.move 0 [(7069, 7057)]) := by
  unfold input10727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7069, 7057)])).val
theorem output10727_def : output10727 = (Flapjack.WordLangProgHOL.move 0 [(7069, 7057)]) := by
  unfold output10727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10727_skip : Flapjack.WordAlloc.isSkip output10727 = false := by
  rw [output10727_def]
  conv => lhs; cbv
  try rfl
theorem node10727_eq : Flapjack.WordAlloc.removeDeadStructural input10727 value5367 value1 value2 = (output10727, value5368, value1) := by
  rw [input10727_def, output10727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10727 input10726)).val
theorem input10728_def : input10728 = (.seq input10727 input10726) := by
  unfold input10728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10727 output10726)).val
theorem output10728_def : output10728 = (.seq output10727 output10726) := by
  unfold output10728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10728_skip : Flapjack.WordAlloc.isSkip output10728 = false := by
  rw [output10728_def]
  conv => lhs; cbv
  try rfl
theorem node10728_eq : Flapjack.WordAlloc.removeDeadStructural input10728 value5 value1 value2 = (output10728, value5368, value1) := by
  rw [input10728_def, output10728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10726_eq]
  dsimp only
  rw [node10727_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5369 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 15629909748249821612#64))).val
theorem input10729_def : input10729 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 15629909748249821612#64)) := by
  unfold input10729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 15629909748249821612#64))).val
theorem output10729_def : output10729 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 15629909748249821612#64)) := by
  unfold output10729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10729_skip : Flapjack.WordAlloc.isSkip output10729 = false := by
  rw [output10729_def]
  conv => lhs; cbv
  try rfl
theorem node10729_eq : Flapjack.WordAlloc.removeDeadStructural input10729 value5368 value1 value2 = (output10729, value5369, value1) := by
  rw [input10729_def, output10729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7061 15629909748249821612#64))).val
theorem input10730_def : input10730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7061 15629909748249821612#64)) := by
  unfold input10730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10730_def : output10730 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10730_skip : Flapjack.WordAlloc.isSkip output10730 = true := by
  rw [output10730_def]
  conv => lhs; cbv
  try rfl
theorem node10730_eq : Flapjack.WordAlloc.removeDeadStructural input10730 value5369 value1 value2 = (output10730, value5369, value1) := by
  rw [input10730_def, output10730_def]
  try (conv => lhs; cbv)
  try rfl

def value5370 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7057 7053 (Flapjack.WordRegImm.imm 1728#64))))).val
theorem input10731_def : input10731 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7057 7053 (Flapjack.WordRegImm.imm 1728#64)))) := by
  unfold input10731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7057 7053 (Flapjack.WordRegImm.imm 1728#64))))).val
theorem output10731_def : output10731 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7057 7053 (Flapjack.WordRegImm.imm 1728#64)))) := by
  unfold output10731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10731_skip : Flapjack.WordAlloc.isSkip output10731 = false := by
  rw [output10731_def]
  conv => lhs; cbv
  try rfl
theorem node10731_eq : Flapjack.WordAlloc.removeDeadStructural input10731 value5369 value1 value2 = (output10731, value5370, value1) := by
  rw [input10731_def, output10731_def]
  try (conv => lhs; cbv)
  try rfl

def value5371 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7053 (Flapjack.WordLangAddr.addr 7049 18446744073709551104#64)))).val
theorem input10732_def : input10732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7053 (Flapjack.WordLangAddr.addr 7049 18446744073709551104#64))) := by
  unfold input10732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7053 (Flapjack.WordLangAddr.addr 7049 18446744073709551104#64)))).val
theorem output10732_def : output10732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7053 (Flapjack.WordLangAddr.addr 7049 18446744073709551104#64))) := by
  unfold output10732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10732_skip : Flapjack.WordAlloc.isSkip output10732 = false := by
  rw [output10732_def]
  conv => lhs; cbv
  try rfl
theorem node10732_eq : Flapjack.WordAlloc.removeDeadStructural input10732 value5370 value1 value2 = (output10732, value5371, value1) := by
  rw [input10732_def, output10732_def]
  try (conv => lhs; cbv)
  try rfl

def value5372 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7049 7045)).val
theorem input10733_def : input10733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7049 7045) := by
  unfold input10733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7049 7045)).val
theorem output10733_def : output10733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7049 7045) := by
  unfold output10733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10733_skip : Flapjack.WordAlloc.isSkip output10733 = false := by
  rw [output10733_def]
  conv => lhs; cbv
  try rfl
theorem node10733_eq : Flapjack.WordAlloc.removeDeadStructural input10733 value5371 value1 value2 = (output10733, value5372, value1) := by
  rw [input10733_def, output10733_def]
  try (conv => lhs; cbv)
  try rfl

def value5373 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7045 7041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10734_def : input10734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7045 7041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7045 7041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10734_def : output10734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7045 7041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10734_skip : Flapjack.WordAlloc.isSkip output10734 = false := by
  rw [output10734_def]
  conv => lhs; cbv
  try rfl
theorem node10734_eq : Flapjack.WordAlloc.removeDeadStructural input10734 value5372 value1 value2 = (output10734, value5373, value1) := by
  rw [input10734_def, output10734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7041 Flapjack.WordStore.heapLength)).val
theorem input10735_def : input10735 = (Flapjack.WordLangProgHOL.get 7041 Flapjack.WordStore.heapLength) := by
  unfold input10735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7041 Flapjack.WordStore.heapLength)).val
theorem output10735_def : output10735 = (Flapjack.WordLangProgHOL.get 7041 Flapjack.WordStore.heapLength) := by
  unfold output10735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10735_skip : Flapjack.WordAlloc.isSkip output10735 = false := by
  rw [output10735_def]
  conv => lhs; cbv
  try rfl
theorem node10735_eq : Flapjack.WordAlloc.removeDeadStructural input10735 value5373 value1 value2 = (output10735, value5, value1) := by
  rw [input10735_def, output10735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10735 input10734)).val
theorem input10736_def : input10736 = (.seq input10735 input10734) := by
  unfold input10736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10735 output10734)).val
theorem output10736_def : output10736 = (.seq output10735 output10734) := by
  unfold output10736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10736_skip : Flapjack.WordAlloc.isSkip output10736 = false := by
  rw [output10736_def]
  conv => lhs; cbv
  try rfl
theorem node10736_eq : Flapjack.WordAlloc.removeDeadStructural input10736 value5372 value1 value2 = (output10736, value5, value1) := by
  rw [input10736_def, output10736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10734_eq]
  dsimp only
  rw [node10735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10736 input10733)).val
theorem input10737_def : input10737 = (.seq input10736 input10733) := by
  unfold input10737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10736 output10733)).val
theorem output10737_def : output10737 = (.seq output10736 output10733) := by
  unfold output10737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10737_skip : Flapjack.WordAlloc.isSkip output10737 = false := by
  rw [output10737_def]
  conv => lhs; cbv
  try rfl
theorem node10737_eq : Flapjack.WordAlloc.removeDeadStructural input10737 value5371 value1 value2 = (output10737, value5, value1) := by
  rw [input10737_def, output10737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10733_eq]
  dsimp only
  rw [node10736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10737 input10732)).val
theorem input10738_def : input10738 = (.seq input10737 input10732) := by
  unfold input10738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10737 output10732)).val
theorem output10738_def : output10738 = (.seq output10737 output10732) := by
  unfold output10738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10738_skip : Flapjack.WordAlloc.isSkip output10738 = false := by
  rw [output10738_def]
  conv => lhs; cbv
  try rfl
theorem node10738_eq : Flapjack.WordAlloc.removeDeadStructural input10738 value5370 value1 value2 = (output10738, value5, value1) := by
  rw [input10738_def, output10738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10732_eq]
  dsimp only
  rw [node10737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10738 input10731)).val
theorem input10739_def : input10739 = (.seq input10738 input10731) := by
  unfold input10739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10738 output10731)).val
theorem output10739_def : output10739 = (.seq output10738 output10731) := by
  unfold output10739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10739_skip : Flapjack.WordAlloc.isSkip output10739 = false := by
  rw [output10739_def]
  conv => lhs; cbv
  try rfl
theorem node10739_eq : Flapjack.WordAlloc.removeDeadStructural input10739 value5369 value1 value2 = (output10739, value5, value1) := by
  rw [input10739_def, output10739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10731_eq]
  dsimp only
  rw [node10738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5374 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7033 (Flapjack.WordLangAddr.addr 7037 0#64)))).val
theorem input10740_def : input10740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7033 (Flapjack.WordLangAddr.addr 7037 0#64))) := by
  unfold input10740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7033 (Flapjack.WordLangAddr.addr 7037 0#64)))).val
theorem output10740_def : output10740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7033 (Flapjack.WordLangAddr.addr 7037 0#64))) := by
  unfold output10740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10740_skip : Flapjack.WordAlloc.isSkip output10740 = false := by
  rw [output10740_def]
  conv => lhs; cbv
  try rfl
theorem node10740_eq : Flapjack.WordAlloc.removeDeadStructural input10740 value5 value1 value2 = (output10740, value5374, value1) := by
  rw [input10740_def, output10740_def]
  try (conv => lhs; cbv)
  try rfl

def value5375 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7037, 7025)])).val
theorem input10741_def : input10741 = (Flapjack.WordLangProgHOL.move 0 [(7037, 7025)]) := by
  unfold input10741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7037, 7025)])).val
theorem output10741_def : output10741 = (Flapjack.WordLangProgHOL.move 0 [(7037, 7025)]) := by
  unfold output10741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10741_skip : Flapjack.WordAlloc.isSkip output10741 = false := by
  rw [output10741_def]
  conv => lhs; cbv
  try rfl
theorem node10741_eq : Flapjack.WordAlloc.removeDeadStructural input10741 value5374 value1 value2 = (output10741, value5375, value1) := by
  rw [input10741_def, output10741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10741 input10740)).val
theorem input10742_def : input10742 = (.seq input10741 input10740) := by
  unfold input10742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10741 output10740)).val
theorem output10742_def : output10742 = (.seq output10741 output10740) := by
  unfold output10742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10742_skip : Flapjack.WordAlloc.isSkip output10742 = false := by
  rw [output10742_def]
  conv => lhs; cbv
  try rfl
theorem node10742_eq : Flapjack.WordAlloc.removeDeadStructural input10742 value5 value1 value2 = (output10742, value5375, value1) := by
  rw [input10742_def, output10742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10740_eq]
  dsimp only
  rw [node10741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5376 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 10994253769421683071#64))).val
theorem input10743_def : input10743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 10994253769421683071#64)) := by
  unfold input10743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 10994253769421683071#64))).val
theorem output10743_def : output10743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 10994253769421683071#64)) := by
  unfold output10743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10743_skip : Flapjack.WordAlloc.isSkip output10743 = false := by
  rw [output10743_def]
  conv => lhs; cbv
  try rfl
theorem node10743_eq : Flapjack.WordAlloc.removeDeadStructural input10743 value5375 value1 value2 = (output10743, value5376, value1) := by
  rw [input10743_def, output10743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7029 10994253769421683071#64))).val
theorem input10744_def : input10744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7029 10994253769421683071#64)) := by
  unfold input10744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10744_def : output10744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10744_skip : Flapjack.WordAlloc.isSkip output10744 = true := by
  rw [output10744_def]
  conv => lhs; cbv
  try rfl
theorem node10744_eq : Flapjack.WordAlloc.removeDeadStructural input10744 value5376 value1 value2 = (output10744, value5376, value1) := by
  rw [input10744_def, output10744_def]
  try (conv => lhs; cbv)
  try rfl

def value5377 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7025 7021 (Flapjack.WordRegImm.imm 1720#64))))).val
theorem input10745_def : input10745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7025 7021 (Flapjack.WordRegImm.imm 1720#64)))) := by
  unfold input10745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7025 7021 (Flapjack.WordRegImm.imm 1720#64))))).val
theorem output10745_def : output10745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7025 7021 (Flapjack.WordRegImm.imm 1720#64)))) := by
  unfold output10745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10745_skip : Flapjack.WordAlloc.isSkip output10745 = false := by
  rw [output10745_def]
  conv => lhs; cbv
  try rfl
theorem node10745_eq : Flapjack.WordAlloc.removeDeadStructural input10745 value5376 value1 value2 = (output10745, value5377, value1) := by
  rw [input10745_def, output10745_def]
  try (conv => lhs; cbv)
  try rfl

def value5378 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7021 (Flapjack.WordLangAddr.addr 7017 18446744073709551104#64)))).val
theorem input10746_def : input10746 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7021 (Flapjack.WordLangAddr.addr 7017 18446744073709551104#64))) := by
  unfold input10746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7021 (Flapjack.WordLangAddr.addr 7017 18446744073709551104#64)))).val
theorem output10746_def : output10746 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7021 (Flapjack.WordLangAddr.addr 7017 18446744073709551104#64))) := by
  unfold output10746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10746_skip : Flapjack.WordAlloc.isSkip output10746 = false := by
  rw [output10746_def]
  conv => lhs; cbv
  try rfl
theorem node10746_eq : Flapjack.WordAlloc.removeDeadStructural input10746 value5377 value1 value2 = (output10746, value5378, value1) := by
  rw [input10746_def, output10746_def]
  try (conv => lhs; cbv)
  try rfl

def value5379 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7017 7013)).val
theorem input10747_def : input10747 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7017 7013) := by
  unfold input10747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7017 7013)).val
theorem output10747_def : output10747 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7017 7013) := by
  unfold output10747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10747_skip : Flapjack.WordAlloc.isSkip output10747 = false := by
  rw [output10747_def]
  conv => lhs; cbv
  try rfl
theorem node10747_eq : Flapjack.WordAlloc.removeDeadStructural input10747 value5378 value1 value2 = (output10747, value5379, value1) := by
  rw [input10747_def, output10747_def]
  try (conv => lhs; cbv)
  try rfl

def value5380 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7013 7009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10748_def : input10748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7013 7009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7013 7009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10748_def : output10748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7013 7009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10748_skip : Flapjack.WordAlloc.isSkip output10748 = false := by
  rw [output10748_def]
  conv => lhs; cbv
  try rfl
theorem node10748_eq : Flapjack.WordAlloc.removeDeadStructural input10748 value5379 value1 value2 = (output10748, value5380, value1) := by
  rw [input10748_def, output10748_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7009 Flapjack.WordStore.heapLength)).val
theorem input10749_def : input10749 = (Flapjack.WordLangProgHOL.get 7009 Flapjack.WordStore.heapLength) := by
  unfold input10749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7009 Flapjack.WordStore.heapLength)).val
theorem output10749_def : output10749 = (Flapjack.WordLangProgHOL.get 7009 Flapjack.WordStore.heapLength) := by
  unfold output10749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10749_skip : Flapjack.WordAlloc.isSkip output10749 = false := by
  rw [output10749_def]
  conv => lhs; cbv
  try rfl
theorem node10749_eq : Flapjack.WordAlloc.removeDeadStructural input10749 value5380 value1 value2 = (output10749, value5, value1) := by
  rw [input10749_def, output10749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10749 input10748)).val
theorem input10750_def : input10750 = (.seq input10749 input10748) := by
  unfold input10750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10749 output10748)).val
theorem output10750_def : output10750 = (.seq output10749 output10748) := by
  unfold output10750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10750_skip : Flapjack.WordAlloc.isSkip output10750 = false := by
  rw [output10750_def]
  conv => lhs; cbv
  try rfl
theorem node10750_eq : Flapjack.WordAlloc.removeDeadStructural input10750 value5379 value1 value2 = (output10750, value5, value1) := by
  rw [input10750_def, output10750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10748_eq]
  dsimp only
  rw [node10749_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10750 input10747)).val
theorem input10751_def : input10751 = (.seq input10750 input10747) := by
  unfold input10751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10750 output10747)).val
theorem output10751_def : output10751 = (.seq output10750 output10747) := by
  unfold output10751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10751_skip : Flapjack.WordAlloc.isSkip output10751 = false := by
  rw [output10751_def]
  conv => lhs; cbv
  try rfl
theorem node10751_eq : Flapjack.WordAlloc.removeDeadStructural input10751 value5378 value1 value2 = (output10751, value5, value1) := by
  rw [input10751_def, output10751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10747_eq]
  dsimp only
  rw [node10750_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node10751_eq
end InitECandidate.Proofs.DeadStages713
