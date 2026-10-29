import InitECandidate.Proofs.DeadStages713.Chunk032
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input8448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8447 input8446)).val
theorem input8448_def : input8448 = (.seq input8447 input8446) := by
  unfold input8448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8447 output8446)).val
theorem output8448_def : output8448 = (.seq output8447 output8446) := by
  unfold output8448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8448_skip : Flapjack.WordAlloc.isSkip output8448 = false := by
  rw [output8448_def]
  conv => lhs; cbv
  try rfl
theorem node8448_eq : Flapjack.WordAlloc.removeDeadStructural input8448 value4228 value1 value2 = (output8448, value5, value1) := by
  rw [input8448_def, output8448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8446_eq]
  dsimp only
  rw [node8447_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8448 input8445)).val
theorem input8449_def : input8449 = (.seq input8448 input8445) := by
  unfold input8449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8448 output8445)).val
theorem output8449_def : output8449 = (.seq output8448 output8445) := by
  unfold output8449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8449_skip : Flapjack.WordAlloc.isSkip output8449 = false := by
  rw [output8449_def]
  conv => lhs; cbv
  try rfl
theorem node8449_eq : Flapjack.WordAlloc.removeDeadStructural input8449 value4227 value1 value2 = (output8449, value5, value1) := by
  rw [input8449_def, output8449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8445_eq]
  dsimp only
  rw [node8448_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8449 input8444)).val
theorem input8450_def : input8450 = (.seq input8449 input8444) := by
  unfold input8450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8449 output8444)).val
theorem output8450_def : output8450 = (.seq output8449 output8444) := by
  unfold output8450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8450_skip : Flapjack.WordAlloc.isSkip output8450 = false := by
  rw [output8450_def]
  conv => lhs; cbv
  try rfl
theorem node8450_eq : Flapjack.WordAlloc.removeDeadStructural input8450 value4226 value1 value2 = (output8450, value5, value1) := by
  rw [input8450_def, output8450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8444_eq]
  dsimp only
  rw [node8449_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8450 input8443)).val
theorem input8451_def : input8451 = (.seq input8450 input8443) := by
  unfold input8451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8450 output8443)).val
theorem output8451_def : output8451 = (.seq output8450 output8443) := by
  unfold output8451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8451_skip : Flapjack.WordAlloc.isSkip output8451 = false := by
  rw [output8451_def]
  conv => lhs; cbv
  try rfl
theorem node8451_eq : Flapjack.WordAlloc.removeDeadStructural input8451 value4224 value1 value2 = (output8451, value5, value1) := by
  rw [input8451_def, output8451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8443_eq]
  dsimp only
  rw [node8450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4230 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12201 (Flapjack.WordLangAddr.addr 12205 0#64)))).val
theorem input8452_def : input8452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12201 (Flapjack.WordLangAddr.addr 12205 0#64))) := by
  unfold input8452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12201 (Flapjack.WordLangAddr.addr 12205 0#64)))).val
theorem output8452_def : output8452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12201 (Flapjack.WordLangAddr.addr 12205 0#64))) := by
  unfold output8452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8452_skip : Flapjack.WordAlloc.isSkip output8452 = false := by
  rw [output8452_def]
  conv => lhs; cbv
  try rfl
theorem node8452_eq : Flapjack.WordAlloc.removeDeadStructural input8452 value5 value1 value2 = (output8452, value4230, value1) := by
  rw [input8452_def, output8452_def]
  try (conv => lhs; cbv)
  try rfl

def value4231 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12205, 12193)])).val
theorem input8453_def : input8453 = (Flapjack.WordLangProgHOL.move 0 [(12205, 12193)]) := by
  unfold input8453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12205, 12193)])).val
theorem output8453_def : output8453 = (Flapjack.WordLangProgHOL.move 0 [(12205, 12193)]) := by
  unfold output8453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8453_skip : Flapjack.WordAlloc.isSkip output8453 = false := by
  rw [output8453_def]
  conv => lhs; cbv
  try rfl
theorem node8453_eq : Flapjack.WordAlloc.removeDeadStructural input8453 value4230 value1 value2 = (output8453, value4231, value1) := by
  rw [input8453_def, output8453_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8453 input8452)).val
theorem input8454_def : input8454 = (.seq input8453 input8452) := by
  unfold input8454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8453 output8452)).val
theorem output8454_def : output8454 = (.seq output8453 output8452) := by
  unfold output8454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8454_skip : Flapjack.WordAlloc.isSkip output8454 = false := by
  rw [output8454_def]
  conv => lhs; cbv
  try rfl
theorem node8454_eq : Flapjack.WordAlloc.removeDeadStructural input8454 value5 value1 value2 = (output8454, value4231, value1) := by
  rw [input8454_def, output8454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8452_eq]
  dsimp only
  rw [node8453_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4232 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12201 725340084226051970#64))).val
theorem input8455_def : input8455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12201 725340084226051970#64)) := by
  unfold input8455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12201 725340084226051970#64))).val
theorem output8455_def : output8455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12201 725340084226051970#64)) := by
  unfold output8455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8455_skip : Flapjack.WordAlloc.isSkip output8455 = false := by
  rw [output8455_def]
  conv => lhs; cbv
  try rfl
theorem node8455_eq : Flapjack.WordAlloc.removeDeadStructural input8455 value4231 value1 value2 = (output8455, value4232, value1) := by
  rw [input8455_def, output8455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12197 725340084226051970#64))).val
theorem input8456_def : input8456 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12197 725340084226051970#64)) := by
  unfold input8456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8456_def : output8456 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8456_skip : Flapjack.WordAlloc.isSkip output8456 = true := by
  rw [output8456_def]
  conv => lhs; cbv
  try rfl
theorem node8456_eq : Flapjack.WordAlloc.removeDeadStructural input8456 value4232 value1 value2 = (output8456, value4232, value1) := by
  rw [input8456_def, output8456_def]
  try (conv => lhs; cbv)
  try rfl

def value4233 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12193 12185 (Flapjack.WordRegImm.reg 12189))))).val
theorem input8457_def : input8457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12193 12185 (Flapjack.WordRegImm.reg 12189)))) := by
  unfold input8457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12193 12185 (Flapjack.WordRegImm.reg 12189))))).val
theorem output8457_def : output8457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12193 12185 (Flapjack.WordRegImm.reg 12189)))) := by
  unfold output8457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8457_skip : Flapjack.WordAlloc.isSkip output8457 = false := by
  rw [output8457_def]
  conv => lhs; cbv
  try rfl
theorem node8457_eq : Flapjack.WordAlloc.removeDeadStructural input8457 value4232 value1 value2 = (output8457, value4233, value1) := by
  rw [input8457_def, output8457_def]
  try (conv => lhs; cbv)
  try rfl

def value4234 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12189 2904#64))).val
theorem input8458_def : input8458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12189 2904#64)) := by
  unfold input8458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12189 2904#64))).val
theorem output8458_def : output8458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12189 2904#64)) := by
  unfold output8458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8458_skip : Flapjack.WordAlloc.isSkip output8458 = false := by
  rw [output8458_def]
  conv => lhs; cbv
  try rfl
theorem node8458_eq : Flapjack.WordAlloc.removeDeadStructural input8458 value4233 value1 value2 = (output8458, value4234, value1) := by
  rw [input8458_def, output8458_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8458 input8457)).val
theorem input8459_def : input8459 = (.seq input8458 input8457) := by
  unfold input8459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8458 output8457)).val
theorem output8459_def : output8459 = (.seq output8458 output8457) := by
  unfold output8459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8459_skip : Flapjack.WordAlloc.isSkip output8459 = false := by
  rw [output8459_def]
  conv => lhs; cbv
  try rfl
theorem node8459_eq : Flapjack.WordAlloc.removeDeadStructural input8459 value4232 value1 value2 = (output8459, value4234, value1) := by
  rw [input8459_def, output8459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8457_eq]
  dsimp only
  rw [node8458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4235 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12185 (Flapjack.WordLangAddr.addr 12181 18446744073709551104#64)))).val
theorem input8460_def : input8460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12185 (Flapjack.WordLangAddr.addr 12181 18446744073709551104#64))) := by
  unfold input8460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12185 (Flapjack.WordLangAddr.addr 12181 18446744073709551104#64)))).val
theorem output8460_def : output8460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12185 (Flapjack.WordLangAddr.addr 12181 18446744073709551104#64))) := by
  unfold output8460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8460_skip : Flapjack.WordAlloc.isSkip output8460 = false := by
  rw [output8460_def]
  conv => lhs; cbv
  try rfl
theorem node8460_eq : Flapjack.WordAlloc.removeDeadStructural input8460 value4234 value1 value2 = (output8460, value4235, value1) := by
  rw [input8460_def, output8460_def]
  try (conv => lhs; cbv)
  try rfl

def value4236 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12181 12177)).val
theorem input8461_def : input8461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12181 12177) := by
  unfold input8461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12181 12177)).val
theorem output8461_def : output8461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12181 12177) := by
  unfold output8461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8461_skip : Flapjack.WordAlloc.isSkip output8461 = false := by
  rw [output8461_def]
  conv => lhs; cbv
  try rfl
theorem node8461_eq : Flapjack.WordAlloc.removeDeadStructural input8461 value4235 value1 value2 = (output8461, value4236, value1) := by
  rw [input8461_def, output8461_def]
  try (conv => lhs; cbv)
  try rfl

def value4237 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12177 12173 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8462_def : input8462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12177 12173 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12177 12173 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8462_def : output8462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12177 12173 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8462_skip : Flapjack.WordAlloc.isSkip output8462 = false := by
  rw [output8462_def]
  conv => lhs; cbv
  try rfl
theorem node8462_eq : Flapjack.WordAlloc.removeDeadStructural input8462 value4236 value1 value2 = (output8462, value4237, value1) := by
  rw [input8462_def, output8462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12173 Flapjack.WordStore.heapLength)).val
theorem input8463_def : input8463 = (Flapjack.WordLangProgHOL.get 12173 Flapjack.WordStore.heapLength) := by
  unfold input8463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12173 Flapjack.WordStore.heapLength)).val
theorem output8463_def : output8463 = (Flapjack.WordLangProgHOL.get 12173 Flapjack.WordStore.heapLength) := by
  unfold output8463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8463_skip : Flapjack.WordAlloc.isSkip output8463 = false := by
  rw [output8463_def]
  conv => lhs; cbv
  try rfl
theorem node8463_eq : Flapjack.WordAlloc.removeDeadStructural input8463 value4237 value1 value2 = (output8463, value5, value1) := by
  rw [input8463_def, output8463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8463 input8462)).val
theorem input8464_def : input8464 = (.seq input8463 input8462) := by
  unfold input8464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8463 output8462)).val
theorem output8464_def : output8464 = (.seq output8463 output8462) := by
  unfold output8464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8464_skip : Flapjack.WordAlloc.isSkip output8464 = false := by
  rw [output8464_def]
  conv => lhs; cbv
  try rfl
theorem node8464_eq : Flapjack.WordAlloc.removeDeadStructural input8464 value4236 value1 value2 = (output8464, value5, value1) := by
  rw [input8464_def, output8464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8462_eq]
  dsimp only
  rw [node8463_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8464 input8461)).val
theorem input8465_def : input8465 = (.seq input8464 input8461) := by
  unfold input8465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8464 output8461)).val
theorem output8465_def : output8465 = (.seq output8464 output8461) := by
  unfold output8465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8465_skip : Flapjack.WordAlloc.isSkip output8465 = false := by
  rw [output8465_def]
  conv => lhs; cbv
  try rfl
theorem node8465_eq : Flapjack.WordAlloc.removeDeadStructural input8465 value4235 value1 value2 = (output8465, value5, value1) := by
  rw [input8465_def, output8465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8461_eq]
  dsimp only
  rw [node8464_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8465 input8460)).val
theorem input8466_def : input8466 = (.seq input8465 input8460) := by
  unfold input8466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8465 output8460)).val
theorem output8466_def : output8466 = (.seq output8465 output8460) := by
  unfold output8466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8466_skip : Flapjack.WordAlloc.isSkip output8466 = false := by
  rw [output8466_def]
  conv => lhs; cbv
  try rfl
theorem node8466_eq : Flapjack.WordAlloc.removeDeadStructural input8466 value4234 value1 value2 = (output8466, value5, value1) := by
  rw [input8466_def, output8466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8460_eq]
  dsimp only
  rw [node8465_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8466 input8459)).val
theorem input8467_def : input8467 = (.seq input8466 input8459) := by
  unfold input8467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8466 output8459)).val
theorem output8467_def : output8467 = (.seq output8466 output8459) := by
  unfold output8467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8467_skip : Flapjack.WordAlloc.isSkip output8467 = false := by
  rw [output8467_def]
  conv => lhs; cbv
  try rfl
theorem node8467_eq : Flapjack.WordAlloc.removeDeadStructural input8467 value4232 value1 value2 = (output8467, value5, value1) := by
  rw [input8467_def, output8467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8459_eq]
  dsimp only
  rw [node8466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4238 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12165 (Flapjack.WordLangAddr.addr 12169 0#64)))).val
theorem input8468_def : input8468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12165 (Flapjack.WordLangAddr.addr 12169 0#64))) := by
  unfold input8468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12165 (Flapjack.WordLangAddr.addr 12169 0#64)))).val
theorem output8468_def : output8468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12165 (Flapjack.WordLangAddr.addr 12169 0#64))) := by
  unfold output8468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8468_skip : Flapjack.WordAlloc.isSkip output8468 = false := by
  rw [output8468_def]
  conv => lhs; cbv
  try rfl
theorem node8468_eq : Flapjack.WordAlloc.removeDeadStructural input8468 value5 value1 value2 = (output8468, value4238, value1) := by
  rw [input8468_def, output8468_def]
  try (conv => lhs; cbv)
  try rfl

def value4239 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12169, 12157)])).val
theorem input8469_def : input8469 = (Flapjack.WordLangProgHOL.move 0 [(12169, 12157)]) := by
  unfold input8469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12169, 12157)])).val
theorem output8469_def : output8469 = (Flapjack.WordLangProgHOL.move 0 [(12169, 12157)]) := by
  unfold output8469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8469_skip : Flapjack.WordAlloc.isSkip output8469 = false := by
  rw [output8469_def]
  conv => lhs; cbv
  try rfl
theorem node8469_eq : Flapjack.WordAlloc.removeDeadStructural input8469 value4238 value1 value2 = (output8469, value4239, value1) := by
  rw [input8469_def, output8469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8469 input8468)).val
theorem input8470_def : input8470 = (.seq input8469 input8468) := by
  unfold input8470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8469 output8468)).val
theorem output8470_def : output8470 = (.seq output8469 output8468) := by
  unfold output8470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8470_skip : Flapjack.WordAlloc.isSkip output8470 = false := by
  rw [output8470_def]
  conv => lhs; cbv
  try rfl
theorem node8470_eq : Flapjack.WordAlloc.removeDeadStructural input8470 value5 value1 value2 = (output8470, value4239, value1) := by
  rw [input8470_def, output8470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8468_eq]
  dsimp only
  rw [node8469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4240 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12165 6814521545734988748#64))).val
theorem input8471_def : input8471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12165 6814521545734988748#64)) := by
  unfold input8471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12165 6814521545734988748#64))).val
theorem output8471_def : output8471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12165 6814521545734988748#64)) := by
  unfold output8471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8471_skip : Flapjack.WordAlloc.isSkip output8471 = false := by
  rw [output8471_def]
  conv => lhs; cbv
  try rfl
theorem node8471_eq : Flapjack.WordAlloc.removeDeadStructural input8471 value4239 value1 value2 = (output8471, value4240, value1) := by
  rw [input8471_def, output8471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12161 6814521545734988748#64))).val
theorem input8472_def : input8472 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12161 6814521545734988748#64)) := by
  unfold input8472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8472_def : output8472 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8472_skip : Flapjack.WordAlloc.isSkip output8472 = true := by
  rw [output8472_def]
  conv => lhs; cbv
  try rfl
theorem node8472_eq : Flapjack.WordAlloc.removeDeadStructural input8472 value4240 value1 value2 = (output8472, value4240, value1) := by
  rw [input8472_def, output8472_def]
  try (conv => lhs; cbv)
  try rfl

def value4241 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12157 12149 (Flapjack.WordRegImm.reg 12153))))).val
theorem input8473_def : input8473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12157 12149 (Flapjack.WordRegImm.reg 12153)))) := by
  unfold input8473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12157 12149 (Flapjack.WordRegImm.reg 12153))))).val
theorem output8473_def : output8473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12157 12149 (Flapjack.WordRegImm.reg 12153)))) := by
  unfold output8473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8473_skip : Flapjack.WordAlloc.isSkip output8473 = false := by
  rw [output8473_def]
  conv => lhs; cbv
  try rfl
theorem node8473_eq : Flapjack.WordAlloc.removeDeadStructural input8473 value4240 value1 value2 = (output8473, value4241, value1) := by
  rw [input8473_def, output8473_def]
  try (conv => lhs; cbv)
  try rfl

def value4242 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12153 2896#64))).val
theorem input8474_def : input8474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12153 2896#64)) := by
  unfold input8474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12153 2896#64))).val
theorem output8474_def : output8474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12153 2896#64)) := by
  unfold output8474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8474_skip : Flapjack.WordAlloc.isSkip output8474 = false := by
  rw [output8474_def]
  conv => lhs; cbv
  try rfl
theorem node8474_eq : Flapjack.WordAlloc.removeDeadStructural input8474 value4241 value1 value2 = (output8474, value4242, value1) := by
  rw [input8474_def, output8474_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8474 input8473)).val
theorem input8475_def : input8475 = (.seq input8474 input8473) := by
  unfold input8475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8474 output8473)).val
theorem output8475_def : output8475 = (.seq output8474 output8473) := by
  unfold output8475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8475_skip : Flapjack.WordAlloc.isSkip output8475 = false := by
  rw [output8475_def]
  conv => lhs; cbv
  try rfl
theorem node8475_eq : Flapjack.WordAlloc.removeDeadStructural input8475 value4240 value1 value2 = (output8475, value4242, value1) := by
  rw [input8475_def, output8475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8473_eq]
  dsimp only
  rw [node8474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4243 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12149 (Flapjack.WordLangAddr.addr 12145 18446744073709551104#64)))).val
theorem input8476_def : input8476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12149 (Flapjack.WordLangAddr.addr 12145 18446744073709551104#64))) := by
  unfold input8476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12149 (Flapjack.WordLangAddr.addr 12145 18446744073709551104#64)))).val
theorem output8476_def : output8476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12149 (Flapjack.WordLangAddr.addr 12145 18446744073709551104#64))) := by
  unfold output8476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8476_skip : Flapjack.WordAlloc.isSkip output8476 = false := by
  rw [output8476_def]
  conv => lhs; cbv
  try rfl
theorem node8476_eq : Flapjack.WordAlloc.removeDeadStructural input8476 value4242 value1 value2 = (output8476, value4243, value1) := by
  rw [input8476_def, output8476_def]
  try (conv => lhs; cbv)
  try rfl

def value4244 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12145 12141)).val
theorem input8477_def : input8477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12145 12141) := by
  unfold input8477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12145 12141)).val
theorem output8477_def : output8477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12145 12141) := by
  unfold output8477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8477_skip : Flapjack.WordAlloc.isSkip output8477 = false := by
  rw [output8477_def]
  conv => lhs; cbv
  try rfl
theorem node8477_eq : Flapjack.WordAlloc.removeDeadStructural input8477 value4243 value1 value2 = (output8477, value4244, value1) := by
  rw [input8477_def, output8477_def]
  try (conv => lhs; cbv)
  try rfl

def value4245 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12141 12137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8478_def : input8478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12141 12137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12141 12137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8478_def : output8478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12141 12137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8478_skip : Flapjack.WordAlloc.isSkip output8478 = false := by
  rw [output8478_def]
  conv => lhs; cbv
  try rfl
theorem node8478_eq : Flapjack.WordAlloc.removeDeadStructural input8478 value4244 value1 value2 = (output8478, value4245, value1) := by
  rw [input8478_def, output8478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12137 Flapjack.WordStore.heapLength)).val
theorem input8479_def : input8479 = (Flapjack.WordLangProgHOL.get 12137 Flapjack.WordStore.heapLength) := by
  unfold input8479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12137 Flapjack.WordStore.heapLength)).val
theorem output8479_def : output8479 = (Flapjack.WordLangProgHOL.get 12137 Flapjack.WordStore.heapLength) := by
  unfold output8479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8479_skip : Flapjack.WordAlloc.isSkip output8479 = false := by
  rw [output8479_def]
  conv => lhs; cbv
  try rfl
