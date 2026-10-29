import InitECandidate.Proofs.DeadStages713.Chunk025
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input6656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6655 input6654)).val
theorem input6656_def : input6656 = (.seq input6655 input6654) := by
  unfold input6656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6655 output6654)).val
theorem output6656_def : output6656 = (.seq output6655 output6654) := by
  unfold output6656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6656_skip : Flapjack.WordAlloc.isSkip output6656 = false := by
  rw [output6656_def]
  conv => lhs; cbv
  try rfl
theorem node6656_eq : Flapjack.WordAlloc.removeDeadStructural input6656 value3332 value1 value2 = (output6656, value5, value1) := by
  rw [input6656_def, output6656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6654_eq]
  dsimp only
  rw [node6655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6656 input6653)).val
theorem input6657_def : input6657 = (.seq input6656 input6653) := by
  unfold input6657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6656 output6653)).val
theorem output6657_def : output6657 = (.seq output6656 output6653) := by
  unfold output6657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6657_skip : Flapjack.WordAlloc.isSkip output6657 = false := by
  rw [output6657_def]
  conv => lhs; cbv
  try rfl
theorem node6657_eq : Flapjack.WordAlloc.removeDeadStructural input6657 value3331 value1 value2 = (output6657, value5, value1) := by
  rw [input6657_def, output6657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6653_eq]
  dsimp only
  rw [node6656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6657 input6652)).val
theorem input6658_def : input6658 = (.seq input6657 input6652) := by
  unfold input6658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6657 output6652)).val
theorem output6658_def : output6658 = (.seq output6657 output6652) := by
  unfold output6658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6658_skip : Flapjack.WordAlloc.isSkip output6658 = false := by
  rw [output6658_def]
  conv => lhs; cbv
  try rfl
theorem node6658_eq : Flapjack.WordAlloc.removeDeadStructural input6658 value3330 value1 value2 = (output6658, value5, value1) := by
  rw [input6658_def, output6658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6652_eq]
  dsimp only
  rw [node6657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6658 input6651)).val
theorem input6659_def : input6659 = (.seq input6658 input6651) := by
  unfold input6659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6658 output6651)).val
theorem output6659_def : output6659 = (.seq output6658 output6651) := by
  unfold output6659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6659_skip : Flapjack.WordAlloc.isSkip output6659 = false := by
  rw [output6659_def]
  conv => lhs; cbv
  try rfl
theorem node6659_eq : Flapjack.WordAlloc.removeDeadStructural input6659 value3328 value1 value2 = (output6659, value5, value1) := by
  rw [input6659_def, output6659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6651_eq]
  dsimp only
  rw [node6658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3334 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16233 (Flapjack.WordLangAddr.addr 16237 0#64)))).val
theorem input6660_def : input6660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16233 (Flapjack.WordLangAddr.addr 16237 0#64))) := by
  unfold input6660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16233 (Flapjack.WordLangAddr.addr 16237 0#64)))).val
theorem output6660_def : output6660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16233 (Flapjack.WordLangAddr.addr 16237 0#64))) := by
  unfold output6660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6660_skip : Flapjack.WordAlloc.isSkip output6660 = false := by
  rw [output6660_def]
  conv => lhs; cbv
  try rfl
theorem node6660_eq : Flapjack.WordAlloc.removeDeadStructural input6660 value5 value1 value2 = (output6660, value3334, value1) := by
  rw [input6660_def, output6660_def]
  try (conv => lhs; cbv)
  try rfl

def value3335 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16237, 16225)])).val
theorem input6661_def : input6661 = (Flapjack.WordLangProgHOL.move 0 [(16237, 16225)]) := by
  unfold input6661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16237, 16225)])).val
theorem output6661_def : output6661 = (Flapjack.WordLangProgHOL.move 0 [(16237, 16225)]) := by
  unfold output6661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6661_skip : Flapjack.WordAlloc.isSkip output6661 = false := by
  rw [output6661_def]
  conv => lhs; cbv
  try rfl
theorem node6661_eq : Flapjack.WordAlloc.removeDeadStructural input6661 value3334 value1 value2 = (output6661, value3335, value1) := by
  rw [input6661_def, output6661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6661 input6660)).val
theorem input6662_def : input6662 = (.seq input6661 input6660) := by
  unfold input6662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6661 output6660)).val
theorem output6662_def : output6662 = (.seq output6661 output6660) := by
  unfold output6662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6662_skip : Flapjack.WordAlloc.isSkip output6662 = false := by
  rw [output6662_def]
  conv => lhs; cbv
  try rfl
theorem node6662_eq : Flapjack.WordAlloc.removeDeadStructural input6662 value5 value1 value2 = (output6662, value3335, value1) := by
  rw [input6662_def, output6662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6660_eq]
  dsimp only
  rw [node6661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3336 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16233 6924968209373727718#64))).val
theorem input6663_def : input6663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16233 6924968209373727718#64)) := by
  unfold input6663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16233 6924968209373727718#64))).val
theorem output6663_def : output6663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16233 6924968209373727718#64)) := by
  unfold output6663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6663_skip : Flapjack.WordAlloc.isSkip output6663 = false := by
  rw [output6663_def]
  conv => lhs; cbv
  try rfl
theorem node6663_eq : Flapjack.WordAlloc.removeDeadStructural input6663 value3335 value1 value2 = (output6663, value3336, value1) := by
  rw [input6663_def, output6663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16229 6924968209373727718#64))).val
theorem input6664_def : input6664 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16229 6924968209373727718#64)) := by
  unfold input6664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6664_def : output6664 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6664_skip : Flapjack.WordAlloc.isSkip output6664 = true := by
  rw [output6664_def]
  conv => lhs; cbv
  try rfl
theorem node6664_eq : Flapjack.WordAlloc.removeDeadStructural input6664 value3336 value1 value2 = (output6664, value3336, value1) := by
  rw [input6664_def, output6664_def]
  try (conv => lhs; cbv)
  try rfl

def value3337 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16225 16217 (Flapjack.WordRegImm.reg 16221))))).val
theorem input6665_def : input6665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16225 16217 (Flapjack.WordRegImm.reg 16221)))) := by
  unfold input6665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16225 16217 (Flapjack.WordRegImm.reg 16221))))).val
theorem output6665_def : output6665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16225 16217 (Flapjack.WordRegImm.reg 16221)))) := by
  unfold output6665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6665_skip : Flapjack.WordAlloc.isSkip output6665 = false := by
  rw [output6665_def]
  conv => lhs; cbv
  try rfl
theorem node6665_eq : Flapjack.WordAlloc.removeDeadStructural input6665 value3336 value1 value2 = (output6665, value3337, value1) := by
  rw [input6665_def, output6665_def]
  try (conv => lhs; cbv)
  try rfl

def value3338 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16221 3800#64))).val
theorem input6666_def : input6666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16221 3800#64)) := by
  unfold input6666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16221 3800#64))).val
theorem output6666_def : output6666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16221 3800#64)) := by
  unfold output6666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6666_skip : Flapjack.WordAlloc.isSkip output6666 = false := by
  rw [output6666_def]
  conv => lhs; cbv
  try rfl
theorem node6666_eq : Flapjack.WordAlloc.removeDeadStructural input6666 value3337 value1 value2 = (output6666, value3338, value1) := by
  rw [input6666_def, output6666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6666 input6665)).val
theorem input6667_def : input6667 = (.seq input6666 input6665) := by
  unfold input6667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6666 output6665)).val
theorem output6667_def : output6667 = (.seq output6666 output6665) := by
  unfold output6667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6667_skip : Flapjack.WordAlloc.isSkip output6667 = false := by
  rw [output6667_def]
  conv => lhs; cbv
  try rfl
theorem node6667_eq : Flapjack.WordAlloc.removeDeadStructural input6667 value3336 value1 value2 = (output6667, value3338, value1) := by
  rw [input6667_def, output6667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6665_eq]
  dsimp only
  rw [node6666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3339 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16217 (Flapjack.WordLangAddr.addr 16213 18446744073709551104#64)))).val
theorem input6668_def : input6668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16217 (Flapjack.WordLangAddr.addr 16213 18446744073709551104#64))) := by
  unfold input6668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16217 (Flapjack.WordLangAddr.addr 16213 18446744073709551104#64)))).val
theorem output6668_def : output6668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16217 (Flapjack.WordLangAddr.addr 16213 18446744073709551104#64))) := by
  unfold output6668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6668_skip : Flapjack.WordAlloc.isSkip output6668 = false := by
  rw [output6668_def]
  conv => lhs; cbv
  try rfl
theorem node6668_eq : Flapjack.WordAlloc.removeDeadStructural input6668 value3338 value1 value2 = (output6668, value3339, value1) := by
  rw [input6668_def, output6668_def]
  try (conv => lhs; cbv)
  try rfl

def value3340 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16213 16209)).val
theorem input6669_def : input6669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16213 16209) := by
  unfold input6669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16213 16209)).val
theorem output6669_def : output6669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16213 16209) := by
  unfold output6669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6669_skip : Flapjack.WordAlloc.isSkip output6669 = false := by
  rw [output6669_def]
  conv => lhs; cbv
  try rfl
theorem node6669_eq : Flapjack.WordAlloc.removeDeadStructural input6669 value3339 value1 value2 = (output6669, value3340, value1) := by
  rw [input6669_def, output6669_def]
  try (conv => lhs; cbv)
  try rfl

def value3341 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16209 16205 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6670_def : input6670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16209 16205 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16209 16205 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6670_def : output6670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16209 16205 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6670_skip : Flapjack.WordAlloc.isSkip output6670 = false := by
  rw [output6670_def]
  conv => lhs; cbv
  try rfl
theorem node6670_eq : Flapjack.WordAlloc.removeDeadStructural input6670 value3340 value1 value2 = (output6670, value3341, value1) := by
  rw [input6670_def, output6670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16205 Flapjack.WordStore.heapLength)).val
theorem input6671_def : input6671 = (Flapjack.WordLangProgHOL.get 16205 Flapjack.WordStore.heapLength) := by
  unfold input6671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16205 Flapjack.WordStore.heapLength)).val
theorem output6671_def : output6671 = (Flapjack.WordLangProgHOL.get 16205 Flapjack.WordStore.heapLength) := by
  unfold output6671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6671_skip : Flapjack.WordAlloc.isSkip output6671 = false := by
  rw [output6671_def]
  conv => lhs; cbv
  try rfl
theorem node6671_eq : Flapjack.WordAlloc.removeDeadStructural input6671 value3341 value1 value2 = (output6671, value5, value1) := by
  rw [input6671_def, output6671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6671 input6670)).val
theorem input6672_def : input6672 = (.seq input6671 input6670) := by
  unfold input6672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6671 output6670)).val
theorem output6672_def : output6672 = (.seq output6671 output6670) := by
  unfold output6672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6672_skip : Flapjack.WordAlloc.isSkip output6672 = false := by
  rw [output6672_def]
  conv => lhs; cbv
  try rfl
theorem node6672_eq : Flapjack.WordAlloc.removeDeadStructural input6672 value3340 value1 value2 = (output6672, value5, value1) := by
  rw [input6672_def, output6672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6670_eq]
  dsimp only
  rw [node6671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6672 input6669)).val
theorem input6673_def : input6673 = (.seq input6672 input6669) := by
  unfold input6673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6672 output6669)).val
theorem output6673_def : output6673 = (.seq output6672 output6669) := by
  unfold output6673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6673_skip : Flapjack.WordAlloc.isSkip output6673 = false := by
  rw [output6673_def]
  conv => lhs; cbv
  try rfl
theorem node6673_eq : Flapjack.WordAlloc.removeDeadStructural input6673 value3339 value1 value2 = (output6673, value5, value1) := by
  rw [input6673_def, output6673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6669_eq]
  dsimp only
  rw [node6672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6673 input6668)).val
theorem input6674_def : input6674 = (.seq input6673 input6668) := by
  unfold input6674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6673 output6668)).val
theorem output6674_def : output6674 = (.seq output6673 output6668) := by
  unfold output6674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6674_skip : Flapjack.WordAlloc.isSkip output6674 = false := by
  rw [output6674_def]
  conv => lhs; cbv
  try rfl
theorem node6674_eq : Flapjack.WordAlloc.removeDeadStructural input6674 value3338 value1 value2 = (output6674, value5, value1) := by
  rw [input6674_def, output6674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6668_eq]
  dsimp only
  rw [node6673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6674 input6667)).val
theorem input6675_def : input6675 = (.seq input6674 input6667) := by
  unfold input6675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6674 output6667)).val
theorem output6675_def : output6675 = (.seq output6674 output6667) := by
  unfold output6675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6675_skip : Flapjack.WordAlloc.isSkip output6675 = false := by
  rw [output6675_def]
  conv => lhs; cbv
  try rfl
theorem node6675_eq : Flapjack.WordAlloc.removeDeadStructural input6675 value3336 value1 value2 = (output6675, value5, value1) := by
  rw [input6675_def, output6675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6667_eq]
  dsimp only
  rw [node6674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3342 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16197 (Flapjack.WordLangAddr.addr 16201 0#64)))).val
theorem input6676_def : input6676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16197 (Flapjack.WordLangAddr.addr 16201 0#64))) := by
  unfold input6676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16197 (Flapjack.WordLangAddr.addr 16201 0#64)))).val
theorem output6676_def : output6676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16197 (Flapjack.WordLangAddr.addr 16201 0#64))) := by
  unfold output6676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6676_skip : Flapjack.WordAlloc.isSkip output6676 = false := by
  rw [output6676_def]
  conv => lhs; cbv
  try rfl
theorem node6676_eq : Flapjack.WordAlloc.removeDeadStructural input6676 value5 value1 value2 = (output6676, value3342, value1) := by
  rw [input6676_def, output6676_def]
  try (conv => lhs; cbv)
  try rfl

def value3343 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16201, 16189)])).val
theorem input6677_def : input6677 = (Flapjack.WordLangProgHOL.move 0 [(16201, 16189)]) := by
  unfold input6677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16201, 16189)])).val
theorem output6677_def : output6677 = (Flapjack.WordLangProgHOL.move 0 [(16201, 16189)]) := by
  unfold output6677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6677_skip : Flapjack.WordAlloc.isSkip output6677 = false := by
  rw [output6677_def]
  conv => lhs; cbv
  try rfl
theorem node6677_eq : Flapjack.WordAlloc.removeDeadStructural input6677 value3342 value1 value2 = (output6677, value3343, value1) := by
  rw [input6677_def, output6677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6677 input6676)).val
theorem input6678_def : input6678 = (.seq input6677 input6676) := by
  unfold input6678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6677 output6676)).val
theorem output6678_def : output6678 = (.seq output6677 output6676) := by
  unfold output6678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6678_skip : Flapjack.WordAlloc.isSkip output6678 = false := by
  rw [output6678_def]
  conv => lhs; cbv
  try rfl
theorem node6678_eq : Flapjack.WordAlloc.removeDeadStructural input6678 value5 value1 value2 = (output6678, value3343, value1) := by
  rw [input6678_def, output6678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6676_eq]
  dsimp only
  rw [node6677_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3344 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16197 17204633670617869946#64))).val
theorem input6679_def : input6679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16197 17204633670617869946#64)) := by
  unfold input6679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16197 17204633670617869946#64))).val
theorem output6679_def : output6679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16197 17204633670617869946#64)) := by
  unfold output6679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6679_skip : Flapjack.WordAlloc.isSkip output6679 = false := by
  rw [output6679_def]
  conv => lhs; cbv
  try rfl
theorem node6679_eq : Flapjack.WordAlloc.removeDeadStructural input6679 value3343 value1 value2 = (output6679, value3344, value1) := by
  rw [input6679_def, output6679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16193 17204633670617869946#64))).val
theorem input6680_def : input6680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16193 17204633670617869946#64)) := by
  unfold input6680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6680_def : output6680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6680_skip : Flapjack.WordAlloc.isSkip output6680 = true := by
  rw [output6680_def]
  conv => lhs; cbv
  try rfl
theorem node6680_eq : Flapjack.WordAlloc.removeDeadStructural input6680 value3344 value1 value2 = (output6680, value3344, value1) := by
  rw [input6680_def, output6680_def]
  try (conv => lhs; cbv)
  try rfl

def value3345 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16189 16181 (Flapjack.WordRegImm.reg 16185))))).val
theorem input6681_def : input6681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16189 16181 (Flapjack.WordRegImm.reg 16185)))) := by
  unfold input6681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16189 16181 (Flapjack.WordRegImm.reg 16185))))).val
theorem output6681_def : output6681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16189 16181 (Flapjack.WordRegImm.reg 16185)))) := by
  unfold output6681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6681_skip : Flapjack.WordAlloc.isSkip output6681 = false := by
  rw [output6681_def]
  conv => lhs; cbv
  try rfl
theorem node6681_eq : Flapjack.WordAlloc.removeDeadStructural input6681 value3344 value1 value2 = (output6681, value3345, value1) := by
  rw [input6681_def, output6681_def]
  try (conv => lhs; cbv)
  try rfl

def value3346 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16185 3792#64))).val
theorem input6682_def : input6682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16185 3792#64)) := by
  unfold input6682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16185 3792#64))).val
theorem output6682_def : output6682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16185 3792#64)) := by
  unfold output6682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6682_skip : Flapjack.WordAlloc.isSkip output6682 = false := by
  rw [output6682_def]
  conv => lhs; cbv
  try rfl
theorem node6682_eq : Flapjack.WordAlloc.removeDeadStructural input6682 value3345 value1 value2 = (output6682, value3346, value1) := by
  rw [input6682_def, output6682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6682 input6681)).val
theorem input6683_def : input6683 = (.seq input6682 input6681) := by
  unfold input6683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6682 output6681)).val
theorem output6683_def : output6683 = (.seq output6682 output6681) := by
  unfold output6683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6683_skip : Flapjack.WordAlloc.isSkip output6683 = false := by
  rw [output6683_def]
  conv => lhs; cbv
  try rfl
theorem node6683_eq : Flapjack.WordAlloc.removeDeadStructural input6683 value3344 value1 value2 = (output6683, value3346, value1) := by
  rw [input6683_def, output6683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6681_eq]
  dsimp only
  rw [node6682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3347 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16181 (Flapjack.WordLangAddr.addr 16177 18446744073709551104#64)))).val
theorem input6684_def : input6684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16181 (Flapjack.WordLangAddr.addr 16177 18446744073709551104#64))) := by
  unfold input6684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16181 (Flapjack.WordLangAddr.addr 16177 18446744073709551104#64)))).val
theorem output6684_def : output6684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16181 (Flapjack.WordLangAddr.addr 16177 18446744073709551104#64))) := by
  unfold output6684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6684_skip : Flapjack.WordAlloc.isSkip output6684 = false := by
  rw [output6684_def]
  conv => lhs; cbv
  try rfl
theorem node6684_eq : Flapjack.WordAlloc.removeDeadStructural input6684 value3346 value1 value2 = (output6684, value3347, value1) := by
  rw [input6684_def, output6684_def]
  try (conv => lhs; cbv)
  try rfl

def value3348 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16177 16173)).val
theorem input6685_def : input6685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16177 16173) := by
  unfold input6685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16177 16173)).val
theorem output6685_def : output6685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16177 16173) := by
  unfold output6685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6685_skip : Flapjack.WordAlloc.isSkip output6685 = false := by
  rw [output6685_def]
  conv => lhs; cbv
  try rfl
theorem node6685_eq : Flapjack.WordAlloc.removeDeadStructural input6685 value3347 value1 value2 = (output6685, value3348, value1) := by
  rw [input6685_def, output6685_def]
  try (conv => lhs; cbv)
  try rfl

def value3349 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16173 16169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6686_def : input6686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16173 16169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16173 16169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6686_def : output6686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16173 16169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6686_skip : Flapjack.WordAlloc.isSkip output6686 = false := by
  rw [output6686_def]
  conv => lhs; cbv
  try rfl
theorem node6686_eq : Flapjack.WordAlloc.removeDeadStructural input6686 value3348 value1 value2 = (output6686, value3349, value1) := by
  rw [input6686_def, output6686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16169 Flapjack.WordStore.heapLength)).val
theorem input6687_def : input6687 = (Flapjack.WordLangProgHOL.get 16169 Flapjack.WordStore.heapLength) := by
  unfold input6687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16169 Flapjack.WordStore.heapLength)).val
theorem output6687_def : output6687 = (Flapjack.WordLangProgHOL.get 16169 Flapjack.WordStore.heapLength) := by
  unfold output6687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6687_skip : Flapjack.WordAlloc.isSkip output6687 = false := by
  rw [output6687_def]
  conv => lhs; cbv
  try rfl
theorem node6687_eq : Flapjack.WordAlloc.removeDeadStructural input6687 value3349 value1 value2 = (output6687, value5, value1) := by
  rw [input6687_def, output6687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6687 input6686)).val
theorem input6688_def : input6688 = (.seq input6687 input6686) := by
  unfold input6688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6687 output6686)).val
theorem output6688_def : output6688 = (.seq output6687 output6686) := by
  unfold output6688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6688_skip : Flapjack.WordAlloc.isSkip output6688 = false := by
  rw [output6688_def]
  conv => lhs; cbv
  try rfl
theorem node6688_eq : Flapjack.WordAlloc.removeDeadStructural input6688 value3348 value1 value2 = (output6688, value5, value1) := by
  rw [input6688_def, output6688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6686_eq]
  dsimp only
  rw [node6687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6688 input6685)).val
theorem input6689_def : input6689 = (.seq input6688 input6685) := by
  unfold input6689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6688 output6685)).val
theorem output6689_def : output6689 = (.seq output6688 output6685) := by
  unfold output6689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6689_skip : Flapjack.WordAlloc.isSkip output6689 = false := by
  rw [output6689_def]
  conv => lhs; cbv
  try rfl
theorem node6689_eq : Flapjack.WordAlloc.removeDeadStructural input6689 value3347 value1 value2 = (output6689, value5, value1) := by
  rw [input6689_def, output6689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6685_eq]
  dsimp only
  rw [node6688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6689 input6684)).val
theorem input6690_def : input6690 = (.seq input6689 input6684) := by
  unfold input6690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6689 output6684)).val
theorem output6690_def : output6690 = (.seq output6689 output6684) := by
  unfold output6690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6690_skip : Flapjack.WordAlloc.isSkip output6690 = false := by
  rw [output6690_def]
  conv => lhs; cbv
  try rfl
theorem node6690_eq : Flapjack.WordAlloc.removeDeadStructural input6690 value3346 value1 value2 = (output6690, value5, value1) := by
  rw [input6690_def, output6690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6684_eq]
  dsimp only
  rw [node6689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6690 input6683)).val
theorem input6691_def : input6691 = (.seq input6690 input6683) := by
  unfold input6691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6690 output6683)).val
theorem output6691_def : output6691 = (.seq output6690 output6683) := by
  unfold output6691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6691_skip : Flapjack.WordAlloc.isSkip output6691 = false := by
  rw [output6691_def]
  conv => lhs; cbv
  try rfl
theorem node6691_eq : Flapjack.WordAlloc.removeDeadStructural input6691 value3344 value1 value2 = (output6691, value5, value1) := by
  rw [input6691_def, output6691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6683_eq]
  dsimp only
  rw [node6690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3350 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16161 (Flapjack.WordLangAddr.addr 16165 0#64)))).val
theorem input6692_def : input6692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16161 (Flapjack.WordLangAddr.addr 16165 0#64))) := by
  unfold input6692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16161 (Flapjack.WordLangAddr.addr 16165 0#64)))).val
theorem output6692_def : output6692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16161 (Flapjack.WordLangAddr.addr 16165 0#64))) := by
  unfold output6692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6692_skip : Flapjack.WordAlloc.isSkip output6692 = false := by
  rw [output6692_def]
  conv => lhs; cbv
  try rfl
theorem node6692_eq : Flapjack.WordAlloc.removeDeadStructural input6692 value5 value1 value2 = (output6692, value3350, value1) := by
  rw [input6692_def, output6692_def]
  try (conv => lhs; cbv)
  try rfl

def value3351 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16165, 16153)])).val
theorem input6693_def : input6693 = (Flapjack.WordLangProgHOL.move 0 [(16165, 16153)]) := by
  unfold input6693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16165, 16153)])).val
theorem output6693_def : output6693 = (Flapjack.WordLangProgHOL.move 0 [(16165, 16153)]) := by
  unfold output6693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6693_skip : Flapjack.WordAlloc.isSkip output6693 = false := by
  rw [output6693_def]
  conv => lhs; cbv
  try rfl
theorem node6693_eq : Flapjack.WordAlloc.removeDeadStructural input6693 value3350 value1 value2 = (output6693, value3351, value1) := by
  rw [input6693_def, output6693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6693 input6692)).val
theorem input6694_def : input6694 = (.seq input6693 input6692) := by
  unfold input6694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6693 output6692)).val
theorem output6694_def : output6694 = (.seq output6693 output6692) := by
  unfold output6694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6694_skip : Flapjack.WordAlloc.isSkip output6694 = false := by
  rw [output6694_def]
  conv => lhs; cbv
  try rfl
theorem node6694_eq : Flapjack.WordAlloc.removeDeadStructural input6694 value5 value1 value2 = (output6694, value3351, value1) := by
  rw [input6694_def, output6694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6692_eq]
  dsimp only
  rw [node6693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3352 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16161 572916540828819565#64))).val
theorem input6695_def : input6695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16161 572916540828819565#64)) := by
  unfold input6695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16161 572916540828819565#64))).val
theorem output6695_def : output6695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16161 572916540828819565#64)) := by
  unfold output6695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6695_skip : Flapjack.WordAlloc.isSkip output6695 = false := by
  rw [output6695_def]
  conv => lhs; cbv
  try rfl
theorem node6695_eq : Flapjack.WordAlloc.removeDeadStructural input6695 value3351 value1 value2 = (output6695, value3352, value1) := by
  rw [input6695_def, output6695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16157 572916540828819565#64))).val
theorem input6696_def : input6696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16157 572916540828819565#64)) := by
  unfold input6696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6696_def : output6696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6696_skip : Flapjack.WordAlloc.isSkip output6696 = true := by
  rw [output6696_def]
  conv => lhs; cbv
  try rfl
theorem node6696_eq : Flapjack.WordAlloc.removeDeadStructural input6696 value3352 value1 value2 = (output6696, value3352, value1) := by
  rw [input6696_def, output6696_def]
  try (conv => lhs; cbv)
  try rfl

def value3353 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16153 16145 (Flapjack.WordRegImm.reg 16149))))).val
theorem input6697_def : input6697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16153 16145 (Flapjack.WordRegImm.reg 16149)))) := by
  unfold input6697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16153 16145 (Flapjack.WordRegImm.reg 16149))))).val
theorem output6697_def : output6697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16153 16145 (Flapjack.WordRegImm.reg 16149)))) := by
  unfold output6697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6697_skip : Flapjack.WordAlloc.isSkip output6697 = false := by
  rw [output6697_def]
  conv => lhs; cbv
  try rfl
theorem node6697_eq : Flapjack.WordAlloc.removeDeadStructural input6697 value3352 value1 value2 = (output6697, value3353, value1) := by
  rw [input6697_def, output6697_def]
  try (conv => lhs; cbv)
  try rfl

def value3354 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16149 3784#64))).val
theorem input6698_def : input6698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16149 3784#64)) := by
  unfold input6698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16149 3784#64))).val
theorem output6698_def : output6698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16149 3784#64)) := by
  unfold output6698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6698_skip : Flapjack.WordAlloc.isSkip output6698 = false := by
  rw [output6698_def]
  conv => lhs; cbv
  try rfl
theorem node6698_eq : Flapjack.WordAlloc.removeDeadStructural input6698 value3353 value1 value2 = (output6698, value3354, value1) := by
  rw [input6698_def, output6698_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6698 input6697)).val
theorem input6699_def : input6699 = (.seq input6698 input6697) := by
  unfold input6699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6698 output6697)).val
theorem output6699_def : output6699 = (.seq output6698 output6697) := by
  unfold output6699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6699_skip : Flapjack.WordAlloc.isSkip output6699 = false := by
  rw [output6699_def]
  conv => lhs; cbv
  try rfl
theorem node6699_eq : Flapjack.WordAlloc.removeDeadStructural input6699 value3352 value1 value2 = (output6699, value3354, value1) := by
  rw [input6699_def, output6699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6697_eq]
  dsimp only
  rw [node6698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3355 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16145 (Flapjack.WordLangAddr.addr 16141 18446744073709551104#64)))).val
theorem input6700_def : input6700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16145 (Flapjack.WordLangAddr.addr 16141 18446744073709551104#64))) := by
  unfold input6700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16145 (Flapjack.WordLangAddr.addr 16141 18446744073709551104#64)))).val
theorem output6700_def : output6700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16145 (Flapjack.WordLangAddr.addr 16141 18446744073709551104#64))) := by
  unfold output6700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6700_skip : Flapjack.WordAlloc.isSkip output6700 = false := by
  rw [output6700_def]
  conv => lhs; cbv
  try rfl
theorem node6700_eq : Flapjack.WordAlloc.removeDeadStructural input6700 value3354 value1 value2 = (output6700, value3355, value1) := by
  rw [input6700_def, output6700_def]
  try (conv => lhs; cbv)
  try rfl

def value3356 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16141 16137)).val
theorem input6701_def : input6701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16141 16137) := by
  unfold input6701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16141 16137)).val
theorem output6701_def : output6701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16141 16137) := by
  unfold output6701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6701_skip : Flapjack.WordAlloc.isSkip output6701 = false := by
  rw [output6701_def]
  conv => lhs; cbv
  try rfl
theorem node6701_eq : Flapjack.WordAlloc.removeDeadStructural input6701 value3355 value1 value2 = (output6701, value3356, value1) := by
  rw [input6701_def, output6701_def]
  try (conv => lhs; cbv)
  try rfl

def value3357 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16137 16133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6702_def : input6702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16137 16133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16137 16133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6702_def : output6702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16137 16133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6702_skip : Flapjack.WordAlloc.isSkip output6702 = false := by
  rw [output6702_def]
  conv => lhs; cbv
  try rfl
theorem node6702_eq : Flapjack.WordAlloc.removeDeadStructural input6702 value3356 value1 value2 = (output6702, value3357, value1) := by
  rw [input6702_def, output6702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16133 Flapjack.WordStore.heapLength)).val
theorem input6703_def : input6703 = (Flapjack.WordLangProgHOL.get 16133 Flapjack.WordStore.heapLength) := by
  unfold input6703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16133 Flapjack.WordStore.heapLength)).val
theorem output6703_def : output6703 = (Flapjack.WordLangProgHOL.get 16133 Flapjack.WordStore.heapLength) := by
  unfold output6703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6703_skip : Flapjack.WordAlloc.isSkip output6703 = false := by
  rw [output6703_def]
  conv => lhs; cbv
  try rfl
theorem node6703_eq : Flapjack.WordAlloc.removeDeadStructural input6703 value3357 value1 value2 = (output6703, value5, value1) := by
  rw [input6703_def, output6703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6703 input6702)).val
theorem input6704_def : input6704 = (.seq input6703 input6702) := by
  unfold input6704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6703 output6702)).val
theorem output6704_def : output6704 = (.seq output6703 output6702) := by
  unfold output6704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6704_skip : Flapjack.WordAlloc.isSkip output6704 = false := by
  rw [output6704_def]
  conv => lhs; cbv
  try rfl
theorem node6704_eq : Flapjack.WordAlloc.removeDeadStructural input6704 value3356 value1 value2 = (output6704, value5, value1) := by
  rw [input6704_def, output6704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6702_eq]
  dsimp only
  rw [node6703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6704 input6701)).val
theorem input6705_def : input6705 = (.seq input6704 input6701) := by
  unfold input6705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6704 output6701)).val
theorem output6705_def : output6705 = (.seq output6704 output6701) := by
  unfold output6705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6705_skip : Flapjack.WordAlloc.isSkip output6705 = false := by
  rw [output6705_def]
  conv => lhs; cbv
  try rfl
theorem node6705_eq : Flapjack.WordAlloc.removeDeadStructural input6705 value3355 value1 value2 = (output6705, value5, value1) := by
  rw [input6705_def, output6705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6701_eq]
  dsimp only
  rw [node6704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6705 input6700)).val
theorem input6706_def : input6706 = (.seq input6705 input6700) := by
  unfold input6706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6705 output6700)).val
theorem output6706_def : output6706 = (.seq output6705 output6700) := by
  unfold output6706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6706_skip : Flapjack.WordAlloc.isSkip output6706 = false := by
  rw [output6706_def]
  conv => lhs; cbv
  try rfl
theorem node6706_eq : Flapjack.WordAlloc.removeDeadStructural input6706 value3354 value1 value2 = (output6706, value5, value1) := by
  rw [input6706_def, output6706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6700_eq]
  dsimp only
  rw [node6705_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6706 input6699)).val
theorem input6707_def : input6707 = (.seq input6706 input6699) := by
  unfold input6707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6706 output6699)).val
theorem output6707_def : output6707 = (.seq output6706 output6699) := by
  unfold output6707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6707_skip : Flapjack.WordAlloc.isSkip output6707 = false := by
  rw [output6707_def]
  conv => lhs; cbv
  try rfl
theorem node6707_eq : Flapjack.WordAlloc.removeDeadStructural input6707 value3352 value1 value2 = (output6707, value5, value1) := by
  rw [input6707_def, output6707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6699_eq]
  dsimp only
  rw [node6706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3358 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16125 (Flapjack.WordLangAddr.addr 16129 0#64)))).val
theorem input6708_def : input6708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16125 (Flapjack.WordLangAddr.addr 16129 0#64))) := by
  unfold input6708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16125 (Flapjack.WordLangAddr.addr 16129 0#64)))).val
theorem output6708_def : output6708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16125 (Flapjack.WordLangAddr.addr 16129 0#64))) := by
  unfold output6708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6708_skip : Flapjack.WordAlloc.isSkip output6708 = false := by
  rw [output6708_def]
  conv => lhs; cbv
  try rfl
theorem node6708_eq : Flapjack.WordAlloc.removeDeadStructural input6708 value5 value1 value2 = (output6708, value3358, value1) := by
  rw [input6708_def, output6708_def]
  try (conv => lhs; cbv)
  try rfl

def value3359 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16129, 16117)])).val
theorem input6709_def : input6709 = (Flapjack.WordLangProgHOL.move 0 [(16129, 16117)]) := by
  unfold input6709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16129, 16117)])).val
theorem output6709_def : output6709 = (Flapjack.WordLangProgHOL.move 0 [(16129, 16117)]) := by
  unfold output6709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6709_skip : Flapjack.WordAlloc.isSkip output6709 = false := by
  rw [output6709_def]
  conv => lhs; cbv
  try rfl
theorem node6709_eq : Flapjack.WordAlloc.removeDeadStructural input6709 value3358 value1 value2 = (output6709, value3359, value1) := by
  rw [input6709_def, output6709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6709 input6708)).val
theorem input6710_def : input6710 = (.seq input6709 input6708) := by
  unfold input6710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6709 output6708)).val
theorem output6710_def : output6710 = (.seq output6709 output6708) := by
  unfold output6710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6710_skip : Flapjack.WordAlloc.isSkip output6710 = false := by
  rw [output6710_def]
  conv => lhs; cbv
  try rfl
theorem node6710_eq : Flapjack.WordAlloc.removeDeadStructural input6710 value5 value1 value2 = (output6710, value3359, value1) := by
  rw [input6710_def, output6710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6708_eq]
  dsimp only
  rw [node6709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3360 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16125 92203205520679873#64))).val
theorem input6711_def : input6711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16125 92203205520679873#64)) := by
  unfold input6711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16125 92203205520679873#64))).val
theorem output6711_def : output6711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16125 92203205520679873#64)) := by
  unfold output6711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6711_skip : Flapjack.WordAlloc.isSkip output6711 = false := by
  rw [output6711_def]
  conv => lhs; cbv
  try rfl
theorem node6711_eq : Flapjack.WordAlloc.removeDeadStructural input6711 value3359 value1 value2 = (output6711, value3360, value1) := by
  rw [input6711_def, output6711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16121 92203205520679873#64))).val
theorem input6712_def : input6712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16121 92203205520679873#64)) := by
  unfold input6712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6712_def : output6712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6712_skip : Flapjack.WordAlloc.isSkip output6712 = true := by
  rw [output6712_def]
  conv => lhs; cbv
  try rfl
theorem node6712_eq : Flapjack.WordAlloc.removeDeadStructural input6712 value3360 value1 value2 = (output6712, value3360, value1) := by
  rw [input6712_def, output6712_def]
  try (conv => lhs; cbv)
  try rfl

def value3361 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16117 16109 (Flapjack.WordRegImm.reg 16113))))).val
theorem input6713_def : input6713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16117 16109 (Flapjack.WordRegImm.reg 16113)))) := by
  unfold input6713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16117 16109 (Flapjack.WordRegImm.reg 16113))))).val
theorem output6713_def : output6713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16117 16109 (Flapjack.WordRegImm.reg 16113)))) := by
  unfold output6713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6713_skip : Flapjack.WordAlloc.isSkip output6713 = false := by
  rw [output6713_def]
  conv => lhs; cbv
  try rfl
theorem node6713_eq : Flapjack.WordAlloc.removeDeadStructural input6713 value3360 value1 value2 = (output6713, value3361, value1) := by
  rw [input6713_def, output6713_def]
  try (conv => lhs; cbv)
  try rfl

def value3362 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16113 3776#64))).val
theorem input6714_def : input6714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16113 3776#64)) := by
  unfold input6714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16113 3776#64))).val
theorem output6714_def : output6714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16113 3776#64)) := by
  unfold output6714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6714_skip : Flapjack.WordAlloc.isSkip output6714 = false := by
  rw [output6714_def]
  conv => lhs; cbv
  try rfl
theorem node6714_eq : Flapjack.WordAlloc.removeDeadStructural input6714 value3361 value1 value2 = (output6714, value3362, value1) := by
  rw [input6714_def, output6714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6714 input6713)).val
theorem input6715_def : input6715 = (.seq input6714 input6713) := by
  unfold input6715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6714 output6713)).val
theorem output6715_def : output6715 = (.seq output6714 output6713) := by
  unfold output6715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6715_skip : Flapjack.WordAlloc.isSkip output6715 = false := by
  rw [output6715_def]
  conv => lhs; cbv
  try rfl
theorem node6715_eq : Flapjack.WordAlloc.removeDeadStructural input6715 value3360 value1 value2 = (output6715, value3362, value1) := by
  rw [input6715_def, output6715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6713_eq]
  dsimp only
  rw [node6714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3363 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16109 (Flapjack.WordLangAddr.addr 16105 18446744073709551104#64)))).val
theorem input6716_def : input6716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16109 (Flapjack.WordLangAddr.addr 16105 18446744073709551104#64))) := by
  unfold input6716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16109 (Flapjack.WordLangAddr.addr 16105 18446744073709551104#64)))).val
theorem output6716_def : output6716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16109 (Flapjack.WordLangAddr.addr 16105 18446744073709551104#64))) := by
  unfold output6716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6716_skip : Flapjack.WordAlloc.isSkip output6716 = false := by
  rw [output6716_def]
  conv => lhs; cbv
  try rfl
theorem node6716_eq : Flapjack.WordAlloc.removeDeadStructural input6716 value3362 value1 value2 = (output6716, value3363, value1) := by
  rw [input6716_def, output6716_def]
  try (conv => lhs; cbv)
  try rfl

def value3364 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16105 16101)).val
theorem input6717_def : input6717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16105 16101) := by
  unfold input6717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16105 16101)).val
theorem output6717_def : output6717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16105 16101) := by
  unfold output6717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6717_skip : Flapjack.WordAlloc.isSkip output6717 = false := by
  rw [output6717_def]
  conv => lhs; cbv
  try rfl
theorem node6717_eq : Flapjack.WordAlloc.removeDeadStructural input6717 value3363 value1 value2 = (output6717, value3364, value1) := by
  rw [input6717_def, output6717_def]
  try (conv => lhs; cbv)
  try rfl

def value3365 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16101 16097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6718_def : input6718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16101 16097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16101 16097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6718_def : output6718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16101 16097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6718_skip : Flapjack.WordAlloc.isSkip output6718 = false := by
  rw [output6718_def]
  conv => lhs; cbv
  try rfl
theorem node6718_eq : Flapjack.WordAlloc.removeDeadStructural input6718 value3364 value1 value2 = (output6718, value3365, value1) := by
  rw [input6718_def, output6718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16097 Flapjack.WordStore.heapLength)).val
theorem input6719_def : input6719 = (Flapjack.WordLangProgHOL.get 16097 Flapjack.WordStore.heapLength) := by
  unfold input6719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16097 Flapjack.WordStore.heapLength)).val
theorem output6719_def : output6719 = (Flapjack.WordLangProgHOL.get 16097 Flapjack.WordStore.heapLength) := by
  unfold output6719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6719_skip : Flapjack.WordAlloc.isSkip output6719 = false := by
  rw [output6719_def]
  conv => lhs; cbv
  try rfl
theorem node6719_eq : Flapjack.WordAlloc.removeDeadStructural input6719 value3365 value1 value2 = (output6719, value5, value1) := by
  rw [input6719_def, output6719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6719 input6718)).val