theorem node8479_eq : Flapjack.WordAlloc.removeDeadStructural input8479 value4245 value1 value2 = (output8479, value5, value1) := by
  rw [input8479_def, output8479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8479 input8478)).val
theorem input8480_def : input8480 = (.seq input8479 input8478) := by
  unfold input8480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8479 output8478)).val
theorem output8480_def : output8480 = (.seq output8479 output8478) := by
  unfold output8480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8480_skip : Flapjack.WordAlloc.isSkip output8480 = false := by
  rw [output8480_def]
  conv => lhs; cbv
  try rfl
theorem node8480_eq : Flapjack.WordAlloc.removeDeadStructural input8480 value4244 value1 value2 = (output8480, value5, value1) := by
  rw [input8480_def, output8480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8478_eq]
  dsimp only
  rw [node8479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8480 input8477)).val
theorem input8481_def : input8481 = (.seq input8480 input8477) := by
  unfold input8481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8480 output8477)).val
theorem output8481_def : output8481 = (.seq output8480 output8477) := by
  unfold output8481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8481_skip : Flapjack.WordAlloc.isSkip output8481 = false := by
  rw [output8481_def]
  conv => lhs; cbv
  try rfl
theorem node8481_eq : Flapjack.WordAlloc.removeDeadStructural input8481 value4243 value1 value2 = (output8481, value5, value1) := by
  rw [input8481_def, output8481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8477_eq]
  dsimp only
  rw [node8480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8481 input8476)).val
theorem input8482_def : input8482 = (.seq input8481 input8476) := by
  unfold input8482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8481 output8476)).val
theorem output8482_def : output8482 = (.seq output8481 output8476) := by
  unfold output8482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8482_skip : Flapjack.WordAlloc.isSkip output8482 = false := by
  rw [output8482_def]
  conv => lhs; cbv
  try rfl
theorem node8482_eq : Flapjack.WordAlloc.removeDeadStructural input8482 value4242 value1 value2 = (output8482, value5, value1) := by
  rw [input8482_def, output8482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8476_eq]
  dsimp only
  rw [node8481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8482 input8475)).val
theorem input8483_def : input8483 = (.seq input8482 input8475) := by
  unfold input8483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8482 output8475)).val
theorem output8483_def : output8483 = (.seq output8482 output8475) := by
  unfold output8483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8483_skip : Flapjack.WordAlloc.isSkip output8483 = false := by
  rw [output8483_def]
  conv => lhs; cbv
  try rfl
theorem node8483_eq : Flapjack.WordAlloc.removeDeadStructural input8483 value4240 value1 value2 = (output8483, value5, value1) := by
  rw [input8483_def, output8483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8475_eq]
  dsimp only
  rw [node8482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4246 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12129 (Flapjack.WordLangAddr.addr 12133 0#64)))).val
theorem input8484_def : input8484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12129 (Flapjack.WordLangAddr.addr 12133 0#64))) := by
  unfold input8484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12129 (Flapjack.WordLangAddr.addr 12133 0#64)))).val
theorem output8484_def : output8484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12129 (Flapjack.WordLangAddr.addr 12133 0#64))) := by
  unfold output8484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8484_skip : Flapjack.WordAlloc.isSkip output8484 = false := by
  rw [output8484_def]
  conv => lhs; cbv
  try rfl
theorem node8484_eq : Flapjack.WordAlloc.removeDeadStructural input8484 value5 value1 value2 = (output8484, value4246, value1) := by
  rw [input8484_def, output8484_def]
  try (conv => lhs; cbv)
  try rfl

def value4247 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12133, 12121)])).val
theorem input8485_def : input8485 = (Flapjack.WordLangProgHOL.move 0 [(12133, 12121)]) := by
  unfold input8485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12133, 12121)])).val
theorem output8485_def : output8485 = (Flapjack.WordLangProgHOL.move 0 [(12133, 12121)]) := by
  unfold output8485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8485_skip : Flapjack.WordAlloc.isSkip output8485 = false := by
  rw [output8485_def]
  conv => lhs; cbv
  try rfl
theorem node8485_eq : Flapjack.WordAlloc.removeDeadStructural input8485 value4246 value1 value2 = (output8485, value4247, value1) := by
  rw [input8485_def, output8485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8485 input8484)).val
theorem input8486_def : input8486 = (.seq input8485 input8484) := by
  unfold input8486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8485 output8484)).val
theorem output8486_def : output8486 = (.seq output8485 output8484) := by
  unfold output8486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8486_skip : Flapjack.WordAlloc.isSkip output8486 = false := by
  rw [output8486_def]
  conv => lhs; cbv
  try rfl
theorem node8486_eq : Flapjack.WordAlloc.removeDeadStructural input8486 value5 value1 value2 = (output8486, value4247, value1) := by
  rw [input8486_def, output8486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8484_eq]
  dsimp only
  rw [node8485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4248 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12129 16176803544133875307#64))).val
theorem input8487_def : input8487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12129 16176803544133875307#64)) := by
  unfold input8487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12129 16176803544133875307#64))).val
theorem output8487_def : output8487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12129 16176803544133875307#64)) := by
  unfold output8487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8487_skip : Flapjack.WordAlloc.isSkip output8487 = false := by
  rw [output8487_def]
  conv => lhs; cbv
  try rfl
theorem node8487_eq : Flapjack.WordAlloc.removeDeadStructural input8487 value4247 value1 value2 = (output8487, value4248, value1) := by
  rw [input8487_def, output8487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12125 16176803544133875307#64))).val
theorem input8488_def : input8488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12125 16176803544133875307#64)) := by
  unfold input8488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8488_def : output8488 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8488_skip : Flapjack.WordAlloc.isSkip output8488 = true := by
  rw [output8488_def]
  conv => lhs; cbv
  try rfl
theorem node8488_eq : Flapjack.WordAlloc.removeDeadStructural input8488 value4248 value1 value2 = (output8488, value4248, value1) := by
  rw [input8488_def, output8488_def]
  try (conv => lhs; cbv)
  try rfl

def value4249 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12121 12113 (Flapjack.WordRegImm.reg 12117))))).val
theorem input8489_def : input8489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12121 12113 (Flapjack.WordRegImm.reg 12117)))) := by
  unfold input8489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12121 12113 (Flapjack.WordRegImm.reg 12117))))).val
theorem output8489_def : output8489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12121 12113 (Flapjack.WordRegImm.reg 12117)))) := by
  unfold output8489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8489_skip : Flapjack.WordAlloc.isSkip output8489 = false := by
  rw [output8489_def]
  conv => lhs; cbv
  try rfl
theorem node8489_eq : Flapjack.WordAlloc.removeDeadStructural input8489 value4248 value1 value2 = (output8489, value4249, value1) := by
  rw [input8489_def, output8489_def]
  try (conv => lhs; cbv)
  try rfl

def value4250 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12117 2888#64))).val
theorem input8490_def : input8490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12117 2888#64)) := by
  unfold input8490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12117 2888#64))).val
theorem output8490_def : output8490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12117 2888#64)) := by
  unfold output8490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8490_skip : Flapjack.WordAlloc.isSkip output8490 = false := by
  rw [output8490_def]
  conv => lhs; cbv
  try rfl
theorem node8490_eq : Flapjack.WordAlloc.removeDeadStructural input8490 value4249 value1 value2 = (output8490, value4250, value1) := by
  rw [input8490_def, output8490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8490 input8489)).val
theorem input8491_def : input8491 = (.seq input8490 input8489) := by
  unfold input8491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8490 output8489)).val
theorem output8491_def : output8491 = (.seq output8490 output8489) := by
  unfold output8491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8491_skip : Flapjack.WordAlloc.isSkip output8491 = false := by
  rw [output8491_def]
  conv => lhs; cbv
  try rfl
theorem node8491_eq : Flapjack.WordAlloc.removeDeadStructural input8491 value4248 value1 value2 = (output8491, value4250, value1) := by
  rw [input8491_def, output8491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8489_eq]
  dsimp only
  rw [node8490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4251 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12113 (Flapjack.WordLangAddr.addr 12109 18446744073709551104#64)))).val
theorem input8492_def : input8492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12113 (Flapjack.WordLangAddr.addr 12109 18446744073709551104#64))) := by
  unfold input8492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12113 (Flapjack.WordLangAddr.addr 12109 18446744073709551104#64)))).val
theorem output8492_def : output8492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12113 (Flapjack.WordLangAddr.addr 12109 18446744073709551104#64))) := by
  unfold output8492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8492_skip : Flapjack.WordAlloc.isSkip output8492 = false := by
  rw [output8492_def]
  conv => lhs; cbv
  try rfl
theorem node8492_eq : Flapjack.WordAlloc.removeDeadStructural input8492 value4250 value1 value2 = (output8492, value4251, value1) := by
  rw [input8492_def, output8492_def]
  try (conv => lhs; cbv)
  try rfl

def value4252 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12109 12105)).val
theorem input8493_def : input8493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12109 12105) := by
  unfold input8493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12109 12105)).val
theorem output8493_def : output8493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12109 12105) := by
  unfold output8493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8493_skip : Flapjack.WordAlloc.isSkip output8493 = false := by
  rw [output8493_def]
  conv => lhs; cbv
  try rfl
theorem node8493_eq : Flapjack.WordAlloc.removeDeadStructural input8493 value4251 value1 value2 = (output8493, value4252, value1) := by
  rw [input8493_def, output8493_def]
  try (conv => lhs; cbv)
  try rfl

def value4253 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12105 12101 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8494_def : input8494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12105 12101 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12105 12101 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8494_def : output8494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12105 12101 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8494_skip : Flapjack.WordAlloc.isSkip output8494 = false := by
  rw [output8494_def]
  conv => lhs; cbv
  try rfl
theorem node8494_eq : Flapjack.WordAlloc.removeDeadStructural input8494 value4252 value1 value2 = (output8494, value4253, value1) := by
  rw [input8494_def, output8494_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12101 Flapjack.WordStore.heapLength)).val
theorem input8495_def : input8495 = (Flapjack.WordLangProgHOL.get 12101 Flapjack.WordStore.heapLength) := by
  unfold input8495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12101 Flapjack.WordStore.heapLength)).val
theorem output8495_def : output8495 = (Flapjack.WordLangProgHOL.get 12101 Flapjack.WordStore.heapLength) := by
  unfold output8495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8495_skip : Flapjack.WordAlloc.isSkip output8495 = false := by
  rw [output8495_def]
  conv => lhs; cbv
  try rfl
theorem node8495_eq : Flapjack.WordAlloc.removeDeadStructural input8495 value4253 value1 value2 = (output8495, value5, value1) := by
  rw [input8495_def, output8495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8495 input8494)).val
theorem input8496_def : input8496 = (.seq input8495 input8494) := by
  unfold input8496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8495 output8494)).val
theorem output8496_def : output8496 = (.seq output8495 output8494) := by
  unfold output8496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8496_skip : Flapjack.WordAlloc.isSkip output8496 = false := by
  rw [output8496_def]
  conv => lhs; cbv
  try rfl
theorem node8496_eq : Flapjack.WordAlloc.removeDeadStructural input8496 value4252 value1 value2 = (output8496, value5, value1) := by
  rw [input8496_def, output8496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8494_eq]
  dsimp only
  rw [node8495_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8496 input8493)).val
theorem input8497_def : input8497 = (.seq input8496 input8493) := by
  unfold input8497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8496 output8493)).val
theorem output8497_def : output8497 = (.seq output8496 output8493) := by
  unfold output8497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8497_skip : Flapjack.WordAlloc.isSkip output8497 = false := by
  rw [output8497_def]
  conv => lhs; cbv
  try rfl
theorem node8497_eq : Flapjack.WordAlloc.removeDeadStructural input8497 value4251 value1 value2 = (output8497, value5, value1) := by
  rw [input8497_def, output8497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8493_eq]
  dsimp only
  rw [node8496_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8497 input8492)).val
theorem input8498_def : input8498 = (.seq input8497 input8492) := by
  unfold input8498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8497 output8492)).val
theorem output8498_def : output8498 = (.seq output8497 output8492) := by
  unfold output8498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8498_skip : Flapjack.WordAlloc.isSkip output8498 = false := by
  rw [output8498_def]
  conv => lhs; cbv
  try rfl
theorem node8498_eq : Flapjack.WordAlloc.removeDeadStructural input8498 value4250 value1 value2 = (output8498, value5, value1) := by
  rw [input8498_def, output8498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8492_eq]
  dsimp only
  rw [node8497_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8498 input8491)).val
theorem input8499_def : input8499 = (.seq input8498 input8491) := by
  unfold input8499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8498 output8491)).val
theorem output8499_def : output8499 = (.seq output8498 output8491) := by
  unfold output8499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8499_skip : Flapjack.WordAlloc.isSkip output8499 = false := by
  rw [output8499_def]
  conv => lhs; cbv
  try rfl
theorem node8499_eq : Flapjack.WordAlloc.removeDeadStructural input8499 value4248 value1 value2 = (output8499, value5, value1) := by
  rw [input8499_def, output8499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8491_eq]
  dsimp only
  rw [node8498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4254 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12093 (Flapjack.WordLangAddr.addr 12097 0#64)))).val
theorem input8500_def : input8500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12093 (Flapjack.WordLangAddr.addr 12097 0#64))) := by
  unfold input8500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12093 (Flapjack.WordLangAddr.addr 12097 0#64)))).val
theorem output8500_def : output8500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12093 (Flapjack.WordLangAddr.addr 12097 0#64))) := by
  unfold output8500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8500_skip : Flapjack.WordAlloc.isSkip output8500 = false := by
  rw [output8500_def]
  conv => lhs; cbv
  try rfl
theorem node8500_eq : Flapjack.WordAlloc.removeDeadStructural input8500 value5 value1 value2 = (output8500, value4254, value1) := by
  rw [input8500_def, output8500_def]
  try (conv => lhs; cbv)
  try rfl

def value4255 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12097, 12085)])).val
theorem input8501_def : input8501 = (Flapjack.WordLangProgHOL.move 0 [(12097, 12085)]) := by
  unfold input8501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12097, 12085)])).val
theorem output8501_def : output8501 = (Flapjack.WordLangProgHOL.move 0 [(12097, 12085)]) := by
  unfold output8501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8501_skip : Flapjack.WordAlloc.isSkip output8501 = false := by
  rw [output8501_def]
  conv => lhs; cbv
  try rfl
theorem node8501_eq : Flapjack.WordAlloc.removeDeadStructural input8501 value4254 value1 value2 = (output8501, value4255, value1) := by
  rw [input8501_def, output8501_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8501 input8500)).val
theorem input8502_def : input8502 = (.seq input8501 input8500) := by
  unfold input8502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8501 output8500)).val
theorem output8502_def : output8502 = (.seq output8501 output8500) := by
  unfold output8502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8502_skip : Flapjack.WordAlloc.isSkip output8502 = false := by
  rw [output8502_def]
  conv => lhs; cbv
  try rfl
theorem node8502_eq : Flapjack.WordAlloc.removeDeadStructural input8502 value5 value1 value2 = (output8502, value4255, value1) := by
  rw [input8502_def, output8502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8500_eq]
  dsimp only
  rw [node8501_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4256 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12093 8363199516777220149#64))).val
theorem input8503_def : input8503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12093 8363199516777220149#64)) := by
  unfold input8503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12093 8363199516777220149#64))).val
theorem output8503_def : output8503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12093 8363199516777220149#64)) := by
  unfold output8503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8503_skip : Flapjack.WordAlloc.isSkip output8503 = false := by
  rw [output8503_def]
  conv => lhs; cbv
  try rfl
theorem node8503_eq : Flapjack.WordAlloc.removeDeadStructural input8503 value4255 value1 value2 = (output8503, value4256, value1) := by
  rw [input8503_def, output8503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12089 8363199516777220149#64))).val
theorem input8504_def : input8504 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12089 8363199516777220149#64)) := by
  unfold input8504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8504_def : output8504 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8504_skip : Flapjack.WordAlloc.isSkip output8504 = true := by
  rw [output8504_def]
  conv => lhs; cbv
  try rfl
theorem node8504_eq : Flapjack.WordAlloc.removeDeadStructural input8504 value4256 value1 value2 = (output8504, value4256, value1) := by
  rw [input8504_def, output8504_def]
  try (conv => lhs; cbv)
  try rfl

def value4257 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12085 12077 (Flapjack.WordRegImm.reg 12081))))).val
theorem input8505_def : input8505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12085 12077 (Flapjack.WordRegImm.reg 12081)))) := by
  unfold input8505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12085 12077 (Flapjack.WordRegImm.reg 12081))))).val
theorem output8505_def : output8505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12085 12077 (Flapjack.WordRegImm.reg 12081)))) := by
  unfold output8505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8505_skip : Flapjack.WordAlloc.isSkip output8505 = false := by
  rw [output8505_def]
  conv => lhs; cbv
  try rfl
theorem node8505_eq : Flapjack.WordAlloc.removeDeadStructural input8505 value4256 value1 value2 = (output8505, value4257, value1) := by
  rw [input8505_def, output8505_def]
  try (conv => lhs; cbv)
  try rfl

def value4258 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12081 2880#64))).val
theorem input8506_def : input8506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12081 2880#64)) := by
  unfold input8506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12081 2880#64))).val
theorem output8506_def : output8506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12081 2880#64)) := by
  unfold output8506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8506_skip : Flapjack.WordAlloc.isSkip output8506 = false := by
  rw [output8506_def]
  conv => lhs; cbv
  try rfl
theorem node8506_eq : Flapjack.WordAlloc.removeDeadStructural input8506 value4257 value1 value2 = (output8506, value4258, value1) := by
  rw [input8506_def, output8506_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8506 input8505)).val
theorem input8507_def : input8507 = (.seq input8506 input8505) := by
  unfold input8507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8506 output8505)).val
theorem output8507_def : output8507 = (.seq output8506 output8505) := by
  unfold output8507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8507_skip : Flapjack.WordAlloc.isSkip output8507 = false := by
  rw [output8507_def]
  conv => lhs; cbv
  try rfl
theorem node8507_eq : Flapjack.WordAlloc.removeDeadStructural input8507 value4256 value1 value2 = (output8507, value4258, value1) := by
  rw [input8507_def, output8507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8505_eq]
  dsimp only
  rw [node8506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4259 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12077 (Flapjack.WordLangAddr.addr 12073 18446744073709551104#64)))).val
theorem input8508_def : input8508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12077 (Flapjack.WordLangAddr.addr 12073 18446744073709551104#64))) := by
  unfold input8508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12077 (Flapjack.WordLangAddr.addr 12073 18446744073709551104#64)))).val
theorem output8508_def : output8508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12077 (Flapjack.WordLangAddr.addr 12073 18446744073709551104#64))) := by
  unfold output8508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8508_skip : Flapjack.WordAlloc.isSkip output8508 = false := by
  rw [output8508_def]
  conv => lhs; cbv
  try rfl
theorem node8508_eq : Flapjack.WordAlloc.removeDeadStructural input8508 value4258 value1 value2 = (output8508, value4259, value1) := by
  rw [input8508_def, output8508_def]
  try (conv => lhs; cbv)
  try rfl

def value4260 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12073 12069)).val
theorem input8509_def : input8509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12073 12069) := by
  unfold input8509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12073 12069)).val
theorem output8509_def : output8509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12073 12069) := by
  unfold output8509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8509_skip : Flapjack.WordAlloc.isSkip output8509 = false := by
  rw [output8509_def]
  conv => lhs; cbv
  try rfl
theorem node8509_eq : Flapjack.WordAlloc.removeDeadStructural input8509 value4259 value1 value2 = (output8509, value4260, value1) := by
  rw [input8509_def, output8509_def]
  try (conv => lhs; cbv)
  try rfl

def value4261 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12069 12065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8510_def : input8510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12069 12065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12069 12065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8510_def : output8510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12069 12065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8510_skip : Flapjack.WordAlloc.isSkip output8510 = false := by
  rw [output8510_def]
  conv => lhs; cbv
  try rfl
theorem node8510_eq : Flapjack.WordAlloc.removeDeadStructural input8510 value4260 value1 value2 = (output8510, value4261, value1) := by
  rw [input8510_def, output8510_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12065 Flapjack.WordStore.heapLength)).val
theorem input8511_def : input8511 = (Flapjack.WordLangProgHOL.get 12065 Flapjack.WordStore.heapLength) := by
  unfold input8511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12065 Flapjack.WordStore.heapLength)).val
theorem output8511_def : output8511 = (Flapjack.WordLangProgHOL.get 12065 Flapjack.WordStore.heapLength) := by
  unfold output8511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8511_skip : Flapjack.WordAlloc.isSkip output8511 = false := by
  rw [output8511_def]
  conv => lhs; cbv
  try rfl