theorem input6720_def : input6720 = (.seq input6719 input6718) := by
  unfold input6720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6719 output6718)).val
theorem output6720_def : output6720 = (.seq output6719 output6718) := by
  unfold output6720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6720_skip : Flapjack.WordAlloc.isSkip output6720 = false := by
  rw [output6720_def]
  conv => lhs; cbv
  try rfl
theorem node6720_eq : Flapjack.WordAlloc.removeDeadStructural input6720 value3364 value1 value2 = (output6720, value5, value1) := by
  rw [input6720_def, output6720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6718_eq]
  dsimp only
  rw [node6719_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6720 input6717)).val
theorem input6721_def : input6721 = (.seq input6720 input6717) := by
  unfold input6721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6720 output6717)).val
theorem output6721_def : output6721 = (.seq output6720 output6717) := by
  unfold output6721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6721_skip : Flapjack.WordAlloc.isSkip output6721 = false := by
  rw [output6721_def]
  conv => lhs; cbv
  try rfl
theorem node6721_eq : Flapjack.WordAlloc.removeDeadStructural input6721 value3363 value1 value2 = (output6721, value5, value1) := by
  rw [input6721_def, output6721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6717_eq]
  dsimp only
  rw [node6720_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6721 input6716)).val
theorem input6722_def : input6722 = (.seq input6721 input6716) := by
  unfold input6722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6721 output6716)).val
theorem output6722_def : output6722 = (.seq output6721 output6716) := by
  unfold output6722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6722_skip : Flapjack.WordAlloc.isSkip output6722 = false := by
  rw [output6722_def]
  conv => lhs; cbv
  try rfl
theorem node6722_eq : Flapjack.WordAlloc.removeDeadStructural input6722 value3362 value1 value2 = (output6722, value5, value1) := by
  rw [input6722_def, output6722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6716_eq]
  dsimp only
  rw [node6721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6722 input6715)).val
theorem input6723_def : input6723 = (.seq input6722 input6715) := by
  unfold input6723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6722 output6715)).val
theorem output6723_def : output6723 = (.seq output6722 output6715) := by
  unfold output6723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6723_skip : Flapjack.WordAlloc.isSkip output6723 = false := by
  rw [output6723_def]
  conv => lhs; cbv
  try rfl
theorem node6723_eq : Flapjack.WordAlloc.removeDeadStructural input6723 value3360 value1 value2 = (output6723, value5, value1) := by
  rw [input6723_def, output6723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6715_eq]
  dsimp only
  rw [node6722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3366 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16089 (Flapjack.WordLangAddr.addr 16093 0#64)))).val
theorem input6724_def : input6724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16089 (Flapjack.WordLangAddr.addr 16093 0#64))) := by
  unfold input6724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16089 (Flapjack.WordLangAddr.addr 16093 0#64)))).val
theorem output6724_def : output6724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16089 (Flapjack.WordLangAddr.addr 16093 0#64))) := by
  unfold output6724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6724_skip : Flapjack.WordAlloc.isSkip output6724 = false := by
  rw [output6724_def]
  conv => lhs; cbv
  try rfl
theorem node6724_eq : Flapjack.WordAlloc.removeDeadStructural input6724 value5 value1 value2 = (output6724, value3366, value1) := by
  rw [input6724_def, output6724_def]
  try (conv => lhs; cbv)
  try rfl

def value3367 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16093, 16081)])).val
theorem input6725_def : input6725 = (Flapjack.WordLangProgHOL.move 0 [(16093, 16081)]) := by
  unfold input6725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16093, 16081)])).val
theorem output6725_def : output6725 = (Flapjack.WordLangProgHOL.move 0 [(16093, 16081)]) := by
  unfold output6725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6725_skip : Flapjack.WordAlloc.isSkip output6725 = false := by
  rw [output6725_def]
  conv => lhs; cbv
  try rfl
theorem node6725_eq : Flapjack.WordAlloc.removeDeadStructural input6725 value3366 value1 value2 = (output6725, value3367, value1) := by
  rw [input6725_def, output6725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6725 input6724)).val
theorem input6726_def : input6726 = (.seq input6725 input6724) := by
  unfold input6726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6725 output6724)).val
theorem output6726_def : output6726 = (.seq output6725 output6724) := by
  unfold output6726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6726_skip : Flapjack.WordAlloc.isSkip output6726 = false := by
  rw [output6726_def]
  conv => lhs; cbv
  try rfl
theorem node6726_eq : Flapjack.WordAlloc.removeDeadStructural input6726 value5 value1 value2 = (output6726, value3367, value1) := by
  rw [input6726_def, output6726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6724_eq]
  dsimp only
  rw [node6725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3368 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16089 1578157964224562126#64))).val
theorem input6727_def : input6727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16089 1578157964224562126#64)) := by
  unfold input6727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16089 1578157964224562126#64))).val
theorem output6727_def : output6727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16089 1578157964224562126#64)) := by
  unfold output6727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6727_skip : Flapjack.WordAlloc.isSkip output6727 = false := by
  rw [output6727_def]
  conv => lhs; cbv
  try rfl
theorem node6727_eq : Flapjack.WordAlloc.removeDeadStructural input6727 value3367 value1 value2 = (output6727, value3368, value1) := by
  rw [input6727_def, output6727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16085 1578157964224562126#64))).val
theorem input6728_def : input6728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16085 1578157964224562126#64)) := by
  unfold input6728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6728_def : output6728 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6728_skip : Flapjack.WordAlloc.isSkip output6728 = true := by
  rw [output6728_def]
  conv => lhs; cbv
  try rfl
theorem node6728_eq : Flapjack.WordAlloc.removeDeadStructural input6728 value3368 value1 value2 = (output6728, value3368, value1) := by
  rw [input6728_def, output6728_def]
  try (conv => lhs; cbv)
  try rfl

def value3369 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16081 16073 (Flapjack.WordRegImm.reg 16077))))).val
theorem input6729_def : input6729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16081 16073 (Flapjack.WordRegImm.reg 16077)))) := by
  unfold input6729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16081 16073 (Flapjack.WordRegImm.reg 16077))))).val
theorem output6729_def : output6729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16081 16073 (Flapjack.WordRegImm.reg 16077)))) := by
  unfold output6729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6729_skip : Flapjack.WordAlloc.isSkip output6729 = false := by
  rw [output6729_def]
  conv => lhs; cbv
  try rfl
theorem node6729_eq : Flapjack.WordAlloc.removeDeadStructural input6729 value3368 value1 value2 = (output6729, value3369, value1) := by
  rw [input6729_def, output6729_def]
  try (conv => lhs; cbv)
  try rfl

def value3370 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16077 3768#64))).val
theorem input6730_def : input6730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16077 3768#64)) := by
  unfold input6730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16077 3768#64))).val
theorem output6730_def : output6730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16077 3768#64)) := by
  unfold output6730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6730_skip : Flapjack.WordAlloc.isSkip output6730 = false := by
  rw [output6730_def]
  conv => lhs; cbv
  try rfl
theorem node6730_eq : Flapjack.WordAlloc.removeDeadStructural input6730 value3369 value1 value2 = (output6730, value3370, value1) := by
  rw [input6730_def, output6730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6730 input6729)).val
theorem input6731_def : input6731 = (.seq input6730 input6729) := by
  unfold input6731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6730 output6729)).val
theorem output6731_def : output6731 = (.seq output6730 output6729) := by
  unfold output6731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6731_skip : Flapjack.WordAlloc.isSkip output6731 = false := by
  rw [output6731_def]
  conv => lhs; cbv
  try rfl
theorem node6731_eq : Flapjack.WordAlloc.removeDeadStructural input6731 value3368 value1 value2 = (output6731, value3370, value1) := by
  rw [input6731_def, output6731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6729_eq]
  dsimp only
  rw [node6730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3371 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16073 (Flapjack.WordLangAddr.addr 16069 18446744073709551104#64)))).val
theorem input6732_def : input6732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16073 (Flapjack.WordLangAddr.addr 16069 18446744073709551104#64))) := by
  unfold input6732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16073 (Flapjack.WordLangAddr.addr 16069 18446744073709551104#64)))).val
theorem output6732_def : output6732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16073 (Flapjack.WordLangAddr.addr 16069 18446744073709551104#64))) := by
  unfold output6732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6732_skip : Flapjack.WordAlloc.isSkip output6732 = false := by
  rw [output6732_def]
  conv => lhs; cbv
  try rfl
theorem node6732_eq : Flapjack.WordAlloc.removeDeadStructural input6732 value3370 value1 value2 = (output6732, value3371, value1) := by
  rw [input6732_def, output6732_def]
  try (conv => lhs; cbv)
  try rfl

def value3372 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16069 16065)).val
theorem input6733_def : input6733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16069 16065) := by
  unfold input6733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16069 16065)).val
theorem output6733_def : output6733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16069 16065) := by
  unfold output6733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6733_skip : Flapjack.WordAlloc.isSkip output6733 = false := by
  rw [output6733_def]
  conv => lhs; cbv
  try rfl
theorem node6733_eq : Flapjack.WordAlloc.removeDeadStructural input6733 value3371 value1 value2 = (output6733, value3372, value1) := by
  rw [input6733_def, output6733_def]
  try (conv => lhs; cbv)
  try rfl

def value3373 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16065 16061 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6734_def : input6734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16065 16061 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16065 16061 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6734_def : output6734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16065 16061 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6734_skip : Flapjack.WordAlloc.isSkip output6734 = false := by
  rw [output6734_def]
  conv => lhs; cbv
  try rfl
theorem node6734_eq : Flapjack.WordAlloc.removeDeadStructural input6734 value3372 value1 value2 = (output6734, value3373, value1) := by
  rw [input6734_def, output6734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16061 Flapjack.WordStore.heapLength)).val
theorem input6735_def : input6735 = (Flapjack.WordLangProgHOL.get 16061 Flapjack.WordStore.heapLength) := by
  unfold input6735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16061 Flapjack.WordStore.heapLength)).val
theorem output6735_def : output6735 = (Flapjack.WordLangProgHOL.get 16061 Flapjack.WordStore.heapLength) := by
  unfold output6735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6735_skip : Flapjack.WordAlloc.isSkip output6735 = false := by
  rw [output6735_def]
  conv => lhs; cbv
  try rfl
theorem node6735_eq : Flapjack.WordAlloc.removeDeadStructural input6735 value3373 value1 value2 = (output6735, value5, value1) := by
  rw [input6735_def, output6735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6735 input6734)).val
theorem input6736_def : input6736 = (.seq input6735 input6734) := by
  unfold input6736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6735 output6734)).val
theorem output6736_def : output6736 = (.seq output6735 output6734) := by
  unfold output6736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6736_skip : Flapjack.WordAlloc.isSkip output6736 = false := by
  rw [output6736_def]
  conv => lhs; cbv
  try rfl
theorem node6736_eq : Flapjack.WordAlloc.removeDeadStructural input6736 value3372 value1 value2 = (output6736, value5, value1) := by
  rw [input6736_def, output6736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6734_eq]
  dsimp only
  rw [node6735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6736 input6733)).val
theorem input6737_def : input6737 = (.seq input6736 input6733) := by
  unfold input6737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6736 output6733)).val
theorem output6737_def : output6737 = (.seq output6736 output6733) := by
  unfold output6737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6737_skip : Flapjack.WordAlloc.isSkip output6737 = false := by
  rw [output6737_def]
  conv => lhs; cbv
  try rfl
theorem node6737_eq : Flapjack.WordAlloc.removeDeadStructural input6737 value3371 value1 value2 = (output6737, value5, value1) := by
  rw [input6737_def, output6737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6733_eq]
  dsimp only
  rw [node6736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6737 input6732)).val
theorem input6738_def : input6738 = (.seq input6737 input6732) := by
  unfold input6738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6737 output6732)).val
theorem output6738_def : output6738 = (.seq output6737 output6732) := by
  unfold output6738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6738_skip : Flapjack.WordAlloc.isSkip output6738 = false := by
  rw [output6738_def]
  conv => lhs; cbv
  try rfl
theorem node6738_eq : Flapjack.WordAlloc.removeDeadStructural input6738 value3370 value1 value2 = (output6738, value5, value1) := by
  rw [input6738_def, output6738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6732_eq]
  dsimp only
  rw [node6737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6738 input6731)).val
theorem input6739_def : input6739 = (.seq input6738 input6731) := by
  unfold input6739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6738 output6731)).val
theorem output6739_def : output6739 = (.seq output6738 output6731) := by
  unfold output6739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6739_skip : Flapjack.WordAlloc.isSkip output6739 = false := by
  rw [output6739_def]
  conv => lhs; cbv
  try rfl
theorem node6739_eq : Flapjack.WordAlloc.removeDeadStructural input6739 value3368 value1 value2 = (output6739, value5, value1) := by
  rw [input6739_def, output6739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6731_eq]
  dsimp only
  rw [node6738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3374 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16053 (Flapjack.WordLangAddr.addr 16057 0#64)))).val
theorem input6740_def : input6740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16053 (Flapjack.WordLangAddr.addr 16057 0#64))) := by
  unfold input6740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16053 (Flapjack.WordLangAddr.addr 16057 0#64)))).val
theorem output6740_def : output6740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16053 (Flapjack.WordLangAddr.addr 16057 0#64))) := by
  unfold output6740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6740_skip : Flapjack.WordAlloc.isSkip output6740 = false := by
  rw [output6740_def]
  conv => lhs; cbv
  try rfl
theorem node6740_eq : Flapjack.WordAlloc.removeDeadStructural input6740 value5 value1 value2 = (output6740, value3374, value1) := by
  rw [input6740_def, output6740_def]
  try (conv => lhs; cbv)
  try rfl

def value3375 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16057, 16045)])).val
theorem input6741_def : input6741 = (Flapjack.WordLangProgHOL.move 0 [(16057, 16045)]) := by
  unfold input6741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16057, 16045)])).val
theorem output6741_def : output6741 = (Flapjack.WordLangProgHOL.move 0 [(16057, 16045)]) := by
  unfold output6741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6741_skip : Flapjack.WordAlloc.isSkip output6741 = false := by
  rw [output6741_def]
  conv => lhs; cbv
  try rfl
theorem node6741_eq : Flapjack.WordAlloc.removeDeadStructural input6741 value3374 value1 value2 = (output6741, value3375, value1) := by
  rw [input6741_def, output6741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6741 input6740)).val
theorem input6742_def : input6742 = (.seq input6741 input6740) := by
  unfold input6742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6741 output6740)).val
theorem output6742_def : output6742 = (.seq output6741 output6740) := by
  unfold output6742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6742_skip : Flapjack.WordAlloc.isSkip output6742 = false := by
  rw [output6742_def]
  conv => lhs; cbv
  try rfl
theorem node6742_eq : Flapjack.WordAlloc.removeDeadStructural input6742 value5 value1 value2 = (output6742, value3375, value1) := by
  rw [input6742_def, output6742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6740_eq]
  dsimp only
  rw [node6741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3376 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16053 5666948055268535989#64))).val
theorem input6743_def : input6743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16053 5666948055268535989#64)) := by
  unfold input6743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16053 5666948055268535989#64))).val
theorem output6743_def : output6743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16053 5666948055268535989#64)) := by
  unfold output6743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6743_skip : Flapjack.WordAlloc.isSkip output6743 = false := by
  rw [output6743_def]
  conv => lhs; cbv
  try rfl
theorem node6743_eq : Flapjack.WordAlloc.removeDeadStructural input6743 value3375 value1 value2 = (output6743, value3376, value1) := by
  rw [input6743_def, output6743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16049 5666948055268535989#64))).val
theorem input6744_def : input6744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16049 5666948055268535989#64)) := by
  unfold input6744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6744_def : output6744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6744_skip : Flapjack.WordAlloc.isSkip output6744 = true := by
  rw [output6744_def]
  conv => lhs; cbv
  try rfl
theorem node6744_eq : Flapjack.WordAlloc.removeDeadStructural input6744 value3376 value1 value2 = (output6744, value3376, value1) := by
  rw [input6744_def, output6744_def]
  try (conv => lhs; cbv)
  try rfl

def value3377 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16045 16037 (Flapjack.WordRegImm.reg 16041))))).val
theorem input6745_def : input6745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16045 16037 (Flapjack.WordRegImm.reg 16041)))) := by
  unfold input6745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16045 16037 (Flapjack.WordRegImm.reg 16041))))).val
theorem output6745_def : output6745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16045 16037 (Flapjack.WordRegImm.reg 16041)))) := by
  unfold output6745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6745_skip : Flapjack.WordAlloc.isSkip output6745 = false := by
  rw [output6745_def]
  conv => lhs; cbv
  try rfl
theorem node6745_eq : Flapjack.WordAlloc.removeDeadStructural input6745 value3376 value1 value2 = (output6745, value3377, value1) := by
  rw [input6745_def, output6745_def]
  try (conv => lhs; cbv)
  try rfl

def value3378 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16041 3760#64))).val
theorem input6746_def : input6746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16041 3760#64)) := by
  unfold input6746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16041 3760#64))).val
theorem output6746_def : output6746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16041 3760#64)) := by
  unfold output6746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6746_skip : Flapjack.WordAlloc.isSkip output6746 = false := by
  rw [output6746_def]
  conv => lhs; cbv
  try rfl
theorem node6746_eq : Flapjack.WordAlloc.removeDeadStructural input6746 value3377 value1 value2 = (output6746, value3378, value1) := by
  rw [input6746_def, output6746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6746 input6745)).val
theorem input6747_def : input6747 = (.seq input6746 input6745) := by
  unfold input6747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6746 output6745)).val
theorem output6747_def : output6747 = (.seq output6746 output6745) := by
  unfold output6747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6747_skip : Flapjack.WordAlloc.isSkip output6747 = false := by
  rw [output6747_def]
  conv => lhs; cbv
  try rfl
theorem node6747_eq : Flapjack.WordAlloc.removeDeadStructural input6747 value3376 value1 value2 = (output6747, value3378, value1) := by
  rw [input6747_def, output6747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6745_eq]
  dsimp only
  rw [node6746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3379 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16037 (Flapjack.WordLangAddr.addr 16033 18446744073709551104#64)))).val
theorem input6748_def : input6748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16037 (Flapjack.WordLangAddr.addr 16033 18446744073709551104#64))) := by
  unfold input6748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16037 (Flapjack.WordLangAddr.addr 16033 18446744073709551104#64)))).val
theorem output6748_def : output6748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16037 (Flapjack.WordLangAddr.addr 16033 18446744073709551104#64))) := by
  unfold output6748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6748_skip : Flapjack.WordAlloc.isSkip output6748 = false := by
  rw [output6748_def]
  conv => lhs; cbv
  try rfl
theorem node6748_eq : Flapjack.WordAlloc.removeDeadStructural input6748 value3378 value1 value2 = (output6748, value3379, value1) := by
  rw [input6748_def, output6748_def]
  try (conv => lhs; cbv)
  try rfl

def value3380 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16033 16029)).val
theorem input6749_def : input6749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16033 16029) := by
  unfold input6749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16033 16029)).val
theorem output6749_def : output6749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16033 16029) := by
  unfold output6749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6749_skip : Flapjack.WordAlloc.isSkip output6749 = false := by
  rw [output6749_def]
  conv => lhs; cbv
  try rfl
theorem node6749_eq : Flapjack.WordAlloc.removeDeadStructural input6749 value3379 value1 value2 = (output6749, value3380, value1) := by
  rw [input6749_def, output6749_def]
  try (conv => lhs; cbv)
  try rfl

def value3381 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16029 16025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6750_def : input6750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16029 16025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16029 16025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6750_def : output6750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16029 16025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6750_skip : Flapjack.WordAlloc.isSkip output6750 = false := by
  rw [output6750_def]
  conv => lhs; cbv
  try rfl
theorem node6750_eq : Flapjack.WordAlloc.removeDeadStructural input6750 value3380 value1 value2 = (output6750, value3381, value1) := by
  rw [input6750_def, output6750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16025 Flapjack.WordStore.heapLength)).val
theorem input6751_def : input6751 = (Flapjack.WordLangProgHOL.get 16025 Flapjack.WordStore.heapLength) := by
  unfold input6751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16025 Flapjack.WordStore.heapLength)).val
theorem output6751_def : output6751 = (Flapjack.WordLangProgHOL.get 16025 Flapjack.WordStore.heapLength) := by
  unfold output6751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6751_skip : Flapjack.WordAlloc.isSkip output6751 = false := by
  rw [output6751_def]
  conv => lhs; cbv
  try rfl
theorem node6751_eq : Flapjack.WordAlloc.removeDeadStructural input6751 value3381 value1 value2 = (output6751, value5, value1) := by
  rw [input6751_def, output6751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6751 input6750)).val
theorem input6752_def : input6752 = (.seq input6751 input6750) := by
  unfold input6752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6751 output6750)).val
theorem output6752_def : output6752 = (.seq output6751 output6750) := by
  unfold output6752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6752_skip : Flapjack.WordAlloc.isSkip output6752 = false := by
  rw [output6752_def]
  conv => lhs; cbv
  try rfl
theorem node6752_eq : Flapjack.WordAlloc.removeDeadStructural input6752 value3380 value1 value2 = (output6752, value5, value1) := by
  rw [input6752_def, output6752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6750_eq]
  dsimp only
  rw [node6751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6752 input6749)).val
theorem input6753_def : input6753 = (.seq input6752 input6749) := by
  unfold input6753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6752 output6749)).val
theorem output6753_def : output6753 = (.seq output6752 output6749) := by
  unfold output6753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6753_skip : Flapjack.WordAlloc.isSkip output6753 = false := by
  rw [output6753_def]
  conv => lhs; cbv
  try rfl
theorem node6753_eq : Flapjack.WordAlloc.removeDeadStructural input6753 value3379 value1 value2 = (output6753, value5, value1) := by
  rw [input6753_def, output6753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6749_eq]
  dsimp only
  rw [node6752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6753 input6748)).val
theorem input6754_def : input6754 = (.seq input6753 input6748) := by
  unfold input6754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6753 output6748)).val
theorem output6754_def : output6754 = (.seq output6753 output6748) := by
  unfold output6754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6754_skip : Flapjack.WordAlloc.isSkip output6754 = false := by
  rw [output6754_def]
  conv => lhs; cbv
  try rfl
theorem node6754_eq : Flapjack.WordAlloc.removeDeadStructural input6754 value3378 value1 value2 = (output6754, value5, value1) := by
  rw [input6754_def, output6754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6748_eq]
  dsimp only
  rw [node6753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6754 input6747)).val
theorem input6755_def : input6755 = (.seq input6754 input6747) := by
  unfold input6755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6754 output6747)).val
theorem output6755_def : output6755 = (.seq output6754 output6747) := by
  unfold output6755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6755_skip : Flapjack.WordAlloc.isSkip output6755 = false := by
  rw [output6755_def]
  conv => lhs; cbv
  try rfl
theorem node6755_eq : Flapjack.WordAlloc.removeDeadStructural input6755 value3376 value1 value2 = (output6755, value5, value1) := by
  rw [input6755_def, output6755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6747_eq]
  dsimp only
  rw [node6754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3382 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16017 (Flapjack.WordLangAddr.addr 16021 0#64)))).val
theorem input6756_def : input6756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16017 (Flapjack.WordLangAddr.addr 16021 0#64))) := by
  unfold input6756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16017 (Flapjack.WordLangAddr.addr 16021 0#64)))).val
theorem output6756_def : output6756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16017 (Flapjack.WordLangAddr.addr 16021 0#64))) := by
  unfold output6756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6756_skip : Flapjack.WordAlloc.isSkip output6756 = false := by
  rw [output6756_def]
  conv => lhs; cbv
  try rfl
theorem node6756_eq : Flapjack.WordAlloc.removeDeadStructural input6756 value5 value1 value2 = (output6756, value3382, value1) := by
  rw [input6756_def, output6756_def]
  try (conv => lhs; cbv)
  try rfl

def value3383 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16021, 16009)])).val
theorem input6757_def : input6757 = (Flapjack.WordLangProgHOL.move 0 [(16021, 16009)]) := by
  unfold input6757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16021, 16009)])).val
theorem output6757_def : output6757 = (Flapjack.WordLangProgHOL.move 0 [(16021, 16009)]) := by
  unfold output6757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6757_skip : Flapjack.WordAlloc.isSkip output6757 = false := by
  rw [output6757_def]
  conv => lhs; cbv
  try rfl
theorem node6757_eq : Flapjack.WordAlloc.removeDeadStructural input6757 value3382 value1 value2 = (output6757, value3383, value1) := by
  rw [input6757_def, output6757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6757 input6756)).val
theorem input6758_def : input6758 = (.seq input6757 input6756) := by
  unfold input6758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6757 output6756)).val
theorem output6758_def : output6758 = (.seq output6757 output6756) := by
  unfold output6758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6758_skip : Flapjack.WordAlloc.isSkip output6758 = false := by
  rw [output6758_def]
  conv => lhs; cbv
  try rfl
theorem node6758_eq : Flapjack.WordAlloc.removeDeadStructural input6758 value5 value1 value2 = (output6758, value3383, value1) := by
  rw [input6758_def, output6758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6756_eq]
  dsimp only
  rw [node6757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3384 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16017 14634479491382401593#64))).val
theorem input6759_def : input6759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16017 14634479491382401593#64)) := by
  unfold input6759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16017 14634479491382401593#64))).val
theorem output6759_def : output6759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16017 14634479491382401593#64)) := by
  unfold output6759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6759_skip : Flapjack.WordAlloc.isSkip output6759 = false := by
  rw [output6759_def]
  conv => lhs; cbv
  try rfl
theorem node6759_eq : Flapjack.WordAlloc.removeDeadStructural input6759 value3383 value1 value2 = (output6759, value3384, value1) := by
  rw [input6759_def, output6759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16013 14634479491382401593#64))).val
theorem input6760_def : input6760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16013 14634479491382401593#64)) := by
  unfold input6760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6760_def : output6760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6760_skip : Flapjack.WordAlloc.isSkip output6760 = true := by
  rw [output6760_def]
  conv => lhs; cbv
  try rfl
theorem node6760_eq : Flapjack.WordAlloc.removeDeadStructural input6760 value3384 value1 value2 = (output6760, value3384, value1) := by
  rw [input6760_def, output6760_def]
  try (conv => lhs; cbv)
  try rfl

def value3385 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16009 16001 (Flapjack.WordRegImm.reg 16005))))).val
theorem input6761_def : input6761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16009 16001 (Flapjack.WordRegImm.reg 16005)))) := by
  unfold input6761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16009 16001 (Flapjack.WordRegImm.reg 16005))))).val
theorem output6761_def : output6761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16009 16001 (Flapjack.WordRegImm.reg 16005)))) := by
  unfold output6761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6761_skip : Flapjack.WordAlloc.isSkip output6761 = false := by
  rw [output6761_def]
  conv => lhs; cbv
  try rfl
theorem node6761_eq : Flapjack.WordAlloc.removeDeadStructural input6761 value3384 value1 value2 = (output6761, value3385, value1) := by
  rw [input6761_def, output6761_def]
  try (conv => lhs; cbv)
  try rfl

def value3386 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16005 3752#64))).val
theorem input6762_def : input6762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16005 3752#64)) := by
  unfold input6762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16005 3752#64))).val
theorem output6762_def : output6762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16005 3752#64)) := by
  unfold output6762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6762_skip : Flapjack.WordAlloc.isSkip output6762 = false := by
  rw [output6762_def]
  conv => lhs; cbv
  try rfl
theorem node6762_eq : Flapjack.WordAlloc.removeDeadStructural input6762 value3385 value1 value2 = (output6762, value3386, value1) := by
  rw [input6762_def, output6762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6762 input6761)).val
theorem input6763_def : input6763 = (.seq input6762 input6761) := by
  unfold input6763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6762 output6761)).val
theorem output6763_def : output6763 = (.seq output6762 output6761) := by
  unfold output6763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6763_skip : Flapjack.WordAlloc.isSkip output6763 = false := by
  rw [output6763_def]
  conv => lhs; cbv
  try rfl
theorem node6763_eq : Flapjack.WordAlloc.removeDeadStructural input6763 value3384 value1 value2 = (output6763, value3386, value1) := by
  rw [input6763_def, output6763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6761_eq]
  dsimp only
  rw [node6762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3387 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16001 (Flapjack.WordLangAddr.addr 15997 18446744073709551104#64)))).val
theorem input6764_def : input6764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16001 (Flapjack.WordLangAddr.addr 15997 18446744073709551104#64))) := by
  unfold input6764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16001 (Flapjack.WordLangAddr.addr 15997 18446744073709551104#64)))).val
theorem output6764_def : output6764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16001 (Flapjack.WordLangAddr.addr 15997 18446744073709551104#64))) := by
  unfold output6764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6764_skip : Flapjack.WordAlloc.isSkip output6764 = false := by
  rw [output6764_def]
  conv => lhs; cbv
  try rfl
theorem node6764_eq : Flapjack.WordAlloc.removeDeadStructural input6764 value3386 value1 value2 = (output6764, value3387, value1) := by
  rw [input6764_def, output6764_def]
  try (conv => lhs; cbv)
  try rfl

def value3388 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15997 15993)).val
theorem input6765_def : input6765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15997 15993) := by
  unfold input6765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15997 15993)).val
theorem output6765_def : output6765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15997 15993) := by
  unfold output6765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6765_skip : Flapjack.WordAlloc.isSkip output6765 = false := by
  rw [output6765_def]
  conv => lhs; cbv
  try rfl
theorem node6765_eq : Flapjack.WordAlloc.removeDeadStructural input6765 value3387 value1 value2 = (output6765, value3388, value1) := by
  rw [input6765_def, output6765_def]
  try (conv => lhs; cbv)
  try rfl

def value3389 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15993 15989 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6766_def : input6766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15993 15989 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15993 15989 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6766_def : output6766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15993 15989 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6766_skip : Flapjack.WordAlloc.isSkip output6766 = false := by
  rw [output6766_def]
  conv => lhs; cbv
  try rfl
theorem node6766_eq : Flapjack.WordAlloc.removeDeadStructural input6766 value3388 value1 value2 = (output6766, value3389, value1) := by
  rw [input6766_def, output6766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15989 Flapjack.WordStore.heapLength)).val
theorem input6767_def : input6767 = (Flapjack.WordLangProgHOL.get 15989 Flapjack.WordStore.heapLength) := by
  unfold input6767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15989 Flapjack.WordStore.heapLength)).val
theorem output6767_def : output6767 = (Flapjack.WordLangProgHOL.get 15989 Flapjack.WordStore.heapLength) := by
  unfold output6767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6767_skip : Flapjack.WordAlloc.isSkip output6767 = false := by
  rw [output6767_def]
  conv => lhs; cbv
  try rfl
theorem node6767_eq : Flapjack.WordAlloc.removeDeadStructural input6767 value3389 value1 value2 = (output6767, value5, value1) := by
  rw [input6767_def, output6767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6767 input6766)).val
theorem input6768_def : input6768 = (.seq input6767 input6766) := by
  unfold input6768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6767 output6766)).val
theorem output6768_def : output6768 = (.seq output6767 output6766) := by
  unfold output6768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6768_skip : Flapjack.WordAlloc.isSkip output6768 = false := by
  rw [output6768_def]
  conv => lhs; cbv
  try rfl
theorem node6768_eq : Flapjack.WordAlloc.removeDeadStructural input6768 value3388 value1 value2 = (output6768, value5, value1) := by
  rw [input6768_def, output6768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6766_eq]
  dsimp only
  rw [node6767_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6768 input6765)).val
theorem input6769_def : input6769 = (.seq input6768 input6765) := by
  unfold input6769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6768 output6765)).val
theorem output6769_def : output6769 = (.seq output6768 output6765) := by
  unfold output6769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6769_skip : Flapjack.WordAlloc.isSkip output6769 = false := by
  rw [output6769_def]
  conv => lhs; cbv
  try rfl
theorem node6769_eq : Flapjack.WordAlloc.removeDeadStructural input6769 value3387 value1 value2 = (output6769, value5, value1) := by
  rw [input6769_def, output6769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6765_eq]
  dsimp only
  rw [node6768_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6769 input6764)).val
theorem input6770_def : input6770 = (.seq input6769 input6764) := by
  unfold input6770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6769 output6764)).val
theorem output6770_def : output6770 = (.seq output6769 output6764) := by
  unfold output6770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6770_skip : Flapjack.WordAlloc.isSkip output6770 = false := by
  rw [output6770_def]
  conv => lhs; cbv
  try rfl
theorem node6770_eq : Flapjack.WordAlloc.removeDeadStructural input6770 value3386 value1 value2 = (output6770, value5, value1) := by
  rw [input6770_def, output6770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6764_eq]
  dsimp only
  rw [node6769_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6770 input6763)).val
theorem input6771_def : input6771 = (.seq input6770 input6763) := by
  unfold input6771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6770 output6763)).val
theorem output6771_def : output6771 = (.seq output6770 output6763) := by
  unfold output6771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6771_skip : Flapjack.WordAlloc.isSkip output6771 = false := by
  rw [output6771_def]
  conv => lhs; cbv
  try rfl
theorem node6771_eq : Flapjack.WordAlloc.removeDeadStructural input6771 value3384 value1 value2 = (output6771, value5, value1) := by
  rw [input6771_def, output6771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6763_eq]
  dsimp only
  rw [node6770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3390 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15981 (Flapjack.WordLangAddr.addr 15985 0#64)))).val
theorem input6772_def : input6772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15981 (Flapjack.WordLangAddr.addr 15985 0#64))) := by
  unfold input6772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15981 (Flapjack.WordLangAddr.addr 15985 0#64)))).val
theorem output6772_def : output6772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15981 (Flapjack.WordLangAddr.addr 15985 0#64))) := by
  unfold output6772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6772_skip : Flapjack.WordAlloc.isSkip output6772 = false := by
  rw [output6772_def]
  conv => lhs; cbv
  try rfl
theorem node6772_eq : Flapjack.WordAlloc.removeDeadStructural input6772 value5 value1 value2 = (output6772, value3390, value1) := by
  rw [input6772_def, output6772_def]
  try (conv => lhs; cbv)
  try rfl

def value3391 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15985, 15973)])).val
theorem input6773_def : input6773 = (Flapjack.WordLangProgHOL.move 0 [(15985, 15973)]) := by
  unfold input6773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15985, 15973)])).val
theorem output6773_def : output6773 = (Flapjack.WordLangProgHOL.move 0 [(15985, 15973)]) := by
  unfold output6773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6773_skip : Flapjack.WordAlloc.isSkip output6773 = false := by
  rw [output6773_def]
  conv => lhs; cbv
  try rfl
theorem node6773_eq : Flapjack.WordAlloc.removeDeadStructural input6773 value3390 value1 value2 = (output6773, value3391, value1) := by
  rw [input6773_def, output6773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6773 input6772)).val
theorem input6774_def : input6774 = (.seq input6773 input6772) := by
  unfold input6774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6773 output6772)).val
theorem output6774_def : output6774 = (.seq output6773 output6772) := by
  unfold output6774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6774_skip : Flapjack.WordAlloc.isSkip output6774 = false := by
  rw [output6774_def]
  conv => lhs; cbv
  try rfl
theorem node6774_eq : Flapjack.WordAlloc.removeDeadStructural input6774 value5 value1 value2 = (output6774, value3391, value1) := by
  rw [input6774_def, output6774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6772_eq]
  dsimp only
  rw [node6773_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3392 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15981 6317940024988860850#64))).val
theorem input6775_def : input6775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15981 6317940024988860850#64)) := by
  unfold input6775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15981 6317940024988860850#64))).val
theorem output6775_def : output6775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15981 6317940024988860850#64)) := by
  unfold output6775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6775_skip : Flapjack.WordAlloc.isSkip output6775 = false := by
  rw [output6775_def]
  conv => lhs; cbv
  try rfl
theorem node6775_eq : Flapjack.WordAlloc.removeDeadStructural input6775 value3391 value1 value2 = (output6775, value3392, value1) := by
  rw [input6775_def, output6775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15977 6317940024988860850#64))).val
theorem input6776_def : input6776 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15977 6317940024988860850#64)) := by
  unfold input6776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6776_def : output6776 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6776_skip : Flapjack.WordAlloc.isSkip output6776 = true := by
  rw [output6776_def]
  conv => lhs; cbv
  try rfl
theorem node6776_eq : Flapjack.WordAlloc.removeDeadStructural input6776 value3392 value1 value2 = (output6776, value3392, value1) := by
  rw [input6776_def, output6776_def]
  try (conv => lhs; cbv)
  try rfl

def value3393 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15973 15965 (Flapjack.WordRegImm.reg 15969))))).val
theorem input6777_def : input6777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15973 15965 (Flapjack.WordRegImm.reg 15969)))) := by
  unfold input6777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15973 15965 (Flapjack.WordRegImm.reg 15969))))).val
theorem output6777_def : output6777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15973 15965 (Flapjack.WordRegImm.reg 15969)))) := by
  unfold output6777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6777_skip : Flapjack.WordAlloc.isSkip output6777 = false := by
  rw [output6777_def]
  conv => lhs; cbv
  try rfl
theorem node6777_eq : Flapjack.WordAlloc.removeDeadStructural input6777 value3392 value1 value2 = (output6777, value3393, value1) := by
  rw [input6777_def, output6777_def]
  try (conv => lhs; cbv)
  try rfl

def value3394 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15969 3744#64))).val
theorem input6778_def : input6778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15969 3744#64)) := by
  unfold input6778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15969 3744#64))).val
theorem output6778_def : output6778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15969 3744#64)) := by
  unfold output6778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6778_skip : Flapjack.WordAlloc.isSkip output6778 = false := by
  rw [output6778_def]
  conv => lhs; cbv
  try rfl
theorem node6778_eq : Flapjack.WordAlloc.removeDeadStructural input6778 value3393 value1 value2 = (output6778, value3394, value1) := by
  rw [input6778_def, output6778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6778 input6777)).val
theorem input6779_def : input6779 = (.seq input6778 input6777) := by
  unfold input6779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6778 output6777)).val
theorem output6779_def : output6779 = (.seq output6778 output6777) := by
  unfold output6779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6779_skip : Flapjack.WordAlloc.isSkip output6779 = false := by
  rw [output6779_def]
  conv => lhs; cbv
  try rfl
theorem node6779_eq : Flapjack.WordAlloc.removeDeadStructural input6779 value3392 value1 value2 = (output6779, value3394, value1) := by
  rw [input6779_def, output6779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6777_eq]
  dsimp only
  rw [node6778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3395 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15965 (Flapjack.WordLangAddr.addr 15961 18446744073709551104#64)))).val
theorem input6780_def : input6780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15965 (Flapjack.WordLangAddr.addr 15961 18446744073709551104#64))) := by
  unfold input6780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15965 (Flapjack.WordLangAddr.addr 15961 18446744073709551104#64)))).val
theorem output6780_def : output6780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15965 (Flapjack.WordLangAddr.addr 15961 18446744073709551104#64))) := by
  unfold output6780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6780_skip : Flapjack.WordAlloc.isSkip output6780 = false := by
  rw [output6780_def]
  conv => lhs; cbv
  try rfl
theorem node6780_eq : Flapjack.WordAlloc.removeDeadStructural input6780 value3394 value1 value2 = (output6780, value3395, value1) := by
  rw [input6780_def, output6780_def]
  try (conv => lhs; cbv)
  try rfl

def value3396 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15961 15957)).val
theorem input6781_def : input6781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15961 15957) := by
  unfold input6781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15961 15957)).val
theorem output6781_def : output6781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15961 15957) := by
  unfold output6781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6781_skip : Flapjack.WordAlloc.isSkip output6781 = false := by
  rw [output6781_def]
  conv => lhs; cbv
  try rfl
theorem node6781_eq : Flapjack.WordAlloc.removeDeadStructural input6781 value3395 value1 value2 = (output6781, value3396, value1) := by
  rw [input6781_def, output6781_def]
  try (conv => lhs; cbv)
  try rfl

def value3397 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15957 15953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6782_def : input6782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15957 15953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15957 15953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6782_def : output6782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15957 15953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6782_skip : Flapjack.WordAlloc.isSkip output6782 = false := by
  rw [output6782_def]
  conv => lhs; cbv
  try rfl
theorem node6782_eq : Flapjack.WordAlloc.removeDeadStructural input6782 value3396 value1 value2 = (output6782, value3397, value1) := by
  rw [input6782_def, output6782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15953 Flapjack.WordStore.heapLength)).val
theorem input6783_def : input6783 = (Flapjack.WordLangProgHOL.get 15953 Flapjack.WordStore.heapLength) := by
  unfold input6783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15953 Flapjack.WordStore.heapLength)).val
theorem output6783_def : output6783 = (Flapjack.WordLangProgHOL.get 15953 Flapjack.WordStore.heapLength) := by
  unfold output6783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6783_skip : Flapjack.WordAlloc.isSkip output6783 = false := by
  rw [output6783_def]
  conv => lhs; cbv
  try rfl
theorem node6783_eq : Flapjack.WordAlloc.removeDeadStructural input6783 value3397 value1 value2 = (output6783, value5, value1) := by
  rw [input6783_def, output6783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6783 input6782)).val