theorem node8511_eq : Flapjack.WordAlloc.removeDeadStructural input8511 value4261 value1 value2 = (output8511, value5, value1) := by
  rw [input8511_def, output8511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8511 input8510)).val
theorem input8512_def : input8512 = (.seq input8511 input8510) := by
  unfold input8512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8511 output8510)).val
theorem output8512_def : output8512 = (.seq output8511 output8510) := by
  unfold output8512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8512_skip : Flapjack.WordAlloc.isSkip output8512 = false := by
  rw [output8512_def]
  conv => lhs; cbv
  try rfl
theorem node8512_eq : Flapjack.WordAlloc.removeDeadStructural input8512 value4260 value1 value2 = (output8512, value5, value1) := by
  rw [input8512_def, output8512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8510_eq]
  dsimp only
  rw [node8511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8512 input8509)).val
theorem input8513_def : input8513 = (.seq input8512 input8509) := by
  unfold input8513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8512 output8509)).val
theorem output8513_def : output8513 = (.seq output8512 output8509) := by
  unfold output8513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8513_skip : Flapjack.WordAlloc.isSkip output8513 = false := by
  rw [output8513_def]
  conv => lhs; cbv
  try rfl
theorem node8513_eq : Flapjack.WordAlloc.removeDeadStructural input8513 value4259 value1 value2 = (output8513, value5, value1) := by
  rw [input8513_def, output8513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8509_eq]
  dsimp only
  rw [node8512_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8513 input8508)).val
theorem input8514_def : input8514 = (.seq input8513 input8508) := by
  unfold input8514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8513 output8508)).val
theorem output8514_def : output8514 = (.seq output8513 output8508) := by
  unfold output8514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8514_skip : Flapjack.WordAlloc.isSkip output8514 = false := by
  rw [output8514_def]
  conv => lhs; cbv
  try rfl
theorem node8514_eq : Flapjack.WordAlloc.removeDeadStructural input8514 value4258 value1 value2 = (output8514, value5, value1) := by
  rw [input8514_def, output8514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8508_eq]
  dsimp only
  rw [node8513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8514 input8507)).val
theorem input8515_def : input8515 = (.seq input8514 input8507) := by
  unfold input8515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8514 output8507)).val
theorem output8515_def : output8515 = (.seq output8514 output8507) := by
  unfold output8515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8515_skip : Flapjack.WordAlloc.isSkip output8515 = false := by
  rw [output8515_def]
  conv => lhs; cbv
  try rfl
theorem node8515_eq : Flapjack.WordAlloc.removeDeadStructural input8515 value4256 value1 value2 = (output8515, value5, value1) := by
  rw [input8515_def, output8515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8507_eq]
  dsimp only
  rw [node8514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4262 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12057 (Flapjack.WordLangAddr.addr 12061 0#64)))).val
theorem input8516_def : input8516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12057 (Flapjack.WordLangAddr.addr 12061 0#64))) := by
  unfold input8516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12057 (Flapjack.WordLangAddr.addr 12061 0#64)))).val
theorem output8516_def : output8516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12057 (Flapjack.WordLangAddr.addr 12061 0#64))) := by
  unfold output8516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8516_skip : Flapjack.WordAlloc.isSkip output8516 = false := by
  rw [output8516_def]
  conv => lhs; cbv
  try rfl
theorem node8516_eq : Flapjack.WordAlloc.removeDeadStructural input8516 value5 value1 value2 = (output8516, value4262, value1) := by
  rw [input8516_def, output8516_def]
  try (conv => lhs; cbv)
  try rfl

def value4263 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12061, 12049)])).val
theorem input8517_def : input8517 = (Flapjack.WordLangProgHOL.move 0 [(12061, 12049)]) := by
  unfold input8517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12061, 12049)])).val
theorem output8517_def : output8517 = (Flapjack.WordLangProgHOL.move 0 [(12061, 12049)]) := by
  unfold output8517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8517_skip : Flapjack.WordAlloc.isSkip output8517 = false := by
  rw [output8517_def]
  conv => lhs; cbv
  try rfl
theorem node8517_eq : Flapjack.WordAlloc.removeDeadStructural input8517 value4262 value1 value2 = (output8517, value4263, value1) := by
  rw [input8517_def, output8517_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8517 input8516)).val
theorem input8518_def : input8518 = (.seq input8517 input8516) := by
  unfold input8518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8517 output8516)).val
theorem output8518_def : output8518 = (.seq output8517 output8516) := by
  unfold output8518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8518_skip : Flapjack.WordAlloc.isSkip output8518 = false := by
  rw [output8518_def]
  conv => lhs; cbv
  try rfl
theorem node8518_eq : Flapjack.WordAlloc.removeDeadStructural input8518 value5 value1 value2 = (output8518, value4263, value1) := by
  rw [input8518_def, output8518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8516_eq]
  dsimp only
  rw [node8517_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4264 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12057 252877309218538352#64))).val
theorem input8519_def : input8519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12057 252877309218538352#64)) := by
  unfold input8519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12057 252877309218538352#64))).val
theorem output8519_def : output8519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12057 252877309218538352#64)) := by
  unfold output8519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8519_skip : Flapjack.WordAlloc.isSkip output8519 = false := by
  rw [output8519_def]
  conv => lhs; cbv
  try rfl
theorem node8519_eq : Flapjack.WordAlloc.removeDeadStructural input8519 value4263 value1 value2 = (output8519, value4264, value1) := by
  rw [input8519_def, output8519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12053 252877309218538352#64))).val
theorem input8520_def : input8520 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12053 252877309218538352#64)) := by
  unfold input8520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8520_def : output8520 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8520_skip : Flapjack.WordAlloc.isSkip output8520 = true := by
  rw [output8520_def]
  conv => lhs; cbv
  try rfl
theorem node8520_eq : Flapjack.WordAlloc.removeDeadStructural input8520 value4264 value1 value2 = (output8520, value4264, value1) := by
  rw [input8520_def, output8520_def]
  try (conv => lhs; cbv)
  try rfl

def value4265 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12049 12041 (Flapjack.WordRegImm.reg 12045))))).val
theorem input8521_def : input8521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12049 12041 (Flapjack.WordRegImm.reg 12045)))) := by
  unfold input8521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12049 12041 (Flapjack.WordRegImm.reg 12045))))).val
theorem output8521_def : output8521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12049 12041 (Flapjack.WordRegImm.reg 12045)))) := by
  unfold output8521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8521_skip : Flapjack.WordAlloc.isSkip output8521 = false := by
  rw [output8521_def]
  conv => lhs; cbv
  try rfl
theorem node8521_eq : Flapjack.WordAlloc.removeDeadStructural input8521 value4264 value1 value2 = (output8521, value4265, value1) := by
  rw [input8521_def, output8521_def]
  try (conv => lhs; cbv)
  try rfl

def value4266 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12045 2872#64))).val
theorem input8522_def : input8522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12045 2872#64)) := by
  unfold input8522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12045 2872#64))).val
theorem output8522_def : output8522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12045 2872#64)) := by
  unfold output8522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8522_skip : Flapjack.WordAlloc.isSkip output8522 = false := by
  rw [output8522_def]
  conv => lhs; cbv
  try rfl
theorem node8522_eq : Flapjack.WordAlloc.removeDeadStructural input8522 value4265 value1 value2 = (output8522, value4266, value1) := by
  rw [input8522_def, output8522_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8522 input8521)).val
theorem input8523_def : input8523 = (.seq input8522 input8521) := by
  unfold input8523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8522 output8521)).val
theorem output8523_def : output8523 = (.seq output8522 output8521) := by
  unfold output8523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8523_skip : Flapjack.WordAlloc.isSkip output8523 = false := by
  rw [output8523_def]
  conv => lhs; cbv
  try rfl
theorem node8523_eq : Flapjack.WordAlloc.removeDeadStructural input8523 value4264 value1 value2 = (output8523, value4266, value1) := by
  rw [input8523_def, output8523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8521_eq]
  dsimp only
  rw [node8522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4267 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12041 (Flapjack.WordLangAddr.addr 12037 18446744073709551104#64)))).val
theorem input8524_def : input8524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12041 (Flapjack.WordLangAddr.addr 12037 18446744073709551104#64))) := by
  unfold input8524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12041 (Flapjack.WordLangAddr.addr 12037 18446744073709551104#64)))).val
theorem output8524_def : output8524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12041 (Flapjack.WordLangAddr.addr 12037 18446744073709551104#64))) := by
  unfold output8524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8524_skip : Flapjack.WordAlloc.isSkip output8524 = false := by
  rw [output8524_def]
  conv => lhs; cbv
  try rfl
theorem node8524_eq : Flapjack.WordAlloc.removeDeadStructural input8524 value4266 value1 value2 = (output8524, value4267, value1) := by
  rw [input8524_def, output8524_def]
  try (conv => lhs; cbv)
  try rfl

def value4268 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12037 12033)).val
theorem input8525_def : input8525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12037 12033) := by
  unfold input8525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12037 12033)).val
theorem output8525_def : output8525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12037 12033) := by
  unfold output8525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8525_skip : Flapjack.WordAlloc.isSkip output8525 = false := by
  rw [output8525_def]
  conv => lhs; cbv
  try rfl
theorem node8525_eq : Flapjack.WordAlloc.removeDeadStructural input8525 value4267 value1 value2 = (output8525, value4268, value1) := by
  rw [input8525_def, output8525_def]
  try (conv => lhs; cbv)
  try rfl

def value4269 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12033 12029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8526_def : input8526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12033 12029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12033 12029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8526_def : output8526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12033 12029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8526_skip : Flapjack.WordAlloc.isSkip output8526 = false := by
  rw [output8526_def]
  conv => lhs; cbv
  try rfl
theorem node8526_eq : Flapjack.WordAlloc.removeDeadStructural input8526 value4268 value1 value2 = (output8526, value4269, value1) := by
  rw [input8526_def, output8526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12029 Flapjack.WordStore.heapLength)).val
theorem input8527_def : input8527 = (Flapjack.WordLangProgHOL.get 12029 Flapjack.WordStore.heapLength) := by
  unfold input8527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12029 Flapjack.WordStore.heapLength)).val
theorem output8527_def : output8527 = (Flapjack.WordLangProgHOL.get 12029 Flapjack.WordStore.heapLength) := by
  unfold output8527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8527_skip : Flapjack.WordAlloc.isSkip output8527 = false := by
  rw [output8527_def]
  conv => lhs; cbv
  try rfl
theorem node8527_eq : Flapjack.WordAlloc.removeDeadStructural input8527 value4269 value1 value2 = (output8527, value5, value1) := by
  rw [input8527_def, output8527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8527 input8526)).val
theorem input8528_def : input8528 = (.seq input8527 input8526) := by
  unfold input8528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8527 output8526)).val
theorem output8528_def : output8528 = (.seq output8527 output8526) := by
  unfold output8528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8528_skip : Flapjack.WordAlloc.isSkip output8528 = false := by
  rw [output8528_def]
  conv => lhs; cbv
  try rfl
theorem node8528_eq : Flapjack.WordAlloc.removeDeadStructural input8528 value4268 value1 value2 = (output8528, value5, value1) := by
  rw [input8528_def, output8528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8526_eq]
  dsimp only
  rw [node8527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8528 input8525)).val
theorem input8529_def : input8529 = (.seq input8528 input8525) := by
  unfold input8529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8528 output8525)).val
theorem output8529_def : output8529 = (.seq output8528 output8525) := by
  unfold output8529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8529_skip : Flapjack.WordAlloc.isSkip output8529 = false := by
  rw [output8529_def]
  conv => lhs; cbv
  try rfl
theorem node8529_eq : Flapjack.WordAlloc.removeDeadStructural input8529 value4267 value1 value2 = (output8529, value5, value1) := by
  rw [input8529_def, output8529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8525_eq]
  dsimp only
  rw [node8528_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8529 input8524)).val
theorem input8530_def : input8530 = (.seq input8529 input8524) := by
  unfold input8530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8529 output8524)).val
theorem output8530_def : output8530 = (.seq output8529 output8524) := by
  unfold output8530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8530_skip : Flapjack.WordAlloc.isSkip output8530 = false := by
  rw [output8530_def]
  conv => lhs; cbv
  try rfl
theorem node8530_eq : Flapjack.WordAlloc.removeDeadStructural input8530 value4266 value1 value2 = (output8530, value5, value1) := by
  rw [input8530_def, output8530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8524_eq]
  dsimp only
  rw [node8529_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8530 input8523)).val
theorem input8531_def : input8531 = (.seq input8530 input8523) := by
  unfold input8531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8530 output8523)).val
theorem output8531_def : output8531 = (.seq output8530 output8523) := by
  unfold output8531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8531_skip : Flapjack.WordAlloc.isSkip output8531 = false := by
  rw [output8531_def]
  conv => lhs; cbv
  try rfl
theorem node8531_eq : Flapjack.WordAlloc.removeDeadStructural input8531 value4264 value1 value2 = (output8531, value5, value1) := by
  rw [input8531_def, output8531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8523_eq]
  dsimp only
  rw [node8530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4270 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12021 (Flapjack.WordLangAddr.addr 12025 0#64)))).val
theorem input8532_def : input8532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12021 (Flapjack.WordLangAddr.addr 12025 0#64))) := by
  unfold input8532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12021 (Flapjack.WordLangAddr.addr 12025 0#64)))).val
theorem output8532_def : output8532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12021 (Flapjack.WordLangAddr.addr 12025 0#64))) := by
  unfold output8532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8532_skip : Flapjack.WordAlloc.isSkip output8532 = false := by
  rw [output8532_def]
  conv => lhs; cbv
  try rfl
theorem node8532_eq : Flapjack.WordAlloc.removeDeadStructural input8532 value5 value1 value2 = (output8532, value4270, value1) := by
  rw [input8532_def, output8532_def]
  try (conv => lhs; cbv)
  try rfl

def value4271 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12025, 12013)])).val
theorem input8533_def : input8533 = (Flapjack.WordLangProgHOL.move 0 [(12025, 12013)]) := by
  unfold input8533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12025, 12013)])).val
theorem output8533_def : output8533 = (Flapjack.WordLangProgHOL.move 0 [(12025, 12013)]) := by
  unfold output8533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8533_skip : Flapjack.WordAlloc.isSkip output8533 = false := by
  rw [output8533_def]
  conv => lhs; cbv
  try rfl
theorem node8533_eq : Flapjack.WordAlloc.removeDeadStructural input8533 value4270 value1 value2 = (output8533, value4271, value1) := by
  rw [input8533_def, output8533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8533 input8532)).val
theorem input8534_def : input8534 = (.seq input8533 input8532) := by
  unfold input8534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8533 output8532)).val
theorem output8534_def : output8534 = (.seq output8533 output8532) := by
  unfold output8534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8534_skip : Flapjack.WordAlloc.isSkip output8534 = false := by
  rw [output8534_def]
  conv => lhs; cbv
  try rfl
theorem node8534_eq : Flapjack.WordAlloc.removeDeadStructural input8534 value5 value1 value2 = (output8534, value4271, value1) := by
  rw [input8534_def, output8534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8532_eq]
  dsimp only
  rw [node8533_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4272 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12021 5149562959837648449#64))).val
theorem input8535_def : input8535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12021 5149562959837648449#64)) := by
  unfold input8535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12021 5149562959837648449#64))).val
theorem output8535_def : output8535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12021 5149562959837648449#64)) := by
  unfold output8535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8535_skip : Flapjack.WordAlloc.isSkip output8535 = false := by
  rw [output8535_def]
  conv => lhs; cbv
  try rfl
theorem node8535_eq : Flapjack.WordAlloc.removeDeadStructural input8535 value4271 value1 value2 = (output8535, value4272, value1) := by
  rw [input8535_def, output8535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12017 5149562959837648449#64))).val
theorem input8536_def : input8536 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12017 5149562959837648449#64)) := by
  unfold input8536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8536_def : output8536 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8536_skip : Flapjack.WordAlloc.isSkip output8536 = true := by
  rw [output8536_def]
  conv => lhs; cbv
  try rfl
theorem node8536_eq : Flapjack.WordAlloc.removeDeadStructural input8536 value4272 value1 value2 = (output8536, value4272, value1) := by
  rw [input8536_def, output8536_def]
  try (conv => lhs; cbv)
  try rfl

def value4273 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12013 12005 (Flapjack.WordRegImm.reg 12009))))).val
theorem input8537_def : input8537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12013 12005 (Flapjack.WordRegImm.reg 12009)))) := by
  unfold input8537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12013 12005 (Flapjack.WordRegImm.reg 12009))))).val
theorem output8537_def : output8537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12013 12005 (Flapjack.WordRegImm.reg 12009)))) := by
  unfold output8537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8537_skip : Flapjack.WordAlloc.isSkip output8537 = false := by
  rw [output8537_def]
  conv => lhs; cbv
  try rfl
theorem node8537_eq : Flapjack.WordAlloc.removeDeadStructural input8537 value4272 value1 value2 = (output8537, value4273, value1) := by
  rw [input8537_def, output8537_def]
  try (conv => lhs; cbv)
  try rfl

def value4274 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12009 2864#64))).val
theorem input8538_def : input8538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12009 2864#64)) := by
  unfold input8538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12009 2864#64))).val
theorem output8538_def : output8538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12009 2864#64)) := by
  unfold output8538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8538_skip : Flapjack.WordAlloc.isSkip output8538 = false := by
  rw [output8538_def]
  conv => lhs; cbv
  try rfl
theorem node8538_eq : Flapjack.WordAlloc.removeDeadStructural input8538 value4273 value1 value2 = (output8538, value4274, value1) := by
  rw [input8538_def, output8538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8538 input8537)).val
theorem input8539_def : input8539 = (.seq input8538 input8537) := by
  unfold input8539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8538 output8537)).val
theorem output8539_def : output8539 = (.seq output8538 output8537) := by
  unfold output8539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8539_skip : Flapjack.WordAlloc.isSkip output8539 = false := by
  rw [output8539_def]
  conv => lhs; cbv
  try rfl
theorem node8539_eq : Flapjack.WordAlloc.removeDeadStructural input8539 value4272 value1 value2 = (output8539, value4274, value1) := by
  rw [input8539_def, output8539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8537_eq]
  dsimp only
  rw [node8538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4275 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12005 (Flapjack.WordLangAddr.addr 12001 18446744073709551104#64)))).val
theorem input8540_def : input8540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12005 (Flapjack.WordLangAddr.addr 12001 18446744073709551104#64))) := by
  unfold input8540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12005 (Flapjack.WordLangAddr.addr 12001 18446744073709551104#64)))).val
theorem output8540_def : output8540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12005 (Flapjack.WordLangAddr.addr 12001 18446744073709551104#64))) := by
  unfold output8540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8540_skip : Flapjack.WordAlloc.isSkip output8540 = false := by
  rw [output8540_def]
  conv => lhs; cbv
  try rfl
theorem node8540_eq : Flapjack.WordAlloc.removeDeadStructural input8540 value4274 value1 value2 = (output8540, value4275, value1) := by
  rw [input8540_def, output8540_def]
  try (conv => lhs; cbv)
  try rfl

def value4276 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12001 11997)).val
theorem input8541_def : input8541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12001 11997) := by
  unfold input8541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12001 11997)).val
theorem output8541_def : output8541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12001 11997) := by
  unfold output8541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8541_skip : Flapjack.WordAlloc.isSkip output8541 = false := by
  rw [output8541_def]
  conv => lhs; cbv
  try rfl
theorem node8541_eq : Flapjack.WordAlloc.removeDeadStructural input8541 value4275 value1 value2 = (output8541, value4276, value1) := by
  rw [input8541_def, output8541_def]
  try (conv => lhs; cbv)
  try rfl

def value4277 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11997 11993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8542_def : input8542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11997 11993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11997 11993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8542_def : output8542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11997 11993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8542_skip : Flapjack.WordAlloc.isSkip output8542 = false := by
  rw [output8542_def]
  conv => lhs; cbv
  try rfl
theorem node8542_eq : Flapjack.WordAlloc.removeDeadStructural input8542 value4276 value1 value2 = (output8542, value4277, value1) := by
  rw [input8542_def, output8542_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11993 Flapjack.WordStore.heapLength)).val
theorem input8543_def : input8543 = (Flapjack.WordLangProgHOL.get 11993 Flapjack.WordStore.heapLength) := by
  unfold input8543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11993 Flapjack.WordStore.heapLength)).val
theorem output8543_def : output8543 = (Flapjack.WordLangProgHOL.get 11993 Flapjack.WordStore.heapLength) := by
  unfold output8543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8543_skip : Flapjack.WordAlloc.isSkip output8543 = false := by
  rw [output8543_def]
  conv => lhs; cbv
  try rfl