theorem input6784_def : input6784 = (.seq input6783 input6782) := by
  unfold input6784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6783 output6782)).val
theorem output6784_def : output6784 = (.seq output6783 output6782) := by
  unfold output6784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6784_skip : Flapjack.WordAlloc.isSkip output6784 = false := by
  rw [output6784_def]
  conv => lhs; cbv
  try rfl
theorem node6784_eq : Flapjack.WordAlloc.removeDeadStructural input6784 value3396 value1 value2 = (output6784, value5, value1) := by
  rw [input6784_def, output6784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6782_eq]
  dsimp only
  rw [node6783_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6784 input6781)).val
theorem input6785_def : input6785 = (.seq input6784 input6781) := by
  unfold input6785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6784 output6781)).val
theorem output6785_def : output6785 = (.seq output6784 output6781) := by
  unfold output6785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6785_skip : Flapjack.WordAlloc.isSkip output6785 = false := by
  rw [output6785_def]
  conv => lhs; cbv
  try rfl
theorem node6785_eq : Flapjack.WordAlloc.removeDeadStructural input6785 value3395 value1 value2 = (output6785, value5, value1) := by
  rw [input6785_def, output6785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6781_eq]
  dsimp only
  rw [node6784_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6785 input6780)).val
theorem input6786_def : input6786 = (.seq input6785 input6780) := by
  unfold input6786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6785 output6780)).val
theorem output6786_def : output6786 = (.seq output6785 output6780) := by
  unfold output6786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6786_skip : Flapjack.WordAlloc.isSkip output6786 = false := by
  rw [output6786_def]
  conv => lhs; cbv
  try rfl
theorem node6786_eq : Flapjack.WordAlloc.removeDeadStructural input6786 value3394 value1 value2 = (output6786, value5, value1) := by
  rw [input6786_def, output6786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6780_eq]
  dsimp only
  rw [node6785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6786 input6779)).val
theorem input6787_def : input6787 = (.seq input6786 input6779) := by
  unfold input6787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6786 output6779)).val
theorem output6787_def : output6787 = (.seq output6786 output6779) := by
  unfold output6787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6787_skip : Flapjack.WordAlloc.isSkip output6787 = false := by
  rw [output6787_def]
  conv => lhs; cbv
  try rfl
theorem node6787_eq : Flapjack.WordAlloc.removeDeadStructural input6787 value3392 value1 value2 = (output6787, value5, value1) := by
  rw [input6787_def, output6787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6779_eq]
  dsimp only
  rw [node6786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3398 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15945 (Flapjack.WordLangAddr.addr 15949 0#64)))).val
theorem input6788_def : input6788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15945 (Flapjack.WordLangAddr.addr 15949 0#64))) := by
  unfold input6788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15945 (Flapjack.WordLangAddr.addr 15949 0#64)))).val
theorem output6788_def : output6788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15945 (Flapjack.WordLangAddr.addr 15949 0#64))) := by
  unfold output6788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6788_skip : Flapjack.WordAlloc.isSkip output6788 = false := by
  rw [output6788_def]
  conv => lhs; cbv
  try rfl
theorem node6788_eq : Flapjack.WordAlloc.removeDeadStructural input6788 value5 value1 value2 = (output6788, value3398, value1) := by
  rw [input6788_def, output6788_def]
  try (conv => lhs; cbv)
  try rfl

def value3399 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15949, 15937)])).val
theorem input6789_def : input6789 = (Flapjack.WordLangProgHOL.move 0 [(15949, 15937)]) := by
  unfold input6789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15949, 15937)])).val
theorem output6789_def : output6789 = (Flapjack.WordLangProgHOL.move 0 [(15949, 15937)]) := by
  unfold output6789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6789_skip : Flapjack.WordAlloc.isSkip output6789 = false := by
  rw [output6789_def]
  conv => lhs; cbv
  try rfl
theorem node6789_eq : Flapjack.WordAlloc.removeDeadStructural input6789 value3398 value1 value2 = (output6789, value3399, value1) := by
  rw [input6789_def, output6789_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6789 input6788)).val
theorem input6790_def : input6790 = (.seq input6789 input6788) := by
  unfold input6790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6789 output6788)).val
theorem output6790_def : output6790 = (.seq output6789 output6788) := by
  unfold output6790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6790_skip : Flapjack.WordAlloc.isSkip output6790 = false := by
  rw [output6790_def]
  conv => lhs; cbv
  try rfl
theorem node6790_eq : Flapjack.WordAlloc.removeDeadStructural input6790 value5 value1 value2 = (output6790, value3399, value1) := by
  rw [input6790_def, output6790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6788_eq]
  dsimp only
  rw [node6789_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3400 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15945 13142913832013798519#64))).val
theorem input6791_def : input6791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15945 13142913832013798519#64)) := by
  unfold input6791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15945 13142913832013798519#64))).val
theorem output6791_def : output6791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15945 13142913832013798519#64)) := by
  unfold output6791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6791_skip : Flapjack.WordAlloc.isSkip output6791 = false := by
  rw [output6791_def]
  conv => lhs; cbv
  try rfl
theorem node6791_eq : Flapjack.WordAlloc.removeDeadStructural input6791 value3399 value1 value2 = (output6791, value3400, value1) := by
  rw [input6791_def, output6791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15941 13142913832013798519#64))).val
theorem input6792_def : input6792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15941 13142913832013798519#64)) := by
  unfold input6792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6792_def : output6792 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6792_skip : Flapjack.WordAlloc.isSkip output6792 = true := by
  rw [output6792_def]
  conv => lhs; cbv
  try rfl
theorem node6792_eq : Flapjack.WordAlloc.removeDeadStructural input6792 value3400 value1 value2 = (output6792, value3400, value1) := by
  rw [input6792_def, output6792_def]
  try (conv => lhs; cbv)
  try rfl

def value3401 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15937 15929 (Flapjack.WordRegImm.reg 15933))))).val
theorem input6793_def : input6793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15937 15929 (Flapjack.WordRegImm.reg 15933)))) := by
  unfold input6793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15937 15929 (Flapjack.WordRegImm.reg 15933))))).val
theorem output6793_def : output6793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15937 15929 (Flapjack.WordRegImm.reg 15933)))) := by
  unfold output6793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6793_skip : Flapjack.WordAlloc.isSkip output6793 = false := by
  rw [output6793_def]
  conv => lhs; cbv
  try rfl
theorem node6793_eq : Flapjack.WordAlloc.removeDeadStructural input6793 value3400 value1 value2 = (output6793, value3401, value1) := by
  rw [input6793_def, output6793_def]
  try (conv => lhs; cbv)
  try rfl

def value3402 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15933 3736#64))).val
theorem input6794_def : input6794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15933 3736#64)) := by
  unfold input6794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15933 3736#64))).val
theorem output6794_def : output6794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15933 3736#64)) := by
  unfold output6794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6794_skip : Flapjack.WordAlloc.isSkip output6794 = false := by
  rw [output6794_def]
  conv => lhs; cbv
  try rfl
theorem node6794_eq : Flapjack.WordAlloc.removeDeadStructural input6794 value3401 value1 value2 = (output6794, value3402, value1) := by
  rw [input6794_def, output6794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6794 input6793)).val
theorem input6795_def : input6795 = (.seq input6794 input6793) := by
  unfold input6795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6794 output6793)).val
theorem output6795_def : output6795 = (.seq output6794 output6793) := by
  unfold output6795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6795_skip : Flapjack.WordAlloc.isSkip output6795 = false := by
  rw [output6795_def]
  conv => lhs; cbv
  try rfl
theorem node6795_eq : Flapjack.WordAlloc.removeDeadStructural input6795 value3400 value1 value2 = (output6795, value3402, value1) := by
  rw [input6795_def, output6795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6793_eq]
  dsimp only
  rw [node6794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3403 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15929 (Flapjack.WordLangAddr.addr 15925 18446744073709551104#64)))).val
theorem input6796_def : input6796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15929 (Flapjack.WordLangAddr.addr 15925 18446744073709551104#64))) := by
  unfold input6796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15929 (Flapjack.WordLangAddr.addr 15925 18446744073709551104#64)))).val
theorem output6796_def : output6796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15929 (Flapjack.WordLangAddr.addr 15925 18446744073709551104#64))) := by
  unfold output6796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6796_skip : Flapjack.WordAlloc.isSkip output6796 = false := by
  rw [output6796_def]
  conv => lhs; cbv
  try rfl
theorem node6796_eq : Flapjack.WordAlloc.removeDeadStructural input6796 value3402 value1 value2 = (output6796, value3403, value1) := by
  rw [input6796_def, output6796_def]
  try (conv => lhs; cbv)
  try rfl

def value3404 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15925 15921)).val
theorem input6797_def : input6797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15925 15921) := by
  unfold input6797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15925 15921)).val
theorem output6797_def : output6797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15925 15921) := by
  unfold output6797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6797_skip : Flapjack.WordAlloc.isSkip output6797 = false := by
  rw [output6797_def]
  conv => lhs; cbv
  try rfl
theorem node6797_eq : Flapjack.WordAlloc.removeDeadStructural input6797 value3403 value1 value2 = (output6797, value3404, value1) := by
  rw [input6797_def, output6797_def]
  try (conv => lhs; cbv)
  try rfl

def value3405 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15921 15917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6798_def : input6798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15921 15917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15921 15917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6798_def : output6798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15921 15917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6798_skip : Flapjack.WordAlloc.isSkip output6798 = false := by
  rw [output6798_def]
  conv => lhs; cbv
  try rfl
theorem node6798_eq : Flapjack.WordAlloc.removeDeadStructural input6798 value3404 value1 value2 = (output6798, value3405, value1) := by
  rw [input6798_def, output6798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15917 Flapjack.WordStore.heapLength)).val
theorem input6799_def : input6799 = (Flapjack.WordLangProgHOL.get 15917 Flapjack.WordStore.heapLength) := by
  unfold input6799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15917 Flapjack.WordStore.heapLength)).val
theorem output6799_def : output6799 = (Flapjack.WordLangProgHOL.get 15917 Flapjack.WordStore.heapLength) := by
  unfold output6799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6799_skip : Flapjack.WordAlloc.isSkip output6799 = false := by
  rw [output6799_def]
  conv => lhs; cbv
  try rfl
theorem node6799_eq : Flapjack.WordAlloc.removeDeadStructural input6799 value3405 value1 value2 = (output6799, value5, value1) := by
  rw [input6799_def, output6799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6799 input6798)).val
theorem input6800_def : input6800 = (.seq input6799 input6798) := by
  unfold input6800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6799 output6798)).val
theorem output6800_def : output6800 = (.seq output6799 output6798) := by
  unfold output6800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6800_skip : Flapjack.WordAlloc.isSkip output6800 = false := by
  rw [output6800_def]
  conv => lhs; cbv
  try rfl
theorem node6800_eq : Flapjack.WordAlloc.removeDeadStructural input6800 value3404 value1 value2 = (output6800, value5, value1) := by
  rw [input6800_def, output6800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6798_eq]
  dsimp only
  rw [node6799_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6800 input6797)).val
theorem input6801_def : input6801 = (.seq input6800 input6797) := by
  unfold input6801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6800 output6797)).val
theorem output6801_def : output6801 = (.seq output6800 output6797) := by
  unfold output6801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6801_skip : Flapjack.WordAlloc.isSkip output6801 = false := by
  rw [output6801_def]
  conv => lhs; cbv
  try rfl
theorem node6801_eq : Flapjack.WordAlloc.removeDeadStructural input6801 value3403 value1 value2 = (output6801, value5, value1) := by
  rw [input6801_def, output6801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6797_eq]
  dsimp only
  rw [node6800_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6801 input6796)).val
theorem input6802_def : input6802 = (.seq input6801 input6796) := by
  unfold input6802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6801 output6796)).val
theorem output6802_def : output6802 = (.seq output6801 output6796) := by
  unfold output6802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6802_skip : Flapjack.WordAlloc.isSkip output6802 = false := by
  rw [output6802_def]
  conv => lhs; cbv
  try rfl
theorem node6802_eq : Flapjack.WordAlloc.removeDeadStructural input6802 value3402 value1 value2 = (output6802, value5, value1) := by
  rw [input6802_def, output6802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6796_eq]
  dsimp only
  rw [node6801_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6802 input6795)).val
theorem input6803_def : input6803 = (.seq input6802 input6795) := by
  unfold input6803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6802 output6795)).val
theorem output6803_def : output6803 = (.seq output6802 output6795) := by
  unfold output6803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6803_skip : Flapjack.WordAlloc.isSkip output6803 = false := by
  rw [output6803_def]
  conv => lhs; cbv
  try rfl
theorem node6803_eq : Flapjack.WordAlloc.removeDeadStructural input6803 value3400 value1 value2 = (output6803, value5, value1) := by
  rw [input6803_def, output6803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6795_eq]
  dsimp only
  rw [node6802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3406 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15909 (Flapjack.WordLangAddr.addr 15913 0#64)))).val
theorem input6804_def : input6804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15909 (Flapjack.WordLangAddr.addr 15913 0#64))) := by
  unfold input6804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15909 (Flapjack.WordLangAddr.addr 15913 0#64)))).val
theorem output6804_def : output6804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15909 (Flapjack.WordLangAddr.addr 15913 0#64))) := by
  unfold output6804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6804_skip : Flapjack.WordAlloc.isSkip output6804 = false := by
  rw [output6804_def]
  conv => lhs; cbv
  try rfl
theorem node6804_eq : Flapjack.WordAlloc.removeDeadStructural input6804 value5 value1 value2 = (output6804, value3406, value1) := by
  rw [input6804_def, output6804_def]
  try (conv => lhs; cbv)
  try rfl

def value3407 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15913, 15901)])).val
theorem input6805_def : input6805 = (Flapjack.WordLangProgHOL.move 0 [(15913, 15901)]) := by
  unfold input6805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15913, 15901)])).val
theorem output6805_def : output6805 = (Flapjack.WordLangProgHOL.move 0 [(15913, 15901)]) := by
  unfold output6805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6805_skip : Flapjack.WordAlloc.isSkip output6805 = false := by
  rw [output6805_def]
  conv => lhs; cbv
  try rfl
theorem node6805_eq : Flapjack.WordAlloc.removeDeadStructural input6805 value3406 value1 value2 = (output6805, value3407, value1) := by
  rw [input6805_def, output6805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6805 input6804)).val
theorem input6806_def : input6806 = (.seq input6805 input6804) := by
  unfold input6806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6805 output6804)).val
theorem output6806_def : output6806 = (.seq output6805 output6804) := by
  unfold output6806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6806_skip : Flapjack.WordAlloc.isSkip output6806 = false := by
  rw [output6806_def]
  conv => lhs; cbv
  try rfl
theorem node6806_eq : Flapjack.WordAlloc.removeDeadStructural input6806 value5 value1 value2 = (output6806, value3407, value1) := by
  rw [input6806_def, output6806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6804_eq]
  dsimp only
  rw [node6805_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3408 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15909 338991247778166276#64))).val
theorem input6807_def : input6807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15909 338991247778166276#64)) := by
  unfold input6807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15909 338991247778166276#64))).val
theorem output6807_def : output6807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15909 338991247778166276#64)) := by
  unfold output6807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6807_skip : Flapjack.WordAlloc.isSkip output6807 = false := by
  rw [output6807_def]
  conv => lhs; cbv
  try rfl
theorem node6807_eq : Flapjack.WordAlloc.removeDeadStructural input6807 value3407 value1 value2 = (output6807, value3408, value1) := by
  rw [input6807_def, output6807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15905 338991247778166276#64))).val
theorem input6808_def : input6808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15905 338991247778166276#64)) := by
  unfold input6808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6808_def : output6808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6808_skip : Flapjack.WordAlloc.isSkip output6808 = true := by
  rw [output6808_def]
  conv => lhs; cbv
  try rfl
theorem node6808_eq : Flapjack.WordAlloc.removeDeadStructural input6808 value3408 value1 value2 = (output6808, value3408, value1) := by
  rw [input6808_def, output6808_def]
  try (conv => lhs; cbv)
  try rfl

def value3409 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15901 15893 (Flapjack.WordRegImm.reg 15897))))).val
theorem input6809_def : input6809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15901 15893 (Flapjack.WordRegImm.reg 15897)))) := by
  unfold input6809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15901 15893 (Flapjack.WordRegImm.reg 15897))))).val
theorem output6809_def : output6809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15901 15893 (Flapjack.WordRegImm.reg 15897)))) := by
  unfold output6809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6809_skip : Flapjack.WordAlloc.isSkip output6809 = false := by
  rw [output6809_def]
  conv => lhs; cbv
  try rfl
theorem node6809_eq : Flapjack.WordAlloc.removeDeadStructural input6809 value3408 value1 value2 = (output6809, value3409, value1) := by
  rw [input6809_def, output6809_def]
  try (conv => lhs; cbv)
  try rfl

def value3410 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15897 3728#64))).val
theorem input6810_def : input6810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15897 3728#64)) := by
  unfold input6810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15897 3728#64))).val
theorem output6810_def : output6810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15897 3728#64)) := by
  unfold output6810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6810_skip : Flapjack.WordAlloc.isSkip output6810 = false := by
  rw [output6810_def]
  conv => lhs; cbv
  try rfl
theorem node6810_eq : Flapjack.WordAlloc.removeDeadStructural input6810 value3409 value1 value2 = (output6810, value3410, value1) := by
  rw [input6810_def, output6810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6810 input6809)).val
theorem input6811_def : input6811 = (.seq input6810 input6809) := by
  unfold input6811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6810 output6809)).val
theorem output6811_def : output6811 = (.seq output6810 output6809) := by
  unfold output6811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6811_skip : Flapjack.WordAlloc.isSkip output6811 = false := by
  rw [output6811_def]
  conv => lhs; cbv
  try rfl
theorem node6811_eq : Flapjack.WordAlloc.removeDeadStructural input6811 value3408 value1 value2 = (output6811, value3410, value1) := by
  rw [input6811_def, output6811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6809_eq]
  dsimp only
  rw [node6810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3411 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15893 (Flapjack.WordLangAddr.addr 15889 18446744073709551104#64)))).val
theorem input6812_def : input6812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15893 (Flapjack.WordLangAddr.addr 15889 18446744073709551104#64))) := by
  unfold input6812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15893 (Flapjack.WordLangAddr.addr 15889 18446744073709551104#64)))).val
theorem output6812_def : output6812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15893 (Flapjack.WordLangAddr.addr 15889 18446744073709551104#64))) := by
  unfold output6812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6812_skip : Flapjack.WordAlloc.isSkip output6812 = false := by
  rw [output6812_def]
  conv => lhs; cbv
  try rfl
theorem node6812_eq : Flapjack.WordAlloc.removeDeadStructural input6812 value3410 value1 value2 = (output6812, value3411, value1) := by
  rw [input6812_def, output6812_def]
  try (conv => lhs; cbv)
  try rfl

def value3412 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15889 15885)).val
theorem input6813_def : input6813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15889 15885) := by
  unfold input6813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15889 15885)).val
theorem output6813_def : output6813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15889 15885) := by
  unfold output6813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6813_skip : Flapjack.WordAlloc.isSkip output6813 = false := by
  rw [output6813_def]
  conv => lhs; cbv
  try rfl
theorem node6813_eq : Flapjack.WordAlloc.removeDeadStructural input6813 value3411 value1 value2 = (output6813, value3412, value1) := by
  rw [input6813_def, output6813_def]
  try (conv => lhs; cbv)
  try rfl

def value3413 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15885 15881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6814_def : input6814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15885 15881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15885 15881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6814_def : output6814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15885 15881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6814_skip : Flapjack.WordAlloc.isSkip output6814 = false := by
  rw [output6814_def]
  conv => lhs; cbv
  try rfl
theorem node6814_eq : Flapjack.WordAlloc.removeDeadStructural input6814 value3412 value1 value2 = (output6814, value3413, value1) := by
  rw [input6814_def, output6814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15881 Flapjack.WordStore.heapLength)).val
theorem input6815_def : input6815 = (Flapjack.WordLangProgHOL.get 15881 Flapjack.WordStore.heapLength) := by
  unfold input6815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15881 Flapjack.WordStore.heapLength)).val
theorem output6815_def : output6815 = (Flapjack.WordLangProgHOL.get 15881 Flapjack.WordStore.heapLength) := by
  unfold output6815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6815_skip : Flapjack.WordAlloc.isSkip output6815 = false := by
  rw [output6815_def]
  conv => lhs; cbv
  try rfl
theorem node6815_eq : Flapjack.WordAlloc.removeDeadStructural input6815 value3413 value1 value2 = (output6815, value5, value1) := by
  rw [input6815_def, output6815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6815 input6814)).val
theorem input6816_def : input6816 = (.seq input6815 input6814) := by
  unfold input6816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6815 output6814)).val
theorem output6816_def : output6816 = (.seq output6815 output6814) := by
  unfold output6816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6816_skip : Flapjack.WordAlloc.isSkip output6816 = false := by
  rw [output6816_def]
  conv => lhs; cbv
  try rfl
theorem node6816_eq : Flapjack.WordAlloc.removeDeadStructural input6816 value3412 value1 value2 = (output6816, value5, value1) := by
  rw [input6816_def, output6816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6814_eq]
  dsimp only
  rw [node6815_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6816 input6813)).val
theorem input6817_def : input6817 = (.seq input6816 input6813) := by
  unfold input6817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6816 output6813)).val
theorem output6817_def : output6817 = (.seq output6816 output6813) := by
  unfold output6817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6817_skip : Flapjack.WordAlloc.isSkip output6817 = false := by
  rw [output6817_def]
  conv => lhs; cbv
  try rfl
theorem node6817_eq : Flapjack.WordAlloc.removeDeadStructural input6817 value3411 value1 value2 = (output6817, value5, value1) := by
  rw [input6817_def, output6817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6813_eq]
  dsimp only
  rw [node6816_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6817 input6812)).val
theorem input6818_def : input6818 = (.seq input6817 input6812) := by
  unfold input6818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6817 output6812)).val
theorem output6818_def : output6818 = (.seq output6817 output6812) := by
  unfold output6818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6818_skip : Flapjack.WordAlloc.isSkip output6818 = false := by
  rw [output6818_def]
  conv => lhs; cbv
  try rfl
theorem node6818_eq : Flapjack.WordAlloc.removeDeadStructural input6818 value3410 value1 value2 = (output6818, value5, value1) := by
  rw [input6818_def, output6818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6812_eq]
  dsimp only
  rw [node6817_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6818 input6811)).val
theorem input6819_def : input6819 = (.seq input6818 input6811) := by
  unfold input6819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6818 output6811)).val
theorem output6819_def : output6819 = (.seq output6818 output6811) := by
  unfold output6819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6819_skip : Flapjack.WordAlloc.isSkip output6819 = false := by
  rw [output6819_def]
  conv => lhs; cbv
  try rfl
theorem node6819_eq : Flapjack.WordAlloc.removeDeadStructural input6819 value3408 value1 value2 = (output6819, value5, value1) := by
  rw [input6819_def, output6819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6811_eq]
  dsimp only
  rw [node6818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3414 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15873 (Flapjack.WordLangAddr.addr 15877 0#64)))).val
theorem input6820_def : input6820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15873 (Flapjack.WordLangAddr.addr 15877 0#64))) := by
  unfold input6820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15873 (Flapjack.WordLangAddr.addr 15877 0#64)))).val
theorem output6820_def : output6820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15873 (Flapjack.WordLangAddr.addr 15877 0#64))) := by
  unfold output6820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6820_skip : Flapjack.WordAlloc.isSkip output6820 = false := by
  rw [output6820_def]
  conv => lhs; cbv
  try rfl
theorem node6820_eq : Flapjack.WordAlloc.removeDeadStructural input6820 value5 value1 value2 = (output6820, value3414, value1) := by
  rw [input6820_def, output6820_def]
  try (conv => lhs; cbv)
  try rfl

def value3415 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15877, 15865)])).val
theorem input6821_def : input6821 = (Flapjack.WordLangProgHOL.move 0 [(15877, 15865)]) := by
  unfold input6821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15877, 15865)])).val
theorem output6821_def : output6821 = (Flapjack.WordLangProgHOL.move 0 [(15877, 15865)]) := by
  unfold output6821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6821_skip : Flapjack.WordAlloc.isSkip output6821 = false := by
  rw [output6821_def]
  conv => lhs; cbv
  try rfl
theorem node6821_eq : Flapjack.WordAlloc.removeDeadStructural input6821 value3414 value1 value2 = (output6821, value3415, value1) := by
  rw [input6821_def, output6821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6821 input6820)).val
theorem input6822_def : input6822 = (.seq input6821 input6820) := by
  unfold input6822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6821 output6820)).val
theorem output6822_def : output6822 = (.seq output6821 output6820) := by
  unfold output6822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6822_skip : Flapjack.WordAlloc.isSkip output6822 = false := by
  rw [output6822_def]
  conv => lhs; cbv
  try rfl
theorem node6822_eq : Flapjack.WordAlloc.removeDeadStructural input6822 value5 value1 value2 = (output6822, value3415, value1) := by
  rw [input6822_def, output6822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6820_eq]
  dsimp only
  rw [node6821_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3416 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15873 414658151749832465#64))).val
theorem input6823_def : input6823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15873 414658151749832465#64)) := by
  unfold input6823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15873 414658151749832465#64))).val
theorem output6823_def : output6823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15873 414658151749832465#64)) := by
  unfold output6823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6823_skip : Flapjack.WordAlloc.isSkip output6823 = false := by
  rw [output6823_def]
  conv => lhs; cbv
  try rfl
theorem node6823_eq : Flapjack.WordAlloc.removeDeadStructural input6823 value3415 value1 value2 = (output6823, value3416, value1) := by
  rw [input6823_def, output6823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15869 414658151749832465#64))).val
theorem input6824_def : input6824 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15869 414658151749832465#64)) := by
  unfold input6824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6824_def : output6824 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6824_skip : Flapjack.WordAlloc.isSkip output6824 = true := by
  rw [output6824_def]
  conv => lhs; cbv
  try rfl
theorem node6824_eq : Flapjack.WordAlloc.removeDeadStructural input6824 value3416 value1 value2 = (output6824, value3416, value1) := by
  rw [input6824_def, output6824_def]
  try (conv => lhs; cbv)
  try rfl

def value3417 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15865 15857 (Flapjack.WordRegImm.reg 15861))))).val
theorem input6825_def : input6825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15865 15857 (Flapjack.WordRegImm.reg 15861)))) := by
  unfold input6825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15865 15857 (Flapjack.WordRegImm.reg 15861))))).val
theorem output6825_def : output6825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15865 15857 (Flapjack.WordRegImm.reg 15861)))) := by
  unfold output6825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6825_skip : Flapjack.WordAlloc.isSkip output6825 = false := by
  rw [output6825_def]
  conv => lhs; cbv
  try rfl
theorem node6825_eq : Flapjack.WordAlloc.removeDeadStructural input6825 value3416 value1 value2 = (output6825, value3417, value1) := by
  rw [input6825_def, output6825_def]
  try (conv => lhs; cbv)
  try rfl

def value3418 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15861 3720#64))).val
theorem input6826_def : input6826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15861 3720#64)) := by
  unfold input6826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15861 3720#64))).val
theorem output6826_def : output6826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15861 3720#64)) := by
  unfold output6826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6826_skip : Flapjack.WordAlloc.isSkip output6826 = false := by
  rw [output6826_def]
  conv => lhs; cbv
  try rfl
theorem node6826_eq : Flapjack.WordAlloc.removeDeadStructural input6826 value3417 value1 value2 = (output6826, value3418, value1) := by
  rw [input6826_def, output6826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6826 input6825)).val
theorem input6827_def : input6827 = (.seq input6826 input6825) := by
  unfold input6827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6826 output6825)).val
theorem output6827_def : output6827 = (.seq output6826 output6825) := by
  unfold output6827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6827_skip : Flapjack.WordAlloc.isSkip output6827 = false := by
  rw [output6827_def]
  conv => lhs; cbv
  try rfl
theorem node6827_eq : Flapjack.WordAlloc.removeDeadStructural input6827 value3416 value1 value2 = (output6827, value3418, value1) := by
  rw [input6827_def, output6827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6825_eq]
  dsimp only
  rw [node6826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3419 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15857 (Flapjack.WordLangAddr.addr 15853 18446744073709551104#64)))).val
theorem input6828_def : input6828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15857 (Flapjack.WordLangAddr.addr 15853 18446744073709551104#64))) := by
  unfold input6828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15857 (Flapjack.WordLangAddr.addr 15853 18446744073709551104#64)))).val
theorem output6828_def : output6828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15857 (Flapjack.WordLangAddr.addr 15853 18446744073709551104#64))) := by
  unfold output6828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6828_skip : Flapjack.WordAlloc.isSkip output6828 = false := by
  rw [output6828_def]
  conv => lhs; cbv
  try rfl
theorem node6828_eq : Flapjack.WordAlloc.removeDeadStructural input6828 value3418 value1 value2 = (output6828, value3419, value1) := by
  rw [input6828_def, output6828_def]
  try (conv => lhs; cbv)
  try rfl

def value3420 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15853 15849)).val
theorem input6829_def : input6829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15853 15849) := by
  unfold input6829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15853 15849)).val
theorem output6829_def : output6829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15853 15849) := by
  unfold output6829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6829_skip : Flapjack.WordAlloc.isSkip output6829 = false := by
  rw [output6829_def]
  conv => lhs; cbv
  try rfl
theorem node6829_eq : Flapjack.WordAlloc.removeDeadStructural input6829 value3419 value1 value2 = (output6829, value3420, value1) := by
  rw [input6829_def, output6829_def]
  try (conv => lhs; cbv)
  try rfl

def value3421 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15849 15845 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6830_def : input6830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15849 15845 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15849 15845 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6830_def : output6830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15849 15845 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6830_skip : Flapjack.WordAlloc.isSkip output6830 = false := by
  rw [output6830_def]
  conv => lhs; cbv
  try rfl
theorem node6830_eq : Flapjack.WordAlloc.removeDeadStructural input6830 value3420 value1 value2 = (output6830, value3421, value1) := by
  rw [input6830_def, output6830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15845 Flapjack.WordStore.heapLength)).val
theorem input6831_def : input6831 = (Flapjack.WordLangProgHOL.get 15845 Flapjack.WordStore.heapLength) := by
  unfold input6831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15845 Flapjack.WordStore.heapLength)).val
theorem output6831_def : output6831 = (Flapjack.WordLangProgHOL.get 15845 Flapjack.WordStore.heapLength) := by
  unfold output6831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6831_skip : Flapjack.WordAlloc.isSkip output6831 = false := by
  rw [output6831_def]
  conv => lhs; cbv
  try rfl
theorem node6831_eq : Flapjack.WordAlloc.removeDeadStructural input6831 value3421 value1 value2 = (output6831, value5, value1) := by
  rw [input6831_def, output6831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6831 input6830)).val
theorem input6832_def : input6832 = (.seq input6831 input6830) := by
  unfold input6832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6831 output6830)).val
theorem output6832_def : output6832 = (.seq output6831 output6830) := by
  unfold output6832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6832_skip : Flapjack.WordAlloc.isSkip output6832 = false := by
  rw [output6832_def]
  conv => lhs; cbv
  try rfl
theorem node6832_eq : Flapjack.WordAlloc.removeDeadStructural input6832 value3420 value1 value2 = (output6832, value5, value1) := by
  rw [input6832_def, output6832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6830_eq]
  dsimp only
  rw [node6831_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6832 input6829)).val
theorem input6833_def : input6833 = (.seq input6832 input6829) := by
  unfold input6833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6832 output6829)).val
theorem output6833_def : output6833 = (.seq output6832 output6829) := by
  unfold output6833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6833_skip : Flapjack.WordAlloc.isSkip output6833 = false := by
  rw [output6833_def]
  conv => lhs; cbv
  try rfl
theorem node6833_eq : Flapjack.WordAlloc.removeDeadStructural input6833 value3419 value1 value2 = (output6833, value5, value1) := by
  rw [input6833_def, output6833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6829_eq]
  dsimp only
  rw [node6832_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6833 input6828)).val
theorem input6834_def : input6834 = (.seq input6833 input6828) := by
  unfold input6834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6833 output6828)).val
theorem output6834_def : output6834 = (.seq output6833 output6828) := by
  unfold output6834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6834_skip : Flapjack.WordAlloc.isSkip output6834 = false := by
  rw [output6834_def]
  conv => lhs; cbv
  try rfl
theorem node6834_eq : Flapjack.WordAlloc.removeDeadStructural input6834 value3418 value1 value2 = (output6834, value5, value1) := by
  rw [input6834_def, output6834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6828_eq]
  dsimp only
  rw [node6833_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6834 input6827)).val
theorem input6835_def : input6835 = (.seq input6834 input6827) := by
  unfold input6835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6834 output6827)).val
theorem output6835_def : output6835 = (.seq output6834 output6827) := by
  unfold output6835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6835_skip : Flapjack.WordAlloc.isSkip output6835 = false := by
  rw [output6835_def]
  conv => lhs; cbv
  try rfl
theorem node6835_eq : Flapjack.WordAlloc.removeDeadStructural input6835 value3416 value1 value2 = (output6835, value5, value1) := by
  rw [input6835_def, output6835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6827_eq]
  dsimp only
  rw [node6834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3422 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15837 (Flapjack.WordLangAddr.addr 15841 0#64)))).val
theorem input6836_def : input6836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15837 (Flapjack.WordLangAddr.addr 15841 0#64))) := by
  unfold input6836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15837 (Flapjack.WordLangAddr.addr 15841 0#64)))).val
theorem output6836_def : output6836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15837 (Flapjack.WordLangAddr.addr 15841 0#64))) := by
  unfold output6836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6836_skip : Flapjack.WordAlloc.isSkip output6836 = false := by
  rw [output6836_def]
  conv => lhs; cbv
  try rfl
theorem node6836_eq : Flapjack.WordAlloc.removeDeadStructural input6836 value5 value1 value2 = (output6836, value3422, value1) := by
  rw [input6836_def, output6836_def]
  try (conv => lhs; cbv)
  try rfl

def value3423 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15841, 15829)])).val
theorem input6837_def : input6837 = (Flapjack.WordLangProgHOL.move 0 [(15841, 15829)]) := by
  unfold input6837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15841, 15829)])).val
theorem output6837_def : output6837 = (Flapjack.WordLangProgHOL.move 0 [(15841, 15829)]) := by
  unfold output6837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6837_skip : Flapjack.WordAlloc.isSkip output6837 = false := by
  rw [output6837_def]
  conv => lhs; cbv
  try rfl
theorem node6837_eq : Flapjack.WordAlloc.removeDeadStructural input6837 value3422 value1 value2 = (output6837, value3423, value1) := by
  rw [input6837_def, output6837_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6837 input6836)).val
theorem input6838_def : input6838 = (.seq input6837 input6836) := by
  unfold input6838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6837 output6836)).val
theorem output6838_def : output6838 = (.seq output6837 output6836) := by
  unfold output6838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6838_skip : Flapjack.WordAlloc.isSkip output6838 = false := by
  rw [output6838_def]
  conv => lhs; cbv
  try rfl
theorem node6838_eq : Flapjack.WordAlloc.removeDeadStructural input6838 value5 value1 value2 = (output6838, value3423, value1) := by
  rw [input6838_def, output6838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6836_eq]
  dsimp only
  rw [node6837_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3424 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15837 189531577938912252#64))).val
theorem input6839_def : input6839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15837 189531577938912252#64)) := by
  unfold input6839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15837 189531577938912252#64))).val
theorem output6839_def : output6839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15837 189531577938912252#64)) := by
  unfold output6839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6839_skip : Flapjack.WordAlloc.isSkip output6839 = false := by
  rw [output6839_def]
  conv => lhs; cbv
  try rfl
theorem node6839_eq : Flapjack.WordAlloc.removeDeadStructural input6839 value3423 value1 value2 = (output6839, value3424, value1) := by
  rw [input6839_def, output6839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15833 189531577938912252#64))).val
theorem input6840_def : input6840 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15833 189531577938912252#64)) := by
  unfold input6840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6840_def : output6840 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6840_skip : Flapjack.WordAlloc.isSkip output6840 = true := by
  rw [output6840_def]
  conv => lhs; cbv
  try rfl
theorem node6840_eq : Flapjack.WordAlloc.removeDeadStructural input6840 value3424 value1 value2 = (output6840, value3424, value1) := by
  rw [input6840_def, output6840_def]
  try (conv => lhs; cbv)
  try rfl

def value3425 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15829 15821 (Flapjack.WordRegImm.reg 15825))))).val
theorem input6841_def : input6841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15829 15821 (Flapjack.WordRegImm.reg 15825)))) := by
  unfold input6841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15829 15821 (Flapjack.WordRegImm.reg 15825))))).val
theorem output6841_def : output6841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15829 15821 (Flapjack.WordRegImm.reg 15825)))) := by
  unfold output6841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6841_skip : Flapjack.WordAlloc.isSkip output6841 = false := by
  rw [output6841_def]
  conv => lhs; cbv
  try rfl
theorem node6841_eq : Flapjack.WordAlloc.removeDeadStructural input6841 value3424 value1 value2 = (output6841, value3425, value1) := by
  rw [input6841_def, output6841_def]
  try (conv => lhs; cbv)
  try rfl

def value3426 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15825 3712#64))).val
theorem input6842_def : input6842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15825 3712#64)) := by
  unfold input6842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15825 3712#64))).val
theorem output6842_def : output6842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15825 3712#64)) := by
  unfold output6842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6842_skip : Flapjack.WordAlloc.isSkip output6842 = false := by
  rw [output6842_def]
  conv => lhs; cbv
  try rfl
theorem node6842_eq : Flapjack.WordAlloc.removeDeadStructural input6842 value3425 value1 value2 = (output6842, value3426, value1) := by
  rw [input6842_def, output6842_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6842 input6841)).val
theorem input6843_def : input6843 = (.seq input6842 input6841) := by
  unfold input6843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6842 output6841)).val
theorem output6843_def : output6843 = (.seq output6842 output6841) := by
  unfold output6843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6843_skip : Flapjack.WordAlloc.isSkip output6843 = false := by
  rw [output6843_def]
  conv => lhs; cbv
  try rfl
theorem node6843_eq : Flapjack.WordAlloc.removeDeadStructural input6843 value3424 value1 value2 = (output6843, value3426, value1) := by
  rw [input6843_def, output6843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6841_eq]
  dsimp only
  rw [node6842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3427 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15821 (Flapjack.WordLangAddr.addr 15817 18446744073709551104#64)))).val
theorem input6844_def : input6844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15821 (Flapjack.WordLangAddr.addr 15817 18446744073709551104#64))) := by
  unfold input6844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15821 (Flapjack.WordLangAddr.addr 15817 18446744073709551104#64)))).val
theorem output6844_def : output6844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15821 (Flapjack.WordLangAddr.addr 15817 18446744073709551104#64))) := by
  unfold output6844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6844_skip : Flapjack.WordAlloc.isSkip output6844 = false := by
  rw [output6844_def]
  conv => lhs; cbv
  try rfl
theorem node6844_eq : Flapjack.WordAlloc.removeDeadStructural input6844 value3426 value1 value2 = (output6844, value3427, value1) := by
  rw [input6844_def, output6844_def]
  try (conv => lhs; cbv)
  try rfl

def value3428 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15817 15813)).val
theorem input6845_def : input6845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15817 15813) := by
  unfold input6845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15817 15813)).val
theorem output6845_def : output6845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15817 15813) := by
  unfold output6845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6845_skip : Flapjack.WordAlloc.isSkip output6845 = false := by
  rw [output6845_def]
  conv => lhs; cbv
  try rfl
theorem node6845_eq : Flapjack.WordAlloc.removeDeadStructural input6845 value3427 value1 value2 = (output6845, value3428, value1) := by
  rw [input6845_def, output6845_def]
  try (conv => lhs; cbv)
  try rfl

def value3429 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15813 15809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6846_def : input6846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15813 15809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15813 15809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6846_def : output6846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15813 15809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6846_skip : Flapjack.WordAlloc.isSkip output6846 = false := by
  rw [output6846_def]
  conv => lhs; cbv
  try rfl
theorem node6846_eq : Flapjack.WordAlloc.removeDeadStructural input6846 value3428 value1 value2 = (output6846, value3429, value1) := by
  rw [input6846_def, output6846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15809 Flapjack.WordStore.heapLength)).val
theorem input6847_def : input6847 = (Flapjack.WordLangProgHOL.get 15809 Flapjack.WordStore.heapLength) := by
  unfold input6847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15809 Flapjack.WordStore.heapLength)).val
theorem output6847_def : output6847 = (Flapjack.WordLangProgHOL.get 15809 Flapjack.WordStore.heapLength) := by
  unfold output6847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6847_skip : Flapjack.WordAlloc.isSkip output6847 = false := by
  rw [output6847_def]
  conv => lhs; cbv
  try rfl
theorem node6847_eq : Flapjack.WordAlloc.removeDeadStructural input6847 value3429 value1 value2 = (output6847, value5, value1) := by
  rw [input6847_def, output6847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6847 input6846)).val