theorem node8543_eq : Flapjack.WordAlloc.removeDeadStructural input8543 value4277 value1 value2 = (output8543, value5, value1) := by
  rw [input8543_def, output8543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8543 input8542)).val
theorem input8544_def : input8544 = (.seq input8543 input8542) := by
  unfold input8544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8543 output8542)).val
theorem output8544_def : output8544 = (.seq output8543 output8542) := by
  unfold output8544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8544_skip : Flapjack.WordAlloc.isSkip output8544 = false := by
  rw [output8544_def]
  conv => lhs; cbv
  try rfl
theorem node8544_eq : Flapjack.WordAlloc.removeDeadStructural input8544 value4276 value1 value2 = (output8544, value5, value1) := by
  rw [input8544_def, output8544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8542_eq]
  dsimp only
  rw [node8543_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8544 input8541)).val
theorem input8545_def : input8545 = (.seq input8544 input8541) := by
  unfold input8545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8544 output8541)).val
theorem output8545_def : output8545 = (.seq output8544 output8541) := by
  unfold output8545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8545_skip : Flapjack.WordAlloc.isSkip output8545 = false := by
  rw [output8545_def]
  conv => lhs; cbv
  try rfl
theorem node8545_eq : Flapjack.WordAlloc.removeDeadStructural input8545 value4275 value1 value2 = (output8545, value5, value1) := by
  rw [input8545_def, output8545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8541_eq]
  dsimp only
  rw [node8544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8545 input8540)).val
theorem input8546_def : input8546 = (.seq input8545 input8540) := by
  unfold input8546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8545 output8540)).val
theorem output8546_def : output8546 = (.seq output8545 output8540) := by
  unfold output8546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8546_skip : Flapjack.WordAlloc.isSkip output8546 = false := by
  rw [output8546_def]
  conv => lhs; cbv
  try rfl
theorem node8546_eq : Flapjack.WordAlloc.removeDeadStructural input8546 value4274 value1 value2 = (output8546, value5, value1) := by
  rw [input8546_def, output8546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8540_eq]
  dsimp only
  rw [node8545_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8546 input8539)).val
theorem input8547_def : input8547 = (.seq input8546 input8539) := by
  unfold input8547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8546 output8539)).val
theorem output8547_def : output8547 = (.seq output8546 output8539) := by
  unfold output8547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8547_skip : Flapjack.WordAlloc.isSkip output8547 = false := by
  rw [output8547_def]
  conv => lhs; cbv
  try rfl
theorem node8547_eq : Flapjack.WordAlloc.removeDeadStructural input8547 value4272 value1 value2 = (output8547, value5, value1) := by
  rw [input8547_def, output8547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8539_eq]
  dsimp only
  rw [node8546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4278 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11985 (Flapjack.WordLangAddr.addr 11989 0#64)))).val
theorem input8548_def : input8548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11985 (Flapjack.WordLangAddr.addr 11989 0#64))) := by
  unfold input8548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11985 (Flapjack.WordLangAddr.addr 11989 0#64)))).val
theorem output8548_def : output8548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11985 (Flapjack.WordLangAddr.addr 11989 0#64))) := by
  unfold output8548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8548_skip : Flapjack.WordAlloc.isSkip output8548 = false := by
  rw [output8548_def]
  conv => lhs; cbv
  try rfl
theorem node8548_eq : Flapjack.WordAlloc.removeDeadStructural input8548 value5 value1 value2 = (output8548, value4278, value1) := by
  rw [input8548_def, output8548_def]
  try (conv => lhs; cbv)
  try rfl

def value4279 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11989, 11977)])).val
theorem input8549_def : input8549 = (Flapjack.WordLangProgHOL.move 0 [(11989, 11977)]) := by
  unfold input8549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11989, 11977)])).val
theorem output8549_def : output8549 = (Flapjack.WordLangProgHOL.move 0 [(11989, 11977)]) := by
  unfold output8549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8549_skip : Flapjack.WordAlloc.isSkip output8549 = false := by
  rw [output8549_def]
  conv => lhs; cbv
  try rfl
theorem node8549_eq : Flapjack.WordAlloc.removeDeadStructural input8549 value4278 value1 value2 = (output8549, value4279, value1) := by
  rw [input8549_def, output8549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8549 input8548)).val
theorem input8550_def : input8550 = (.seq input8549 input8548) := by
  unfold input8550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8549 output8548)).val
theorem output8550_def : output8550 = (.seq output8549 output8548) := by
  unfold output8550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8550_skip : Flapjack.WordAlloc.isSkip output8550 = false := by
  rw [output8550_def]
  conv => lhs; cbv
  try rfl
theorem node8550_eq : Flapjack.WordAlloc.removeDeadStructural input8550 value5 value1 value2 = (output8550, value4279, value1) := by
  rw [input8550_def, output8550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8548_eq]
  dsimp only
  rw [node8549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4280 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11985 1488347500898461874#64))).val
theorem input8551_def : input8551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11985 1488347500898461874#64)) := by
  unfold input8551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11985 1488347500898461874#64))).val
theorem output8551_def : output8551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11985 1488347500898461874#64)) := by
  unfold output8551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8551_skip : Flapjack.WordAlloc.isSkip output8551 = false := by
  rw [output8551_def]
  conv => lhs; cbv
  try rfl
theorem node8551_eq : Flapjack.WordAlloc.removeDeadStructural input8551 value4279 value1 value2 = (output8551, value4280, value1) := by
  rw [input8551_def, output8551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11981 1488347500898461874#64))).val
theorem input8552_def : input8552 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11981 1488347500898461874#64)) := by
  unfold input8552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8552_def : output8552 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8552_skip : Flapjack.WordAlloc.isSkip output8552 = true := by
  rw [output8552_def]
  conv => lhs; cbv
  try rfl
theorem node8552_eq : Flapjack.WordAlloc.removeDeadStructural input8552 value4280 value1 value2 = (output8552, value4280, value1) := by
  rw [input8552_def, output8552_def]
  try (conv => lhs; cbv)
  try rfl

def value4281 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11977 11969 (Flapjack.WordRegImm.reg 11973))))).val
theorem input8553_def : input8553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11977 11969 (Flapjack.WordRegImm.reg 11973)))) := by
  unfold input8553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11977 11969 (Flapjack.WordRegImm.reg 11973))))).val
theorem output8553_def : output8553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11977 11969 (Flapjack.WordRegImm.reg 11973)))) := by
  unfold output8553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8553_skip : Flapjack.WordAlloc.isSkip output8553 = false := by
  rw [output8553_def]
  conv => lhs; cbv
  try rfl
theorem node8553_eq : Flapjack.WordAlloc.removeDeadStructural input8553 value4280 value1 value2 = (output8553, value4281, value1) := by
  rw [input8553_def, output8553_def]
  try (conv => lhs; cbv)
  try rfl

def value4282 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11973 2856#64))).val
theorem input8554_def : input8554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11973 2856#64)) := by
  unfold input8554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11973 2856#64))).val
theorem output8554_def : output8554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11973 2856#64)) := by
  unfold output8554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8554_skip : Flapjack.WordAlloc.isSkip output8554 = false := by
  rw [output8554_def]
  conv => lhs; cbv
  try rfl
theorem node8554_eq : Flapjack.WordAlloc.removeDeadStructural input8554 value4281 value1 value2 = (output8554, value4282, value1) := by
  rw [input8554_def, output8554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8554 input8553)).val
theorem input8555_def : input8555 = (.seq input8554 input8553) := by
  unfold input8555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8554 output8553)).val
theorem output8555_def : output8555 = (.seq output8554 output8553) := by
  unfold output8555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8555_skip : Flapjack.WordAlloc.isSkip output8555 = false := by
  rw [output8555_def]
  conv => lhs; cbv
  try rfl
theorem node8555_eq : Flapjack.WordAlloc.removeDeadStructural input8555 value4280 value1 value2 = (output8555, value4282, value1) := by
  rw [input8555_def, output8555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8553_eq]
  dsimp only
  rw [node8554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4283 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11969 (Flapjack.WordLangAddr.addr 11965 18446744073709551104#64)))).val
theorem input8556_def : input8556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11969 (Flapjack.WordLangAddr.addr 11965 18446744073709551104#64))) := by
  unfold input8556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11969 (Flapjack.WordLangAddr.addr 11965 18446744073709551104#64)))).val
theorem output8556_def : output8556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11969 (Flapjack.WordLangAddr.addr 11965 18446744073709551104#64))) := by
  unfold output8556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8556_skip : Flapjack.WordAlloc.isSkip output8556 = false := by
  rw [output8556_def]
  conv => lhs; cbv
  try rfl
theorem node8556_eq : Flapjack.WordAlloc.removeDeadStructural input8556 value4282 value1 value2 = (output8556, value4283, value1) := by
  rw [input8556_def, output8556_def]
  try (conv => lhs; cbv)
  try rfl

def value4284 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11965 11961)).val
theorem input8557_def : input8557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11965 11961) := by
  unfold input8557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11965 11961)).val
theorem output8557_def : output8557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11965 11961) := by
  unfold output8557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8557_skip : Flapjack.WordAlloc.isSkip output8557 = false := by
  rw [output8557_def]
  conv => lhs; cbv
  try rfl
theorem node8557_eq : Flapjack.WordAlloc.removeDeadStructural input8557 value4283 value1 value2 = (output8557, value4284, value1) := by
  rw [input8557_def, output8557_def]
  try (conv => lhs; cbv)
  try rfl

def value4285 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11961 11957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8558_def : input8558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11961 11957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11961 11957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8558_def : output8558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11961 11957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8558_skip : Flapjack.WordAlloc.isSkip output8558 = false := by
  rw [output8558_def]
  conv => lhs; cbv
  try rfl
theorem node8558_eq : Flapjack.WordAlloc.removeDeadStructural input8558 value4284 value1 value2 = (output8558, value4285, value1) := by
  rw [input8558_def, output8558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11957 Flapjack.WordStore.heapLength)).val
theorem input8559_def : input8559 = (Flapjack.WordLangProgHOL.get 11957 Flapjack.WordStore.heapLength) := by
  unfold input8559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11957 Flapjack.WordStore.heapLength)).val
theorem output8559_def : output8559 = (Flapjack.WordLangProgHOL.get 11957 Flapjack.WordStore.heapLength) := by
  unfold output8559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8559_skip : Flapjack.WordAlloc.isSkip output8559 = false := by
  rw [output8559_def]
  conv => lhs; cbv
  try rfl
theorem node8559_eq : Flapjack.WordAlloc.removeDeadStructural input8559 value4285 value1 value2 = (output8559, value5, value1) := by
  rw [input8559_def, output8559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8559 input8558)).val
theorem input8560_def : input8560 = (.seq input8559 input8558) := by
  unfold input8560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8559 output8558)).val
theorem output8560_def : output8560 = (.seq output8559 output8558) := by
  unfold output8560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8560_skip : Flapjack.WordAlloc.isSkip output8560 = false := by
  rw [output8560_def]
  conv => lhs; cbv
  try rfl
theorem node8560_eq : Flapjack.WordAlloc.removeDeadStructural input8560 value4284 value1 value2 = (output8560, value5, value1) := by
  rw [input8560_def, output8560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8558_eq]
  dsimp only
  rw [node8559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8560 input8557)).val
theorem input8561_def : input8561 = (.seq input8560 input8557) := by
  unfold input8561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8560 output8557)).val
theorem output8561_def : output8561 = (.seq output8560 output8557) := by
  unfold output8561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8561_skip : Flapjack.WordAlloc.isSkip output8561 = false := by
  rw [output8561_def]
  conv => lhs; cbv
  try rfl
theorem node8561_eq : Flapjack.WordAlloc.removeDeadStructural input8561 value4283 value1 value2 = (output8561, value5, value1) := by
  rw [input8561_def, output8561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8557_eq]
  dsimp only
  rw [node8560_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8561 input8556)).val
theorem input8562_def : input8562 = (.seq input8561 input8556) := by
  unfold input8562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8561 output8556)).val
theorem output8562_def : output8562 = (.seq output8561 output8556) := by
  unfold output8562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8562_skip : Flapjack.WordAlloc.isSkip output8562 = false := by
  rw [output8562_def]
  conv => lhs; cbv
  try rfl
theorem node8562_eq : Flapjack.WordAlloc.removeDeadStructural input8562 value4282 value1 value2 = (output8562, value5, value1) := by
  rw [input8562_def, output8562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8556_eq]
  dsimp only
  rw [node8561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8562 input8555)).val
theorem input8563_def : input8563 = (.seq input8562 input8555) := by
  unfold input8563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8562 output8555)).val
theorem output8563_def : output8563 = (.seq output8562 output8555) := by
  unfold output8563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8563_skip : Flapjack.WordAlloc.isSkip output8563 = false := by
  rw [output8563_def]
  conv => lhs; cbv
  try rfl
theorem node8563_eq : Flapjack.WordAlloc.removeDeadStructural input8563 value4280 value1 value2 = (output8563, value5, value1) := by
  rw [input8563_def, output8563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8555_eq]
  dsimp only
  rw [node8562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4286 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11949 (Flapjack.WordLangAddr.addr 11953 0#64)))).val
theorem input8564_def : input8564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11949 (Flapjack.WordLangAddr.addr 11953 0#64))) := by
  unfold input8564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11949 (Flapjack.WordLangAddr.addr 11953 0#64)))).val
theorem output8564_def : output8564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11949 (Flapjack.WordLangAddr.addr 11953 0#64))) := by
  unfold output8564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8564_skip : Flapjack.WordAlloc.isSkip output8564 = false := by
  rw [output8564_def]
  conv => lhs; cbv
  try rfl
theorem node8564_eq : Flapjack.WordAlloc.removeDeadStructural input8564 value5 value1 value2 = (output8564, value4286, value1) := by
  rw [input8564_def, output8564_def]
  try (conv => lhs; cbv)
  try rfl

def value4287 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11953, 11941)])).val
theorem input8565_def : input8565 = (Flapjack.WordLangProgHOL.move 0 [(11953, 11941)]) := by
  unfold input8565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11953, 11941)])).val
theorem output8565_def : output8565 = (Flapjack.WordLangProgHOL.move 0 [(11953, 11941)]) := by
  unfold output8565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8565_skip : Flapjack.WordAlloc.isSkip output8565 = false := by
  rw [output8565_def]
  conv => lhs; cbv
  try rfl
theorem node8565_eq : Flapjack.WordAlloc.removeDeadStructural input8565 value4286 value1 value2 = (output8565, value4287, value1) := by
  rw [input8565_def, output8565_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8565 input8564)).val
theorem input8566_def : input8566 = (.seq input8565 input8564) := by
  unfold input8566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8565 output8564)).val
theorem output8566_def : output8566 = (.seq output8565 output8564) := by
  unfold output8566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8566_skip : Flapjack.WordAlloc.isSkip output8566 = false := by
  rw [output8566_def]
  conv => lhs; cbv
  try rfl
theorem node8566_eq : Flapjack.WordAlloc.removeDeadStructural input8566 value5 value1 value2 = (output8566, value4287, value1) := by
  rw [input8566_def, output8566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8564_eq]
  dsimp only
  rw [node8565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4288 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11949 3509418672874520985#64))).val
theorem input8567_def : input8567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11949 3509418672874520985#64)) := by
  unfold input8567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11949 3509418672874520985#64))).val
theorem output8567_def : output8567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11949 3509418672874520985#64)) := by
  unfold output8567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8567_skip : Flapjack.WordAlloc.isSkip output8567 = false := by
  rw [output8567_def]
  conv => lhs; cbv
  try rfl
theorem node8567_eq : Flapjack.WordAlloc.removeDeadStructural input8567 value4287 value1 value2 = (output8567, value4288, value1) := by
  rw [input8567_def, output8567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11945 3509418672874520985#64))).val
theorem input8568_def : input8568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11945 3509418672874520985#64)) := by
  unfold input8568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8568_def : output8568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8568_skip : Flapjack.WordAlloc.isSkip output8568 = true := by
  rw [output8568_def]
  conv => lhs; cbv
  try rfl
theorem node8568_eq : Flapjack.WordAlloc.removeDeadStructural input8568 value4288 value1 value2 = (output8568, value4288, value1) := by
  rw [input8568_def, output8568_def]
  try (conv => lhs; cbv)
  try rfl

def value4289 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11941 11933 (Flapjack.WordRegImm.reg 11937))))).val
theorem input8569_def : input8569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11941 11933 (Flapjack.WordRegImm.reg 11937)))) := by
  unfold input8569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11941 11933 (Flapjack.WordRegImm.reg 11937))))).val
theorem output8569_def : output8569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11941 11933 (Flapjack.WordRegImm.reg 11937)))) := by
  unfold output8569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8569_skip : Flapjack.WordAlloc.isSkip output8569 = false := by
  rw [output8569_def]
  conv => lhs; cbv
  try rfl
theorem node8569_eq : Flapjack.WordAlloc.removeDeadStructural input8569 value4288 value1 value2 = (output8569, value4289, value1) := by
  rw [input8569_def, output8569_def]
  try (conv => lhs; cbv)
  try rfl

def value4290 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11937 2848#64))).val
theorem input8570_def : input8570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11937 2848#64)) := by
  unfold input8570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11937 2848#64))).val
theorem output8570_def : output8570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11937 2848#64)) := by
  unfold output8570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8570_skip : Flapjack.WordAlloc.isSkip output8570 = false := by
  rw [output8570_def]
  conv => lhs; cbv
  try rfl
theorem node8570_eq : Flapjack.WordAlloc.removeDeadStructural input8570 value4289 value1 value2 = (output8570, value4290, value1) := by
  rw [input8570_def, output8570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8570 input8569)).val
theorem input8571_def : input8571 = (.seq input8570 input8569) := by
  unfold input8571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8570 output8569)).val
theorem output8571_def : output8571 = (.seq output8570 output8569) := by
  unfold output8571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8571_skip : Flapjack.WordAlloc.isSkip output8571 = false := by
  rw [output8571_def]
  conv => lhs; cbv
  try rfl
theorem node8571_eq : Flapjack.WordAlloc.removeDeadStructural input8571 value4288 value1 value2 = (output8571, value4290, value1) := by
  rw [input8571_def, output8571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8569_eq]
  dsimp only
  rw [node8570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4291 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11933 (Flapjack.WordLangAddr.addr 11929 18446744073709551104#64)))).val
theorem input8572_def : input8572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11933 (Flapjack.WordLangAddr.addr 11929 18446744073709551104#64))) := by
  unfold input8572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11933 (Flapjack.WordLangAddr.addr 11929 18446744073709551104#64)))).val
theorem output8572_def : output8572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11933 (Flapjack.WordLangAddr.addr 11929 18446744073709551104#64))) := by
  unfold output8572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8572_skip : Flapjack.WordAlloc.isSkip output8572 = false := by
  rw [output8572_def]
  conv => lhs; cbv
  try rfl
theorem node8572_eq : Flapjack.WordAlloc.removeDeadStructural input8572 value4290 value1 value2 = (output8572, value4291, value1) := by
  rw [input8572_def, output8572_def]
  try (conv => lhs; cbv)
  try rfl

def value4292 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11929 11925)).val
theorem input8573_def : input8573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11929 11925) := by
  unfold input8573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11929 11925)).val
theorem output8573_def : output8573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11929 11925) := by
  unfold output8573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8573_skip : Flapjack.WordAlloc.isSkip output8573 = false := by
  rw [output8573_def]
  conv => lhs; cbv
  try rfl
theorem node8573_eq : Flapjack.WordAlloc.removeDeadStructural input8573 value4291 value1 value2 = (output8573, value4292, value1) := by
  rw [input8573_def, output8573_def]
  try (conv => lhs; cbv)
  try rfl

def value4293 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11925 11921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8574_def : input8574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11925 11921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11925 11921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8574_def : output8574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11925 11921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8574_skip : Flapjack.WordAlloc.isSkip output8574 = false := by
  rw [output8574_def]
  conv => lhs; cbv
  try rfl
theorem node8574_eq : Flapjack.WordAlloc.removeDeadStructural input8574 value4292 value1 value2 = (output8574, value4293, value1) := by
  rw [input8574_def, output8574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11921 Flapjack.WordStore.heapLength)).val
theorem input8575_def : input8575 = (Flapjack.WordLangProgHOL.get 11921 Flapjack.WordStore.heapLength) := by
  unfold input8575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11921 Flapjack.WordStore.heapLength)).val
theorem output8575_def : output8575 = (Flapjack.WordLangProgHOL.get 11921 Flapjack.WordStore.heapLength) := by
  unfold output8575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8575_skip : Flapjack.WordAlloc.isSkip output8575 = false := by
  rw [output8575_def]
  conv => lhs; cbv
  try rfl
theorem node8575_eq : Flapjack.WordAlloc.removeDeadStructural input8575 value4293 value1 value2 = (output8575, value5, value1) := by
  rw [input8575_def, output8575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8575 input8574)).val