theorem input6848_def : input6848 = (.seq input6847 input6846) := by
  unfold input6848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6847 output6846)).val
theorem output6848_def : output6848 = (.seq output6847 output6846) := by
  unfold output6848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6848_skip : Flapjack.WordAlloc.isSkip output6848 = false := by
  rw [output6848_def]
  conv => lhs; cbv
  try rfl
theorem node6848_eq : Flapjack.WordAlloc.removeDeadStructural input6848 value3428 value1 value2 = (output6848, value5, value1) := by
  rw [input6848_def, output6848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6846_eq]
  dsimp only
  rw [node6847_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6848 input6845)).val
theorem input6849_def : input6849 = (.seq input6848 input6845) := by
  unfold input6849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6848 output6845)).val
theorem output6849_def : output6849 = (.seq output6848 output6845) := by
  unfold output6849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6849_skip : Flapjack.WordAlloc.isSkip output6849 = false := by
  rw [output6849_def]
  conv => lhs; cbv
  try rfl
theorem node6849_eq : Flapjack.WordAlloc.removeDeadStructural input6849 value3427 value1 value2 = (output6849, value5, value1) := by
  rw [input6849_def, output6849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6845_eq]
  dsimp only
  rw [node6848_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6849 input6844)).val
theorem input6850_def : input6850 = (.seq input6849 input6844) := by
  unfold input6850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6849 output6844)).val
theorem output6850_def : output6850 = (.seq output6849 output6844) := by
  unfold output6850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6850_skip : Flapjack.WordAlloc.isSkip output6850 = false := by
  rw [output6850_def]
  conv => lhs; cbv
  try rfl
theorem node6850_eq : Flapjack.WordAlloc.removeDeadStructural input6850 value3426 value1 value2 = (output6850, value5, value1) := by
  rw [input6850_def, output6850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6844_eq]
  dsimp only
  rw [node6849_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6850 input6843)).val
theorem input6851_def : input6851 = (.seq input6850 input6843) := by
  unfold input6851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6850 output6843)).val
theorem output6851_def : output6851 = (.seq output6850 output6843) := by
  unfold output6851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6851_skip : Flapjack.WordAlloc.isSkip output6851 = false := by
  rw [output6851_def]
  conv => lhs; cbv
  try rfl
theorem node6851_eq : Flapjack.WordAlloc.removeDeadStructural input6851 value3424 value1 value2 = (output6851, value5, value1) := by
  rw [input6851_def, output6851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6843_eq]
  dsimp only
  rw [node6850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3430 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15801 (Flapjack.WordLangAddr.addr 15805 0#64)))).val
theorem input6852_def : input6852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15801 (Flapjack.WordLangAddr.addr 15805 0#64))) := by
  unfold input6852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15801 (Flapjack.WordLangAddr.addr 15805 0#64)))).val
theorem output6852_def : output6852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15801 (Flapjack.WordLangAddr.addr 15805 0#64))) := by
  unfold output6852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6852_skip : Flapjack.WordAlloc.isSkip output6852 = false := by
  rw [output6852_def]
  conv => lhs; cbv
  try rfl
theorem node6852_eq : Flapjack.WordAlloc.removeDeadStructural input6852 value5 value1 value2 = (output6852, value3430, value1) := by
  rw [input6852_def, output6852_def]
  try (conv => lhs; cbv)
  try rfl

def value3431 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15805, 15793)])).val
theorem input6853_def : input6853 = (Flapjack.WordLangProgHOL.move 0 [(15805, 15793)]) := by
  unfold input6853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15805, 15793)])).val
theorem output6853_def : output6853 = (Flapjack.WordLangProgHOL.move 0 [(15805, 15793)]) := by
  unfold output6853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6853_skip : Flapjack.WordAlloc.isSkip output6853 = false := by
  rw [output6853_def]
  conv => lhs; cbv
  try rfl
theorem node6853_eq : Flapjack.WordAlloc.removeDeadStructural input6853 value3430 value1 value2 = (output6853, value3431, value1) := by
  rw [input6853_def, output6853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6853 input6852)).val
theorem input6854_def : input6854 = (.seq input6853 input6852) := by
  unfold input6854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6853 output6852)).val
theorem output6854_def : output6854 = (.seq output6853 output6852) := by
  unfold output6854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6854_skip : Flapjack.WordAlloc.isSkip output6854 = false := by
  rw [output6854_def]
  conv => lhs; cbv
  try rfl
theorem node6854_eq : Flapjack.WordAlloc.removeDeadStructural input6854 value5 value1 value2 = (output6854, value3431, value1) := by
  rw [input6854_def, output6854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6852_eq]
  dsimp only
  rw [node6853_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3432 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15801 6802473390048830824#64))).val
theorem input6855_def : input6855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15801 6802473390048830824#64)) := by
  unfold input6855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15801 6802473390048830824#64))).val
theorem output6855_def : output6855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15801 6802473390048830824#64)) := by
  unfold output6855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6855_skip : Flapjack.WordAlloc.isSkip output6855 = false := by
  rw [output6855_def]
  conv => lhs; cbv
  try rfl
theorem node6855_eq : Flapjack.WordAlloc.removeDeadStructural input6855 value3431 value1 value2 = (output6855, value3432, value1) := by
  rw [input6855_def, output6855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15797 6802473390048830824#64))).val
theorem input6856_def : input6856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15797 6802473390048830824#64)) := by
  unfold input6856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6856_def : output6856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6856_skip : Flapjack.WordAlloc.isSkip output6856 = true := by
  rw [output6856_def]
  conv => lhs; cbv
  try rfl
theorem node6856_eq : Flapjack.WordAlloc.removeDeadStructural input6856 value3432 value1 value2 = (output6856, value3432, value1) := by
  rw [input6856_def, output6856_def]
  try (conv => lhs; cbv)
  try rfl

def value3433 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15793 15785 (Flapjack.WordRegImm.reg 15789))))).val
theorem input6857_def : input6857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15793 15785 (Flapjack.WordRegImm.reg 15789)))) := by
  unfold input6857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15793 15785 (Flapjack.WordRegImm.reg 15789))))).val
theorem output6857_def : output6857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15793 15785 (Flapjack.WordRegImm.reg 15789)))) := by
  unfold output6857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6857_skip : Flapjack.WordAlloc.isSkip output6857 = false := by
  rw [output6857_def]
  conv => lhs; cbv
  try rfl
theorem node6857_eq : Flapjack.WordAlloc.removeDeadStructural input6857 value3432 value1 value2 = (output6857, value3433, value1) := by
  rw [input6857_def, output6857_def]
  try (conv => lhs; cbv)
  try rfl

def value3434 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15789 3704#64))).val
theorem input6858_def : input6858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15789 3704#64)) := by
  unfold input6858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15789 3704#64))).val
theorem output6858_def : output6858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15789 3704#64)) := by
  unfold output6858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6858_skip : Flapjack.WordAlloc.isSkip output6858 = false := by
  rw [output6858_def]
  conv => lhs; cbv
  try rfl
theorem node6858_eq : Flapjack.WordAlloc.removeDeadStructural input6858 value3433 value1 value2 = (output6858, value3434, value1) := by
  rw [input6858_def, output6858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6858 input6857)).val
theorem input6859_def : input6859 = (.seq input6858 input6857) := by
  unfold input6859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6858 output6857)).val
theorem output6859_def : output6859 = (.seq output6858 output6857) := by
  unfold output6859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6859_skip : Flapjack.WordAlloc.isSkip output6859 = false := by
  rw [output6859_def]
  conv => lhs; cbv
  try rfl
theorem node6859_eq : Flapjack.WordAlloc.removeDeadStructural input6859 value3432 value1 value2 = (output6859, value3434, value1) := by
  rw [input6859_def, output6859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6857_eq]
  dsimp only
  rw [node6858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3435 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15785 (Flapjack.WordLangAddr.addr 15781 18446744073709551104#64)))).val
theorem input6860_def : input6860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15785 (Flapjack.WordLangAddr.addr 15781 18446744073709551104#64))) := by
  unfold input6860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15785 (Flapjack.WordLangAddr.addr 15781 18446744073709551104#64)))).val
theorem output6860_def : output6860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15785 (Flapjack.WordLangAddr.addr 15781 18446744073709551104#64))) := by
  unfold output6860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6860_skip : Flapjack.WordAlloc.isSkip output6860 = false := by
  rw [output6860_def]
  conv => lhs; cbv
  try rfl
theorem node6860_eq : Flapjack.WordAlloc.removeDeadStructural input6860 value3434 value1 value2 = (output6860, value3435, value1) := by
  rw [input6860_def, output6860_def]
  try (conv => lhs; cbv)
  try rfl

def value3436 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15781 15777)).val
theorem input6861_def : input6861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15781 15777) := by
  unfold input6861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15781 15777)).val
theorem output6861_def : output6861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15781 15777) := by
  unfold output6861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6861_skip : Flapjack.WordAlloc.isSkip output6861 = false := by
  rw [output6861_def]
  conv => lhs; cbv
  try rfl
theorem node6861_eq : Flapjack.WordAlloc.removeDeadStructural input6861 value3435 value1 value2 = (output6861, value3436, value1) := by
  rw [input6861_def, output6861_def]
  try (conv => lhs; cbv)
  try rfl

def value3437 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15777 15773 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6862_def : input6862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15777 15773 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15777 15773 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6862_def : output6862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15777 15773 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6862_skip : Flapjack.WordAlloc.isSkip output6862 = false := by
  rw [output6862_def]
  conv => lhs; cbv
  try rfl
theorem node6862_eq : Flapjack.WordAlloc.removeDeadStructural input6862 value3436 value1 value2 = (output6862, value3437, value1) := by
  rw [input6862_def, output6862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15773 Flapjack.WordStore.heapLength)).val
theorem input6863_def : input6863 = (Flapjack.WordLangProgHOL.get 15773 Flapjack.WordStore.heapLength) := by
  unfold input6863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15773 Flapjack.WordStore.heapLength)).val
theorem output6863_def : output6863 = (Flapjack.WordLangProgHOL.get 15773 Flapjack.WordStore.heapLength) := by
  unfold output6863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6863_skip : Flapjack.WordAlloc.isSkip output6863 = false := by
  rw [output6863_def]
  conv => lhs; cbv
  try rfl
theorem node6863_eq : Flapjack.WordAlloc.removeDeadStructural input6863 value3437 value1 value2 = (output6863, value5, value1) := by
  rw [input6863_def, output6863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6863 input6862)).val
theorem input6864_def : input6864 = (.seq input6863 input6862) := by
  unfold input6864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6863 output6862)).val
theorem output6864_def : output6864 = (.seq output6863 output6862) := by
  unfold output6864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6864_skip : Flapjack.WordAlloc.isSkip output6864 = false := by
  rw [output6864_def]
  conv => lhs; cbv
  try rfl
theorem node6864_eq : Flapjack.WordAlloc.removeDeadStructural input6864 value3436 value1 value2 = (output6864, value5, value1) := by
  rw [input6864_def, output6864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6862_eq]
  dsimp only
  rw [node6863_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6864 input6861)).val
theorem input6865_def : input6865 = (.seq input6864 input6861) := by
  unfold input6865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6864 output6861)).val
theorem output6865_def : output6865 = (.seq output6864 output6861) := by
  unfold output6865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6865_skip : Flapjack.WordAlloc.isSkip output6865 = false := by
  rw [output6865_def]
  conv => lhs; cbv
  try rfl
theorem node6865_eq : Flapjack.WordAlloc.removeDeadStructural input6865 value3435 value1 value2 = (output6865, value5, value1) := by
  rw [input6865_def, output6865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6861_eq]
  dsimp only
  rw [node6864_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6865 input6860)).val
theorem input6866_def : input6866 = (.seq input6865 input6860) := by
  unfold input6866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6865 output6860)).val
theorem output6866_def : output6866 = (.seq output6865 output6860) := by
  unfold output6866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6866_skip : Flapjack.WordAlloc.isSkip output6866 = false := by
  rw [output6866_def]
  conv => lhs; cbv
  try rfl
theorem node6866_eq : Flapjack.WordAlloc.removeDeadStructural input6866 value3434 value1 value2 = (output6866, value5, value1) := by
  rw [input6866_def, output6866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6860_eq]
  dsimp only
  rw [node6865_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6866 input6859)).val
theorem input6867_def : input6867 = (.seq input6866 input6859) := by
  unfold input6867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6866 output6859)).val
theorem output6867_def : output6867 = (.seq output6866 output6859) := by
  unfold output6867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6867_skip : Flapjack.WordAlloc.isSkip output6867 = false := by
  rw [output6867_def]
  conv => lhs; cbv
  try rfl
theorem node6867_eq : Flapjack.WordAlloc.removeDeadStructural input6867 value3432 value1 value2 = (output6867, value5, value1) := by
  rw [input6867_def, output6867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6859_eq]
  dsimp only
  rw [node6866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3438 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15765 (Flapjack.WordLangAddr.addr 15769 0#64)))).val
theorem input6868_def : input6868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15765 (Flapjack.WordLangAddr.addr 15769 0#64))) := by
  unfold input6868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15765 (Flapjack.WordLangAddr.addr 15769 0#64)))).val
theorem output6868_def : output6868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15765 (Flapjack.WordLangAddr.addr 15769 0#64))) := by
  unfold output6868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6868_skip : Flapjack.WordAlloc.isSkip output6868 = false := by
  rw [output6868_def]
  conv => lhs; cbv
  try rfl
theorem node6868_eq : Flapjack.WordAlloc.removeDeadStructural input6868 value5 value1 value2 = (output6868, value3438, value1) := by
  rw [input6868_def, output6868_def]
  try (conv => lhs; cbv)
  try rfl

def value3439 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15769, 15757)])).val
theorem input6869_def : input6869 = (Flapjack.WordLangProgHOL.move 0 [(15769, 15757)]) := by
  unfold input6869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15769, 15757)])).val
theorem output6869_def : output6869 = (Flapjack.WordLangProgHOL.move 0 [(15769, 15757)]) := by
  unfold output6869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6869_skip : Flapjack.WordAlloc.isSkip output6869 = false := by
  rw [output6869_def]
  conv => lhs; cbv
  try rfl
theorem node6869_eq : Flapjack.WordAlloc.removeDeadStructural input6869 value3438 value1 value2 = (output6869, value3439, value1) := by
  rw [input6869_def, output6869_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6869 input6868)).val
theorem input6870_def : input6870 = (.seq input6869 input6868) := by
  unfold input6870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6869 output6868)).val
theorem output6870_def : output6870 = (.seq output6869 output6868) := by
  unfold output6870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6870_skip : Flapjack.WordAlloc.isSkip output6870 = false := by
  rw [output6870_def]
  conv => lhs; cbv
  try rfl
theorem node6870_eq : Flapjack.WordAlloc.removeDeadStructural input6870 value5 value1 value2 = (output6870, value3439, value1) := by
  rw [input6870_def, output6870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6868_eq]
  dsimp only
  rw [node6869_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3440 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15765 15684647020317539556#64))).val
theorem input6871_def : input6871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15765 15684647020317539556#64)) := by
  unfold input6871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15765 15684647020317539556#64))).val
theorem output6871_def : output6871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15765 15684647020317539556#64)) := by
  unfold output6871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6871_skip : Flapjack.WordAlloc.isSkip output6871 = false := by
  rw [output6871_def]
  conv => lhs; cbv
  try rfl
theorem node6871_eq : Flapjack.WordAlloc.removeDeadStructural input6871 value3439 value1 value2 = (output6871, value3440, value1) := by
  rw [input6871_def, output6871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15761 15684647020317539556#64))).val
theorem input6872_def : input6872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15761 15684647020317539556#64)) := by
  unfold input6872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6872_def : output6872 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6872_skip : Flapjack.WordAlloc.isSkip output6872 = true := by
  rw [output6872_def]
  conv => lhs; cbv
  try rfl
theorem node6872_eq : Flapjack.WordAlloc.removeDeadStructural input6872 value3440 value1 value2 = (output6872, value3440, value1) := by
  rw [input6872_def, output6872_def]
  try (conv => lhs; cbv)
  try rfl

def value3441 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15757 15749 (Flapjack.WordRegImm.reg 15753))))).val
theorem input6873_def : input6873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15757 15749 (Flapjack.WordRegImm.reg 15753)))) := by
  unfold input6873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15757 15749 (Flapjack.WordRegImm.reg 15753))))).val
theorem output6873_def : output6873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15757 15749 (Flapjack.WordRegImm.reg 15753)))) := by
  unfold output6873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6873_skip : Flapjack.WordAlloc.isSkip output6873 = false := by
  rw [output6873_def]
  conv => lhs; cbv
  try rfl
theorem node6873_eq : Flapjack.WordAlloc.removeDeadStructural input6873 value3440 value1 value2 = (output6873, value3441, value1) := by
  rw [input6873_def, output6873_def]
  try (conv => lhs; cbv)
  try rfl

def value3442 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15753 3696#64))).val
theorem input6874_def : input6874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15753 3696#64)) := by
  unfold input6874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15753 3696#64))).val
theorem output6874_def : output6874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15753 3696#64)) := by
  unfold output6874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6874_skip : Flapjack.WordAlloc.isSkip output6874 = false := by
  rw [output6874_def]
  conv => lhs; cbv
  try rfl
theorem node6874_eq : Flapjack.WordAlloc.removeDeadStructural input6874 value3441 value1 value2 = (output6874, value3442, value1) := by
  rw [input6874_def, output6874_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6874 input6873)).val
theorem input6875_def : input6875 = (.seq input6874 input6873) := by
  unfold input6875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6874 output6873)).val
theorem output6875_def : output6875 = (.seq output6874 output6873) := by
  unfold output6875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6875_skip : Flapjack.WordAlloc.isSkip output6875 = false := by
  rw [output6875_def]
  conv => lhs; cbv
  try rfl
theorem node6875_eq : Flapjack.WordAlloc.removeDeadStructural input6875 value3440 value1 value2 = (output6875, value3442, value1) := by
  rw [input6875_def, output6875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6873_eq]
  dsimp only
  rw [node6874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3443 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15749 (Flapjack.WordLangAddr.addr 15745 18446744073709551104#64)))).val
theorem input6876_def : input6876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15749 (Flapjack.WordLangAddr.addr 15745 18446744073709551104#64))) := by
  unfold input6876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15749 (Flapjack.WordLangAddr.addr 15745 18446744073709551104#64)))).val
theorem output6876_def : output6876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15749 (Flapjack.WordLangAddr.addr 15745 18446744073709551104#64))) := by
  unfold output6876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6876_skip : Flapjack.WordAlloc.isSkip output6876 = false := by
  rw [output6876_def]
  conv => lhs; cbv
  try rfl
theorem node6876_eq : Flapjack.WordAlloc.removeDeadStructural input6876 value3442 value1 value2 = (output6876, value3443, value1) := by
  rw [input6876_def, output6876_def]
  try (conv => lhs; cbv)
  try rfl

def value3444 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15745 15741)).val
theorem input6877_def : input6877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15745 15741) := by
  unfold input6877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15745 15741)).val
theorem output6877_def : output6877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15745 15741) := by
  unfold output6877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6877_skip : Flapjack.WordAlloc.isSkip output6877 = false := by
  rw [output6877_def]
  conv => lhs; cbv
  try rfl
theorem node6877_eq : Flapjack.WordAlloc.removeDeadStructural input6877 value3443 value1 value2 = (output6877, value3444, value1) := by
  rw [input6877_def, output6877_def]
  try (conv => lhs; cbv)
  try rfl

def value3445 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15741 15737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6878_def : input6878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15741 15737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15741 15737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6878_def : output6878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15741 15737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6878_skip : Flapjack.WordAlloc.isSkip output6878 = false := by
  rw [output6878_def]
  conv => lhs; cbv
  try rfl
theorem node6878_eq : Flapjack.WordAlloc.removeDeadStructural input6878 value3444 value1 value2 = (output6878, value3445, value1) := by
  rw [input6878_def, output6878_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15737 Flapjack.WordStore.heapLength)).val
theorem input6879_def : input6879 = (Flapjack.WordLangProgHOL.get 15737 Flapjack.WordStore.heapLength) := by
  unfold input6879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15737 Flapjack.WordStore.heapLength)).val
theorem output6879_def : output6879 = (Flapjack.WordLangProgHOL.get 15737 Flapjack.WordStore.heapLength) := by
  unfold output6879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6879_skip : Flapjack.WordAlloc.isSkip output6879 = false := by
  rw [output6879_def]
  conv => lhs; cbv
  try rfl
theorem node6879_eq : Flapjack.WordAlloc.removeDeadStructural input6879 value3445 value1 value2 = (output6879, value5, value1) := by
  rw [input6879_def, output6879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6879 input6878)).val
theorem input6880_def : input6880 = (.seq input6879 input6878) := by
  unfold input6880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6879 output6878)).val
theorem output6880_def : output6880 = (.seq output6879 output6878) := by
  unfold output6880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6880_skip : Flapjack.WordAlloc.isSkip output6880 = false := by
  rw [output6880_def]
  conv => lhs; cbv
  try rfl
theorem node6880_eq : Flapjack.WordAlloc.removeDeadStructural input6880 value3444 value1 value2 = (output6880, value5, value1) := by
  rw [input6880_def, output6880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6878_eq]
  dsimp only
  rw [node6879_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6880 input6877)).val
theorem input6881_def : input6881 = (.seq input6880 input6877) := by
  unfold input6881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6880 output6877)).val
theorem output6881_def : output6881 = (.seq output6880 output6877) := by
  unfold output6881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6881_skip : Flapjack.WordAlloc.isSkip output6881 = false := by
  rw [output6881_def]
  conv => lhs; cbv
  try rfl
theorem node6881_eq : Flapjack.WordAlloc.removeDeadStructural input6881 value3443 value1 value2 = (output6881, value5, value1) := by
  rw [input6881_def, output6881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6877_eq]
  dsimp only
  rw [node6880_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6881 input6876)).val
theorem input6882_def : input6882 = (.seq input6881 input6876) := by
  unfold input6882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6881 output6876)).val
theorem output6882_def : output6882 = (.seq output6881 output6876) := by
  unfold output6882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6882_skip : Flapjack.WordAlloc.isSkip output6882 = false := by
  rw [output6882_def]
  conv => lhs; cbv
  try rfl
theorem node6882_eq : Flapjack.WordAlloc.removeDeadStructural input6882 value3442 value1 value2 = (output6882, value5, value1) := by
  rw [input6882_def, output6882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6876_eq]
  dsimp only
  rw [node6881_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6882 input6875)).val
theorem input6883_def : input6883 = (.seq input6882 input6875) := by
  unfold input6883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6882 output6875)).val
theorem output6883_def : output6883 = (.seq output6882 output6875) := by
  unfold output6883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6883_skip : Flapjack.WordAlloc.isSkip output6883 = false := by
  rw [output6883_def]
  conv => lhs; cbv
  try rfl
theorem node6883_eq : Flapjack.WordAlloc.removeDeadStructural input6883 value3440 value1 value2 = (output6883, value5, value1) := by
  rw [input6883_def, output6883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6875_eq]
  dsimp only
  rw [node6882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3446 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15729 (Flapjack.WordLangAddr.addr 15733 0#64)))).val
theorem input6884_def : input6884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15729 (Flapjack.WordLangAddr.addr 15733 0#64))) := by
  unfold input6884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15729 (Flapjack.WordLangAddr.addr 15733 0#64)))).val
theorem output6884_def : output6884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15729 (Flapjack.WordLangAddr.addr 15733 0#64))) := by
  unfold output6884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6884_skip : Flapjack.WordAlloc.isSkip output6884 = false := by
  rw [output6884_def]
  conv => lhs; cbv
  try rfl
theorem node6884_eq : Flapjack.WordAlloc.removeDeadStructural input6884 value5 value1 value2 = (output6884, value3446, value1) := by
  rw [input6884_def, output6884_def]
  try (conv => lhs; cbv)
  try rfl

def value3447 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15733, 15721)])).val
theorem input6885_def : input6885 = (Flapjack.WordLangProgHOL.move 0 [(15733, 15721)]) := by
  unfold input6885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15733, 15721)])).val
theorem output6885_def : output6885 = (Flapjack.WordLangProgHOL.move 0 [(15733, 15721)]) := by
  unfold output6885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6885_skip : Flapjack.WordAlloc.isSkip output6885 = false := by
  rw [output6885_def]
  conv => lhs; cbv
  try rfl
theorem node6885_eq : Flapjack.WordAlloc.removeDeadStructural input6885 value3446 value1 value2 = (output6885, value3447, value1) := by
  rw [input6885_def, output6885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6885 input6884)).val
theorem input6886_def : input6886 = (.seq input6885 input6884) := by
  unfold input6886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6885 output6884)).val
theorem output6886_def : output6886 = (.seq output6885 output6884) := by
  unfold output6886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6886_skip : Flapjack.WordAlloc.isSkip output6886 = false := by
  rw [output6886_def]
  conv => lhs; cbv
  try rfl
theorem node6886_eq : Flapjack.WordAlloc.removeDeadStructural input6886 value5 value1 value2 = (output6886, value3447, value1) := by
  rw [input6886_def, output6886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6884_eq]
  dsimp only
  rw [node6885_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3448 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15729 7755485098777620407#64))).val
theorem input6887_def : input6887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15729 7755485098777620407#64)) := by
  unfold input6887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15729 7755485098777620407#64))).val
theorem output6887_def : output6887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15729 7755485098777620407#64)) := by
  unfold output6887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6887_skip : Flapjack.WordAlloc.isSkip output6887 = false := by
  rw [output6887_def]
  conv => lhs; cbv
  try rfl
theorem node6887_eq : Flapjack.WordAlloc.removeDeadStructural input6887 value3447 value1 value2 = (output6887, value3448, value1) := by
  rw [input6887_def, output6887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15725 7755485098777620407#64))).val
theorem input6888_def : input6888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15725 7755485098777620407#64)) := by
  unfold input6888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6888_def : output6888 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6888_skip : Flapjack.WordAlloc.isSkip output6888 = true := by
  rw [output6888_def]
  conv => lhs; cbv
  try rfl
theorem node6888_eq : Flapjack.WordAlloc.removeDeadStructural input6888 value3448 value1 value2 = (output6888, value3448, value1) := by
  rw [input6888_def, output6888_def]
  try (conv => lhs; cbv)
  try rfl

def value3449 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15721 15713 (Flapjack.WordRegImm.reg 15717))))).val
theorem input6889_def : input6889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15721 15713 (Flapjack.WordRegImm.reg 15717)))) := by
  unfold input6889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15721 15713 (Flapjack.WordRegImm.reg 15717))))).val
theorem output6889_def : output6889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15721 15713 (Flapjack.WordRegImm.reg 15717)))) := by
  unfold output6889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6889_skip : Flapjack.WordAlloc.isSkip output6889 = false := by
  rw [output6889_def]
  conv => lhs; cbv
  try rfl
theorem node6889_eq : Flapjack.WordAlloc.removeDeadStructural input6889 value3448 value1 value2 = (output6889, value3449, value1) := by
  rw [input6889_def, output6889_def]
  try (conv => lhs; cbv)
  try rfl

def value3450 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15717 3688#64))).val
theorem input6890_def : input6890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15717 3688#64)) := by
  unfold input6890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15717 3688#64))).val
theorem output6890_def : output6890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15717 3688#64)) := by
  unfold output6890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6890_skip : Flapjack.WordAlloc.isSkip output6890 = false := by
  rw [output6890_def]
  conv => lhs; cbv
  try rfl
theorem node6890_eq : Flapjack.WordAlloc.removeDeadStructural input6890 value3449 value1 value2 = (output6890, value3450, value1) := by
  rw [input6890_def, output6890_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6890 input6889)).val
theorem input6891_def : input6891 = (.seq input6890 input6889) := by
  unfold input6891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6890 output6889)).val
theorem output6891_def : output6891 = (.seq output6890 output6889) := by
  unfold output6891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6891_skip : Flapjack.WordAlloc.isSkip output6891 = false := by
  rw [output6891_def]
  conv => lhs; cbv
  try rfl
theorem node6891_eq : Flapjack.WordAlloc.removeDeadStructural input6891 value3448 value1 value2 = (output6891, value3450, value1) := by
  rw [input6891_def, output6891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6889_eq]
  dsimp only
  rw [node6890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3451 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15713 (Flapjack.WordLangAddr.addr 15709 18446744073709551104#64)))).val
theorem input6892_def : input6892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15713 (Flapjack.WordLangAddr.addr 15709 18446744073709551104#64))) := by
  unfold input6892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15713 (Flapjack.WordLangAddr.addr 15709 18446744073709551104#64)))).val
theorem output6892_def : output6892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15713 (Flapjack.WordLangAddr.addr 15709 18446744073709551104#64))) := by
  unfold output6892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6892_skip : Flapjack.WordAlloc.isSkip output6892 = false := by
  rw [output6892_def]
  conv => lhs; cbv
  try rfl
theorem node6892_eq : Flapjack.WordAlloc.removeDeadStructural input6892 value3450 value1 value2 = (output6892, value3451, value1) := by
  rw [input6892_def, output6892_def]
  try (conv => lhs; cbv)
  try rfl

def value3452 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15709 15705)).val
theorem input6893_def : input6893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15709 15705) := by
  unfold input6893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15709 15705)).val
theorem output6893_def : output6893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15709 15705) := by
  unfold output6893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6893_skip : Flapjack.WordAlloc.isSkip output6893 = false := by
  rw [output6893_def]
  conv => lhs; cbv
  try rfl
theorem node6893_eq : Flapjack.WordAlloc.removeDeadStructural input6893 value3451 value1 value2 = (output6893, value3452, value1) := by
  rw [input6893_def, output6893_def]
  try (conv => lhs; cbv)
  try rfl

def value3453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15705 15701 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6894_def : input6894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15705 15701 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15705 15701 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6894_def : output6894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15705 15701 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6894_skip : Flapjack.WordAlloc.isSkip output6894 = false := by
  rw [output6894_def]
  conv => lhs; cbv
  try rfl
theorem node6894_eq : Flapjack.WordAlloc.removeDeadStructural input6894 value3452 value1 value2 = (output6894, value3453, value1) := by
  rw [input6894_def, output6894_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15701 Flapjack.WordStore.heapLength)).val
theorem input6895_def : input6895 = (Flapjack.WordLangProgHOL.get 15701 Flapjack.WordStore.heapLength) := by
  unfold input6895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15701 Flapjack.WordStore.heapLength)).val
theorem output6895_def : output6895 = (Flapjack.WordLangProgHOL.get 15701 Flapjack.WordStore.heapLength) := by
  unfold output6895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6895_skip : Flapjack.WordAlloc.isSkip output6895 = false := by
  rw [output6895_def]
  conv => lhs; cbv
  try rfl
theorem node6895_eq : Flapjack.WordAlloc.removeDeadStructural input6895 value3453 value1 value2 = (output6895, value5, value1) := by
  rw [input6895_def, output6895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6895 input6894)).val
theorem input6896_def : input6896 = (.seq input6895 input6894) := by
  unfold input6896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6895 output6894)).val
theorem output6896_def : output6896 = (.seq output6895 output6894) := by
  unfold output6896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6896_skip : Flapjack.WordAlloc.isSkip output6896 = false := by
  rw [output6896_def]
  conv => lhs; cbv
  try rfl
theorem node6896_eq : Flapjack.WordAlloc.removeDeadStructural input6896 value3452 value1 value2 = (output6896, value5, value1) := by
  rw [input6896_def, output6896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6894_eq]
  dsimp only
  rw [node6895_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6896 input6893)).val
theorem input6897_def : input6897 = (.seq input6896 input6893) := by
  unfold input6897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6896 output6893)).val
theorem output6897_def : output6897 = (.seq output6896 output6893) := by
  unfold output6897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6897_skip : Flapjack.WordAlloc.isSkip output6897 = false := by
  rw [output6897_def]
  conv => lhs; cbv
  try rfl
theorem node6897_eq : Flapjack.WordAlloc.removeDeadStructural input6897 value3451 value1 value2 = (output6897, value5, value1) := by
  rw [input6897_def, output6897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6893_eq]
  dsimp only
  rw [node6896_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6897 input6892)).val
theorem input6898_def : input6898 = (.seq input6897 input6892) := by
  unfold input6898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6897 output6892)).val
theorem output6898_def : output6898 = (.seq output6897 output6892) := by
  unfold output6898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6898_skip : Flapjack.WordAlloc.isSkip output6898 = false := by
  rw [output6898_def]
  conv => lhs; cbv
  try rfl
theorem node6898_eq : Flapjack.WordAlloc.removeDeadStructural input6898 value3450 value1 value2 = (output6898, value5, value1) := by
  rw [input6898_def, output6898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6892_eq]
  dsimp only
  rw [node6897_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6898 input6891)).val
theorem input6899_def : input6899 = (.seq input6898 input6891) := by
  unfold input6899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6898 output6891)).val
theorem output6899_def : output6899 = (.seq output6898 output6891) := by
  unfold output6899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6899_skip : Flapjack.WordAlloc.isSkip output6899 = false := by
  rw [output6899_def]
  conv => lhs; cbv
  try rfl
theorem node6899_eq : Flapjack.WordAlloc.removeDeadStructural input6899 value3448 value1 value2 = (output6899, value5, value1) := by
  rw [input6899_def, output6899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6891_eq]
  dsimp only
  rw [node6898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3454 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15693 (Flapjack.WordLangAddr.addr 15697 0#64)))).val
theorem input6900_def : input6900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15693 (Flapjack.WordLangAddr.addr 15697 0#64))) := by
  unfold input6900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15693 (Flapjack.WordLangAddr.addr 15697 0#64)))).val
theorem output6900_def : output6900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15693 (Flapjack.WordLangAddr.addr 15697 0#64))) := by
  unfold output6900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6900_skip : Flapjack.WordAlloc.isSkip output6900 = false := by
  rw [output6900_def]
  conv => lhs; cbv
  try rfl
theorem node6900_eq : Flapjack.WordAlloc.removeDeadStructural input6900 value5 value1 value2 = (output6900, value3454, value1) := by
  rw [input6900_def, output6900_def]
  try (conv => lhs; cbv)
  try rfl

def value3455 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15697, 15685)])).val
theorem input6901_def : input6901 = (Flapjack.WordLangProgHOL.move 0 [(15697, 15685)]) := by
  unfold input6901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15697, 15685)])).val
theorem output6901_def : output6901 = (Flapjack.WordLangProgHOL.move 0 [(15697, 15685)]) := by
  unfold output6901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6901_skip : Flapjack.WordAlloc.isSkip output6901 = false := by
  rw [output6901_def]
  conv => lhs; cbv
  try rfl
theorem node6901_eq : Flapjack.WordAlloc.removeDeadStructural input6901 value3454 value1 value2 = (output6901, value3455, value1) := by
  rw [input6901_def, output6901_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6901 input6900)).val
theorem input6902_def : input6902 = (.seq input6901 input6900) := by
  unfold input6902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6901 output6900)).val
theorem output6902_def : output6902 = (.seq output6901 output6900) := by
  unfold output6902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6902_skip : Flapjack.WordAlloc.isSkip output6902 = false := by
  rw [output6902_def]
  conv => lhs; cbv
  try rfl
theorem node6902_eq : Flapjack.WordAlloc.removeDeadStructural input6902 value5 value1 value2 = (output6902, value3455, value1) := by
  rw [input6902_def, output6902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6900_eq]
  dsimp only
  rw [node6901_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3456 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15693 9685868895687483979#64))).val
theorem input6903_def : input6903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15693 9685868895687483979#64)) := by
  unfold input6903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15693 9685868895687483979#64))).val
theorem output6903_def : output6903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15693 9685868895687483979#64)) := by
  unfold output6903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6903_skip : Flapjack.WordAlloc.isSkip output6903 = false := by
  rw [output6903_def]
  conv => lhs; cbv
  try rfl
theorem node6903_eq : Flapjack.WordAlloc.removeDeadStructural input6903 value3455 value1 value2 = (output6903, value3456, value1) := by
  rw [input6903_def, output6903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15689 9685868895687483979#64))).val
theorem input6904_def : input6904 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15689 9685868895687483979#64)) := by
  unfold input6904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6904_def : output6904 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6904_skip : Flapjack.WordAlloc.isSkip output6904 = true := by
  rw [output6904_def]
  conv => lhs; cbv
  try rfl
theorem node6904_eq : Flapjack.WordAlloc.removeDeadStructural input6904 value3456 value1 value2 = (output6904, value3456, value1) := by
  rw [input6904_def, output6904_def]
  try (conv => lhs; cbv)
  try rfl

def value3457 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15685 15677 (Flapjack.WordRegImm.reg 15681))))).val
theorem input6905_def : input6905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15685 15677 (Flapjack.WordRegImm.reg 15681)))) := by
  unfold input6905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15685 15677 (Flapjack.WordRegImm.reg 15681))))).val
theorem output6905_def : output6905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15685 15677 (Flapjack.WordRegImm.reg 15681)))) := by
  unfold output6905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6905_skip : Flapjack.WordAlloc.isSkip output6905 = false := by
  rw [output6905_def]
  conv => lhs; cbv
  try rfl
theorem node6905_eq : Flapjack.WordAlloc.removeDeadStructural input6905 value3456 value1 value2 = (output6905, value3457, value1) := by
  rw [input6905_def, output6905_def]
  try (conv => lhs; cbv)
  try rfl

def value3458 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15681 3680#64))).val
theorem input6906_def : input6906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15681 3680#64)) := by
  unfold input6906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15681 3680#64))).val
theorem output6906_def : output6906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15681 3680#64)) := by
  unfold output6906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6906_skip : Flapjack.WordAlloc.isSkip output6906 = false := by
  rw [output6906_def]
  conv => lhs; cbv
  try rfl
theorem node6906_eq : Flapjack.WordAlloc.removeDeadStructural input6906 value3457 value1 value2 = (output6906, value3458, value1) := by
  rw [input6906_def, output6906_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6906 input6905)).val
theorem input6907_def : input6907 = (.seq input6906 input6905) := by
  unfold input6907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6906 output6905)).val
theorem output6907_def : output6907 = (.seq output6906 output6905) := by
  unfold output6907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6907_skip : Flapjack.WordAlloc.isSkip output6907 = false := by
  rw [output6907_def]
  conv => lhs; cbv
  try rfl
theorem node6907_eq : Flapjack.WordAlloc.removeDeadStructural input6907 value3456 value1 value2 = (output6907, value3458, value1) := by
  rw [input6907_def, output6907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6905_eq]
  dsimp only
  rw [node6906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3459 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15677 (Flapjack.WordLangAddr.addr 15673 18446744073709551104#64)))).val
theorem input6908_def : input6908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15677 (Flapjack.WordLangAddr.addr 15673 18446744073709551104#64))) := by
  unfold input6908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15677 (Flapjack.WordLangAddr.addr 15673 18446744073709551104#64)))).val
theorem output6908_def : output6908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15677 (Flapjack.WordLangAddr.addr 15673 18446744073709551104#64))) := by
  unfold output6908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6908_skip : Flapjack.WordAlloc.isSkip output6908 = false := by
  rw [output6908_def]
  conv => lhs; cbv
  try rfl
theorem node6908_eq : Flapjack.WordAlloc.removeDeadStructural input6908 value3458 value1 value2 = (output6908, value3459, value1) := by
  rw [input6908_def, output6908_def]
  try (conv => lhs; cbv)
  try rfl

def value3460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15673 15669)).val
theorem input6909_def : input6909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15673 15669) := by
  unfold input6909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15673 15669)).val
theorem output6909_def : output6909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15673 15669) := by
  unfold output6909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6909_skip : Flapjack.WordAlloc.isSkip output6909 = false := by
  rw [output6909_def]
  conv => lhs; cbv
  try rfl
theorem node6909_eq : Flapjack.WordAlloc.removeDeadStructural input6909 value3459 value1 value2 = (output6909, value3460, value1) := by
  rw [input6909_def, output6909_def]
  try (conv => lhs; cbv)
  try rfl

def value3461 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15669 15665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6910_def : input6910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15669 15665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15669 15665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6910_def : output6910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15669 15665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6910_skip : Flapjack.WordAlloc.isSkip output6910 = false := by
  rw [output6910_def]
  conv => lhs; cbv
  try rfl
theorem node6910_eq : Flapjack.WordAlloc.removeDeadStructural input6910 value3460 value1 value2 = (output6910, value3461, value1) := by
  rw [input6910_def, output6910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15665 Flapjack.WordStore.heapLength)).val
theorem input6911_def : input6911 = (Flapjack.WordLangProgHOL.get 15665 Flapjack.WordStore.heapLength) := by
  unfold input6911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15665 Flapjack.WordStore.heapLength)).val
theorem output6911_def : output6911 = (Flapjack.WordLangProgHOL.get 15665 Flapjack.WordStore.heapLength) := by
  unfold output6911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6911_skip : Flapjack.WordAlloc.isSkip output6911 = false := by
  rw [output6911_def]
  conv => lhs; cbv
  try rfl
theorem node6911_eq : Flapjack.WordAlloc.removeDeadStructural input6911 value3461 value1 value2 = (output6911, value5, value1) := by
  rw [input6911_def, output6911_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node6911_eq
end InitECandidate.Proofs.DeadStages713