theorem input8576_def : input8576 = (.seq input8575 input8574) := by
  unfold input8576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8575 output8574)).val
theorem output8576_def : output8576 = (.seq output8575 output8574) := by
  unfold output8576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8576_skip : Flapjack.WordAlloc.isSkip output8576 = false := by
  rw [output8576_def]
  conv => lhs; cbv
  try rfl
theorem node8576_eq : Flapjack.WordAlloc.removeDeadStructural input8576 value4292 value1 value2 = (output8576, value5, value1) := by
  rw [input8576_def, output8576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8574_eq]
  dsimp only
  rw [node8575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8576 input8573)).val
theorem input8577_def : input8577 = (.seq input8576 input8573) := by
  unfold input8577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8576 output8573)).val
theorem output8577_def : output8577 = (.seq output8576 output8573) := by
  unfold output8577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8577_skip : Flapjack.WordAlloc.isSkip output8577 = false := by
  rw [output8577_def]
  conv => lhs; cbv
  try rfl
theorem node8577_eq : Flapjack.WordAlloc.removeDeadStructural input8577 value4291 value1 value2 = (output8577, value5, value1) := by
  rw [input8577_def, output8577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8573_eq]
  dsimp only
  rw [node8576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8577 input8572)).val
theorem input8578_def : input8578 = (.seq input8577 input8572) := by
  unfold input8578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8577 output8572)).val
theorem output8578_def : output8578 = (.seq output8577 output8572) := by
  unfold output8578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8578_skip : Flapjack.WordAlloc.isSkip output8578 = false := by
  rw [output8578_def]
  conv => lhs; cbv
  try rfl
theorem node8578_eq : Flapjack.WordAlloc.removeDeadStructural input8578 value4290 value1 value2 = (output8578, value5, value1) := by
  rw [input8578_def, output8578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8572_eq]
  dsimp only
  rw [node8577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8578 input8571)).val
theorem input8579_def : input8579 = (.seq input8578 input8571) := by
  unfold input8579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8578 output8571)).val
theorem output8579_def : output8579 = (.seq output8578 output8571) := by
  unfold output8579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8579_skip : Flapjack.WordAlloc.isSkip output8579 = false := by
  rw [output8579_def]
  conv => lhs; cbv
  try rfl
theorem node8579_eq : Flapjack.WordAlloc.removeDeadStructural input8579 value4288 value1 value2 = (output8579, value5, value1) := by
  rw [input8579_def, output8579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8571_eq]
  dsimp only
  rw [node8578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4294 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11913 (Flapjack.WordLangAddr.addr 11917 0#64)))).val
theorem input8580_def : input8580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11913 (Flapjack.WordLangAddr.addr 11917 0#64))) := by
  unfold input8580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11913 (Flapjack.WordLangAddr.addr 11917 0#64)))).val
theorem output8580_def : output8580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11913 (Flapjack.WordLangAddr.addr 11917 0#64))) := by
  unfold output8580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8580_skip : Flapjack.WordAlloc.isSkip output8580 = false := by
  rw [output8580_def]
  conv => lhs; cbv
  try rfl
theorem node8580_eq : Flapjack.WordAlloc.removeDeadStructural input8580 value5 value1 value2 = (output8580, value4294, value1) := by
  rw [input8580_def, output8580_def]
  try (conv => lhs; cbv)
  try rfl

def value4295 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11917, 11905)])).val
theorem input8581_def : input8581 = (Flapjack.WordLangProgHOL.move 0 [(11917, 11905)]) := by
  unfold input8581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11917, 11905)])).val
theorem output8581_def : output8581 = (Flapjack.WordLangProgHOL.move 0 [(11917, 11905)]) := by
  unfold output8581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8581_skip : Flapjack.WordAlloc.isSkip output8581 = false := by
  rw [output8581_def]
  conv => lhs; cbv
  try rfl
theorem node8581_eq : Flapjack.WordAlloc.removeDeadStructural input8581 value4294 value1 value2 = (output8581, value4295, value1) := by
  rw [input8581_def, output8581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8581 input8580)).val
theorem input8582_def : input8582 = (.seq input8581 input8580) := by
  unfold input8582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8581 output8580)).val
theorem output8582_def : output8582 = (.seq output8581 output8580) := by
  unfold output8582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8582_skip : Flapjack.WordAlloc.isSkip output8582 = false := by
  rw [output8582_def]
  conv => lhs; cbv
  try rfl
theorem node8582_eq : Flapjack.WordAlloc.removeDeadStructural input8582 value5 value1 value2 = (output8582, value4295, value1) := by
  rw [input8582_def, output8582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8580_eq]
  dsimp only
  rw [node8581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4296 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11913 7962192351555381416#64))).val
theorem input8583_def : input8583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11913 7962192351555381416#64)) := by
  unfold input8583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11913 7962192351555381416#64))).val
theorem output8583_def : output8583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11913 7962192351555381416#64)) := by
  unfold output8583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8583_skip : Flapjack.WordAlloc.isSkip output8583 = false := by
  rw [output8583_def]
  conv => lhs; cbv
  try rfl
theorem node8583_eq : Flapjack.WordAlloc.removeDeadStructural input8583 value4295 value1 value2 = (output8583, value4296, value1) := by
  rw [input8583_def, output8583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11909 7962192351555381416#64))).val
theorem input8584_def : input8584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11909 7962192351555381416#64)) := by
  unfold input8584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8584_def : output8584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8584_skip : Flapjack.WordAlloc.isSkip output8584 = true := by
  rw [output8584_def]
  conv => lhs; cbv
  try rfl
theorem node8584_eq : Flapjack.WordAlloc.removeDeadStructural input8584 value4296 value1 value2 = (output8584, value4296, value1) := by
  rw [input8584_def, output8584_def]
  try (conv => lhs; cbv)
  try rfl

def value4297 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11905 11897 (Flapjack.WordRegImm.reg 11901))))).val
theorem input8585_def : input8585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11905 11897 (Flapjack.WordRegImm.reg 11901)))) := by
  unfold input8585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11905 11897 (Flapjack.WordRegImm.reg 11901))))).val
theorem output8585_def : output8585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11905 11897 (Flapjack.WordRegImm.reg 11901)))) := by
  unfold output8585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8585_skip : Flapjack.WordAlloc.isSkip output8585 = false := by
  rw [output8585_def]
  conv => lhs; cbv
  try rfl
theorem node8585_eq : Flapjack.WordAlloc.removeDeadStructural input8585 value4296 value1 value2 = (output8585, value4297, value1) := by
  rw [input8585_def, output8585_def]
  try (conv => lhs; cbv)
  try rfl

def value4298 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11901 2840#64))).val
theorem input8586_def : input8586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11901 2840#64)) := by
  unfold input8586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11901 2840#64))).val
theorem output8586_def : output8586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11901 2840#64)) := by
  unfold output8586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8586_skip : Flapjack.WordAlloc.isSkip output8586 = false := by
  rw [output8586_def]
  conv => lhs; cbv
  try rfl
theorem node8586_eq : Flapjack.WordAlloc.removeDeadStructural input8586 value4297 value1 value2 = (output8586, value4298, value1) := by
  rw [input8586_def, output8586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8586 input8585)).val
theorem input8587_def : input8587 = (.seq input8586 input8585) := by
  unfold input8587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8586 output8585)).val
theorem output8587_def : output8587 = (.seq output8586 output8585) := by
  unfold output8587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8587_skip : Flapjack.WordAlloc.isSkip output8587 = false := by
  rw [output8587_def]
  conv => lhs; cbv
  try rfl
theorem node8587_eq : Flapjack.WordAlloc.removeDeadStructural input8587 value4296 value1 value2 = (output8587, value4298, value1) := by
  rw [input8587_def, output8587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8585_eq]
  dsimp only
  rw [node8586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4299 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11897 (Flapjack.WordLangAddr.addr 11893 18446744073709551104#64)))).val
theorem input8588_def : input8588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11897 (Flapjack.WordLangAddr.addr 11893 18446744073709551104#64))) := by
  unfold input8588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11897 (Flapjack.WordLangAddr.addr 11893 18446744073709551104#64)))).val
theorem output8588_def : output8588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11897 (Flapjack.WordLangAddr.addr 11893 18446744073709551104#64))) := by
  unfold output8588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8588_skip : Flapjack.WordAlloc.isSkip output8588 = false := by
  rw [output8588_def]
  conv => lhs; cbv
  try rfl
theorem node8588_eq : Flapjack.WordAlloc.removeDeadStructural input8588 value4298 value1 value2 = (output8588, value4299, value1) := by
  rw [input8588_def, output8588_def]
  try (conv => lhs; cbv)
  try rfl

def value4300 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11893 11889)).val
theorem input8589_def : input8589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11893 11889) := by
  unfold input8589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11893 11889)).val
theorem output8589_def : output8589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11893 11889) := by
  unfold output8589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8589_skip : Flapjack.WordAlloc.isSkip output8589 = false := by
  rw [output8589_def]
  conv => lhs; cbv
  try rfl
theorem node8589_eq : Flapjack.WordAlloc.removeDeadStructural input8589 value4299 value1 value2 = (output8589, value4300, value1) := by
  rw [input8589_def, output8589_def]
  try (conv => lhs; cbv)
  try rfl

def value4301 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11889 11885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8590_def : input8590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11889 11885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11889 11885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8590_def : output8590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11889 11885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8590_skip : Flapjack.WordAlloc.isSkip output8590 = false := by
  rw [output8590_def]
  conv => lhs; cbv
  try rfl
theorem node8590_eq : Flapjack.WordAlloc.removeDeadStructural input8590 value4300 value1 value2 = (output8590, value4301, value1) := by
  rw [input8590_def, output8590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11885 Flapjack.WordStore.heapLength)).val
theorem input8591_def : input8591 = (Flapjack.WordLangProgHOL.get 11885 Flapjack.WordStore.heapLength) := by
  unfold input8591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11885 Flapjack.WordStore.heapLength)).val
theorem output8591_def : output8591 = (Flapjack.WordLangProgHOL.get 11885 Flapjack.WordStore.heapLength) := by
  unfold output8591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8591_skip : Flapjack.WordAlloc.isSkip output8591 = false := by
  rw [output8591_def]
  conv => lhs; cbv
  try rfl
theorem node8591_eq : Flapjack.WordAlloc.removeDeadStructural input8591 value4301 value1 value2 = (output8591, value5, value1) := by
  rw [input8591_def, output8591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8591 input8590)).val
theorem input8592_def : input8592 = (.seq input8591 input8590) := by
  unfold input8592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8591 output8590)).val
theorem output8592_def : output8592 = (.seq output8591 output8590) := by
  unfold output8592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8592_skip : Flapjack.WordAlloc.isSkip output8592 = false := by
  rw [output8592_def]
  conv => lhs; cbv
  try rfl
theorem node8592_eq : Flapjack.WordAlloc.removeDeadStructural input8592 value4300 value1 value2 = (output8592, value5, value1) := by
  rw [input8592_def, output8592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8590_eq]
  dsimp only
  rw [node8591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8592 input8589)).val
theorem input8593_def : input8593 = (.seq input8592 input8589) := by
  unfold input8593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8592 output8589)).val
theorem output8593_def : output8593 = (.seq output8592 output8589) := by
  unfold output8593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8593_skip : Flapjack.WordAlloc.isSkip output8593 = false := by
  rw [output8593_def]
  conv => lhs; cbv
  try rfl
theorem node8593_eq : Flapjack.WordAlloc.removeDeadStructural input8593 value4299 value1 value2 = (output8593, value5, value1) := by
  rw [input8593_def, output8593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8589_eq]
  dsimp only
  rw [node8592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8593 input8588)).val
theorem input8594_def : input8594 = (.seq input8593 input8588) := by
  unfold input8594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8593 output8588)).val
theorem output8594_def : output8594 = (.seq output8593 output8588) := by
  unfold output8594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8594_skip : Flapjack.WordAlloc.isSkip output8594 = false := by
  rw [output8594_def]
  conv => lhs; cbv
  try rfl
theorem node8594_eq : Flapjack.WordAlloc.removeDeadStructural input8594 value4298 value1 value2 = (output8594, value5, value1) := by
  rw [input8594_def, output8594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8588_eq]
  dsimp only
  rw [node8593_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8594 input8587)).val
theorem input8595_def : input8595 = (.seq input8594 input8587) := by
  unfold input8595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8594 output8587)).val
theorem output8595_def : output8595 = (.seq output8594 output8587) := by
  unfold output8595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8595_skip : Flapjack.WordAlloc.isSkip output8595 = false := by
  rw [output8595_def]
  conv => lhs; cbv
  try rfl
theorem node8595_eq : Flapjack.WordAlloc.removeDeadStructural input8595 value4296 value1 value2 = (output8595, value5, value1) := by
  rw [input8595_def, output8595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8587_eq]
  dsimp only
  rw [node8594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4302 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11877 (Flapjack.WordLangAddr.addr 11881 0#64)))).val
theorem input8596_def : input8596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11877 (Flapjack.WordLangAddr.addr 11881 0#64))) := by
  unfold input8596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11877 (Flapjack.WordLangAddr.addr 11881 0#64)))).val
theorem output8596_def : output8596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11877 (Flapjack.WordLangAddr.addr 11881 0#64))) := by
  unfold output8596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8596_skip : Flapjack.WordAlloc.isSkip output8596 = false := by
  rw [output8596_def]
  conv => lhs; cbv
  try rfl
theorem node8596_eq : Flapjack.WordAlloc.removeDeadStructural input8596 value5 value1 value2 = (output8596, value4302, value1) := by
  rw [input8596_def, output8596_def]
  try (conv => lhs; cbv)
  try rfl

def value4303 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11881, 11869)])).val
theorem input8597_def : input8597 = (Flapjack.WordLangProgHOL.move 0 [(11881, 11869)]) := by
  unfold input8597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11881, 11869)])).val
theorem output8597_def : output8597 = (Flapjack.WordLangProgHOL.move 0 [(11881, 11869)]) := by
  unfold output8597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8597_skip : Flapjack.WordAlloc.isSkip output8597 = false := by
  rw [output8597_def]
  conv => lhs; cbv
  try rfl
theorem node8597_eq : Flapjack.WordAlloc.removeDeadStructural input8597 value4302 value1 value2 = (output8597, value4303, value1) := by
  rw [input8597_def, output8597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8597 input8596)).val
theorem input8598_def : input8598 = (.seq input8597 input8596) := by
  unfold input8598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8597 output8596)).val
theorem output8598_def : output8598 = (.seq output8597 output8596) := by
  unfold output8598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8598_skip : Flapjack.WordAlloc.isSkip output8598 = false := by
  rw [output8598_def]
  conv => lhs; cbv
  try rfl
theorem node8598_eq : Flapjack.WordAlloc.removeDeadStructural input8598 value5 value1 value2 = (output8598, value4303, value1) := by
  rw [input8598_def, output8598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8596_eq]
  dsimp only
  rw [node8597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4304 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11877 1843909372225399896#64))).val
theorem input8599_def : input8599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11877 1843909372225399896#64)) := by
  unfold input8599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11877 1843909372225399896#64))).val
theorem output8599_def : output8599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11877 1843909372225399896#64)) := by
  unfold output8599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8599_skip : Flapjack.WordAlloc.isSkip output8599 = false := by
  rw [output8599_def]
  conv => lhs; cbv
  try rfl
theorem node8599_eq : Flapjack.WordAlloc.removeDeadStructural input8599 value4303 value1 value2 = (output8599, value4304, value1) := by
  rw [input8599_def, output8599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11873 1843909372225399896#64))).val
theorem input8600_def : input8600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11873 1843909372225399896#64)) := by
  unfold input8600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8600_def : output8600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8600_skip : Flapjack.WordAlloc.isSkip output8600 = true := by
  rw [output8600_def]
  conv => lhs; cbv
  try rfl
theorem node8600_eq : Flapjack.WordAlloc.removeDeadStructural input8600 value4304 value1 value2 = (output8600, value4304, value1) := by
  rw [input8600_def, output8600_def]
  try (conv => lhs; cbv)
  try rfl

def value4305 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11869 11861 (Flapjack.WordRegImm.reg 11865))))).val
theorem input8601_def : input8601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11869 11861 (Flapjack.WordRegImm.reg 11865)))) := by
  unfold input8601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11869 11861 (Flapjack.WordRegImm.reg 11865))))).val
theorem output8601_def : output8601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11869 11861 (Flapjack.WordRegImm.reg 11865)))) := by
  unfold output8601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8601_skip : Flapjack.WordAlloc.isSkip output8601 = false := by
  rw [output8601_def]
  conv => lhs; cbv
  try rfl
theorem node8601_eq : Flapjack.WordAlloc.removeDeadStructural input8601 value4304 value1 value2 = (output8601, value4305, value1) := by
  rw [input8601_def, output8601_def]
  try (conv => lhs; cbv)
  try rfl

def value4306 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11865 2832#64))).val
theorem input8602_def : input8602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11865 2832#64)) := by
  unfold input8602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11865 2832#64))).val
theorem output8602_def : output8602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11865 2832#64)) := by
  unfold output8602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8602_skip : Flapjack.WordAlloc.isSkip output8602 = false := by
  rw [output8602_def]
  conv => lhs; cbv
  try rfl
theorem node8602_eq : Flapjack.WordAlloc.removeDeadStructural input8602 value4305 value1 value2 = (output8602, value4306, value1) := by
  rw [input8602_def, output8602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8602 input8601)).val
theorem input8603_def : input8603 = (.seq input8602 input8601) := by
  unfold input8603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8602 output8601)).val
theorem output8603_def : output8603 = (.seq output8602 output8601) := by
  unfold output8603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8603_skip : Flapjack.WordAlloc.isSkip output8603 = false := by
  rw [output8603_def]
  conv => lhs; cbv
  try rfl
theorem node8603_eq : Flapjack.WordAlloc.removeDeadStructural input8603 value4304 value1 value2 = (output8603, value4306, value1) := by
  rw [input8603_def, output8603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8601_eq]
  dsimp only
  rw [node8602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4307 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11861 (Flapjack.WordLangAddr.addr 11857 18446744073709551104#64)))).val
theorem input8604_def : input8604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11861 (Flapjack.WordLangAddr.addr 11857 18446744073709551104#64))) := by
  unfold input8604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11861 (Flapjack.WordLangAddr.addr 11857 18446744073709551104#64)))).val
theorem output8604_def : output8604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11861 (Flapjack.WordLangAddr.addr 11857 18446744073709551104#64))) := by
  unfold output8604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8604_skip : Flapjack.WordAlloc.isSkip output8604 = false := by
  rw [output8604_def]
  conv => lhs; cbv
  try rfl
theorem node8604_eq : Flapjack.WordAlloc.removeDeadStructural input8604 value4306 value1 value2 = (output8604, value4307, value1) := by
  rw [input8604_def, output8604_def]
  try (conv => lhs; cbv)
  try rfl

def value4308 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11857 11853)).val
theorem input8605_def : input8605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11857 11853) := by
  unfold input8605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11857 11853)).val
theorem output8605_def : output8605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11857 11853) := by
  unfold output8605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8605_skip : Flapjack.WordAlloc.isSkip output8605 = false := by
  rw [output8605_def]
  conv => lhs; cbv
  try rfl
theorem node8605_eq : Flapjack.WordAlloc.removeDeadStructural input8605 value4307 value1 value2 = (output8605, value4308, value1) := by
  rw [input8605_def, output8605_def]
  try (conv => lhs; cbv)
  try rfl

def value4309 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11853 11849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8606_def : input8606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11853 11849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11853 11849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8606_def : output8606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11853 11849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8606_skip : Flapjack.WordAlloc.isSkip output8606 = false := by
  rw [output8606_def]
  conv => lhs; cbv
  try rfl
theorem node8606_eq : Flapjack.WordAlloc.removeDeadStructural input8606 value4308 value1 value2 = (output8606, value4309, value1) := by
  rw [input8606_def, output8606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11849 Flapjack.WordStore.heapLength)).val
theorem input8607_def : input8607 = (Flapjack.WordLangProgHOL.get 11849 Flapjack.WordStore.heapLength) := by
  unfold input8607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11849 Flapjack.WordStore.heapLength)).val
theorem output8607_def : output8607 = (Flapjack.WordLangProgHOL.get 11849 Flapjack.WordStore.heapLength) := by
  unfold output8607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8607_skip : Flapjack.WordAlloc.isSkip output8607 = false := by
  rw [output8607_def]
  conv => lhs; cbv
  try rfl
theorem node8607_eq : Flapjack.WordAlloc.removeDeadStructural input8607 value4309 value1 value2 = (output8607, value5, value1) := by
  rw [input8607_def, output8607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8607 input8606)).val
theorem input8608_def : input8608 = (.seq input8607 input8606) := by
  unfold input8608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8607 output8606)).val
theorem output8608_def : output8608 = (.seq output8607 output8606) := by
  unfold output8608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8608_skip : Flapjack.WordAlloc.isSkip output8608 = false := by
  rw [output8608_def]
  conv => lhs; cbv
  try rfl
theorem node8608_eq : Flapjack.WordAlloc.removeDeadStructural input8608 value4308 value1 value2 = (output8608, value5, value1) := by
  rw [input8608_def, output8608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8606_eq]
  dsimp only
  rw [node8607_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8608 input8605)).val
theorem input8609_def : input8609 = (.seq input8608 input8605) := by
  unfold input8609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8608 output8605)).val
theorem output8609_def : output8609 = (.seq output8608 output8605) := by
  unfold output8609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8609_skip : Flapjack.WordAlloc.isSkip output8609 = false := by
  rw [output8609_def]
  conv => lhs; cbv
  try rfl
theorem node8609_eq : Flapjack.WordAlloc.removeDeadStructural input8609 value4307 value1 value2 = (output8609, value5, value1) := by
  rw [input8609_def, output8609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8605_eq]
  dsimp only
  rw [node8608_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8609 input8604)).val
theorem input8610_def : input8610 = (.seq input8609 input8604) := by
  unfold input8610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8609 output8604)).val
theorem output8610_def : output8610 = (.seq output8609 output8604) := by
  unfold output8610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8610_skip : Flapjack.WordAlloc.isSkip output8610 = false := by
  rw [output8610_def]
  conv => lhs; cbv
  try rfl
theorem node8610_eq : Flapjack.WordAlloc.removeDeadStructural input8610 value4306 value1 value2 = (output8610, value5, value1) := by
  rw [input8610_def, output8610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8604_eq]
  dsimp only
  rw [node8609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8610 input8603)).val
theorem input8611_def : input8611 = (.seq input8610 input8603) := by
  unfold input8611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8610 output8603)).val
theorem output8611_def : output8611 = (.seq output8610 output8603) := by
  unfold output8611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8611_skip : Flapjack.WordAlloc.isSkip output8611 = false := by
  rw [output8611_def]
  conv => lhs; cbv
  try rfl
theorem node8611_eq : Flapjack.WordAlloc.removeDeadStructural input8611 value4304 value1 value2 = (output8611, value5, value1) := by
  rw [input8611_def, output8611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8603_eq]
  dsimp only
  rw [node8610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4310 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11841 (Flapjack.WordLangAddr.addr 11845 0#64)))).val
theorem input8612_def : input8612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11841 (Flapjack.WordLangAddr.addr 11845 0#64))) := by
  unfold input8612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11841 (Flapjack.WordLangAddr.addr 11845 0#64)))).val
theorem output8612_def : output8612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11841 (Flapjack.WordLangAddr.addr 11845 0#64))) := by
  unfold output8612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8612_skip : Flapjack.WordAlloc.isSkip output8612 = false := by
  rw [output8612_def]
  conv => lhs; cbv
  try rfl
theorem node8612_eq : Flapjack.WordAlloc.removeDeadStructural input8612 value5 value1 value2 = (output8612, value4310, value1) := by
  rw [input8612_def, output8612_def]
  try (conv => lhs; cbv)
  try rfl

def value4311 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11845, 11833)])).val
theorem input8613_def : input8613 = (Flapjack.WordLangProgHOL.move 0 [(11845, 11833)]) := by
  unfold input8613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11845, 11833)])).val
theorem output8613_def : output8613 = (Flapjack.WordLangProgHOL.move 0 [(11845, 11833)]) := by
  unfold output8613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8613_skip : Flapjack.WordAlloc.isSkip output8613 = false := by
  rw [output8613_def]
  conv => lhs; cbv
  try rfl
theorem node8613_eq : Flapjack.WordAlloc.removeDeadStructural input8613 value4310 value1 value2 = (output8613, value4311, value1) := by
  rw [input8613_def, output8613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8613 input8612)).val
theorem input8614_def : input8614 = (.seq input8613 input8612) := by
  unfold input8614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8613 output8612)).val
theorem output8614_def : output8614 = (.seq output8613 output8612) := by
  unfold output8614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8614_skip : Flapjack.WordAlloc.isSkip output8614 = false := by
  rw [output8614_def]
  conv => lhs; cbv
  try rfl
theorem node8614_eq : Flapjack.WordAlloc.removeDeadStructural input8614 value5 value1 value2 = (output8614, value4311, value1) := by
  rw [input8614_def, output8614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8612_eq]
  dsimp only
  rw [node8613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4312 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11841 1127511003250156243#64))).val
theorem input8615_def : input8615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11841 1127511003250156243#64)) := by
  unfold input8615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11841 1127511003250156243#64))).val
theorem output8615_def : output8615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11841 1127511003250156243#64)) := by
  unfold output8615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8615_skip : Flapjack.WordAlloc.isSkip output8615 = false := by
  rw [output8615_def]
  conv => lhs; cbv
  try rfl
theorem node8615_eq : Flapjack.WordAlloc.removeDeadStructural input8615 value4311 value1 value2 = (output8615, value4312, value1) := by
  rw [input8615_def, output8615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11837 1127511003250156243#64))).val
theorem input8616_def : input8616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11837 1127511003250156243#64)) := by
  unfold input8616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8616_def : output8616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8616_skip : Flapjack.WordAlloc.isSkip output8616 = true := by
  rw [output8616_def]
  conv => lhs; cbv
  try rfl
theorem node8616_eq : Flapjack.WordAlloc.removeDeadStructural input8616 value4312 value1 value2 = (output8616, value4312, value1) := by
  rw [input8616_def, output8616_def]
  try (conv => lhs; cbv)
  try rfl

def value4313 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11833 11825 (Flapjack.WordRegImm.reg 11829))))).val
theorem input8617_def : input8617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11833 11825 (Flapjack.WordRegImm.reg 11829)))) := by
  unfold input8617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11833 11825 (Flapjack.WordRegImm.reg 11829))))).val
theorem output8617_def : output8617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11833 11825 (Flapjack.WordRegImm.reg 11829)))) := by
  unfold output8617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8617_skip : Flapjack.WordAlloc.isSkip output8617 = false := by
  rw [output8617_def]
  conv => lhs; cbv
  try rfl
theorem node8617_eq : Flapjack.WordAlloc.removeDeadStructural input8617 value4312 value1 value2 = (output8617, value4313, value1) := by
  rw [input8617_def, output8617_def]
  try (conv => lhs; cbv)
  try rfl

def value4314 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11829 2824#64))).val
theorem input8618_def : input8618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11829 2824#64)) := by
  unfold input8618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11829 2824#64))).val
theorem output8618_def : output8618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11829 2824#64)) := by
  unfold output8618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8618_skip : Flapjack.WordAlloc.isSkip output8618 = false := by
  rw [output8618_def]
  conv => lhs; cbv
  try rfl
theorem node8618_eq : Flapjack.WordAlloc.removeDeadStructural input8618 value4313 value1 value2 = (output8618, value4314, value1) := by
  rw [input8618_def, output8618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8618 input8617)).val
theorem input8619_def : input8619 = (.seq input8618 input8617) := by
  unfold input8619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8618 output8617)).val
theorem output8619_def : output8619 = (.seq output8618 output8617) := by
  unfold output8619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8619_skip : Flapjack.WordAlloc.isSkip output8619 = false := by
  rw [output8619_def]
  conv => lhs; cbv
  try rfl
theorem node8619_eq : Flapjack.WordAlloc.removeDeadStructural input8619 value4312 value1 value2 = (output8619, value4314, value1) := by
  rw [input8619_def, output8619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8617_eq]
  dsimp only
  rw [node8618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4315 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11825 (Flapjack.WordLangAddr.addr 11821 18446744073709551104#64)))).val
theorem input8620_def : input8620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11825 (Flapjack.WordLangAddr.addr 11821 18446744073709551104#64))) := by
  unfold input8620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11825 (Flapjack.WordLangAddr.addr 11821 18446744073709551104#64)))).val
theorem output8620_def : output8620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11825 (Flapjack.WordLangAddr.addr 11821 18446744073709551104#64))) := by
  unfold output8620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8620_skip : Flapjack.WordAlloc.isSkip output8620 = false := by
  rw [output8620_def]
  conv => lhs; cbv
  try rfl
theorem node8620_eq : Flapjack.WordAlloc.removeDeadStructural input8620 value4314 value1 value2 = (output8620, value4315, value1) := by
  rw [input8620_def, output8620_def]
  try (conv => lhs; cbv)
  try rfl

def value4316 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11821 11817)).val
theorem input8621_def : input8621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11821 11817) := by
  unfold input8621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11821 11817)).val
theorem output8621_def : output8621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11821 11817) := by
  unfold output8621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8621_skip : Flapjack.WordAlloc.isSkip output8621 = false := by
  rw [output8621_def]
  conv => lhs; cbv
  try rfl
theorem node8621_eq : Flapjack.WordAlloc.removeDeadStructural input8621 value4315 value1 value2 = (output8621, value4316, value1) := by
  rw [input8621_def, output8621_def]
  try (conv => lhs; cbv)
  try rfl

def value4317 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11817 11813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8622_def : input8622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11817 11813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11817 11813 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8622_def : output8622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11817 11813 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8622_skip : Flapjack.WordAlloc.isSkip output8622 = false := by
  rw [output8622_def]
  conv => lhs; cbv
  try rfl
theorem node8622_eq : Flapjack.WordAlloc.removeDeadStructural input8622 value4316 value1 value2 = (output8622, value4317, value1) := by
  rw [input8622_def, output8622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11813 Flapjack.WordStore.heapLength)).val
theorem input8623_def : input8623 = (Flapjack.WordLangProgHOL.get 11813 Flapjack.WordStore.heapLength) := by
  unfold input8623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11813 Flapjack.WordStore.heapLength)).val
theorem output8623_def : output8623 = (Flapjack.WordLangProgHOL.get 11813 Flapjack.WordStore.heapLength) := by
  unfold output8623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8623_skip : Flapjack.WordAlloc.isSkip output8623 = false := by
  rw [output8623_def]
  conv => lhs; cbv
  try rfl
theorem node8623_eq : Flapjack.WordAlloc.removeDeadStructural input8623 value4317 value1 value2 = (output8623, value5, value1) := by
  rw [input8623_def, output8623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8623 input8622)).val
theorem input8624_def : input8624 = (.seq input8623 input8622) := by
  unfold input8624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8623 output8622)).val
theorem output8624_def : output8624 = (.seq output8623 output8622) := by
  unfold output8624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8624_skip : Flapjack.WordAlloc.isSkip output8624 = false := by
  rw [output8624_def]
  conv => lhs; cbv
  try rfl
theorem node8624_eq : Flapjack.WordAlloc.removeDeadStructural input8624 value4316 value1 value2 = (output8624, value5, value1) := by
  rw [input8624_def, output8624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8622_eq]
  dsimp only
  rw [node8623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8624 input8621)).val
theorem input8625_def : input8625 = (.seq input8624 input8621) := by
  unfold input8625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8624 output8621)).val
theorem output8625_def : output8625 = (.seq output8624 output8621) := by
  unfold output8625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8625_skip : Flapjack.WordAlloc.isSkip output8625 = false := by
  rw [output8625_def]
  conv => lhs; cbv
  try rfl
theorem node8625_eq : Flapjack.WordAlloc.removeDeadStructural input8625 value4315 value1 value2 = (output8625, value5, value1) := by
  rw [input8625_def, output8625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8621_eq]
  dsimp only
  rw [node8624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8625 input8620)).val
theorem input8626_def : input8626 = (.seq input8625 input8620) := by
  unfold input8626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8625 output8620)).val
theorem output8626_def : output8626 = (.seq output8625 output8620) := by
  unfold output8626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8626_skip : Flapjack.WordAlloc.isSkip output8626 = false := by
  rw [output8626_def]
  conv => lhs; cbv
  try rfl
theorem node8626_eq : Flapjack.WordAlloc.removeDeadStructural input8626 value4314 value1 value2 = (output8626, value5, value1) := by
  rw [input8626_def, output8626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8620_eq]
  dsimp only
  rw [node8625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8626 input8619)).val
theorem input8627_def : input8627 = (.seq input8626 input8619) := by
  unfold input8627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8626 output8619)).val
theorem output8627_def : output8627 = (.seq output8626 output8619) := by
  unfold output8627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8627_skip : Flapjack.WordAlloc.isSkip output8627 = false := by
  rw [output8627_def]
  conv => lhs; cbv
  try rfl
theorem node8627_eq : Flapjack.WordAlloc.removeDeadStructural input8627 value4312 value1 value2 = (output8627, value5, value1) := by
  rw [input8627_def, output8627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8619_eq]
  dsimp only
  rw [node8626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4318 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11805 (Flapjack.WordLangAddr.addr 11809 0#64)))).val
theorem input8628_def : input8628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11805 (Flapjack.WordLangAddr.addr 11809 0#64))) := by
  unfold input8628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11805 (Flapjack.WordLangAddr.addr 11809 0#64)))).val
theorem output8628_def : output8628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11805 (Flapjack.WordLangAddr.addr 11809 0#64))) := by
  unfold output8628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8628_skip : Flapjack.WordAlloc.isSkip output8628 = false := by
  rw [output8628_def]
  conv => lhs; cbv
  try rfl
theorem node8628_eq : Flapjack.WordAlloc.removeDeadStructural input8628 value5 value1 value2 = (output8628, value4318, value1) := by
  rw [input8628_def, output8628_def]
  try (conv => lhs; cbv)
  try rfl

def value4319 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11809, 11797)])).val
theorem input8629_def : input8629 = (Flapjack.WordLangProgHOL.move 0 [(11809, 11797)]) := by
  unfold input8629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11809, 11797)])).val
theorem output8629_def : output8629 = (Flapjack.WordLangProgHOL.move 0 [(11809, 11797)]) := by
  unfold output8629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8629_skip : Flapjack.WordAlloc.isSkip output8629 = false := by
  rw [output8629_def]
  conv => lhs; cbv
  try rfl
theorem node8629_eq : Flapjack.WordAlloc.removeDeadStructural input8629 value4318 value1 value2 = (output8629, value4319, value1) := by
  rw [input8629_def, output8629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8629 input8628)).val
theorem input8630_def : input8630 = (.seq input8629 input8628) := by
  unfold input8630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8629 output8628)).val
theorem output8630_def : output8630 = (.seq output8629 output8628) := by
  unfold output8630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8630_skip : Flapjack.WordAlloc.isSkip output8630 = false := by
  rw [output8630_def]
  conv => lhs; cbv
  try rfl
theorem node8630_eq : Flapjack.WordAlloc.removeDeadStructural input8630 value5 value1 value2 = (output8630, value4319, value1) := by
  rw [input8630_def, output8630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8628_eq]
  dsimp only
  rw [node8629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4320 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11805 1294742680819751518#64))).val
theorem input8631_def : input8631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11805 1294742680819751518#64)) := by
  unfold input8631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11805 1294742680819751518#64))).val
theorem output8631_def : output8631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11805 1294742680819751518#64)) := by
  unfold output8631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8631_skip : Flapjack.WordAlloc.isSkip output8631 = false := by
  rw [output8631_def]
  conv => lhs; cbv
  try rfl
theorem node8631_eq : Flapjack.WordAlloc.removeDeadStructural input8631 value4319 value1 value2 = (output8631, value4320, value1) := by
  rw [input8631_def, output8631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11801 1294742680819751518#64))).val
theorem input8632_def : input8632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11801 1294742680819751518#64)) := by
  unfold input8632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8632_def : output8632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8632_skip : Flapjack.WordAlloc.isSkip output8632 = true := by
  rw [output8632_def]
  conv => lhs; cbv
  try rfl
theorem node8632_eq : Flapjack.WordAlloc.removeDeadStructural input8632 value4320 value1 value2 = (output8632, value4320, value1) := by
  rw [input8632_def, output8632_def]
  try (conv => lhs; cbv)
  try rfl

def value4321 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11797 11789 (Flapjack.WordRegImm.reg 11793))))).val
theorem input8633_def : input8633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11797 11789 (Flapjack.WordRegImm.reg 11793)))) := by
  unfold input8633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11797 11789 (Flapjack.WordRegImm.reg 11793))))).val
theorem output8633_def : output8633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11797 11789 (Flapjack.WordRegImm.reg 11793)))) := by
  unfold output8633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8633_skip : Flapjack.WordAlloc.isSkip output8633 = false := by
  rw [output8633_def]
  conv => lhs; cbv
  try rfl
theorem node8633_eq : Flapjack.WordAlloc.removeDeadStructural input8633 value4320 value1 value2 = (output8633, value4321, value1) := by
  rw [input8633_def, output8633_def]
  try (conv => lhs; cbv)
  try rfl

def value4322 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11793 2816#64))).val
theorem input8634_def : input8634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11793 2816#64)) := by
  unfold input8634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11793 2816#64))).val
theorem output8634_def : output8634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11793 2816#64)) := by
  unfold output8634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8634_skip : Flapjack.WordAlloc.isSkip output8634 = false := by
  rw [output8634_def]
  conv => lhs; cbv
  try rfl
theorem node8634_eq : Flapjack.WordAlloc.removeDeadStructural input8634 value4321 value1 value2 = (output8634, value4322, value1) := by
  rw [input8634_def, output8634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8634 input8633)).val
theorem input8635_def : input8635 = (.seq input8634 input8633) := by
  unfold input8635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8634 output8633)).val
theorem output8635_def : output8635 = (.seq output8634 output8633) := by
  unfold output8635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8635_skip : Flapjack.WordAlloc.isSkip output8635 = false := by
  rw [output8635_def]
  conv => lhs; cbv
  try rfl
theorem node8635_eq : Flapjack.WordAlloc.removeDeadStructural input8635 value4320 value1 value2 = (output8635, value4322, value1) := by
  rw [input8635_def, output8635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8633_eq]
  dsimp only
  rw [node8634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4323 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11789 (Flapjack.WordLangAddr.addr 11785 18446744073709551104#64)))).val
theorem input8636_def : input8636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11789 (Flapjack.WordLangAddr.addr 11785 18446744073709551104#64))) := by
  unfold input8636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11789 (Flapjack.WordLangAddr.addr 11785 18446744073709551104#64)))).val
theorem output8636_def : output8636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11789 (Flapjack.WordLangAddr.addr 11785 18446744073709551104#64))) := by
  unfold output8636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8636_skip : Flapjack.WordAlloc.isSkip output8636 = false := by
  rw [output8636_def]
  conv => lhs; cbv
  try rfl
theorem node8636_eq : Flapjack.WordAlloc.removeDeadStructural input8636 value4322 value1 value2 = (output8636, value4323, value1) := by
  rw [input8636_def, output8636_def]
  try (conv => lhs; cbv)
  try rfl

def value4324 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11785 11781)).val
theorem input8637_def : input8637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11785 11781) := by
  unfold input8637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11785 11781)).val
theorem output8637_def : output8637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11785 11781) := by
  unfold output8637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8637_skip : Flapjack.WordAlloc.isSkip output8637 = false := by
  rw [output8637_def]
  conv => lhs; cbv
  try rfl
theorem node8637_eq : Flapjack.WordAlloc.removeDeadStructural input8637 value4323 value1 value2 = (output8637, value4324, value1) := by
  rw [input8637_def, output8637_def]
  try (conv => lhs; cbv)
  try rfl

def value4325 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11781 11777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8638_def : input8638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11781 11777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11781 11777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8638_def : output8638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11781 11777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8638_skip : Flapjack.WordAlloc.isSkip output8638 = false := by
  rw [output8638_def]
  conv => lhs; cbv
  try rfl
theorem node8638_eq : Flapjack.WordAlloc.removeDeadStructural input8638 value4324 value1 value2 = (output8638, value4325, value1) := by
  rw [input8638_def, output8638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11777 Flapjack.WordStore.heapLength)).val
theorem input8639_def : input8639 = (Flapjack.WordLangProgHOL.get 11777 Flapjack.WordStore.heapLength) := by
  unfold input8639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11777 Flapjack.WordStore.heapLength)).val
theorem output8639_def : output8639 = (Flapjack.WordLangProgHOL.get 11777 Flapjack.WordStore.heapLength) := by
  unfold output8639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8639_skip : Flapjack.WordAlloc.isSkip output8639 = false := by
  rw [output8639_def]
  conv => lhs; cbv
  try rfl
theorem node8639_eq : Flapjack.WordAlloc.removeDeadStructural input8639 value4325 value1 value2 = (output8639, value5, value1) := by
  rw [input8639_def, output8639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8639 input8638)).val
theorem input8640_def : input8640 = (.seq input8639 input8638) := by
  unfold input8640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8639 output8638)).val
theorem output8640_def : output8640 = (.seq output8639 output8638) := by
  unfold output8640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8640_skip : Flapjack.WordAlloc.isSkip output8640 = false := by
  rw [output8640_def]
  conv => lhs; cbv
  try rfl
theorem node8640_eq : Flapjack.WordAlloc.removeDeadStructural input8640 value4324 value1 value2 = (output8640, value5, value1) := by
  rw [input8640_def, output8640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8638_eq]
  dsimp only
  rw [node8639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8640 input8637)).val
theorem input8641_def : input8641 = (.seq input8640 input8637) := by
  unfold input8641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8640 output8637)).val
theorem output8641_def : output8641 = (.seq output8640 output8637) := by
  unfold output8641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8641_skip : Flapjack.WordAlloc.isSkip output8641 = false := by
  rw [output8641_def]
  conv => lhs; cbv
  try rfl
theorem node8641_eq : Flapjack.WordAlloc.removeDeadStructural input8641 value4323 value1 value2 = (output8641, value5, value1) := by
  rw [input8641_def, output8641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8637_eq]
  dsimp only
  rw [node8640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8641 input8636)).val
theorem input8642_def : input8642 = (.seq input8641 input8636) := by
  unfold input8642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8641 output8636)).val
theorem output8642_def : output8642 = (.seq output8641 output8636) := by
  unfold output8642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8642_skip : Flapjack.WordAlloc.isSkip output8642 = false := by
  rw [output8642_def]
  conv => lhs; cbv
  try rfl
theorem node8642_eq : Flapjack.WordAlloc.removeDeadStructural input8642 value4322 value1 value2 = (output8642, value5, value1) := by
  rw [input8642_def, output8642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8636_eq]
  dsimp only
  rw [node8641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8642 input8635)).val
theorem input8643_def : input8643 = (.seq input8642 input8635) := by
  unfold input8643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8642 output8635)).val
theorem output8643_def : output8643 = (.seq output8642 output8635) := by
  unfold output8643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8643_skip : Flapjack.WordAlloc.isSkip output8643 = false := by
  rw [output8643_def]
  conv => lhs; cbv
  try rfl
theorem node8643_eq : Flapjack.WordAlloc.removeDeadStructural input8643 value4320 value1 value2 = (output8643, value5, value1) := by
  rw [input8643_def, output8643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8635_eq]
  dsimp only
  rw [node8642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4326 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11769 (Flapjack.WordLangAddr.addr 11773 0#64)))).val
theorem input8644_def : input8644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11769 (Flapjack.WordLangAddr.addr 11773 0#64))) := by
  unfold input8644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11769 (Flapjack.WordLangAddr.addr 11773 0#64)))).val
theorem output8644_def : output8644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11769 (Flapjack.WordLangAddr.addr 11773 0#64))) := by
  unfold output8644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8644_skip : Flapjack.WordAlloc.isSkip output8644 = false := by
  rw [output8644_def]
  conv => lhs; cbv
  try rfl
theorem node8644_eq : Flapjack.WordAlloc.removeDeadStructural input8644 value5 value1 value2 = (output8644, value4326, value1) := by
  rw [input8644_def, output8644_def]
  try (conv => lhs; cbv)
  try rfl

def value4327 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11773, 11761)])).val
theorem input8645_def : input8645 = (Flapjack.WordLangProgHOL.move 0 [(11773, 11761)]) := by
  unfold input8645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11773, 11761)])).val
theorem output8645_def : output8645 = (Flapjack.WordLangProgHOL.move 0 [(11773, 11761)]) := by
  unfold output8645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8645_skip : Flapjack.WordAlloc.isSkip output8645 = false := by
  rw [output8645_def]
  conv => lhs; cbv
  try rfl
theorem node8645_eq : Flapjack.WordAlloc.removeDeadStructural input8645 value4326 value1 value2 = (output8645, value4327, value1) := by
  rw [input8645_def, output8645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8645 input8644)).val
theorem input8646_def : input8646 = (.seq input8645 input8644) := by
  unfold input8646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8645 output8644)).val
theorem output8646_def : output8646 = (.seq output8645 output8644) := by
  unfold output8646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8646_skip : Flapjack.WordAlloc.isSkip output8646 = false := by
  rw [output8646_def]
  conv => lhs; cbv
  try rfl
theorem node8646_eq : Flapjack.WordAlloc.removeDeadStructural input8646 value5 value1 value2 = (output8646, value4327, value1) := by
  rw [input8646_def, output8646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8644_eq]
  dsimp only
  rw [node8645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4328 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11769 536714149743900185#64))).val
theorem input8647_def : input8647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11769 536714149743900185#64)) := by
  unfold input8647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11769 536714149743900185#64))).val
theorem output8647_def : output8647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11769 536714149743900185#64)) := by
  unfold output8647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8647_skip : Flapjack.WordAlloc.isSkip output8647 = false := by
  rw [output8647_def]
  conv => lhs; cbv
  try rfl
theorem node8647_eq : Flapjack.WordAlloc.removeDeadStructural input8647 value4327 value1 value2 = (output8647, value4328, value1) := by
  rw [input8647_def, output8647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11765 536714149743900185#64))).val
theorem input8648_def : input8648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11765 536714149743900185#64)) := by
  unfold input8648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8648_def : output8648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8648_skip : Flapjack.WordAlloc.isSkip output8648 = true := by
  rw [output8648_def]
  conv => lhs; cbv
  try rfl
theorem node8648_eq : Flapjack.WordAlloc.removeDeadStructural input8648 value4328 value1 value2 = (output8648, value4328, value1) := by
  rw [input8648_def, output8648_def]
  try (conv => lhs; cbv)
  try rfl

def value4329 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11761 11753 (Flapjack.WordRegImm.reg 11757))))).val
theorem input8649_def : input8649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11761 11753 (Flapjack.WordRegImm.reg 11757)))) := by
  unfold input8649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11761 11753 (Flapjack.WordRegImm.reg 11757))))).val
theorem output8649_def : output8649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11761 11753 (Flapjack.WordRegImm.reg 11757)))) := by
  unfold output8649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8649_skip : Flapjack.WordAlloc.isSkip output8649 = false := by
  rw [output8649_def]
  conv => lhs; cbv
  try rfl
theorem node8649_eq : Flapjack.WordAlloc.removeDeadStructural input8649 value4328 value1 value2 = (output8649, value4329, value1) := by
  rw [input8649_def, output8649_def]
  try (conv => lhs; cbv)
  try rfl

def value4330 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11757 2808#64))).val
theorem input8650_def : input8650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11757 2808#64)) := by
  unfold input8650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11757 2808#64))).val
theorem output8650_def : output8650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11757 2808#64)) := by
  unfold output8650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8650_skip : Flapjack.WordAlloc.isSkip output8650 = false := by
  rw [output8650_def]
  conv => lhs; cbv
  try rfl
theorem node8650_eq : Flapjack.WordAlloc.removeDeadStructural input8650 value4329 value1 value2 = (output8650, value4330, value1) := by
  rw [input8650_def, output8650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8650 input8649)).val
theorem input8651_def : input8651 = (.seq input8650 input8649) := by
  unfold input8651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8650 output8649)).val
theorem output8651_def : output8651 = (.seq output8650 output8649) := by
  unfold output8651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8651_skip : Flapjack.WordAlloc.isSkip output8651 = false := by
  rw [output8651_def]
  conv => lhs; cbv
  try rfl
theorem node8651_eq : Flapjack.WordAlloc.removeDeadStructural input8651 value4328 value1 value2 = (output8651, value4330, value1) := by
  rw [input8651_def, output8651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8649_eq]
  dsimp only
  rw [node8650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4331 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11753 (Flapjack.WordLangAddr.addr 11749 18446744073709551104#64)))).val
theorem input8652_def : input8652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11753 (Flapjack.WordLangAddr.addr 11749 18446744073709551104#64))) := by
  unfold input8652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11753 (Flapjack.WordLangAddr.addr 11749 18446744073709551104#64)))).val
theorem output8652_def : output8652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11753 (Flapjack.WordLangAddr.addr 11749 18446744073709551104#64))) := by
  unfold output8652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8652_skip : Flapjack.WordAlloc.isSkip output8652 = false := by
  rw [output8652_def]
  conv => lhs; cbv
  try rfl
theorem node8652_eq : Flapjack.WordAlloc.removeDeadStructural input8652 value4330 value1 value2 = (output8652, value4331, value1) := by
  rw [input8652_def, output8652_def]
  try (conv => lhs; cbv)
  try rfl

def value4332 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11749 11745)).val
theorem input8653_def : input8653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11749 11745) := by
  unfold input8653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11749 11745)).val
theorem output8653_def : output8653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11749 11745) := by
  unfold output8653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8653_skip : Flapjack.WordAlloc.isSkip output8653 = false := by
  rw [output8653_def]
  conv => lhs; cbv
  try rfl
theorem node8653_eq : Flapjack.WordAlloc.removeDeadStructural input8653 value4331 value1 value2 = (output8653, value4332, value1) := by
  rw [input8653_def, output8653_def]
  try (conv => lhs; cbv)
  try rfl

def value4333 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11745 11741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8654_def : input8654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11745 11741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11745 11741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8654_def : output8654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11745 11741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8654_skip : Flapjack.WordAlloc.isSkip output8654 = false := by
  rw [output8654_def]
  conv => lhs; cbv
  try rfl
theorem node8654_eq : Flapjack.WordAlloc.removeDeadStructural input8654 value4332 value1 value2 = (output8654, value4333, value1) := by
  rw [input8654_def, output8654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11741 Flapjack.WordStore.heapLength)).val
theorem input8655_def : input8655 = (Flapjack.WordLangProgHOL.get 11741 Flapjack.WordStore.heapLength) := by
  unfold input8655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11741 Flapjack.WordStore.heapLength)).val
theorem output8655_def : output8655 = (Flapjack.WordLangProgHOL.get 11741 Flapjack.WordStore.heapLength) := by
  unfold output8655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8655_skip : Flapjack.WordAlloc.isSkip output8655 = false := by
  rw [output8655_def]
  conv => lhs; cbv
  try rfl
theorem node8655_eq : Flapjack.WordAlloc.removeDeadStructural input8655 value4333 value1 value2 = (output8655, value5, value1) := by
  rw [input8655_def, output8655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8655 input8654)).val
theorem input8656_def : input8656 = (.seq input8655 input8654) := by
  unfold input8656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8655 output8654)).val
theorem output8656_def : output8656 = (.seq output8655 output8654) := by
  unfold output8656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8656_skip : Flapjack.WordAlloc.isSkip output8656 = false := by
  rw [output8656_def]
  conv => lhs; cbv
  try rfl
theorem node8656_eq : Flapjack.WordAlloc.removeDeadStructural input8656 value4332 value1 value2 = (output8656, value5, value1) := by
  rw [input8656_def, output8656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8654_eq]
  dsimp only
  rw [node8655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8656 input8653)).val
theorem input8657_def : input8657 = (.seq input8656 input8653) := by
  unfold input8657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8656 output8653)).val
theorem output8657_def : output8657 = (.seq output8656 output8653) := by
  unfold output8657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8657_skip : Flapjack.WordAlloc.isSkip output8657 = false := by
  rw [output8657_def]
  conv => lhs; cbv
  try rfl
theorem node8657_eq : Flapjack.WordAlloc.removeDeadStructural input8657 value4331 value1 value2 = (output8657, value5, value1) := by
  rw [input8657_def, output8657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8653_eq]
  dsimp only
  rw [node8656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8657 input8652)).val
theorem input8658_def : input8658 = (.seq input8657 input8652) := by
  unfold input8658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8657 output8652)).val
theorem output8658_def : output8658 = (.seq output8657 output8652) := by
  unfold output8658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8658_skip : Flapjack.WordAlloc.isSkip output8658 = false := by
  rw [output8658_def]
  conv => lhs; cbv
  try rfl
theorem node8658_eq : Flapjack.WordAlloc.removeDeadStructural input8658 value4330 value1 value2 = (output8658, value5, value1) := by
  rw [input8658_def, output8658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8652_eq]
  dsimp only
  rw [node8657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8658 input8651)).val
theorem input8659_def : input8659 = (.seq input8658 input8651) := by
  unfold input8659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8658 output8651)).val
theorem output8659_def : output8659 = (.seq output8658 output8651) := by
  unfold output8659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8659_skip : Flapjack.WordAlloc.isSkip output8659 = false := by
  rw [output8659_def]
  conv => lhs; cbv
  try rfl
theorem node8659_eq : Flapjack.WordAlloc.removeDeadStructural input8659 value4328 value1 value2 = (output8659, value5, value1) := by
  rw [input8659_def, output8659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8651_eq]
  dsimp only
  rw [node8658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4334 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11733 (Flapjack.WordLangAddr.addr 11737 0#64)))).val
theorem input8660_def : input8660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11733 (Flapjack.WordLangAddr.addr 11737 0#64))) := by
  unfold input8660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11733 (Flapjack.WordLangAddr.addr 11737 0#64)))).val
theorem output8660_def : output8660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11733 (Flapjack.WordLangAddr.addr 11737 0#64))) := by
  unfold output8660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8660_skip : Flapjack.WordAlloc.isSkip output8660 = false := by
  rw [output8660_def]
  conv => lhs; cbv
  try rfl
theorem node8660_eq : Flapjack.WordAlloc.removeDeadStructural input8660 value5 value1 value2 = (output8660, value4334, value1) := by
  rw [input8660_def, output8660_def]
  try (conv => lhs; cbv)
  try rfl

def value4335 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11737, 11725)])).val
theorem input8661_def : input8661 = (Flapjack.WordLangProgHOL.move 0 [(11737, 11725)]) := by
  unfold input8661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11737, 11725)])).val
theorem output8661_def : output8661 = (Flapjack.WordLangProgHOL.move 0 [(11737, 11725)]) := by
  unfold output8661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8661_skip : Flapjack.WordAlloc.isSkip output8661 = false := by
  rw [output8661_def]
  conv => lhs; cbv
  try rfl
theorem node8661_eq : Flapjack.WordAlloc.removeDeadStructural input8661 value4334 value1 value2 = (output8661, value4335, value1) := by
  rw [input8661_def, output8661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8661 input8660)).val
theorem input8662_def : input8662 = (.seq input8661 input8660) := by
  unfold input8662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8661 output8660)).val
theorem output8662_def : output8662 = (.seq output8661 output8660) := by
  unfold output8662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8662_skip : Flapjack.WordAlloc.isSkip output8662 = false := by
  rw [output8662_def]
  conv => lhs; cbv
  try rfl
theorem node8662_eq : Flapjack.WordAlloc.removeDeadStructural input8662 value5 value1 value2 = (output8662, value4335, value1) := by
  rw [input8662_def, output8662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8660_eq]
  dsimp only
  rw [node8661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4336 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11733 1098328982230230817#64))).val
theorem input8663_def : input8663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11733 1098328982230230817#64)) := by
  unfold input8663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11733 1098328982230230817#64))).val
theorem output8663_def : output8663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11733 1098328982230230817#64)) := by
  unfold output8663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8663_skip : Flapjack.WordAlloc.isSkip output8663 = false := by
  rw [output8663_def]
  conv => lhs; cbv
  try rfl
theorem node8663_eq : Flapjack.WordAlloc.removeDeadStructural input8663 value4335 value1 value2 = (output8663, value4336, value1) := by
  rw [input8663_def, output8663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11729 1098328982230230817#64))).val
theorem input8664_def : input8664 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11729 1098328982230230817#64)) := by
  unfold input8664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8664_def : output8664 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8664_skip : Flapjack.WordAlloc.isSkip output8664 = true := by
  rw [output8664_def]
  conv => lhs; cbv
  try rfl
theorem node8664_eq : Flapjack.WordAlloc.removeDeadStructural input8664 value4336 value1 value2 = (output8664, value4336, value1) := by
  rw [input8664_def, output8664_def]
  try (conv => lhs; cbv)
  try rfl

def value4337 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11725 11717 (Flapjack.WordRegImm.reg 11721))))).val
theorem input8665_def : input8665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11725 11717 (Flapjack.WordRegImm.reg 11721)))) := by
  unfold input8665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11725 11717 (Flapjack.WordRegImm.reg 11721))))).val
theorem output8665_def : output8665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11725 11717 (Flapjack.WordRegImm.reg 11721)))) := by
  unfold output8665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8665_skip : Flapjack.WordAlloc.isSkip output8665 = false := by
  rw [output8665_def]
  conv => lhs; cbv
  try rfl
theorem node8665_eq : Flapjack.WordAlloc.removeDeadStructural input8665 value4336 value1 value2 = (output8665, value4337, value1) := by
  rw [input8665_def, output8665_def]
  try (conv => lhs; cbv)
  try rfl

def value4338 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11721 2800#64))).val
theorem input8666_def : input8666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11721 2800#64)) := by
  unfold input8666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11721 2800#64))).val
theorem output8666_def : output8666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11721 2800#64)) := by
  unfold output8666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8666_skip : Flapjack.WordAlloc.isSkip output8666 = false := by
  rw [output8666_def]
  conv => lhs; cbv
  try rfl
theorem node8666_eq : Flapjack.WordAlloc.removeDeadStructural input8666 value4337 value1 value2 = (output8666, value4338, value1) := by
  rw [input8666_def, output8666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8666 input8665)).val
theorem input8667_def : input8667 = (.seq input8666 input8665) := by
  unfold input8667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8666 output8665)).val
theorem output8667_def : output8667 = (.seq output8666 output8665) := by
  unfold output8667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8667_skip : Flapjack.WordAlloc.isSkip output8667 = false := by
  rw [output8667_def]
  conv => lhs; cbv
  try rfl
theorem node8667_eq : Flapjack.WordAlloc.removeDeadStructural input8667 value4336 value1 value2 = (output8667, value4338, value1) := by
  rw [input8667_def, output8667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8665_eq]
  dsimp only
  rw [node8666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4339 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11717 (Flapjack.WordLangAddr.addr 11713 18446744073709551104#64)))).val
theorem input8668_def : input8668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11717 (Flapjack.WordLangAddr.addr 11713 18446744073709551104#64))) := by
  unfold input8668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11717 (Flapjack.WordLangAddr.addr 11713 18446744073709551104#64)))).val
theorem output8668_def : output8668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11717 (Flapjack.WordLangAddr.addr 11713 18446744073709551104#64))) := by
  unfold output8668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8668_skip : Flapjack.WordAlloc.isSkip output8668 = false := by
  rw [output8668_def]
  conv => lhs; cbv
  try rfl
theorem node8668_eq : Flapjack.WordAlloc.removeDeadStructural input8668 value4338 value1 value2 = (output8668, value4339, value1) := by
  rw [input8668_def, output8668_def]
  try (conv => lhs; cbv)
  try rfl

def value4340 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11713 11709)).val
theorem input8669_def : input8669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11713 11709) := by
  unfold input8669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11713 11709)).val
theorem output8669_def : output8669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11713 11709) := by
  unfold output8669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8669_skip : Flapjack.WordAlloc.isSkip output8669 = false := by
  rw [output8669_def]
  conv => lhs; cbv
  try rfl
theorem node8669_eq : Flapjack.WordAlloc.removeDeadStructural input8669 value4339 value1 value2 = (output8669, value4340, value1) := by
  rw [input8669_def, output8669_def]
  try (conv => lhs; cbv)
  try rfl

def value4341 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11709 11705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8670_def : input8670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11709 11705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11709 11705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8670_def : output8670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11709 11705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8670_skip : Flapjack.WordAlloc.isSkip output8670 = false := by
  rw [output8670_def]
  conv => lhs; cbv
  try rfl
theorem node8670_eq : Flapjack.WordAlloc.removeDeadStructural input8670 value4340 value1 value2 = (output8670, value4341, value1) := by
  rw [input8670_def, output8670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11705 Flapjack.WordStore.heapLength)).val
theorem input8671_def : input8671 = (Flapjack.WordLangProgHOL.get 11705 Flapjack.WordStore.heapLength) := by
  unfold input8671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11705 Flapjack.WordStore.heapLength)).val
theorem output8671_def : output8671 = (Flapjack.WordLangProgHOL.get 11705 Flapjack.WordStore.heapLength) := by
  unfold output8671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8671_skip : Flapjack.WordAlloc.isSkip output8671 = false := by
  rw [output8671_def]
  conv => lhs; cbv
  try rfl
theorem node8671_eq : Flapjack.WordAlloc.removeDeadStructural input8671 value4341 value1 value2 = (output8671, value5, value1) := by
  rw [input8671_def, output8671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8671 input8670)).val
theorem input8672_def : input8672 = (.seq input8671 input8670) := by
  unfold input8672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8671 output8670)).val
theorem output8672_def : output8672 = (.seq output8671 output8670) := by
  unfold output8672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8672_skip : Flapjack.WordAlloc.isSkip output8672 = false := by
  rw [output8672_def]
  conv => lhs; cbv
  try rfl
theorem node8672_eq : Flapjack.WordAlloc.removeDeadStructural input8672 value4340 value1 value2 = (output8672, value5, value1) := by
  rw [input8672_def, output8672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8670_eq]
  dsimp only
  rw [node8671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8672 input8669)).val
theorem input8673_def : input8673 = (.seq input8672 input8669) := by
  unfold input8673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8672 output8669)).val
theorem output8673_def : output8673 = (.seq output8672 output8669) := by
  unfold output8673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8673_skip : Flapjack.WordAlloc.isSkip output8673 = false := by
  rw [output8673_def]
  conv => lhs; cbv
  try rfl
theorem node8673_eq : Flapjack.WordAlloc.removeDeadStructural input8673 value4339 value1 value2 = (output8673, value5, value1) := by
  rw [input8673_def, output8673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8669_eq]
  dsimp only
  rw [node8672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8673 input8668)).val
theorem input8674_def : input8674 = (.seq input8673 input8668) := by
  unfold input8674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8673 output8668)).val
theorem output8674_def : output8674 = (.seq output8673 output8668) := by
  unfold output8674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8674_skip : Flapjack.WordAlloc.isSkip output8674 = false := by
  rw [output8674_def]
  conv => lhs; cbv
  try rfl
theorem node8674_eq : Flapjack.WordAlloc.removeDeadStructural input8674 value4338 value1 value2 = (output8674, value5, value1) := by
  rw [input8674_def, output8674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8668_eq]
  dsimp only
  rw [node8673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8674 input8667)).val
theorem input8675_def : input8675 = (.seq input8674 input8667) := by
  unfold input8675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8674 output8667)).val
theorem output8675_def : output8675 = (.seq output8674 output8667) := by
  unfold output8675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8675_skip : Flapjack.WordAlloc.isSkip output8675 = false := by
  rw [output8675_def]
  conv => lhs; cbv
  try rfl
theorem node8675_eq : Flapjack.WordAlloc.removeDeadStructural input8675 value4336 value1 value2 = (output8675, value5, value1) := by
  rw [input8675_def, output8675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8667_eq]
  dsimp only
  rw [node8674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4342 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11697 (Flapjack.WordLangAddr.addr 11701 0#64)))).val
theorem input8676_def : input8676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11697 (Flapjack.WordLangAddr.addr 11701 0#64))) := by
  unfold input8676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11697 (Flapjack.WordLangAddr.addr 11701 0#64)))).val
theorem output8676_def : output8676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11697 (Flapjack.WordLangAddr.addr 11701 0#64))) := by
  unfold output8676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8676_skip : Flapjack.WordAlloc.isSkip output8676 = false := by
  rw [output8676_def]
  conv => lhs; cbv
  try rfl
theorem node8676_eq : Flapjack.WordAlloc.removeDeadStructural input8676 value5 value1 value2 = (output8676, value4342, value1) := by
  rw [input8676_def, output8676_def]
  try (conv => lhs; cbv)
  try rfl

def value4343 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11701, 11689)])).val
theorem input8677_def : input8677 = (Flapjack.WordLangProgHOL.move 0 [(11701, 11689)]) := by
  unfold input8677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11701, 11689)])).val
theorem output8677_def : output8677 = (Flapjack.WordLangProgHOL.move 0 [(11701, 11689)]) := by
  unfold output8677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8677_skip : Flapjack.WordAlloc.isSkip output8677 = false := by
  rw [output8677_def]
  conv => lhs; cbv
  try rfl
theorem node8677_eq : Flapjack.WordAlloc.removeDeadStructural input8677 value4342 value1 value2 = (output8677, value4343, value1) := by
  rw [input8677_def, output8677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8677 input8676)).val
theorem input8678_def : input8678 = (.seq input8677 input8676) := by
  unfold input8678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8677 output8676)).val
theorem output8678_def : output8678 = (.seq output8677 output8676) := by
  unfold output8678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8678_skip : Flapjack.WordAlloc.isSkip output8678 = false := by
  rw [output8678_def]
  conv => lhs; cbv
  try rfl
theorem node8678_eq : Flapjack.WordAlloc.removeDeadStructural input8678 value5 value1 value2 = (output8678, value4343, value1) := by
  rw [input8678_def, output8678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8676_eq]
  dsimp only
  rw [node8677_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4344 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11697 6273329123533496713#64))).val
theorem input8679_def : input8679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11697 6273329123533496713#64)) := by
  unfold input8679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11697 6273329123533496713#64))).val
theorem output8679_def : output8679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11697 6273329123533496713#64)) := by
  unfold output8679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8679_skip : Flapjack.WordAlloc.isSkip output8679 = false := by
  rw [output8679_def]
  conv => lhs; cbv
  try rfl
theorem node8679_eq : Flapjack.WordAlloc.removeDeadStructural input8679 value4343 value1 value2 = (output8679, value4344, value1) := by
  rw [input8679_def, output8679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11693 6273329123533496713#64))).val
theorem input8680_def : input8680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11693 6273329123533496713#64)) := by
  unfold input8680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8680_def : output8680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8680_skip : Flapjack.WordAlloc.isSkip output8680 = true := by
  rw [output8680_def]
  conv => lhs; cbv
  try rfl
theorem node8680_eq : Flapjack.WordAlloc.removeDeadStructural input8680 value4344 value1 value2 = (output8680, value4344, value1) := by
  rw [input8680_def, output8680_def]
  try (conv => lhs; cbv)
  try rfl

def value4345 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11689 11681 (Flapjack.WordRegImm.reg 11685))))).val
theorem input8681_def : input8681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11689 11681 (Flapjack.WordRegImm.reg 11685)))) := by
  unfold input8681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11689 11681 (Flapjack.WordRegImm.reg 11685))))).val
theorem output8681_def : output8681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11689 11681 (Flapjack.WordRegImm.reg 11685)))) := by
  unfold output8681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8681_skip : Flapjack.WordAlloc.isSkip output8681 = false := by
  rw [output8681_def]
  conv => lhs; cbv
  try rfl
theorem node8681_eq : Flapjack.WordAlloc.removeDeadStructural input8681 value4344 value1 value2 = (output8681, value4345, value1) := by
  rw [input8681_def, output8681_def]
  try (conv => lhs; cbv)
  try rfl

def value4346 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11685 2792#64))).val
theorem input8682_def : input8682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11685 2792#64)) := by
  unfold input8682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11685 2792#64))).val
theorem output8682_def : output8682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11685 2792#64)) := by
  unfold output8682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8682_skip : Flapjack.WordAlloc.isSkip output8682 = false := by
  rw [output8682_def]
  conv => lhs; cbv
  try rfl
theorem node8682_eq : Flapjack.WordAlloc.removeDeadStructural input8682 value4345 value1 value2 = (output8682, value4346, value1) := by
  rw [input8682_def, output8682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8682 input8681)).val
theorem input8683_def : input8683 = (.seq input8682 input8681) := by
  unfold input8683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8682 output8681)).val
theorem output8683_def : output8683 = (.seq output8682 output8681) := by
  unfold output8683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8683_skip : Flapjack.WordAlloc.isSkip output8683 = false := by
  rw [output8683_def]
  conv => lhs; cbv
  try rfl
theorem node8683_eq : Flapjack.WordAlloc.removeDeadStructural input8683 value4344 value1 value2 = (output8683, value4346, value1) := by
  rw [input8683_def, output8683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8681_eq]
  dsimp only
  rw [node8682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4347 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11681 (Flapjack.WordLangAddr.addr 11677 18446744073709551104#64)))).val
theorem input8684_def : input8684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11681 (Flapjack.WordLangAddr.addr 11677 18446744073709551104#64))) := by
  unfold input8684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11681 (Flapjack.WordLangAddr.addr 11677 18446744073709551104#64)))).val
theorem output8684_def : output8684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11681 (Flapjack.WordLangAddr.addr 11677 18446744073709551104#64))) := by
  unfold output8684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8684_skip : Flapjack.WordAlloc.isSkip output8684 = false := by
  rw [output8684_def]
  conv => lhs; cbv
  try rfl
theorem node8684_eq : Flapjack.WordAlloc.removeDeadStructural input8684 value4346 value1 value2 = (output8684, value4347, value1) := by
  rw [input8684_def, output8684_def]
  try (conv => lhs; cbv)
  try rfl

def value4348 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11677 11673)).val
theorem input8685_def : input8685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11677 11673) := by
  unfold input8685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11677 11673)).val
theorem output8685_def : output8685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11677 11673) := by
  unfold output8685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8685_skip : Flapjack.WordAlloc.isSkip output8685 = false := by
  rw [output8685_def]
  conv => lhs; cbv
  try rfl
theorem node8685_eq : Flapjack.WordAlloc.removeDeadStructural input8685 value4347 value1 value2 = (output8685, value4348, value1) := by
  rw [input8685_def, output8685_def]
  try (conv => lhs; cbv)
  try rfl

def value4349 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11673 11669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8686_def : input8686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11673 11669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11673 11669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8686_def : output8686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11673 11669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8686_skip : Flapjack.WordAlloc.isSkip output8686 = false := by
  rw [output8686_def]
  conv => lhs; cbv
  try rfl
theorem node8686_eq : Flapjack.WordAlloc.removeDeadStructural input8686 value4348 value1 value2 = (output8686, value4349, value1) := by
  rw [input8686_def, output8686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11669 Flapjack.WordStore.heapLength)).val
theorem input8687_def : input8687 = (Flapjack.WordLangProgHOL.get 11669 Flapjack.WordStore.heapLength) := by
  unfold input8687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11669 Flapjack.WordStore.heapLength)).val
theorem output8687_def : output8687 = (Flapjack.WordLangProgHOL.get 11669 Flapjack.WordStore.heapLength) := by
  unfold output8687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8687_skip : Flapjack.WordAlloc.isSkip output8687 = false := by
  rw [output8687_def]
  conv => lhs; cbv
  try rfl
theorem node8687_eq : Flapjack.WordAlloc.removeDeadStructural input8687 value4349 value1 value2 = (output8687, value5, value1) := by
  rw [input8687_def, output8687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8687 input8686)).val
theorem input8688_def : input8688 = (.seq input8687 input8686) := by
  unfold input8688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8687 output8686)).val
theorem output8688_def : output8688 = (.seq output8687 output8686) := by
  unfold output8688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8688_skip : Flapjack.WordAlloc.isSkip output8688 = false := by
  rw [output8688_def]
  conv => lhs; cbv
  try rfl
theorem node8688_eq : Flapjack.WordAlloc.removeDeadStructural input8688 value4348 value1 value2 = (output8688, value5, value1) := by
  rw [input8688_def, output8688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8686_eq]
  dsimp only
  rw [node8687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8688 input8685)).val
theorem input8689_def : input8689 = (.seq input8688 input8685) := by
  unfold input8689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8688 output8685)).val
theorem output8689_def : output8689 = (.seq output8688 output8685) := by
  unfold output8689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8689_skip : Flapjack.WordAlloc.isSkip output8689 = false := by
  rw [output8689_def]
  conv => lhs; cbv
  try rfl
theorem node8689_eq : Flapjack.WordAlloc.removeDeadStructural input8689 value4347 value1 value2 = (output8689, value5, value1) := by
  rw [input8689_def, output8689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8685_eq]
  dsimp only
  rw [node8688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8689 input8684)).val
theorem input8690_def : input8690 = (.seq input8689 input8684) := by
  unfold input8690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8689 output8684)).val
theorem output8690_def : output8690 = (.seq output8689 output8684) := by
  unfold output8690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8690_skip : Flapjack.WordAlloc.isSkip output8690 = false := by
  rw [output8690_def]
  conv => lhs; cbv
  try rfl
theorem node8690_eq : Flapjack.WordAlloc.removeDeadStructural input8690 value4346 value1 value2 = (output8690, value5, value1) := by
  rw [input8690_def, output8690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8684_eq]
  dsimp only
  rw [node8689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8690 input8683)).val
theorem input8691_def : input8691 = (.seq input8690 input8683) := by
  unfold input8691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8690 output8683)).val
theorem output8691_def : output8691 = (.seq output8690 output8683) := by
  unfold output8691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8691_skip : Flapjack.WordAlloc.isSkip output8691 = false := by
  rw [output8691_def]
  conv => lhs; cbv
  try rfl
theorem node8691_eq : Flapjack.WordAlloc.removeDeadStructural input8691 value4344 value1 value2 = (output8691, value5, value1) := by
  rw [input8691_def, output8691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8683_eq]
  dsimp only
  rw [node8690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4350 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11661 (Flapjack.WordLangAddr.addr 11665 0#64)))).val
theorem input8692_def : input8692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11661 (Flapjack.WordLangAddr.addr 11665 0#64))) := by
  unfold input8692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11661 (Flapjack.WordLangAddr.addr 11665 0#64)))).val
theorem output8692_def : output8692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11661 (Flapjack.WordLangAddr.addr 11665 0#64))) := by
  unfold output8692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8692_skip : Flapjack.WordAlloc.isSkip output8692 = false := by
  rw [output8692_def]
  conv => lhs; cbv
  try rfl
theorem node8692_eq : Flapjack.WordAlloc.removeDeadStructural input8692 value5 value1 value2 = (output8692, value4350, value1) := by
  rw [input8692_def, output8692_def]
  try (conv => lhs; cbv)
  try rfl

def value4351 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11665, 11653)])).val
theorem input8693_def : input8693 = (Flapjack.WordLangProgHOL.move 0 [(11665, 11653)]) := by
  unfold input8693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11665, 11653)])).val
theorem output8693_def : output8693 = (Flapjack.WordLangProgHOL.move 0 [(11665, 11653)]) := by
  unfold output8693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8693_skip : Flapjack.WordAlloc.isSkip output8693 = false := by
  rw [output8693_def]
  conv => lhs; cbv
  try rfl
theorem node8693_eq : Flapjack.WordAlloc.removeDeadStructural input8693 value4350 value1 value2 = (output8693, value4351, value1) := by
  rw [input8693_def, output8693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8693 input8692)).val
theorem input8694_def : input8694 = (.seq input8693 input8692) := by
  unfold input8694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8693 output8692)).val
theorem output8694_def : output8694 = (.seq output8693 output8692) := by
  unfold output8694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8694_skip : Flapjack.WordAlloc.isSkip output8694 = false := by
  rw [output8694_def]
  conv => lhs; cbv
  try rfl
theorem node8694_eq : Flapjack.WordAlloc.removeDeadStructural input8694 value5 value1 value2 = (output8694, value4351, value1) := by
  rw [input8694_def, output8694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8692_eq]
  dsimp only
  rw [node8693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4352 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11661 5633448088282521244#64))).val
theorem input8695_def : input8695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11661 5633448088282521244#64)) := by
  unfold input8695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11661 5633448088282521244#64))).val
theorem output8695_def : output8695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11661 5633448088282521244#64)) := by
  unfold output8695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8695_skip : Flapjack.WordAlloc.isSkip output8695 = false := by
  rw [output8695_def]
  conv => lhs; cbv
  try rfl
theorem node8695_eq : Flapjack.WordAlloc.removeDeadStructural input8695 value4351 value1 value2 = (output8695, value4352, value1) := by
  rw [input8695_def, output8695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11657 5633448088282521244#64))).val
theorem input8696_def : input8696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11657 5633448088282521244#64)) := by
  unfold input8696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8696_def : output8696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8696_skip : Flapjack.WordAlloc.isSkip output8696 = true := by
  rw [output8696_def]
  conv => lhs; cbv
  try rfl
theorem node8696_eq : Flapjack.WordAlloc.removeDeadStructural input8696 value4352 value1 value2 = (output8696, value4352, value1) := by
  rw [input8696_def, output8696_def]
  try (conv => lhs; cbv)
  try rfl

def value4353 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11653 11645 (Flapjack.WordRegImm.reg 11649))))).val
theorem input8697_def : input8697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11653 11645 (Flapjack.WordRegImm.reg 11649)))) := by
  unfold input8697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11653 11645 (Flapjack.WordRegImm.reg 11649))))).val
theorem output8697_def : output8697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11653 11645 (Flapjack.WordRegImm.reg 11649)))) := by
  unfold output8697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8697_skip : Flapjack.WordAlloc.isSkip output8697 = false := by
  rw [output8697_def]
  conv => lhs; cbv
  try rfl
theorem node8697_eq : Flapjack.WordAlloc.removeDeadStructural input8697 value4352 value1 value2 = (output8697, value4353, value1) := by
  rw [input8697_def, output8697_def]
  try (conv => lhs; cbv)
  try rfl

def value4354 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11649 2784#64))).val
theorem input8698_def : input8698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11649 2784#64)) := by
  unfold input8698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11649 2784#64))).val
theorem output8698_def : output8698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11649 2784#64)) := by
  unfold output8698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8698_skip : Flapjack.WordAlloc.isSkip output8698 = false := by
  rw [output8698_def]
  conv => lhs; cbv
  try rfl
theorem node8698_eq : Flapjack.WordAlloc.removeDeadStructural input8698 value4353 value1 value2 = (output8698, value4354, value1) := by
  rw [input8698_def, output8698_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8698 input8697)).val
theorem input8699_def : input8699 = (.seq input8698 input8697) := by
  unfold input8699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8698 output8697)).val
theorem output8699_def : output8699 = (.seq output8698 output8697) := by
  unfold output8699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8699_skip : Flapjack.WordAlloc.isSkip output8699 = false := by
  rw [output8699_def]
  conv => lhs; cbv
  try rfl
theorem node8699_eq : Flapjack.WordAlloc.removeDeadStructural input8699 value4352 value1 value2 = (output8699, value4354, value1) := by
  rw [input8699_def, output8699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8697_eq]
  dsimp only
  rw [node8698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4355 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11645 (Flapjack.WordLangAddr.addr 11641 18446744073709551104#64)))).val
theorem input8700_def : input8700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11645 (Flapjack.WordLangAddr.addr 11641 18446744073709551104#64))) := by
  unfold input8700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11645 (Flapjack.WordLangAddr.addr 11641 18446744073709551104#64)))).val
theorem output8700_def : output8700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11645 (Flapjack.WordLangAddr.addr 11641 18446744073709551104#64))) := by
  unfold output8700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8700_skip : Flapjack.WordAlloc.isSkip output8700 = false := by
  rw [output8700_def]
  conv => lhs; cbv
  try rfl
theorem node8700_eq : Flapjack.WordAlloc.removeDeadStructural input8700 value4354 value1 value2 = (output8700, value4355, value1) := by
  rw [input8700_def, output8700_def]
  try (conv => lhs; cbv)
  try rfl

def value4356 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11641 11637)).val
theorem input8701_def : input8701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11641 11637) := by
  unfold input8701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11641 11637)).val
theorem output8701_def : output8701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11641 11637) := by
  unfold output8701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8701_skip : Flapjack.WordAlloc.isSkip output8701 = false := by
  rw [output8701_def]
  conv => lhs; cbv
  try rfl
theorem node8701_eq : Flapjack.WordAlloc.removeDeadStructural input8701 value4355 value1 value2 = (output8701, value4356, value1) := by
  rw [input8701_def, output8701_def]
  try (conv => lhs; cbv)
  try rfl

def value4357 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11637 11633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8702_def : input8702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11637 11633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11637 11633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8702_def : output8702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11637 11633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8702_skip : Flapjack.WordAlloc.isSkip output8702 = false := by
  rw [output8702_def]
  conv => lhs; cbv
  try rfl
theorem node8702_eq : Flapjack.WordAlloc.removeDeadStructural input8702 value4356 value1 value2 = (output8702, value4357, value1) := by
  rw [input8702_def, output8702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11633 Flapjack.WordStore.heapLength)).val
theorem input8703_def : input8703 = (Flapjack.WordLangProgHOL.get 11633 Flapjack.WordStore.heapLength) := by
  unfold input8703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11633 Flapjack.WordStore.heapLength)).val
theorem output8703_def : output8703 = (Flapjack.WordLangProgHOL.get 11633 Flapjack.WordStore.heapLength) := by
  unfold output8703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8703_skip : Flapjack.WordAlloc.isSkip output8703 = false := by
  rw [output8703_def]
  conv => lhs; cbv
  try rfl
theorem node8703_eq : Flapjack.WordAlloc.removeDeadStructural input8703 value4357 value1 value2 = (output8703, value5, value1) := by
  rw [input8703_def, output8703_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node8703_eq
end InitECandidate.Proofs.DeadStages713
