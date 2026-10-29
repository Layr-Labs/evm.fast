import InitECandidate.Proofs.DeadStages713.Chunk033
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input8704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8703 input8702)).val
theorem input8704_def : input8704 = (.seq input8703 input8702) := by
  unfold input8704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8703 output8702)).val
theorem output8704_def : output8704 = (.seq output8703 output8702) := by
  unfold output8704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8704_skip : Flapjack.WordAlloc.isSkip output8704 = false := by
  rw [output8704_def]
  conv => lhs; cbv
  try rfl
theorem node8704_eq : Flapjack.WordAlloc.removeDeadStructural input8704 value4356 value1 value2 = (output8704, value5, value1) := by
  rw [input8704_def, output8704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8702_eq]
  dsimp only
  rw [node8703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8704 input8701)).val
theorem input8705_def : input8705 = (.seq input8704 input8701) := by
  unfold input8705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8704 output8701)).val
theorem output8705_def : output8705 = (.seq output8704 output8701) := by
  unfold output8705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8705_skip : Flapjack.WordAlloc.isSkip output8705 = false := by
  rw [output8705_def]
  conv => lhs; cbv
  try rfl
theorem node8705_eq : Flapjack.WordAlloc.removeDeadStructural input8705 value4355 value1 value2 = (output8705, value5, value1) := by
  rw [input8705_def, output8705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8701_eq]
  dsimp only
  rw [node8704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8705 input8700)).val
theorem input8706_def : input8706 = (.seq input8705 input8700) := by
  unfold input8706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8705 output8700)).val
theorem output8706_def : output8706 = (.seq output8705 output8700) := by
  unfold output8706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8706_skip : Flapjack.WordAlloc.isSkip output8706 = false := by
  rw [output8706_def]
  conv => lhs; cbv
  try rfl
theorem node8706_eq : Flapjack.WordAlloc.removeDeadStructural input8706 value4354 value1 value2 = (output8706, value5, value1) := by
  rw [input8706_def, output8706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8700_eq]
  dsimp only
  rw [node8705_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8706 input8699)).val
theorem input8707_def : input8707 = (.seq input8706 input8699) := by
  unfold input8707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8706 output8699)).val
theorem output8707_def : output8707 = (.seq output8706 output8699) := by
  unfold output8707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8707_skip : Flapjack.WordAlloc.isSkip output8707 = false := by
  rw [output8707_def]
  conv => lhs; cbv
  try rfl
theorem node8707_eq : Flapjack.WordAlloc.removeDeadStructural input8707 value4352 value1 value2 = (output8707, value5, value1) := by
  rw [input8707_def, output8707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8699_eq]
  dsimp only
  rw [node8706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4358 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11625 (Flapjack.WordLangAddr.addr 11629 0#64)))).val
theorem input8708_def : input8708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11625 (Flapjack.WordLangAddr.addr 11629 0#64))) := by
  unfold input8708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11625 (Flapjack.WordLangAddr.addr 11629 0#64)))).val
theorem output8708_def : output8708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11625 (Flapjack.WordLangAddr.addr 11629 0#64))) := by
  unfold output8708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8708_skip : Flapjack.WordAlloc.isSkip output8708 = false := by
  rw [output8708_def]
  conv => lhs; cbv
  try rfl
theorem node8708_eq : Flapjack.WordAlloc.removeDeadStructural input8708 value5 value1 value2 = (output8708, value4358, value1) := by
  rw [input8708_def, output8708_def]
  try (conv => lhs; cbv)
  try rfl

def value4359 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11629, 11617)])).val
theorem input8709_def : input8709 = (Flapjack.WordLangProgHOL.move 0 [(11629, 11617)]) := by
  unfold input8709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11629, 11617)])).val
theorem output8709_def : output8709 = (Flapjack.WordLangProgHOL.move 0 [(11629, 11617)]) := by
  unfold output8709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8709_skip : Flapjack.WordAlloc.isSkip output8709 = false := by
  rw [output8709_def]
  conv => lhs; cbv
  try rfl
theorem node8709_eq : Flapjack.WordAlloc.removeDeadStructural input8709 value4358 value1 value2 = (output8709, value4359, value1) := by
  rw [input8709_def, output8709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8709 input8708)).val
theorem input8710_def : input8710 = (.seq input8709 input8708) := by
  unfold input8710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8709 output8708)).val
theorem output8710_def : output8710 = (.seq output8709 output8708) := by
  unfold output8710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8710_skip : Flapjack.WordAlloc.isSkip output8710 = false := by
  rw [output8710_def]
  conv => lhs; cbv
  try rfl
theorem node8710_eq : Flapjack.WordAlloc.removeDeadStructural input8710 value5 value1 value2 = (output8710, value4359, value1) := by
  rw [input8710_def, output8710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8708_eq]
  dsimp only
  rw [node8709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4360 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11625 16894043798660571244#64))).val
theorem input8711_def : input8711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11625 16894043798660571244#64)) := by
  unfold input8711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11625 16894043798660571244#64))).val
theorem output8711_def : output8711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11625 16894043798660571244#64)) := by
  unfold output8711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8711_skip : Flapjack.WordAlloc.isSkip output8711 = false := by
  rw [output8711_def]
  conv => lhs; cbv
  try rfl
theorem node8711_eq : Flapjack.WordAlloc.removeDeadStructural input8711 value4359 value1 value2 = (output8711, value4360, value1) := by
  rw [input8711_def, output8711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11621 16894043798660571244#64))).val
theorem input8712_def : input8712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11621 16894043798660571244#64)) := by
  unfold input8712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8712_def : output8712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8712_skip : Flapjack.WordAlloc.isSkip output8712 = true := by
  rw [output8712_def]
  conv => lhs; cbv
  try rfl
theorem node8712_eq : Flapjack.WordAlloc.removeDeadStructural input8712 value4360 value1 value2 = (output8712, value4360, value1) := by
  rw [input8712_def, output8712_def]
  try (conv => lhs; cbv)
  try rfl

def value4361 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11617 11609 (Flapjack.WordRegImm.reg 11613))))).val
theorem input8713_def : input8713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11617 11609 (Flapjack.WordRegImm.reg 11613)))) := by
  unfold input8713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11617 11609 (Flapjack.WordRegImm.reg 11613))))).val
theorem output8713_def : output8713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11617 11609 (Flapjack.WordRegImm.reg 11613)))) := by
  unfold output8713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8713_skip : Flapjack.WordAlloc.isSkip output8713 = false := by
  rw [output8713_def]
  conv => lhs; cbv
  try rfl
theorem node8713_eq : Flapjack.WordAlloc.removeDeadStructural input8713 value4360 value1 value2 = (output8713, value4361, value1) := by
  rw [input8713_def, output8713_def]
  try (conv => lhs; cbv)
  try rfl

def value4362 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11613 2776#64))).val
theorem input8714_def : input8714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11613 2776#64)) := by
  unfold input8714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11613 2776#64))).val
theorem output8714_def : output8714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11613 2776#64)) := by
  unfold output8714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8714_skip : Flapjack.WordAlloc.isSkip output8714 = false := by
  rw [output8714_def]
  conv => lhs; cbv
  try rfl
theorem node8714_eq : Flapjack.WordAlloc.removeDeadStructural input8714 value4361 value1 value2 = (output8714, value4362, value1) := by
  rw [input8714_def, output8714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8714 input8713)).val
theorem input8715_def : input8715 = (.seq input8714 input8713) := by
  unfold input8715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8714 output8713)).val
theorem output8715_def : output8715 = (.seq output8714 output8713) := by
  unfold output8715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8715_skip : Flapjack.WordAlloc.isSkip output8715 = false := by
  rw [output8715_def]
  conv => lhs; cbv
  try rfl
theorem node8715_eq : Flapjack.WordAlloc.removeDeadStructural input8715 value4360 value1 value2 = (output8715, value4362, value1) := by
  rw [input8715_def, output8715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8713_eq]
  dsimp only
  rw [node8714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4363 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11609 (Flapjack.WordLangAddr.addr 11605 18446744073709551104#64)))).val
theorem input8716_def : input8716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11609 (Flapjack.WordLangAddr.addr 11605 18446744073709551104#64))) := by
  unfold input8716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11609 (Flapjack.WordLangAddr.addr 11605 18446744073709551104#64)))).val
theorem output8716_def : output8716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11609 (Flapjack.WordLangAddr.addr 11605 18446744073709551104#64))) := by
  unfold output8716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8716_skip : Flapjack.WordAlloc.isSkip output8716 = false := by
  rw [output8716_def]
  conv => lhs; cbv
  try rfl
theorem node8716_eq : Flapjack.WordAlloc.removeDeadStructural input8716 value4362 value1 value2 = (output8716, value4363, value1) := by
  rw [input8716_def, output8716_def]
  try (conv => lhs; cbv)
  try rfl

def value4364 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11605 11601)).val
theorem input8717_def : input8717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11605 11601) := by
  unfold input8717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11605 11601)).val
theorem output8717_def : output8717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11605 11601) := by
  unfold output8717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8717_skip : Flapjack.WordAlloc.isSkip output8717 = false := by
  rw [output8717_def]
  conv => lhs; cbv
  try rfl
theorem node8717_eq : Flapjack.WordAlloc.removeDeadStructural input8717 value4363 value1 value2 = (output8717, value4364, value1) := by
  rw [input8717_def, output8717_def]
  try (conv => lhs; cbv)
  try rfl

def value4365 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11601 11597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8718_def : input8718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11601 11597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11601 11597 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8718_def : output8718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11601 11597 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8718_skip : Flapjack.WordAlloc.isSkip output8718 = false := by
  rw [output8718_def]
  conv => lhs; cbv
  try rfl
theorem node8718_eq : Flapjack.WordAlloc.removeDeadStructural input8718 value4364 value1 value2 = (output8718, value4365, value1) := by
  rw [input8718_def, output8718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11597 Flapjack.WordStore.heapLength)).val
theorem input8719_def : input8719 = (Flapjack.WordLangProgHOL.get 11597 Flapjack.WordStore.heapLength) := by
  unfold input8719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11597 Flapjack.WordStore.heapLength)).val
theorem output8719_def : output8719 = (Flapjack.WordLangProgHOL.get 11597 Flapjack.WordStore.heapLength) := by
  unfold output8719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8719_skip : Flapjack.WordAlloc.isSkip output8719 = false := by
  rw [output8719_def]
  conv => lhs; cbv
  try rfl
theorem node8719_eq : Flapjack.WordAlloc.removeDeadStructural input8719 value4365 value1 value2 = (output8719, value5, value1) := by
  rw [input8719_def, output8719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8719 input8718)).val
theorem input8720_def : input8720 = (.seq input8719 input8718) := by
  unfold input8720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8719 output8718)).val
theorem output8720_def : output8720 = (.seq output8719 output8718) := by
  unfold output8720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8720_skip : Flapjack.WordAlloc.isSkip output8720 = false := by
  rw [output8720_def]
  conv => lhs; cbv
  try rfl
theorem node8720_eq : Flapjack.WordAlloc.removeDeadStructural input8720 value4364 value1 value2 = (output8720, value5, value1) := by
  rw [input8720_def, output8720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8718_eq]
  dsimp only
  rw [node8719_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8720 input8717)).val
theorem input8721_def : input8721 = (.seq input8720 input8717) := by
  unfold input8721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8720 output8717)).val
theorem output8721_def : output8721 = (.seq output8720 output8717) := by
  unfold output8721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8721_skip : Flapjack.WordAlloc.isSkip output8721 = false := by
  rw [output8721_def]
  conv => lhs; cbv
  try rfl
theorem node8721_eq : Flapjack.WordAlloc.removeDeadStructural input8721 value4363 value1 value2 = (output8721, value5, value1) := by
  rw [input8721_def, output8721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8717_eq]
  dsimp only
  rw [node8720_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8721 input8716)).val
theorem input8722_def : input8722 = (.seq input8721 input8716) := by
  unfold input8722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8721 output8716)).val
theorem output8722_def : output8722 = (.seq output8721 output8716) := by
  unfold output8722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8722_skip : Flapjack.WordAlloc.isSkip output8722 = false := by
  rw [output8722_def]
  conv => lhs; cbv
  try rfl
theorem node8722_eq : Flapjack.WordAlloc.removeDeadStructural input8722 value4362 value1 value2 = (output8722, value5, value1) := by
  rw [input8722_def, output8722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8716_eq]
  dsimp only
  rw [node8721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8722 input8715)).val
theorem input8723_def : input8723 = (.seq input8722 input8715) := by
  unfold input8723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8722 output8715)).val
theorem output8723_def : output8723 = (.seq output8722 output8715) := by
  unfold output8723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8723_skip : Flapjack.WordAlloc.isSkip output8723 = false := by
  rw [output8723_def]
  conv => lhs; cbv
  try rfl
theorem node8723_eq : Flapjack.WordAlloc.removeDeadStructural input8723 value4360 value1 value2 = (output8723, value5, value1) := by
  rw [input8723_def, output8723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8715_eq]
  dsimp only
  rw [node8722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4366 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11589 (Flapjack.WordLangAddr.addr 11593 0#64)))).val
theorem input8724_def : input8724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11589 (Flapjack.WordLangAddr.addr 11593 0#64))) := by
  unfold input8724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11589 (Flapjack.WordLangAddr.addr 11593 0#64)))).val
theorem output8724_def : output8724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11589 (Flapjack.WordLangAddr.addr 11593 0#64))) := by
  unfold output8724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8724_skip : Flapjack.WordAlloc.isSkip output8724 = false := by
  rw [output8724_def]
  conv => lhs; cbv
  try rfl
theorem node8724_eq : Flapjack.WordAlloc.removeDeadStructural input8724 value5 value1 value2 = (output8724, value4366, value1) := by
  rw [input8724_def, output8724_def]
  try (conv => lhs; cbv)
  try rfl

def value4367 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11593, 11581)])).val
theorem input8725_def : input8725 = (Flapjack.WordLangProgHOL.move 0 [(11593, 11581)]) := by
  unfold input8725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11593, 11581)])).val
theorem output8725_def : output8725 = (Flapjack.WordLangProgHOL.move 0 [(11593, 11581)]) := by
  unfold output8725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8725_skip : Flapjack.WordAlloc.isSkip output8725 = false := by
  rw [output8725_def]
  conv => lhs; cbv
  try rfl
theorem node8725_eq : Flapjack.WordAlloc.removeDeadStructural input8725 value4366 value1 value2 = (output8725, value4367, value1) := by
  rw [input8725_def, output8725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8725 input8724)).val
theorem input8726_def : input8726 = (.seq input8725 input8724) := by
  unfold input8726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8725 output8724)).val
theorem output8726_def : output8726 = (.seq output8725 output8724) := by
  unfold output8726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8726_skip : Flapjack.WordAlloc.isSkip output8726 = false := by
  rw [output8726_def]
  conv => lhs; cbv
  try rfl
theorem node8726_eq : Flapjack.WordAlloc.removeDeadStructural input8726 value5 value1 value2 = (output8726, value4367, value1) := by
  rw [input8726_def, output8726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8724_eq]
  dsimp only
  rw [node8725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4368 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11589 17016134625831438906#64))).val
theorem input8727_def : input8727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11589 17016134625831438906#64)) := by
  unfold input8727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11589 17016134625831438906#64))).val
theorem output8727_def : output8727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11589 17016134625831438906#64)) := by
  unfold output8727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8727_skip : Flapjack.WordAlloc.isSkip output8727 = false := by
  rw [output8727_def]
  conv => lhs; cbv
  try rfl
theorem node8727_eq : Flapjack.WordAlloc.removeDeadStructural input8727 value4367 value1 value2 = (output8727, value4368, value1) := by
  rw [input8727_def, output8727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11585 17016134625831438906#64))).val
theorem input8728_def : input8728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11585 17016134625831438906#64)) := by
  unfold input8728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8728_def : output8728 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8728_skip : Flapjack.WordAlloc.isSkip output8728 = true := by
  rw [output8728_def]
  conv => lhs; cbv
  try rfl
theorem node8728_eq : Flapjack.WordAlloc.removeDeadStructural input8728 value4368 value1 value2 = (output8728, value4368, value1) := by
  rw [input8728_def, output8728_def]
  try (conv => lhs; cbv)
  try rfl

def value4369 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11581 11573 (Flapjack.WordRegImm.reg 11577))))).val
theorem input8729_def : input8729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11581 11573 (Flapjack.WordRegImm.reg 11577)))) := by
  unfold input8729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11581 11573 (Flapjack.WordRegImm.reg 11577))))).val
theorem output8729_def : output8729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11581 11573 (Flapjack.WordRegImm.reg 11577)))) := by
  unfold output8729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8729_skip : Flapjack.WordAlloc.isSkip output8729 = false := by
  rw [output8729_def]
  conv => lhs; cbv
  try rfl
theorem node8729_eq : Flapjack.WordAlloc.removeDeadStructural input8729 value4368 value1 value2 = (output8729, value4369, value1) := by
  rw [input8729_def, output8729_def]
  try (conv => lhs; cbv)
  try rfl

def value4370 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11577 2768#64))).val
theorem input8730_def : input8730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11577 2768#64)) := by
  unfold input8730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11577 2768#64))).val
theorem output8730_def : output8730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11577 2768#64)) := by
  unfold output8730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8730_skip : Flapjack.WordAlloc.isSkip output8730 = false := by
  rw [output8730_def]
  conv => lhs; cbv
  try rfl
theorem node8730_eq : Flapjack.WordAlloc.removeDeadStructural input8730 value4369 value1 value2 = (output8730, value4370, value1) := by
  rw [input8730_def, output8730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8730 input8729)).val
theorem input8731_def : input8731 = (.seq input8730 input8729) := by
  unfold input8731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8730 output8729)).val
theorem output8731_def : output8731 = (.seq output8730 output8729) := by
  unfold output8731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8731_skip : Flapjack.WordAlloc.isSkip output8731 = false := by
  rw [output8731_def]
  conv => lhs; cbv
  try rfl
theorem node8731_eq : Flapjack.WordAlloc.removeDeadStructural input8731 value4368 value1 value2 = (output8731, value4370, value1) := by
  rw [input8731_def, output8731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8729_eq]
  dsimp only
  rw [node8730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4371 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11573 (Flapjack.WordLangAddr.addr 11569 18446744073709551104#64)))).val
theorem input8732_def : input8732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11573 (Flapjack.WordLangAddr.addr 11569 18446744073709551104#64))) := by
  unfold input8732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11573 (Flapjack.WordLangAddr.addr 11569 18446744073709551104#64)))).val
theorem output8732_def : output8732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11573 (Flapjack.WordLangAddr.addr 11569 18446744073709551104#64))) := by
  unfold output8732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8732_skip : Flapjack.WordAlloc.isSkip output8732 = false := by
  rw [output8732_def]
  conv => lhs; cbv
  try rfl
theorem node8732_eq : Flapjack.WordAlloc.removeDeadStructural input8732 value4370 value1 value2 = (output8732, value4371, value1) := by
  rw [input8732_def, output8732_def]
  try (conv => lhs; cbv)
  try rfl

def value4372 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11569 11565)).val
theorem input8733_def : input8733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11569 11565) := by
  unfold input8733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11569 11565)).val
theorem output8733_def : output8733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11569 11565) := by
  unfold output8733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8733_skip : Flapjack.WordAlloc.isSkip output8733 = false := by
  rw [output8733_def]
  conv => lhs; cbv
  try rfl
theorem node8733_eq : Flapjack.WordAlloc.removeDeadStructural input8733 value4371 value1 value2 = (output8733, value4372, value1) := by
  rw [input8733_def, output8733_def]
  try (conv => lhs; cbv)
  try rfl

def value4373 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11565 11561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8734_def : input8734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11565 11561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11565 11561 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8734_def : output8734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11565 11561 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8734_skip : Flapjack.WordAlloc.isSkip output8734 = false := by
  rw [output8734_def]
  conv => lhs; cbv
  try rfl
theorem node8734_eq : Flapjack.WordAlloc.removeDeadStructural input8734 value4372 value1 value2 = (output8734, value4373, value1) := by
  rw [input8734_def, output8734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11561 Flapjack.WordStore.heapLength)).val
theorem input8735_def : input8735 = (Flapjack.WordLangProgHOL.get 11561 Flapjack.WordStore.heapLength) := by
  unfold input8735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11561 Flapjack.WordStore.heapLength)).val
theorem output8735_def : output8735 = (Flapjack.WordLangProgHOL.get 11561 Flapjack.WordStore.heapLength) := by
  unfold output8735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8735_skip : Flapjack.WordAlloc.isSkip output8735 = false := by
  rw [output8735_def]
  conv => lhs; cbv
  try rfl
theorem node8735_eq : Flapjack.WordAlloc.removeDeadStructural input8735 value4373 value1 value2 = (output8735, value5, value1) := by
  rw [input8735_def, output8735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8735 input8734)).val
theorem input8736_def : input8736 = (.seq input8735 input8734) := by
  unfold input8736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8735 output8734)).val
theorem output8736_def : output8736 = (.seq output8735 output8734) := by
  unfold output8736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8736_skip : Flapjack.WordAlloc.isSkip output8736 = false := by
  rw [output8736_def]
  conv => lhs; cbv
  try rfl
theorem node8736_eq : Flapjack.WordAlloc.removeDeadStructural input8736 value4372 value1 value2 = (output8736, value5, value1) := by
  rw [input8736_def, output8736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8734_eq]
  dsimp only
  rw [node8735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8736 input8733)).val
theorem input8737_def : input8737 = (.seq input8736 input8733) := by
  unfold input8737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8736 output8733)).val
theorem output8737_def : output8737 = (.seq output8736 output8733) := by
  unfold output8737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8737_skip : Flapjack.WordAlloc.isSkip output8737 = false := by
  rw [output8737_def]
  conv => lhs; cbv
  try rfl
theorem node8737_eq : Flapjack.WordAlloc.removeDeadStructural input8737 value4371 value1 value2 = (output8737, value5, value1) := by
  rw [input8737_def, output8737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8733_eq]
  dsimp only
  rw [node8736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8737 input8732)).val
theorem input8738_def : input8738 = (.seq input8737 input8732) := by
  unfold input8738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8737 output8732)).val
theorem output8738_def : output8738 = (.seq output8737 output8732) := by
  unfold output8738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8738_skip : Flapjack.WordAlloc.isSkip output8738 = false := by
  rw [output8738_def]
  conv => lhs; cbv
  try rfl
theorem node8738_eq : Flapjack.WordAlloc.removeDeadStructural input8738 value4370 value1 value2 = (output8738, value5, value1) := by
  rw [input8738_def, output8738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8732_eq]
  dsimp only
  rw [node8737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8738 input8731)).val
theorem input8739_def : input8739 = (.seq input8738 input8731) := by
  unfold input8739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8738 output8731)).val
theorem output8739_def : output8739 = (.seq output8738 output8731) := by
  unfold output8739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8739_skip : Flapjack.WordAlloc.isSkip output8739 = false := by
  rw [output8739_def]
  conv => lhs; cbv
  try rfl
theorem node8739_eq : Flapjack.WordAlloc.removeDeadStructural input8739 value4368 value1 value2 = (output8739, value5, value1) := by
  rw [input8739_def, output8739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8731_eq]
  dsimp only
  rw [node8738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4374 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11553 (Flapjack.WordLangAddr.addr 11557 0#64)))).val
theorem input8740_def : input8740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11553 (Flapjack.WordLangAddr.addr 11557 0#64))) := by
  unfold input8740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11553 (Flapjack.WordLangAddr.addr 11557 0#64)))).val
theorem output8740_def : output8740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11553 (Flapjack.WordLangAddr.addr 11557 0#64))) := by
  unfold output8740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8740_skip : Flapjack.WordAlloc.isSkip output8740 = false := by
  rw [output8740_def]
  conv => lhs; cbv
  try rfl
theorem node8740_eq : Flapjack.WordAlloc.removeDeadStructural input8740 value5 value1 value2 = (output8740, value4374, value1) := by
  rw [input8740_def, output8740_def]
  try (conv => lhs; cbv)
  try rfl

def value4375 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11557, 11545)])).val
theorem input8741_def : input8741 = (Flapjack.WordLangProgHOL.move 0 [(11557, 11545)]) := by
  unfold input8741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11557, 11545)])).val
theorem output8741_def : output8741 = (Flapjack.WordLangProgHOL.move 0 [(11557, 11545)]) := by
  unfold output8741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8741_skip : Flapjack.WordAlloc.isSkip output8741 = false := by
  rw [output8741_def]
  conv => lhs; cbv
  try rfl
theorem node8741_eq : Flapjack.WordAlloc.removeDeadStructural input8741 value4374 value1 value2 = (output8741, value4375, value1) := by
  rw [input8741_def, output8741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8741 input8740)).val
theorem input8742_def : input8742 = (.seq input8741 input8740) := by
  unfold input8742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8741 output8740)).val
theorem output8742_def : output8742 = (.seq output8741 output8740) := by
  unfold output8742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8742_skip : Flapjack.WordAlloc.isSkip output8742 = false := by
  rw [output8742_def]
  conv => lhs; cbv
  try rfl
theorem node8742_eq : Flapjack.WordAlloc.removeDeadStructural input8742 value5 value1 value2 = (output8742, value4375, value1) := by
  rw [input8742_def, output8742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8740_eq]
  dsimp only
  rw [node8741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4376 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11553 1041270466333271993#64))).val
theorem input8743_def : input8743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11553 1041270466333271993#64)) := by
  unfold input8743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11553 1041270466333271993#64))).val
theorem output8743_def : output8743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11553 1041270466333271993#64)) := by
  unfold output8743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8743_skip : Flapjack.WordAlloc.isSkip output8743 = false := by
  rw [output8743_def]
  conv => lhs; cbv
  try rfl
theorem node8743_eq : Flapjack.WordAlloc.removeDeadStructural input8743 value4375 value1 value2 = (output8743, value4376, value1) := by
  rw [input8743_def, output8743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11549 1041270466333271993#64))).val
theorem input8744_def : input8744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11549 1041270466333271993#64)) := by
  unfold input8744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8744_def : output8744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8744_skip : Flapjack.WordAlloc.isSkip output8744 = true := by
  rw [output8744_def]
  conv => lhs; cbv
  try rfl
theorem node8744_eq : Flapjack.WordAlloc.removeDeadStructural input8744 value4376 value1 value2 = (output8744, value4376, value1) := by
  rw [input8744_def, output8744_def]
  try (conv => lhs; cbv)
  try rfl

def value4377 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11545 11537 (Flapjack.WordRegImm.reg 11541))))).val
theorem input8745_def : input8745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11545 11537 (Flapjack.WordRegImm.reg 11541)))) := by
  unfold input8745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11545 11537 (Flapjack.WordRegImm.reg 11541))))).val
theorem output8745_def : output8745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11545 11537 (Flapjack.WordRegImm.reg 11541)))) := by
  unfold output8745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8745_skip : Flapjack.WordAlloc.isSkip output8745 = false := by
  rw [output8745_def]
  conv => lhs; cbv
  try rfl
theorem node8745_eq : Flapjack.WordAlloc.removeDeadStructural input8745 value4376 value1 value2 = (output8745, value4377, value1) := by
  rw [input8745_def, output8745_def]
  try (conv => lhs; cbv)
  try rfl

def value4378 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11541 2760#64))).val
theorem input8746_def : input8746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11541 2760#64)) := by
  unfold input8746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11541 2760#64))).val
theorem output8746_def : output8746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11541 2760#64)) := by
  unfold output8746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8746_skip : Flapjack.WordAlloc.isSkip output8746 = false := by
  rw [output8746_def]
  conv => lhs; cbv
  try rfl
theorem node8746_eq : Flapjack.WordAlloc.removeDeadStructural input8746 value4377 value1 value2 = (output8746, value4378, value1) := by
  rw [input8746_def, output8746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8746 input8745)).val
theorem input8747_def : input8747 = (.seq input8746 input8745) := by
  unfold input8747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8746 output8745)).val
theorem output8747_def : output8747 = (.seq output8746 output8745) := by
  unfold output8747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8747_skip : Flapjack.WordAlloc.isSkip output8747 = false := by
  rw [output8747_def]
  conv => lhs; cbv
  try rfl
theorem node8747_eq : Flapjack.WordAlloc.removeDeadStructural input8747 value4376 value1 value2 = (output8747, value4378, value1) := by
  rw [input8747_def, output8747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8745_eq]
  dsimp only
  rw [node8746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4379 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11537 (Flapjack.WordLangAddr.addr 11533 18446744073709551104#64)))).val
theorem input8748_def : input8748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11537 (Flapjack.WordLangAddr.addr 11533 18446744073709551104#64))) := by
  unfold input8748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11537 (Flapjack.WordLangAddr.addr 11533 18446744073709551104#64)))).val
theorem output8748_def : output8748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11537 (Flapjack.WordLangAddr.addr 11533 18446744073709551104#64))) := by
  unfold output8748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8748_skip : Flapjack.WordAlloc.isSkip output8748 = false := by
  rw [output8748_def]
  conv => lhs; cbv
  try rfl
theorem node8748_eq : Flapjack.WordAlloc.removeDeadStructural input8748 value4378 value1 value2 = (output8748, value4379, value1) := by
  rw [input8748_def, output8748_def]
  try (conv => lhs; cbv)
  try rfl

def value4380 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11533 11529)).val
theorem input8749_def : input8749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11533 11529) := by
  unfold input8749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11533 11529)).val
theorem output8749_def : output8749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11533 11529) := by
  unfold output8749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8749_skip : Flapjack.WordAlloc.isSkip output8749 = false := by
  rw [output8749_def]
  conv => lhs; cbv
  try rfl
theorem node8749_eq : Flapjack.WordAlloc.removeDeadStructural input8749 value4379 value1 value2 = (output8749, value4380, value1) := by
  rw [input8749_def, output8749_def]
  try (conv => lhs; cbv)
  try rfl

def value4381 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11529 11525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8750_def : input8750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11529 11525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11529 11525 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8750_def : output8750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11529 11525 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8750_skip : Flapjack.WordAlloc.isSkip output8750 = false := by
  rw [output8750_def]
  conv => lhs; cbv
  try rfl
theorem node8750_eq : Flapjack.WordAlloc.removeDeadStructural input8750 value4380 value1 value2 = (output8750, value4381, value1) := by
  rw [input8750_def, output8750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11525 Flapjack.WordStore.heapLength)).val
theorem input8751_def : input8751 = (Flapjack.WordLangProgHOL.get 11525 Flapjack.WordStore.heapLength) := by
  unfold input8751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11525 Flapjack.WordStore.heapLength)).val
theorem output8751_def : output8751 = (Flapjack.WordLangProgHOL.get 11525 Flapjack.WordStore.heapLength) := by
  unfold output8751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8751_skip : Flapjack.WordAlloc.isSkip output8751 = false := by
  rw [output8751_def]
  conv => lhs; cbv
  try rfl
theorem node8751_eq : Flapjack.WordAlloc.removeDeadStructural input8751 value4381 value1 value2 = (output8751, value5, value1) := by
  rw [input8751_def, output8751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8751 input8750)).val
theorem input8752_def : input8752 = (.seq input8751 input8750) := by
  unfold input8752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8751 output8750)).val
theorem output8752_def : output8752 = (.seq output8751 output8750) := by
  unfold output8752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8752_skip : Flapjack.WordAlloc.isSkip output8752 = false := by
  rw [output8752_def]
  conv => lhs; cbv
  try rfl
theorem node8752_eq : Flapjack.WordAlloc.removeDeadStructural input8752 value4380 value1 value2 = (output8752, value5, value1) := by
  rw [input8752_def, output8752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8750_eq]
  dsimp only
  rw [node8751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8752 input8749)).val
theorem input8753_def : input8753 = (.seq input8752 input8749) := by
  unfold input8753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8752 output8749)).val
theorem output8753_def : output8753 = (.seq output8752 output8749) := by
  unfold output8753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8753_skip : Flapjack.WordAlloc.isSkip output8753 = false := by
  rw [output8753_def]
  conv => lhs; cbv
  try rfl
theorem node8753_eq : Flapjack.WordAlloc.removeDeadStructural input8753 value4379 value1 value2 = (output8753, value5, value1) := by
  rw [input8753_def, output8753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8749_eq]
  dsimp only
  rw [node8752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8753 input8748)).val
theorem input8754_def : input8754 = (.seq input8753 input8748) := by
  unfold input8754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8753 output8748)).val
theorem output8754_def : output8754 = (.seq output8753 output8748) := by
  unfold output8754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8754_skip : Flapjack.WordAlloc.isSkip output8754 = false := by
  rw [output8754_def]
  conv => lhs; cbv
  try rfl
theorem node8754_eq : Flapjack.WordAlloc.removeDeadStructural input8754 value4378 value1 value2 = (output8754, value5, value1) := by
  rw [input8754_def, output8754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8748_eq]
  dsimp only
  rw [node8753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8754 input8747)).val
theorem input8755_def : input8755 = (.seq input8754 input8747) := by
  unfold input8755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8754 output8747)).val
theorem output8755_def : output8755 = (.seq output8754 output8747) := by
  unfold output8755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8755_skip : Flapjack.WordAlloc.isSkip output8755 = false := by
  rw [output8755_def]
  conv => lhs; cbv
  try rfl
theorem node8755_eq : Flapjack.WordAlloc.removeDeadStructural input8755 value4376 value1 value2 = (output8755, value5, value1) := by
  rw [input8755_def, output8755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8747_eq]
  dsimp only
  rw [node8754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4382 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11517 (Flapjack.WordLangAddr.addr 11521 0#64)))).val
theorem input8756_def : input8756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11517 (Flapjack.WordLangAddr.addr 11521 0#64))) := by
  unfold input8756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11517 (Flapjack.WordLangAddr.addr 11521 0#64)))).val
theorem output8756_def : output8756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11517 (Flapjack.WordLangAddr.addr 11521 0#64))) := by
  unfold output8756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8756_skip : Flapjack.WordAlloc.isSkip output8756 = false := by
  rw [output8756_def]
  conv => lhs; cbv
  try rfl
theorem node8756_eq : Flapjack.WordAlloc.removeDeadStructural input8756 value5 value1 value2 = (output8756, value4382, value1) := by
  rw [input8756_def, output8756_def]
  try (conv => lhs; cbv)
  try rfl

def value4383 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11521, 11509)])).val
theorem input8757_def : input8757 = (Flapjack.WordLangProgHOL.move 0 [(11521, 11509)]) := by
  unfold input8757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11521, 11509)])).val
theorem output8757_def : output8757 = (Flapjack.WordLangProgHOL.move 0 [(11521, 11509)]) := by
  unfold output8757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8757_skip : Flapjack.WordAlloc.isSkip output8757 = false := by
  rw [output8757_def]
  conv => lhs; cbv
  try rfl
theorem node8757_eq : Flapjack.WordAlloc.removeDeadStructural input8757 value4382 value1 value2 = (output8757, value4383, value1) := by
  rw [input8757_def, output8757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8757 input8756)).val
theorem input8758_def : input8758 = (.seq input8757 input8756) := by
  unfold input8758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8757 output8756)).val
theorem output8758_def : output8758 = (.seq output8757 output8756) := by
  unfold output8758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8758_skip : Flapjack.WordAlloc.isSkip output8758 = false := by
  rw [output8758_def]
  conv => lhs; cbv
  try rfl
theorem node8758_eq : Flapjack.WordAlloc.removeDeadStructural input8758 value5 value1 value2 = (output8758, value4383, value1) := by
  rw [input8758_def, output8758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8756_eq]
  dsimp only
  rw [node8757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4384 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11517 6140956605115975401#64))).val
theorem input8759_def : input8759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11517 6140956605115975401#64)) := by
  unfold input8759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11517 6140956605115975401#64))).val
theorem output8759_def : output8759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11517 6140956605115975401#64)) := by
  unfold output8759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8759_skip : Flapjack.WordAlloc.isSkip output8759 = false := by
  rw [output8759_def]
  conv => lhs; cbv
  try rfl
theorem node8759_eq : Flapjack.WordAlloc.removeDeadStructural input8759 value4383 value1 value2 = (output8759, value4384, value1) := by
  rw [input8759_def, output8759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11513 6140956605115975401#64))).val
theorem input8760_def : input8760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11513 6140956605115975401#64)) := by
  unfold input8760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8760_def : output8760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8760_skip : Flapjack.WordAlloc.isSkip output8760 = true := by
  rw [output8760_def]
  conv => lhs; cbv
  try rfl
theorem node8760_eq : Flapjack.WordAlloc.removeDeadStructural input8760 value4384 value1 value2 = (output8760, value4384, value1) := by
  rw [input8760_def, output8760_def]
  try (conv => lhs; cbv)
  try rfl

def value4385 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11509 11501 (Flapjack.WordRegImm.reg 11505))))).val
theorem input8761_def : input8761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11509 11501 (Flapjack.WordRegImm.reg 11505)))) := by
  unfold input8761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11509 11501 (Flapjack.WordRegImm.reg 11505))))).val
theorem output8761_def : output8761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11509 11501 (Flapjack.WordRegImm.reg 11505)))) := by
  unfold output8761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8761_skip : Flapjack.WordAlloc.isSkip output8761 = false := by
  rw [output8761_def]
  conv => lhs; cbv
  try rfl
theorem node8761_eq : Flapjack.WordAlloc.removeDeadStructural input8761 value4384 value1 value2 = (output8761, value4385, value1) := by
  rw [input8761_def, output8761_def]
  try (conv => lhs; cbv)
  try rfl

def value4386 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11505 2752#64))).val
theorem input8762_def : input8762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11505 2752#64)) := by
  unfold input8762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11505 2752#64))).val
theorem output8762_def : output8762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11505 2752#64)) := by
  unfold output8762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8762_skip : Flapjack.WordAlloc.isSkip output8762 = false := by
  rw [output8762_def]
  conv => lhs; cbv
  try rfl
theorem node8762_eq : Flapjack.WordAlloc.removeDeadStructural input8762 value4385 value1 value2 = (output8762, value4386, value1) := by
  rw [input8762_def, output8762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8762 input8761)).val
theorem input8763_def : input8763 = (.seq input8762 input8761) := by
  unfold input8763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8762 output8761)).val
theorem output8763_def : output8763 = (.seq output8762 output8761) := by
  unfold output8763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8763_skip : Flapjack.WordAlloc.isSkip output8763 = false := by
  rw [output8763_def]
  conv => lhs; cbv
  try rfl
theorem node8763_eq : Flapjack.WordAlloc.removeDeadStructural input8763 value4384 value1 value2 = (output8763, value4386, value1) := by
  rw [input8763_def, output8763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8761_eq]
  dsimp only
  rw [node8762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4387 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11501 (Flapjack.WordLangAddr.addr 11497 18446744073709551104#64)))).val
theorem input8764_def : input8764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11501 (Flapjack.WordLangAddr.addr 11497 18446744073709551104#64))) := by
  unfold input8764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11501 (Flapjack.WordLangAddr.addr 11497 18446744073709551104#64)))).val
theorem output8764_def : output8764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11501 (Flapjack.WordLangAddr.addr 11497 18446744073709551104#64))) := by
  unfold output8764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8764_skip : Flapjack.WordAlloc.isSkip output8764 = false := by
  rw [output8764_def]
  conv => lhs; cbv
  try rfl
theorem node8764_eq : Flapjack.WordAlloc.removeDeadStructural input8764 value4386 value1 value2 = (output8764, value4387, value1) := by
  rw [input8764_def, output8764_def]
  try (conv => lhs; cbv)
  try rfl

def value4388 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11497 11493)).val
theorem input8765_def : input8765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11497 11493) := by
  unfold input8765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11497 11493)).val
theorem output8765_def : output8765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11497 11493) := by
  unfold output8765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8765_skip : Flapjack.WordAlloc.isSkip output8765 = false := by
  rw [output8765_def]
  conv => lhs; cbv
  try rfl
theorem node8765_eq : Flapjack.WordAlloc.removeDeadStructural input8765 value4387 value1 value2 = (output8765, value4388, value1) := by
  rw [input8765_def, output8765_def]
  try (conv => lhs; cbv)
  try rfl

def value4389 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11493 11489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8766_def : input8766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11493 11489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11493 11489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8766_def : output8766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11493 11489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8766_skip : Flapjack.WordAlloc.isSkip output8766 = false := by
  rw [output8766_def]
  conv => lhs; cbv
  try rfl
theorem node8766_eq : Flapjack.WordAlloc.removeDeadStructural input8766 value4388 value1 value2 = (output8766, value4389, value1) := by
  rw [input8766_def, output8766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11489 Flapjack.WordStore.heapLength)).val
theorem input8767_def : input8767 = (Flapjack.WordLangProgHOL.get 11489 Flapjack.WordStore.heapLength) := by
  unfold input8767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11489 Flapjack.WordStore.heapLength)).val
theorem output8767_def : output8767 = (Flapjack.WordLangProgHOL.get 11489 Flapjack.WordStore.heapLength) := by
  unfold output8767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8767_skip : Flapjack.WordAlloc.isSkip output8767 = false := by
  rw [output8767_def]
  conv => lhs; cbv
  try rfl
theorem node8767_eq : Flapjack.WordAlloc.removeDeadStructural input8767 value4389 value1 value2 = (output8767, value5, value1) := by
  rw [input8767_def, output8767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8767 input8766)).val
theorem input8768_def : input8768 = (.seq input8767 input8766) := by
  unfold input8768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8767 output8766)).val
theorem output8768_def : output8768 = (.seq output8767 output8766) := by
  unfold output8768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8768_skip : Flapjack.WordAlloc.isSkip output8768 = false := by
  rw [output8768_def]
  conv => lhs; cbv
  try rfl
theorem node8768_eq : Flapjack.WordAlloc.removeDeadStructural input8768 value4388 value1 value2 = (output8768, value5, value1) := by
  rw [input8768_def, output8768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8766_eq]
  dsimp only
  rw [node8767_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8768 input8765)).val
theorem input8769_def : input8769 = (.seq input8768 input8765) := by
  unfold input8769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8768 output8765)).val
theorem output8769_def : output8769 = (.seq output8768 output8765) := by
  unfold output8769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8769_skip : Flapjack.WordAlloc.isSkip output8769 = false := by
  rw [output8769_def]
  conv => lhs; cbv
  try rfl
theorem node8769_eq : Flapjack.WordAlloc.removeDeadStructural input8769 value4387 value1 value2 = (output8769, value5, value1) := by
  rw [input8769_def, output8769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8765_eq]
  dsimp only
  rw [node8768_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8769 input8764)).val
theorem input8770_def : input8770 = (.seq input8769 input8764) := by
  unfold input8770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8769 output8764)).val
theorem output8770_def : output8770 = (.seq output8769 output8764) := by
  unfold output8770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8770_skip : Flapjack.WordAlloc.isSkip output8770 = false := by
  rw [output8770_def]
  conv => lhs; cbv
  try rfl
theorem node8770_eq : Flapjack.WordAlloc.removeDeadStructural input8770 value4386 value1 value2 = (output8770, value5, value1) := by
  rw [input8770_def, output8770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8764_eq]
  dsimp only
  rw [node8769_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8770 input8763)).val
theorem input8771_def : input8771 = (.seq input8770 input8763) := by
  unfold input8771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8770 output8763)).val
theorem output8771_def : output8771 = (.seq output8770 output8763) := by
  unfold output8771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8771_skip : Flapjack.WordAlloc.isSkip output8771 = false := by
  rw [output8771_def]
  conv => lhs; cbv
  try rfl
theorem node8771_eq : Flapjack.WordAlloc.removeDeadStructural input8771 value4384 value1 value2 = (output8771, value5, value1) := by
  rw [input8771_def, output8771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8763_eq]
  dsimp only
  rw [node8770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4390 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11481 (Flapjack.WordLangAddr.addr 11485 0#64)))).val
theorem input8772_def : input8772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11481 (Flapjack.WordLangAddr.addr 11485 0#64))) := by
  unfold input8772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11481 (Flapjack.WordLangAddr.addr 11485 0#64)))).val
theorem output8772_def : output8772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11481 (Flapjack.WordLangAddr.addr 11485 0#64))) := by
  unfold output8772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8772_skip : Flapjack.WordAlloc.isSkip output8772 = false := by
  rw [output8772_def]
  conv => lhs; cbv
  try rfl
theorem node8772_eq : Flapjack.WordAlloc.removeDeadStructural input8772 value5 value1 value2 = (output8772, value4390, value1) := by
  rw [input8772_def, output8772_def]
  try (conv => lhs; cbv)
  try rfl

def value4391 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11485, 11473)])).val
theorem input8773_def : input8773 = (Flapjack.WordLangProgHOL.move 0 [(11485, 11473)]) := by
  unfold input8773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11485, 11473)])).val
theorem output8773_def : output8773 = (Flapjack.WordLangProgHOL.move 0 [(11485, 11473)]) := by
  unfold output8773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8773_skip : Flapjack.WordAlloc.isSkip output8773 = false := by
  rw [output8773_def]
  conv => lhs; cbv
  try rfl
theorem node8773_eq : Flapjack.WordAlloc.removeDeadStructural input8773 value4390 value1 value2 = (output8773, value4391, value1) := by
  rw [input8773_def, output8773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8773 input8772)).val
theorem input8774_def : input8774 = (.seq input8773 input8772) := by
  unfold input8774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8773 output8772)).val
theorem output8774_def : output8774 = (.seq output8773 output8772) := by
  unfold output8774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8774_skip : Flapjack.WordAlloc.isSkip output8774 = false := by
  rw [output8774_def]
  conv => lhs; cbv
  try rfl
theorem node8774_eq : Flapjack.WordAlloc.removeDeadStructural input8774 value5 value1 value2 = (output8774, value4391, value1) := by
  rw [input8774_def, output8774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8772_eq]
  dsimp only
  rw [node8773_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4392 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11481 4131830461445745997#64))).val
theorem input8775_def : input8775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11481 4131830461445745997#64)) := by
  unfold input8775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11481 4131830461445745997#64))).val
theorem output8775_def : output8775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11481 4131830461445745997#64)) := by
  unfold output8775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8775_skip : Flapjack.WordAlloc.isSkip output8775 = false := by
  rw [output8775_def]
  conv => lhs; cbv
  try rfl
theorem node8775_eq : Flapjack.WordAlloc.removeDeadStructural input8775 value4391 value1 value2 = (output8775, value4392, value1) := by
  rw [input8775_def, output8775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11477 4131830461445745997#64))).val
theorem input8776_def : input8776 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11477 4131830461445745997#64)) := by
  unfold input8776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8776_def : output8776 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8776_skip : Flapjack.WordAlloc.isSkip output8776 = true := by
  rw [output8776_def]
  conv => lhs; cbv
  try rfl
theorem node8776_eq : Flapjack.WordAlloc.removeDeadStructural input8776 value4392 value1 value2 = (output8776, value4392, value1) := by
  rw [input8776_def, output8776_def]
  try (conv => lhs; cbv)
  try rfl

def value4393 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11473 11465 (Flapjack.WordRegImm.reg 11469))))).val
theorem input8777_def : input8777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11473 11465 (Flapjack.WordRegImm.reg 11469)))) := by
  unfold input8777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11473 11465 (Flapjack.WordRegImm.reg 11469))))).val
theorem output8777_def : output8777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11473 11465 (Flapjack.WordRegImm.reg 11469)))) := by
  unfold output8777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8777_skip : Flapjack.WordAlloc.isSkip output8777 = false := by
  rw [output8777_def]
  conv => lhs; cbv
  try rfl
theorem node8777_eq : Flapjack.WordAlloc.removeDeadStructural input8777 value4392 value1 value2 = (output8777, value4393, value1) := by
  rw [input8777_def, output8777_def]
  try (conv => lhs; cbv)
  try rfl

def value4394 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11469 2744#64))).val
theorem input8778_def : input8778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11469 2744#64)) := by
  unfold input8778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11469 2744#64))).val
theorem output8778_def : output8778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11469 2744#64)) := by
  unfold output8778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8778_skip : Flapjack.WordAlloc.isSkip output8778 = false := by
  rw [output8778_def]
  conv => lhs; cbv
  try rfl
theorem node8778_eq : Flapjack.WordAlloc.removeDeadStructural input8778 value4393 value1 value2 = (output8778, value4394, value1) := by
  rw [input8778_def, output8778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8778 input8777)).val
theorem input8779_def : input8779 = (.seq input8778 input8777) := by
  unfold input8779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8778 output8777)).val
theorem output8779_def : output8779 = (.seq output8778 output8777) := by
  unfold output8779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8779_skip : Flapjack.WordAlloc.isSkip output8779 = false := by
  rw [output8779_def]
  conv => lhs; cbv
  try rfl
theorem node8779_eq : Flapjack.WordAlloc.removeDeadStructural input8779 value4392 value1 value2 = (output8779, value4394, value1) := by
  rw [input8779_def, output8779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8777_eq]
  dsimp only
  rw [node8778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4395 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11465 (Flapjack.WordLangAddr.addr 11461 18446744073709551104#64)))).val
theorem input8780_def : input8780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11465 (Flapjack.WordLangAddr.addr 11461 18446744073709551104#64))) := by
  unfold input8780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11465 (Flapjack.WordLangAddr.addr 11461 18446744073709551104#64)))).val
theorem output8780_def : output8780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11465 (Flapjack.WordLangAddr.addr 11461 18446744073709551104#64))) := by
  unfold output8780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8780_skip : Flapjack.WordAlloc.isSkip output8780 = false := by
  rw [output8780_def]
  conv => lhs; cbv
  try rfl
theorem node8780_eq : Flapjack.WordAlloc.removeDeadStructural input8780 value4394 value1 value2 = (output8780, value4395, value1) := by
  rw [input8780_def, output8780_def]
  try (conv => lhs; cbv)
  try rfl

def value4396 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11461 11457)).val
theorem input8781_def : input8781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11461 11457) := by
  unfold input8781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11461 11457)).val
theorem output8781_def : output8781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11461 11457) := by
  unfold output8781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8781_skip : Flapjack.WordAlloc.isSkip output8781 = false := by
  rw [output8781_def]
  conv => lhs; cbv
  try rfl
theorem node8781_eq : Flapjack.WordAlloc.removeDeadStructural input8781 value4395 value1 value2 = (output8781, value4396, value1) := by
  rw [input8781_def, output8781_def]
  try (conv => lhs; cbv)
  try rfl

def value4397 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11457 11453 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8782_def : input8782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11457 11453 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11457 11453 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8782_def : output8782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11457 11453 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8782_skip : Flapjack.WordAlloc.isSkip output8782 = false := by
  rw [output8782_def]
  conv => lhs; cbv
  try rfl
theorem node8782_eq : Flapjack.WordAlloc.removeDeadStructural input8782 value4396 value1 value2 = (output8782, value4397, value1) := by
  rw [input8782_def, output8782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11453 Flapjack.WordStore.heapLength)).val
theorem input8783_def : input8783 = (Flapjack.WordLangProgHOL.get 11453 Flapjack.WordStore.heapLength) := by
  unfold input8783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11453 Flapjack.WordStore.heapLength)).val
theorem output8783_def : output8783 = (Flapjack.WordLangProgHOL.get 11453 Flapjack.WordStore.heapLength) := by
  unfold output8783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8783_skip : Flapjack.WordAlloc.isSkip output8783 = false := by
  rw [output8783_def]
  conv => lhs; cbv
  try rfl
theorem node8783_eq : Flapjack.WordAlloc.removeDeadStructural input8783 value4397 value1 value2 = (output8783, value5, value1) := by
  rw [input8783_def, output8783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8783 input8782)).val
theorem input8784_def : input8784 = (.seq input8783 input8782) := by
  unfold input8784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8783 output8782)).val
theorem output8784_def : output8784 = (.seq output8783 output8782) := by
  unfold output8784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8784_skip : Flapjack.WordAlloc.isSkip output8784 = false := by
  rw [output8784_def]
  conv => lhs; cbv
  try rfl
theorem node8784_eq : Flapjack.WordAlloc.removeDeadStructural input8784 value4396 value1 value2 = (output8784, value5, value1) := by
  rw [input8784_def, output8784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8782_eq]
  dsimp only
  rw [node8783_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8784 input8781)).val
theorem input8785_def : input8785 = (.seq input8784 input8781) := by
  unfold input8785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8784 output8781)).val
theorem output8785_def : output8785 = (.seq output8784 output8781) := by
  unfold output8785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8785_skip : Flapjack.WordAlloc.isSkip output8785 = false := by
  rw [output8785_def]
  conv => lhs; cbv
  try rfl
theorem node8785_eq : Flapjack.WordAlloc.removeDeadStructural input8785 value4395 value1 value2 = (output8785, value5, value1) := by
  rw [input8785_def, output8785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8781_eq]
  dsimp only
  rw [node8784_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8785 input8780)).val
theorem input8786_def : input8786 = (.seq input8785 input8780) := by
  unfold input8786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8785 output8780)).val
theorem output8786_def : output8786 = (.seq output8785 output8780) := by
  unfold output8786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8786_skip : Flapjack.WordAlloc.isSkip output8786 = false := by
  rw [output8786_def]
  conv => lhs; cbv
  try rfl
theorem node8786_eq : Flapjack.WordAlloc.removeDeadStructural input8786 value4394 value1 value2 = (output8786, value5, value1) := by
  rw [input8786_def, output8786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8780_eq]
  dsimp only
  rw [node8785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8786 input8779)).val
theorem input8787_def : input8787 = (.seq input8786 input8779) := by
  unfold input8787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8786 output8779)).val
theorem output8787_def : output8787 = (.seq output8786 output8779) := by
  unfold output8787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8787_skip : Flapjack.WordAlloc.isSkip output8787 = false := by
  rw [output8787_def]
  conv => lhs; cbv
  try rfl
theorem node8787_eq : Flapjack.WordAlloc.removeDeadStructural input8787 value4392 value1 value2 = (output8787, value5, value1) := by
  rw [input8787_def, output8787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8779_eq]
  dsimp only
  rw [node8786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4398 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11445 (Flapjack.WordLangAddr.addr 11449 0#64)))).val
theorem input8788_def : input8788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11445 (Flapjack.WordLangAddr.addr 11449 0#64))) := by
  unfold input8788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11445 (Flapjack.WordLangAddr.addr 11449 0#64)))).val
theorem output8788_def : output8788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11445 (Flapjack.WordLangAddr.addr 11449 0#64))) := by
  unfold output8788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8788_skip : Flapjack.WordAlloc.isSkip output8788 = false := by
  rw [output8788_def]
  conv => lhs; cbv
  try rfl
theorem node8788_eq : Flapjack.WordAlloc.removeDeadStructural input8788 value5 value1 value2 = (output8788, value4398, value1) := by
  rw [input8788_def, output8788_def]
  try (conv => lhs; cbv)
  try rfl

def value4399 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11449, 11437)])).val
theorem input8789_def : input8789 = (Flapjack.WordLangProgHOL.move 0 [(11449, 11437)]) := by
  unfold input8789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11449, 11437)])).val
theorem output8789_def : output8789 = (Flapjack.WordLangProgHOL.move 0 [(11449, 11437)]) := by
  unfold output8789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8789_skip : Flapjack.WordAlloc.isSkip output8789 = false := by
  rw [output8789_def]
  conv => lhs; cbv
  try rfl
theorem node8789_eq : Flapjack.WordAlloc.removeDeadStructural input8789 value4398 value1 value2 = (output8789, value4399, value1) := by
  rw [input8789_def, output8789_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8789 input8788)).val
theorem input8790_def : input8790 = (.seq input8789 input8788) := by
  unfold input8790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8789 output8788)).val
theorem output8790_def : output8790 = (.seq output8789 output8788) := by
  unfold output8790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8790_skip : Flapjack.WordAlloc.isSkip output8790 = false := by
  rw [output8790_def]
  conv => lhs; cbv
  try rfl
theorem node8790_eq : Flapjack.WordAlloc.removeDeadStructural input8790 value5 value1 value2 = (output8790, value4399, value1) := by
  rw [input8790_def, output8790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8788_eq]
  dsimp only
  rw [node8789_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4400 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11445 739642499118176303#64))).val
theorem input8791_def : input8791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11445 739642499118176303#64)) := by
  unfold input8791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11445 739642499118176303#64))).val
theorem output8791_def : output8791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11445 739642499118176303#64)) := by
  unfold output8791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8791_skip : Flapjack.WordAlloc.isSkip output8791 = false := by
  rw [output8791_def]
  conv => lhs; cbv
  try rfl
theorem node8791_eq : Flapjack.WordAlloc.removeDeadStructural input8791 value4399 value1 value2 = (output8791, value4400, value1) := by
  rw [input8791_def, output8791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11441 739642499118176303#64))).val
theorem input8792_def : input8792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11441 739642499118176303#64)) := by
  unfold input8792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8792_def : output8792 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8792_skip : Flapjack.WordAlloc.isSkip output8792 = true := by
  rw [output8792_def]
  conv => lhs; cbv
  try rfl
theorem node8792_eq : Flapjack.WordAlloc.removeDeadStructural input8792 value4400 value1 value2 = (output8792, value4400, value1) := by
  rw [input8792_def, output8792_def]
  try (conv => lhs; cbv)
  try rfl

def value4401 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11437 11429 (Flapjack.WordRegImm.reg 11433))))).val
theorem input8793_def : input8793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11437 11429 (Flapjack.WordRegImm.reg 11433)))) := by
  unfold input8793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11437 11429 (Flapjack.WordRegImm.reg 11433))))).val
theorem output8793_def : output8793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11437 11429 (Flapjack.WordRegImm.reg 11433)))) := by
  unfold output8793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8793_skip : Flapjack.WordAlloc.isSkip output8793 = false := by
  rw [output8793_def]
  conv => lhs; cbv
  try rfl
theorem node8793_eq : Flapjack.WordAlloc.removeDeadStructural input8793 value4400 value1 value2 = (output8793, value4401, value1) := by
  rw [input8793_def, output8793_def]
  try (conv => lhs; cbv)
  try rfl

def value4402 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11433 2736#64))).val
theorem input8794_def : input8794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11433 2736#64)) := by
  unfold input8794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11433 2736#64))).val
theorem output8794_def : output8794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11433 2736#64)) := by
  unfold output8794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8794_skip : Flapjack.WordAlloc.isSkip output8794 = false := by
  rw [output8794_def]
  conv => lhs; cbv
  try rfl
theorem node8794_eq : Flapjack.WordAlloc.removeDeadStructural input8794 value4401 value1 value2 = (output8794, value4402, value1) := by
  rw [input8794_def, output8794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8794 input8793)).val
theorem input8795_def : input8795 = (.seq input8794 input8793) := by
  unfold input8795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8794 output8793)).val
theorem output8795_def : output8795 = (.seq output8794 output8793) := by
  unfold output8795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8795_skip : Flapjack.WordAlloc.isSkip output8795 = false := by
  rw [output8795_def]
  conv => lhs; cbv
  try rfl
theorem node8795_eq : Flapjack.WordAlloc.removeDeadStructural input8795 value4400 value1 value2 = (output8795, value4402, value1) := by
  rw [input8795_def, output8795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8793_eq]
  dsimp only
  rw [node8794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4403 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11429 (Flapjack.WordLangAddr.addr 11425 18446744073709551104#64)))).val
theorem input8796_def : input8796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11429 (Flapjack.WordLangAddr.addr 11425 18446744073709551104#64))) := by
  unfold input8796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11429 (Flapjack.WordLangAddr.addr 11425 18446744073709551104#64)))).val
theorem output8796_def : output8796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11429 (Flapjack.WordLangAddr.addr 11425 18446744073709551104#64))) := by
  unfold output8796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8796_skip : Flapjack.WordAlloc.isSkip output8796 = false := by
  rw [output8796_def]
  conv => lhs; cbv
  try rfl
theorem node8796_eq : Flapjack.WordAlloc.removeDeadStructural input8796 value4402 value1 value2 = (output8796, value4403, value1) := by
  rw [input8796_def, output8796_def]
  try (conv => lhs; cbv)
  try rfl

def value4404 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11425 11421)).val
theorem input8797_def : input8797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11425 11421) := by
  unfold input8797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11425 11421)).val
theorem output8797_def : output8797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11425 11421) := by
  unfold output8797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8797_skip : Flapjack.WordAlloc.isSkip output8797 = false := by
  rw [output8797_def]
  conv => lhs; cbv
  try rfl
theorem node8797_eq : Flapjack.WordAlloc.removeDeadStructural input8797 value4403 value1 value2 = (output8797, value4404, value1) := by
  rw [input8797_def, output8797_def]
  try (conv => lhs; cbv)
  try rfl

def value4405 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11421 11417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8798_def : input8798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11421 11417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11421 11417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8798_def : output8798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11421 11417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8798_skip : Flapjack.WordAlloc.isSkip output8798 = false := by
  rw [output8798_def]
  conv => lhs; cbv
  try rfl
theorem node8798_eq : Flapjack.WordAlloc.removeDeadStructural input8798 value4404 value1 value2 = (output8798, value4405, value1) := by
  rw [input8798_def, output8798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11417 Flapjack.WordStore.heapLength)).val
theorem input8799_def : input8799 = (Flapjack.WordLangProgHOL.get 11417 Flapjack.WordStore.heapLength) := by
  unfold input8799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11417 Flapjack.WordStore.heapLength)).val
theorem output8799_def : output8799 = (Flapjack.WordLangProgHOL.get 11417 Flapjack.WordStore.heapLength) := by
  unfold output8799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8799_skip : Flapjack.WordAlloc.isSkip output8799 = false := by
  rw [output8799_def]
  conv => lhs; cbv
  try rfl
theorem node8799_eq : Flapjack.WordAlloc.removeDeadStructural input8799 value4405 value1 value2 = (output8799, value5, value1) := by
  rw [input8799_def, output8799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8799 input8798)).val
theorem input8800_def : input8800 = (.seq input8799 input8798) := by
  unfold input8800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8799 output8798)).val
theorem output8800_def : output8800 = (.seq output8799 output8798) := by
  unfold output8800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8800_skip : Flapjack.WordAlloc.isSkip output8800 = false := by
  rw [output8800_def]
  conv => lhs; cbv
  try rfl
theorem node8800_eq : Flapjack.WordAlloc.removeDeadStructural input8800 value4404 value1 value2 = (output8800, value5, value1) := by
  rw [input8800_def, output8800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8798_eq]
  dsimp only
  rw [node8799_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8800 input8797)).val
theorem input8801_def : input8801 = (.seq input8800 input8797) := by
  unfold input8801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8800 output8797)).val
theorem output8801_def : output8801 = (.seq output8800 output8797) := by
  unfold output8801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8801_skip : Flapjack.WordAlloc.isSkip output8801 = false := by
  rw [output8801_def]
  conv => lhs; cbv
  try rfl
theorem node8801_eq : Flapjack.WordAlloc.removeDeadStructural input8801 value4403 value1 value2 = (output8801, value5, value1) := by
  rw [input8801_def, output8801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8797_eq]
  dsimp only
  rw [node8800_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8801 input8796)).val
theorem input8802_def : input8802 = (.seq input8801 input8796) := by
  unfold input8802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8801 output8796)).val
theorem output8802_def : output8802 = (.seq output8801 output8796) := by
  unfold output8802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8802_skip : Flapjack.WordAlloc.isSkip output8802 = false := by
  rw [output8802_def]
  conv => lhs; cbv
  try rfl
theorem node8802_eq : Flapjack.WordAlloc.removeDeadStructural input8802 value4402 value1 value2 = (output8802, value5, value1) := by
  rw [input8802_def, output8802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8796_eq]
  dsimp only
  rw [node8801_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8802 input8795)).val
theorem input8803_def : input8803 = (.seq input8802 input8795) := by
  unfold input8803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8802 output8795)).val
theorem output8803_def : output8803 = (.seq output8802 output8795) := by
  unfold output8803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8803_skip : Flapjack.WordAlloc.isSkip output8803 = false := by
  rw [output8803_def]
  conv => lhs; cbv
  try rfl
theorem node8803_eq : Flapjack.WordAlloc.removeDeadStructural input8803 value4400 value1 value2 = (output8803, value5, value1) := by
  rw [input8803_def, output8803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8795_eq]
  dsimp only
  rw [node8802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4406 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11409 (Flapjack.WordLangAddr.addr 11413 0#64)))).val
theorem input8804_def : input8804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11409 (Flapjack.WordLangAddr.addr 11413 0#64))) := by
  unfold input8804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11409 (Flapjack.WordLangAddr.addr 11413 0#64)))).val
theorem output8804_def : output8804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11409 (Flapjack.WordLangAddr.addr 11413 0#64))) := by
  unfold output8804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8804_skip : Flapjack.WordAlloc.isSkip output8804 = false := by
  rw [output8804_def]
  conv => lhs; cbv
  try rfl
theorem node8804_eq : Flapjack.WordAlloc.removeDeadStructural input8804 value5 value1 value2 = (output8804, value4406, value1) := by
  rw [input8804_def, output8804_def]
  try (conv => lhs; cbv)
  try rfl

def value4407 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11413, 11401)])).val
theorem input8805_def : input8805 = (Flapjack.WordLangProgHOL.move 0 [(11413, 11401)]) := by
  unfold input8805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11413, 11401)])).val
theorem output8805_def : output8805 = (Flapjack.WordLangProgHOL.move 0 [(11413, 11401)]) := by
  unfold output8805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8805_skip : Flapjack.WordAlloc.isSkip output8805 = false := by
  rw [output8805_def]
  conv => lhs; cbv
  try rfl
theorem node8805_eq : Flapjack.WordAlloc.removeDeadStructural input8805 value4406 value1 value2 = (output8805, value4407, value1) := by
  rw [input8805_def, output8805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8805 input8804)).val
theorem input8806_def : input8806 = (.seq input8805 input8804) := by
  unfold input8806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8805 output8804)).val
theorem output8806_def : output8806 = (.seq output8805 output8804) := by
  unfold output8806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8806_skip : Flapjack.WordAlloc.isSkip output8806 = false := by
  rw [output8806_def]
  conv => lhs; cbv
  try rfl
theorem node8806_eq : Flapjack.WordAlloc.removeDeadStructural input8806 value5 value1 value2 = (output8806, value4407, value1) := by
  rw [input8806_def, output8806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8804_eq]
  dsimp only
  rw [node8805_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4408 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11409 8358912131254619921#64))).val
theorem input8807_def : input8807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11409 8358912131254619921#64)) := by
  unfold input8807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11409 8358912131254619921#64))).val
theorem output8807_def : output8807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11409 8358912131254619921#64)) := by
  unfold output8807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8807_skip : Flapjack.WordAlloc.isSkip output8807 = false := by
  rw [output8807_def]
  conv => lhs; cbv
  try rfl
theorem node8807_eq : Flapjack.WordAlloc.removeDeadStructural input8807 value4407 value1 value2 = (output8807, value4408, value1) := by
  rw [input8807_def, output8807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11405 8358912131254619921#64))).val
theorem input8808_def : input8808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11405 8358912131254619921#64)) := by
  unfold input8808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8808_def : output8808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8808_skip : Flapjack.WordAlloc.isSkip output8808 = true := by
  rw [output8808_def]
  conv => lhs; cbv
  try rfl
theorem node8808_eq : Flapjack.WordAlloc.removeDeadStructural input8808 value4408 value1 value2 = (output8808, value4408, value1) := by
  rw [input8808_def, output8808_def]
  try (conv => lhs; cbv)
  try rfl

def value4409 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11401 11393 (Flapjack.WordRegImm.reg 11397))))).val
theorem input8809_def : input8809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11401 11393 (Flapjack.WordRegImm.reg 11397)))) := by
  unfold input8809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11401 11393 (Flapjack.WordRegImm.reg 11397))))).val
theorem output8809_def : output8809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11401 11393 (Flapjack.WordRegImm.reg 11397)))) := by
  unfold output8809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8809_skip : Flapjack.WordAlloc.isSkip output8809 = false := by
  rw [output8809_def]
  conv => lhs; cbv
  try rfl
theorem node8809_eq : Flapjack.WordAlloc.removeDeadStructural input8809 value4408 value1 value2 = (output8809, value4409, value1) := by
  rw [input8809_def, output8809_def]
  try (conv => lhs; cbv)
  try rfl

def value4410 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11397 2728#64))).val
theorem input8810_def : input8810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11397 2728#64)) := by
  unfold input8810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11397 2728#64))).val
theorem output8810_def : output8810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11397 2728#64)) := by
  unfold output8810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8810_skip : Flapjack.WordAlloc.isSkip output8810 = false := by
  rw [output8810_def]
  conv => lhs; cbv
  try rfl
theorem node8810_eq : Flapjack.WordAlloc.removeDeadStructural input8810 value4409 value1 value2 = (output8810, value4410, value1) := by
  rw [input8810_def, output8810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8810 input8809)).val
theorem input8811_def : input8811 = (.seq input8810 input8809) := by
  unfold input8811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8810 output8809)).val
theorem output8811_def : output8811 = (.seq output8810 output8809) := by
  unfold output8811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8811_skip : Flapjack.WordAlloc.isSkip output8811 = false := by
  rw [output8811_def]
  conv => lhs; cbv
  try rfl
theorem node8811_eq : Flapjack.WordAlloc.removeDeadStructural input8811 value4408 value1 value2 = (output8811, value4410, value1) := by
  rw [input8811_def, output8811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8809_eq]
  dsimp only
  rw [node8810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4411 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11393 (Flapjack.WordLangAddr.addr 11389 18446744073709551104#64)))).val
theorem input8812_def : input8812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11393 (Flapjack.WordLangAddr.addr 11389 18446744073709551104#64))) := by
  unfold input8812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11393 (Flapjack.WordLangAddr.addr 11389 18446744073709551104#64)))).val
theorem output8812_def : output8812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11393 (Flapjack.WordLangAddr.addr 11389 18446744073709551104#64))) := by
  unfold output8812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8812_skip : Flapjack.WordAlloc.isSkip output8812 = false := by
  rw [output8812_def]
  conv => lhs; cbv
  try rfl
theorem node8812_eq : Flapjack.WordAlloc.removeDeadStructural input8812 value4410 value1 value2 = (output8812, value4411, value1) := by
  rw [input8812_def, output8812_def]
  try (conv => lhs; cbv)
  try rfl

def value4412 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11389 11385)).val
theorem input8813_def : input8813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11389 11385) := by
  unfold input8813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11389 11385)).val
theorem output8813_def : output8813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11389 11385) := by
  unfold output8813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8813_skip : Flapjack.WordAlloc.isSkip output8813 = false := by
  rw [output8813_def]
  conv => lhs; cbv
  try rfl
theorem node8813_eq : Flapjack.WordAlloc.removeDeadStructural input8813 value4411 value1 value2 = (output8813, value4412, value1) := by
  rw [input8813_def, output8813_def]
  try (conv => lhs; cbv)
  try rfl

def value4413 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11385 11381 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8814_def : input8814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11385 11381 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11385 11381 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8814_def : output8814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11385 11381 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8814_skip : Flapjack.WordAlloc.isSkip output8814 = false := by
  rw [output8814_def]
  conv => lhs; cbv
  try rfl
theorem node8814_eq : Flapjack.WordAlloc.removeDeadStructural input8814 value4412 value1 value2 = (output8814, value4413, value1) := by
  rw [input8814_def, output8814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11381 Flapjack.WordStore.heapLength)).val
theorem input8815_def : input8815 = (Flapjack.WordLangProgHOL.get 11381 Flapjack.WordStore.heapLength) := by
  unfold input8815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11381 Flapjack.WordStore.heapLength)).val
theorem output8815_def : output8815 = (Flapjack.WordLangProgHOL.get 11381 Flapjack.WordStore.heapLength) := by
  unfold output8815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8815_skip : Flapjack.WordAlloc.isSkip output8815 = false := by
  rw [output8815_def]
  conv => lhs; cbv
  try rfl
theorem node8815_eq : Flapjack.WordAlloc.removeDeadStructural input8815 value4413 value1 value2 = (output8815, value5, value1) := by
  rw [input8815_def, output8815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8815 input8814)).val
theorem input8816_def : input8816 = (.seq input8815 input8814) := by
  unfold input8816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8815 output8814)).val
theorem output8816_def : output8816 = (.seq output8815 output8814) := by
  unfold output8816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8816_skip : Flapjack.WordAlloc.isSkip output8816 = false := by
  rw [output8816_def]
  conv => lhs; cbv
  try rfl
theorem node8816_eq : Flapjack.WordAlloc.removeDeadStructural input8816 value4412 value1 value2 = (output8816, value5, value1) := by
  rw [input8816_def, output8816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8814_eq]
  dsimp only
  rw [node8815_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8816 input8813)).val
theorem input8817_def : input8817 = (.seq input8816 input8813) := by
  unfold input8817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8816 output8813)).val
theorem output8817_def : output8817 = (.seq output8816 output8813) := by
  unfold output8817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8817_skip : Flapjack.WordAlloc.isSkip output8817 = false := by
  rw [output8817_def]
  conv => lhs; cbv
  try rfl
theorem node8817_eq : Flapjack.WordAlloc.removeDeadStructural input8817 value4411 value1 value2 = (output8817, value5, value1) := by
  rw [input8817_def, output8817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8813_eq]
  dsimp only
  rw [node8816_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8817 input8812)).val
theorem input8818_def : input8818 = (.seq input8817 input8812) := by
  unfold input8818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8817 output8812)).val
theorem output8818_def : output8818 = (.seq output8817 output8812) := by
  unfold output8818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8818_skip : Flapjack.WordAlloc.isSkip output8818 = false := by
  rw [output8818_def]
  conv => lhs; cbv
  try rfl
theorem node8818_eq : Flapjack.WordAlloc.removeDeadStructural input8818 value4410 value1 value2 = (output8818, value5, value1) := by
  rw [input8818_def, output8818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8812_eq]
  dsimp only
  rw [node8817_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8818 input8811)).val
theorem input8819_def : input8819 = (.seq input8818 input8811) := by
  unfold input8819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8818 output8811)).val
theorem output8819_def : output8819 = (.seq output8818 output8811) := by
  unfold output8819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8819_skip : Flapjack.WordAlloc.isSkip output8819 = false := by
  rw [output8819_def]
  conv => lhs; cbv
  try rfl
theorem node8819_eq : Flapjack.WordAlloc.removeDeadStructural input8819 value4408 value1 value2 = (output8819, value5, value1) := by
  rw [input8819_def, output8819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8811_eq]
  dsimp only
  rw [node8818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4414 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11373 (Flapjack.WordLangAddr.addr 11377 0#64)))).val
theorem input8820_def : input8820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11373 (Flapjack.WordLangAddr.addr 11377 0#64))) := by
  unfold input8820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11373 (Flapjack.WordLangAddr.addr 11377 0#64)))).val
theorem output8820_def : output8820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11373 (Flapjack.WordLangAddr.addr 11377 0#64))) := by
  unfold output8820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8820_skip : Flapjack.WordAlloc.isSkip output8820 = false := by
  rw [output8820_def]
  conv => lhs; cbv
  try rfl
theorem node8820_eq : Flapjack.WordAlloc.removeDeadStructural input8820 value5 value1 value2 = (output8820, value4414, value1) := by
  rw [input8820_def, output8820_def]
  try (conv => lhs; cbv)
  try rfl

def value4415 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11377, 11365)])).val
theorem input8821_def : input8821 = (Flapjack.WordLangProgHOL.move 0 [(11377, 11365)]) := by
  unfold input8821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11377, 11365)])).val
theorem output8821_def : output8821 = (Flapjack.WordLangProgHOL.move 0 [(11377, 11365)]) := by
  unfold output8821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8821_skip : Flapjack.WordAlloc.isSkip output8821 = false := by
  rw [output8821_def]
  conv => lhs; cbv
  try rfl
theorem node8821_eq : Flapjack.WordAlloc.removeDeadStructural input8821 value4414 value1 value2 = (output8821, value4415, value1) := by
  rw [input8821_def, output8821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8821 input8820)).val
theorem input8822_def : input8822 = (.seq input8821 input8820) := by
  unfold input8822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8821 output8820)).val
theorem output8822_def : output8822 = (.seq output8821 output8820) := by
  unfold output8822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8822_skip : Flapjack.WordAlloc.isSkip output8822 = false := by
  rw [output8822_def]
  conv => lhs; cbv
  try rfl
theorem node8822_eq : Flapjack.WordAlloc.removeDeadStructural input8822 value5 value1 value2 = (output8822, value4415, value1) := by
  rw [input8822_def, output8822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8820_eq]
  dsimp only
  rw [node8821_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4416 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11373 13847998906088228005#64))).val
theorem input8823_def : input8823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11373 13847998906088228005#64)) := by
  unfold input8823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11373 13847998906088228005#64))).val
theorem output8823_def : output8823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11373 13847998906088228005#64)) := by
  unfold output8823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8823_skip : Flapjack.WordAlloc.isSkip output8823 = false := by
  rw [output8823_def]
  conv => lhs; cbv
  try rfl
theorem node8823_eq : Flapjack.WordAlloc.removeDeadStructural input8823 value4415 value1 value2 = (output8823, value4416, value1) := by
  rw [input8823_def, output8823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11369 13847998906088228005#64))).val
theorem input8824_def : input8824 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11369 13847998906088228005#64)) := by
  unfold input8824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8824_def : output8824 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8824_skip : Flapjack.WordAlloc.isSkip output8824 = true := by
  rw [output8824_def]
  conv => lhs; cbv
  try rfl
theorem node8824_eq : Flapjack.WordAlloc.removeDeadStructural input8824 value4416 value1 value2 = (output8824, value4416, value1) := by
  rw [input8824_def, output8824_def]
  try (conv => lhs; cbv)
  try rfl

def value4417 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11365 11357 (Flapjack.WordRegImm.reg 11361))))).val
theorem input8825_def : input8825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11365 11357 (Flapjack.WordRegImm.reg 11361)))) := by
  unfold input8825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11365 11357 (Flapjack.WordRegImm.reg 11361))))).val
theorem output8825_def : output8825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11365 11357 (Flapjack.WordRegImm.reg 11361)))) := by
  unfold output8825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8825_skip : Flapjack.WordAlloc.isSkip output8825 = false := by
  rw [output8825_def]
  conv => lhs; cbv
  try rfl
theorem node8825_eq : Flapjack.WordAlloc.removeDeadStructural input8825 value4416 value1 value2 = (output8825, value4417, value1) := by
  rw [input8825_def, output8825_def]
  try (conv => lhs; cbv)
  try rfl

def value4418 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11361 2720#64))).val
theorem input8826_def : input8826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11361 2720#64)) := by
  unfold input8826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11361 2720#64))).val
theorem output8826_def : output8826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11361 2720#64)) := by
  unfold output8826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8826_skip : Flapjack.WordAlloc.isSkip output8826 = false := by
  rw [output8826_def]
  conv => lhs; cbv
  try rfl
theorem node8826_eq : Flapjack.WordAlloc.removeDeadStructural input8826 value4417 value1 value2 = (output8826, value4418, value1) := by
  rw [input8826_def, output8826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8826 input8825)).val
theorem input8827_def : input8827 = (.seq input8826 input8825) := by
  unfold input8827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8826 output8825)).val
theorem output8827_def : output8827 = (.seq output8826 output8825) := by
  unfold output8827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8827_skip : Flapjack.WordAlloc.isSkip output8827 = false := by
  rw [output8827_def]
  conv => lhs; cbv
  try rfl
theorem node8827_eq : Flapjack.WordAlloc.removeDeadStructural input8827 value4416 value1 value2 = (output8827, value4418, value1) := by
  rw [input8827_def, output8827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8825_eq]
  dsimp only
  rw [node8826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4419 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11357 (Flapjack.WordLangAddr.addr 11353 18446744073709551104#64)))).val
theorem input8828_def : input8828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11357 (Flapjack.WordLangAddr.addr 11353 18446744073709551104#64))) := by
  unfold input8828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11357 (Flapjack.WordLangAddr.addr 11353 18446744073709551104#64)))).val
theorem output8828_def : output8828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11357 (Flapjack.WordLangAddr.addr 11353 18446744073709551104#64))) := by
  unfold output8828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8828_skip : Flapjack.WordAlloc.isSkip output8828 = false := by
  rw [output8828_def]
  conv => lhs; cbv
  try rfl
theorem node8828_eq : Flapjack.WordAlloc.removeDeadStructural input8828 value4418 value1 value2 = (output8828, value4419, value1) := by
  rw [input8828_def, output8828_def]
  try (conv => lhs; cbv)
  try rfl

def value4420 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11353 11349)).val
theorem input8829_def : input8829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11353 11349) := by
  unfold input8829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11353 11349)).val
theorem output8829_def : output8829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11353 11349) := by
  unfold output8829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8829_skip : Flapjack.WordAlloc.isSkip output8829 = false := by
  rw [output8829_def]
  conv => lhs; cbv
  try rfl
theorem node8829_eq : Flapjack.WordAlloc.removeDeadStructural input8829 value4419 value1 value2 = (output8829, value4420, value1) := by
  rw [input8829_def, output8829_def]
  try (conv => lhs; cbv)
  try rfl

def value4421 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11349 11345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8830_def : input8830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11349 11345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11349 11345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8830_def : output8830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11349 11345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8830_skip : Flapjack.WordAlloc.isSkip output8830 = false := by
  rw [output8830_def]
  conv => lhs; cbv
  try rfl
theorem node8830_eq : Flapjack.WordAlloc.removeDeadStructural input8830 value4420 value1 value2 = (output8830, value4421, value1) := by
  rw [input8830_def, output8830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11345 Flapjack.WordStore.heapLength)).val
theorem input8831_def : input8831 = (Flapjack.WordLangProgHOL.get 11345 Flapjack.WordStore.heapLength) := by
  unfold input8831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11345 Flapjack.WordStore.heapLength)).val
theorem output8831_def : output8831 = (Flapjack.WordLangProgHOL.get 11345 Flapjack.WordStore.heapLength) := by
  unfold output8831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8831_skip : Flapjack.WordAlloc.isSkip output8831 = false := by
  rw [output8831_def]
  conv => lhs; cbv
  try rfl
theorem node8831_eq : Flapjack.WordAlloc.removeDeadStructural input8831 value4421 value1 value2 = (output8831, value5, value1) := by
  rw [input8831_def, output8831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8831 input8830)).val
theorem input8832_def : input8832 = (.seq input8831 input8830) := by
  unfold input8832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8831 output8830)).val
theorem output8832_def : output8832 = (.seq output8831 output8830) := by
  unfold output8832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8832_skip : Flapjack.WordAlloc.isSkip output8832 = false := by
  rw [output8832_def]
  conv => lhs; cbv
  try rfl
theorem node8832_eq : Flapjack.WordAlloc.removeDeadStructural input8832 value4420 value1 value2 = (output8832, value5, value1) := by
  rw [input8832_def, output8832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8830_eq]
  dsimp only
  rw [node8831_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8832 input8829)).val
theorem input8833_def : input8833 = (.seq input8832 input8829) := by
  unfold input8833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8832 output8829)).val
theorem output8833_def : output8833 = (.seq output8832 output8829) := by
  unfold output8833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8833_skip : Flapjack.WordAlloc.isSkip output8833 = false := by
  rw [output8833_def]
  conv => lhs; cbv
  try rfl
theorem node8833_eq : Flapjack.WordAlloc.removeDeadStructural input8833 value4419 value1 value2 = (output8833, value5, value1) := by
  rw [input8833_def, output8833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8829_eq]
  dsimp only
  rw [node8832_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8833 input8828)).val
theorem input8834_def : input8834 = (.seq input8833 input8828) := by
  unfold input8834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8833 output8828)).val
theorem output8834_def : output8834 = (.seq output8833 output8828) := by
  unfold output8834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8834_skip : Flapjack.WordAlloc.isSkip output8834 = false := by
  rw [output8834_def]
  conv => lhs; cbv
  try rfl
theorem node8834_eq : Flapjack.WordAlloc.removeDeadStructural input8834 value4418 value1 value2 = (output8834, value5, value1) := by
  rw [input8834_def, output8834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8828_eq]
  dsimp only
  rw [node8833_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8834 input8827)).val
theorem input8835_def : input8835 = (.seq input8834 input8827) := by
  unfold input8835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8834 output8827)).val
theorem output8835_def : output8835 = (.seq output8834 output8827) := by
  unfold output8835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8835_skip : Flapjack.WordAlloc.isSkip output8835 = false := by
  rw [output8835_def]
  conv => lhs; cbv
  try rfl
theorem node8835_eq : Flapjack.WordAlloc.removeDeadStructural input8835 value4416 value1 value2 = (output8835, value5, value1) := by
  rw [input8835_def, output8835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8827_eq]
  dsimp only
  rw [node8834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4422 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11337 (Flapjack.WordLangAddr.addr 11341 0#64)))).val
theorem input8836_def : input8836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11337 (Flapjack.WordLangAddr.addr 11341 0#64))) := by
  unfold input8836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11337 (Flapjack.WordLangAddr.addr 11341 0#64)))).val
theorem output8836_def : output8836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11337 (Flapjack.WordLangAddr.addr 11341 0#64))) := by
  unfold output8836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8836_skip : Flapjack.WordAlloc.isSkip output8836 = false := by
  rw [output8836_def]
  conv => lhs; cbv
  try rfl
theorem node8836_eq : Flapjack.WordAlloc.removeDeadStructural input8836 value5 value1 value2 = (output8836, value4422, value1) := by
  rw [input8836_def, output8836_def]
  try (conv => lhs; cbv)
  try rfl

def value4423 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11341, 11329)])).val
theorem input8837_def : input8837 = (Flapjack.WordLangProgHOL.move 0 [(11341, 11329)]) := by
  unfold input8837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11341, 11329)])).val
theorem output8837_def : output8837 = (Flapjack.WordLangProgHOL.move 0 [(11341, 11329)]) := by
  unfold output8837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8837_skip : Flapjack.WordAlloc.isSkip output8837 = false := by
  rw [output8837_def]
  conv => lhs; cbv
  try rfl
theorem node8837_eq : Flapjack.WordAlloc.removeDeadStructural input8837 value4422 value1 value2 = (output8837, value4423, value1) := by
  rw [input8837_def, output8837_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8837 input8836)).val
theorem input8838_def : input8838 = (.seq input8837 input8836) := by
  unfold input8838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8837 output8836)).val
theorem output8838_def : output8838 = (.seq output8837 output8836) := by
  unfold output8838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8838_skip : Flapjack.WordAlloc.isSkip output8838 = false := by
  rw [output8838_def]
  conv => lhs; cbv
  try rfl
theorem node8838_eq : Flapjack.WordAlloc.removeDeadStructural input8838 value5 value1 value2 = (output8838, value4423, value1) := by
  rw [input8838_def, output8838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8836_eq]
  dsimp only
  rw [node8837_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4424 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11337 1416629893867312296#64))).val
theorem input8839_def : input8839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11337 1416629893867312296#64)) := by
  unfold input8839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11337 1416629893867312296#64))).val
theorem output8839_def : output8839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11337 1416629893867312296#64)) := by
  unfold output8839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8839_skip : Flapjack.WordAlloc.isSkip output8839 = false := by
  rw [output8839_def]
  conv => lhs; cbv
  try rfl
theorem node8839_eq : Flapjack.WordAlloc.removeDeadStructural input8839 value4423 value1 value2 = (output8839, value4424, value1) := by
  rw [input8839_def, output8839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11333 1416629893867312296#64))).val
theorem input8840_def : input8840 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11333 1416629893867312296#64)) := by
  unfold input8840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8840_def : output8840 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8840_skip : Flapjack.WordAlloc.isSkip output8840 = true := by
  rw [output8840_def]
  conv => lhs; cbv
  try rfl
theorem node8840_eq : Flapjack.WordAlloc.removeDeadStructural input8840 value4424 value1 value2 = (output8840, value4424, value1) := by
  rw [input8840_def, output8840_def]
  try (conv => lhs; cbv)
  try rfl

def value4425 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11329 11321 (Flapjack.WordRegImm.reg 11325))))).val
theorem input8841_def : input8841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11329 11321 (Flapjack.WordRegImm.reg 11325)))) := by
  unfold input8841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11329 11321 (Flapjack.WordRegImm.reg 11325))))).val
theorem output8841_def : output8841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11329 11321 (Flapjack.WordRegImm.reg 11325)))) := by
  unfold output8841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8841_skip : Flapjack.WordAlloc.isSkip output8841 = false := by
  rw [output8841_def]
  conv => lhs; cbv
  try rfl
theorem node8841_eq : Flapjack.WordAlloc.removeDeadStructural input8841 value4424 value1 value2 = (output8841, value4425, value1) := by
  rw [input8841_def, output8841_def]
  try (conv => lhs; cbv)
  try rfl

def value4426 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11325 2712#64))).val
theorem input8842_def : input8842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11325 2712#64)) := by
  unfold input8842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11325 2712#64))).val
theorem output8842_def : output8842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11325 2712#64)) := by
  unfold output8842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8842_skip : Flapjack.WordAlloc.isSkip output8842 = false := by
  rw [output8842_def]
  conv => lhs; cbv
  try rfl
theorem node8842_eq : Flapjack.WordAlloc.removeDeadStructural input8842 value4425 value1 value2 = (output8842, value4426, value1) := by
  rw [input8842_def, output8842_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8842 input8841)).val
theorem input8843_def : input8843 = (.seq input8842 input8841) := by
  unfold input8843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8842 output8841)).val
theorem output8843_def : output8843 = (.seq output8842 output8841) := by
  unfold output8843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8843_skip : Flapjack.WordAlloc.isSkip output8843 = false := by
  rw [output8843_def]
  conv => lhs; cbv
  try rfl
theorem node8843_eq : Flapjack.WordAlloc.removeDeadStructural input8843 value4424 value1 value2 = (output8843, value4426, value1) := by
  rw [input8843_def, output8843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8841_eq]
  dsimp only
  rw [node8842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4427 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11321 (Flapjack.WordLangAddr.addr 11317 18446744073709551104#64)))).val
theorem input8844_def : input8844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11321 (Flapjack.WordLangAddr.addr 11317 18446744073709551104#64))) := by
  unfold input8844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11321 (Flapjack.WordLangAddr.addr 11317 18446744073709551104#64)))).val
theorem output8844_def : output8844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11321 (Flapjack.WordLangAddr.addr 11317 18446744073709551104#64))) := by
  unfold output8844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8844_skip : Flapjack.WordAlloc.isSkip output8844 = false := by
  rw [output8844_def]
  conv => lhs; cbv
  try rfl
theorem node8844_eq : Flapjack.WordAlloc.removeDeadStructural input8844 value4426 value1 value2 = (output8844, value4427, value1) := by
  rw [input8844_def, output8844_def]
  try (conv => lhs; cbv)
  try rfl

def value4428 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11317 11313)).val
theorem input8845_def : input8845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11317 11313) := by
  unfold input8845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11317 11313)).val
theorem output8845_def : output8845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11317 11313) := by
  unfold output8845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8845_skip : Flapjack.WordAlloc.isSkip output8845 = false := by
  rw [output8845_def]
  conv => lhs; cbv
  try rfl
theorem node8845_eq : Flapjack.WordAlloc.removeDeadStructural input8845 value4427 value1 value2 = (output8845, value4428, value1) := by
  rw [input8845_def, output8845_def]
  try (conv => lhs; cbv)
  try rfl

def value4429 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11313 11309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8846_def : input8846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11313 11309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11313 11309 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8846_def : output8846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11313 11309 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8846_skip : Flapjack.WordAlloc.isSkip output8846 = false := by
  rw [output8846_def]
  conv => lhs; cbv
  try rfl
theorem node8846_eq : Flapjack.WordAlloc.removeDeadStructural input8846 value4428 value1 value2 = (output8846, value4429, value1) := by
  rw [input8846_def, output8846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11309 Flapjack.WordStore.heapLength)).val
theorem input8847_def : input8847 = (Flapjack.WordLangProgHOL.get 11309 Flapjack.WordStore.heapLength) := by
  unfold input8847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11309 Flapjack.WordStore.heapLength)).val
theorem output8847_def : output8847 = (Flapjack.WordLangProgHOL.get 11309 Flapjack.WordStore.heapLength) := by
  unfold output8847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8847_skip : Flapjack.WordAlloc.isSkip output8847 = false := by
  rw [output8847_def]
  conv => lhs; cbv
  try rfl
theorem node8847_eq : Flapjack.WordAlloc.removeDeadStructural input8847 value4429 value1 value2 = (output8847, value5, value1) := by
  rw [input8847_def, output8847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8847 input8846)).val
theorem input8848_def : input8848 = (.seq input8847 input8846) := by
  unfold input8848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8847 output8846)).val
theorem output8848_def : output8848 = (.seq output8847 output8846) := by
  unfold output8848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8848_skip : Flapjack.WordAlloc.isSkip output8848 = false := by
  rw [output8848_def]
  conv => lhs; cbv
  try rfl
theorem node8848_eq : Flapjack.WordAlloc.removeDeadStructural input8848 value4428 value1 value2 = (output8848, value5, value1) := by
  rw [input8848_def, output8848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8846_eq]
  dsimp only
  rw [node8847_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8848 input8845)).val
theorem input8849_def : input8849 = (.seq input8848 input8845) := by
  unfold input8849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8848 output8845)).val
theorem output8849_def : output8849 = (.seq output8848 output8845) := by
  unfold output8849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8849_skip : Flapjack.WordAlloc.isSkip output8849 = false := by
  rw [output8849_def]
  conv => lhs; cbv
  try rfl
theorem node8849_eq : Flapjack.WordAlloc.removeDeadStructural input8849 value4427 value1 value2 = (output8849, value5, value1) := by
  rw [input8849_def, output8849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8845_eq]
  dsimp only
  rw [node8848_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8849 input8844)).val
theorem input8850_def : input8850 = (.seq input8849 input8844) := by
  unfold input8850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8849 output8844)).val
theorem output8850_def : output8850 = (.seq output8849 output8844) := by
  unfold output8850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8850_skip : Flapjack.WordAlloc.isSkip output8850 = false := by
  rw [output8850_def]
  conv => lhs; cbv
  try rfl
theorem node8850_eq : Flapjack.WordAlloc.removeDeadStructural input8850 value4426 value1 value2 = (output8850, value5, value1) := by
  rw [input8850_def, output8850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8844_eq]
  dsimp only
  rw [node8849_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8850 input8843)).val
theorem input8851_def : input8851 = (.seq input8850 input8843) := by
  unfold input8851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8850 output8843)).val
theorem output8851_def : output8851 = (.seq output8850 output8843) := by
  unfold output8851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8851_skip : Flapjack.WordAlloc.isSkip output8851 = false := by
  rw [output8851_def]
  conv => lhs; cbv
  try rfl
theorem node8851_eq : Flapjack.WordAlloc.removeDeadStructural input8851 value4424 value1 value2 = (output8851, value5, value1) := by
  rw [input8851_def, output8851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8843_eq]
  dsimp only
  rw [node8850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4430 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11301 (Flapjack.WordLangAddr.addr 11305 0#64)))).val
theorem input8852_def : input8852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11301 (Flapjack.WordLangAddr.addr 11305 0#64))) := by
  unfold input8852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11301 (Flapjack.WordLangAddr.addr 11305 0#64)))).val
theorem output8852_def : output8852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11301 (Flapjack.WordLangAddr.addr 11305 0#64))) := by
  unfold output8852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8852_skip : Flapjack.WordAlloc.isSkip output8852 = false := by
  rw [output8852_def]
  conv => lhs; cbv
  try rfl
theorem node8852_eq : Flapjack.WordAlloc.removeDeadStructural input8852 value5 value1 value2 = (output8852, value4430, value1) := by
  rw [input8852_def, output8852_def]
  try (conv => lhs; cbv)
  try rfl

def value4431 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11305, 11293)])).val
theorem input8853_def : input8853 = (Flapjack.WordLangProgHOL.move 0 [(11305, 11293)]) := by
  unfold input8853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11305, 11293)])).val
theorem output8853_def : output8853 = (Flapjack.WordLangProgHOL.move 0 [(11305, 11293)]) := by
  unfold output8853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8853_skip : Flapjack.WordAlloc.isSkip output8853 = false := by
  rw [output8853_def]
  conv => lhs; cbv
  try rfl
theorem node8853_eq : Flapjack.WordAlloc.removeDeadStructural input8853 value4430 value1 value2 = (output8853, value4431, value1) := by
  rw [input8853_def, output8853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8853 input8852)).val
theorem input8854_def : input8854 = (.seq input8853 input8852) := by
  unfold input8854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8853 output8852)).val
theorem output8854_def : output8854 = (.seq output8853 output8852) := by
  unfold output8854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8854_skip : Flapjack.WordAlloc.isSkip output8854 = false := by
  rw [output8854_def]
  conv => lhs; cbv
  try rfl
theorem node8854_eq : Flapjack.WordAlloc.removeDeadStructural input8854 value5 value1 value2 = (output8854, value4431, value1) := by
  rw [input8854_def, output8854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8852_eq]
  dsimp only
  rw [node8853_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4432 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11301 751851957792514173#64))).val
theorem input8855_def : input8855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11301 751851957792514173#64)) := by
  unfold input8855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11301 751851957792514173#64))).val
theorem output8855_def : output8855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11301 751851957792514173#64)) := by
  unfold output8855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8855_skip : Flapjack.WordAlloc.isSkip output8855 = false := by
  rw [output8855_def]
  conv => lhs; cbv
  try rfl
theorem node8855_eq : Flapjack.WordAlloc.removeDeadStructural input8855 value4431 value1 value2 = (output8855, value4432, value1) := by
  rw [input8855_def, output8855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11297 751851957792514173#64))).val
theorem input8856_def : input8856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11297 751851957792514173#64)) := by
  unfold input8856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8856_def : output8856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8856_skip : Flapjack.WordAlloc.isSkip output8856 = true := by
  rw [output8856_def]
  conv => lhs; cbv
  try rfl
theorem node8856_eq : Flapjack.WordAlloc.removeDeadStructural input8856 value4432 value1 value2 = (output8856, value4432, value1) := by
  rw [input8856_def, output8856_def]
  try (conv => lhs; cbv)
  try rfl

def value4433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11293 11285 (Flapjack.WordRegImm.reg 11289))))).val
theorem input8857_def : input8857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11293 11285 (Flapjack.WordRegImm.reg 11289)))) := by
  unfold input8857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11293 11285 (Flapjack.WordRegImm.reg 11289))))).val
theorem output8857_def : output8857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11293 11285 (Flapjack.WordRegImm.reg 11289)))) := by
  unfold output8857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8857_skip : Flapjack.WordAlloc.isSkip output8857 = false := by
  rw [output8857_def]
  conv => lhs; cbv
  try rfl
theorem node8857_eq : Flapjack.WordAlloc.removeDeadStructural input8857 value4432 value1 value2 = (output8857, value4433, value1) := by
  rw [input8857_def, output8857_def]
  try (conv => lhs; cbv)
  try rfl

def value4434 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11289 2704#64))).val
theorem input8858_def : input8858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11289 2704#64)) := by
  unfold input8858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11289 2704#64))).val
theorem output8858_def : output8858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11289 2704#64)) := by
  unfold output8858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8858_skip : Flapjack.WordAlloc.isSkip output8858 = false := by
  rw [output8858_def]
  conv => lhs; cbv
  try rfl
theorem node8858_eq : Flapjack.WordAlloc.removeDeadStructural input8858 value4433 value1 value2 = (output8858, value4434, value1) := by
  rw [input8858_def, output8858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8858 input8857)).val
theorem input8859_def : input8859 = (.seq input8858 input8857) := by
  unfold input8859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8858 output8857)).val
theorem output8859_def : output8859 = (.seq output8858 output8857) := by
  unfold output8859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8859_skip : Flapjack.WordAlloc.isSkip output8859 = false := by
  rw [output8859_def]
  conv => lhs; cbv
  try rfl
theorem node8859_eq : Flapjack.WordAlloc.removeDeadStructural input8859 value4432 value1 value2 = (output8859, value4434, value1) := by
  rw [input8859_def, output8859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8857_eq]
  dsimp only
  rw [node8858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4435 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11285 (Flapjack.WordLangAddr.addr 11281 18446744073709551104#64)))).val
theorem input8860_def : input8860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11285 (Flapjack.WordLangAddr.addr 11281 18446744073709551104#64))) := by
  unfold input8860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11285 (Flapjack.WordLangAddr.addr 11281 18446744073709551104#64)))).val
theorem output8860_def : output8860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11285 (Flapjack.WordLangAddr.addr 11281 18446744073709551104#64))) := by
  unfold output8860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8860_skip : Flapjack.WordAlloc.isSkip output8860 = false := by
  rw [output8860_def]
  conv => lhs; cbv
  try rfl
theorem node8860_eq : Flapjack.WordAlloc.removeDeadStructural input8860 value4434 value1 value2 = (output8860, value4435, value1) := by
  rw [input8860_def, output8860_def]
  try (conv => lhs; cbv)
  try rfl

def value4436 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11281 11277)).val
theorem input8861_def : input8861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11281 11277) := by
  unfold input8861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11281 11277)).val
theorem output8861_def : output8861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11281 11277) := by
  unfold output8861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8861_skip : Flapjack.WordAlloc.isSkip output8861 = false := by
  rw [output8861_def]
  conv => lhs; cbv
  try rfl
theorem node8861_eq : Flapjack.WordAlloc.removeDeadStructural input8861 value4435 value1 value2 = (output8861, value4436, value1) := by
  rw [input8861_def, output8861_def]
  try (conv => lhs; cbv)
  try rfl

def value4437 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11277 11273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8862_def : input8862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11277 11273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11277 11273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8862_def : output8862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11277 11273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8862_skip : Flapjack.WordAlloc.isSkip output8862 = false := by
  rw [output8862_def]
  conv => lhs; cbv
  try rfl
theorem node8862_eq : Flapjack.WordAlloc.removeDeadStructural input8862 value4436 value1 value2 = (output8862, value4437, value1) := by
  rw [input8862_def, output8862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11273 Flapjack.WordStore.heapLength)).val
theorem input8863_def : input8863 = (Flapjack.WordLangProgHOL.get 11273 Flapjack.WordStore.heapLength) := by
  unfold input8863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11273 Flapjack.WordStore.heapLength)).val
theorem output8863_def : output8863 = (Flapjack.WordLangProgHOL.get 11273 Flapjack.WordStore.heapLength) := by
  unfold output8863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8863_skip : Flapjack.WordAlloc.isSkip output8863 = false := by
  rw [output8863_def]
  conv => lhs; cbv
  try rfl
theorem node8863_eq : Flapjack.WordAlloc.removeDeadStructural input8863 value4437 value1 value2 = (output8863, value5, value1) := by
  rw [input8863_def, output8863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8863 input8862)).val
theorem input8864_def : input8864 = (.seq input8863 input8862) := by
  unfold input8864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8863 output8862)).val
theorem output8864_def : output8864 = (.seq output8863 output8862) := by
  unfold output8864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8864_skip : Flapjack.WordAlloc.isSkip output8864 = false := by
  rw [output8864_def]
  conv => lhs; cbv
  try rfl
theorem node8864_eq : Flapjack.WordAlloc.removeDeadStructural input8864 value4436 value1 value2 = (output8864, value5, value1) := by
  rw [input8864_def, output8864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8862_eq]
  dsimp only
  rw [node8863_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8864 input8861)).val
theorem input8865_def : input8865 = (.seq input8864 input8861) := by
  unfold input8865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8864 output8861)).val
theorem output8865_def : output8865 = (.seq output8864 output8861) := by
  unfold output8865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8865_skip : Flapjack.WordAlloc.isSkip output8865 = false := by
  rw [output8865_def]
  conv => lhs; cbv
  try rfl
theorem node8865_eq : Flapjack.WordAlloc.removeDeadStructural input8865 value4435 value1 value2 = (output8865, value5, value1) := by
  rw [input8865_def, output8865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8861_eq]
  dsimp only
  rw [node8864_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8865 input8860)).val
theorem input8866_def : input8866 = (.seq input8865 input8860) := by
  unfold input8866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8865 output8860)).val
theorem output8866_def : output8866 = (.seq output8865 output8860) := by
  unfold output8866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8866_skip : Flapjack.WordAlloc.isSkip output8866 = false := by
  rw [output8866_def]
  conv => lhs; cbv
  try rfl
theorem node8866_eq : Flapjack.WordAlloc.removeDeadStructural input8866 value4434 value1 value2 = (output8866, value5, value1) := by
  rw [input8866_def, output8866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8860_eq]
  dsimp only
  rw [node8865_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8866 input8859)).val
theorem input8867_def : input8867 = (.seq input8866 input8859) := by
  unfold input8867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8866 output8859)).val
theorem output8867_def : output8867 = (.seq output8866 output8859) := by
  unfold output8867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8867_skip : Flapjack.WordAlloc.isSkip output8867 = false := by
  rw [output8867_def]
  conv => lhs; cbv
  try rfl
theorem node8867_eq : Flapjack.WordAlloc.removeDeadStructural input8867 value4432 value1 value2 = (output8867, value5, value1) := by
  rw [input8867_def, output8867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8859_eq]
  dsimp only
  rw [node8866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4438 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11265 (Flapjack.WordLangAddr.addr 11269 0#64)))).val
theorem input8868_def : input8868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11265 (Flapjack.WordLangAddr.addr 11269 0#64))) := by
  unfold input8868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11265 (Flapjack.WordLangAddr.addr 11269 0#64)))).val
theorem output8868_def : output8868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11265 (Flapjack.WordLangAddr.addr 11269 0#64))) := by
  unfold output8868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8868_skip : Flapjack.WordAlloc.isSkip output8868 = false := by
  rw [output8868_def]
  conv => lhs; cbv
  try rfl
theorem node8868_eq : Flapjack.WordAlloc.removeDeadStructural input8868 value5 value1 value2 = (output8868, value4438, value1) := by
  rw [input8868_def, output8868_def]
  try (conv => lhs; cbv)
  try rfl

def value4439 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11269, 11257)])).val
theorem input8869_def : input8869 = (Flapjack.WordLangProgHOL.move 0 [(11269, 11257)]) := by
  unfold input8869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11269, 11257)])).val
theorem output8869_def : output8869 = (Flapjack.WordLangProgHOL.move 0 [(11269, 11257)]) := by
  unfold output8869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8869_skip : Flapjack.WordAlloc.isSkip output8869 = false := by
  rw [output8869_def]
  conv => lhs; cbv
  try rfl
theorem node8869_eq : Flapjack.WordAlloc.removeDeadStructural input8869 value4438 value1 value2 = (output8869, value4439, value1) := by
  rw [input8869_def, output8869_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8869 input8868)).val
theorem input8870_def : input8870 = (.seq input8869 input8868) := by
  unfold input8870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8869 output8868)).val
theorem output8870_def : output8870 = (.seq output8869 output8868) := by
  unfold output8870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8870_skip : Flapjack.WordAlloc.isSkip output8870 = false := by
  rw [output8870_def]
  conv => lhs; cbv
  try rfl
theorem node8870_eq : Flapjack.WordAlloc.removeDeadStructural input8870 value5 value1 value2 = (output8870, value4439, value1) := by
  rw [input8870_def, output8870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8868_eq]
  dsimp only
  rw [node8869_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4440 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11265 18437674587247370939#64))).val
theorem input8871_def : input8871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11265 18437674587247370939#64)) := by
  unfold input8871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11265 18437674587247370939#64))).val
theorem output8871_def : output8871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11265 18437674587247370939#64)) := by
  unfold output8871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8871_skip : Flapjack.WordAlloc.isSkip output8871 = false := by
  rw [output8871_def]
  conv => lhs; cbv
  try rfl
theorem node8871_eq : Flapjack.WordAlloc.removeDeadStructural input8871 value4439 value1 value2 = (output8871, value4440, value1) := by
  rw [input8871_def, output8871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11261 18437674587247370939#64))).val
theorem input8872_def : input8872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11261 18437674587247370939#64)) := by
  unfold input8872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8872_def : output8872 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8872_skip : Flapjack.WordAlloc.isSkip output8872 = true := by
  rw [output8872_def]
  conv => lhs; cbv
  try rfl
theorem node8872_eq : Flapjack.WordAlloc.removeDeadStructural input8872 value4440 value1 value2 = (output8872, value4440, value1) := by
  rw [input8872_def, output8872_def]
  try (conv => lhs; cbv)
  try rfl

def value4441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11257 11249 (Flapjack.WordRegImm.reg 11253))))).val
theorem input8873_def : input8873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11257 11249 (Flapjack.WordRegImm.reg 11253)))) := by
  unfold input8873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11257 11249 (Flapjack.WordRegImm.reg 11253))))).val
theorem output8873_def : output8873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11257 11249 (Flapjack.WordRegImm.reg 11253)))) := by
  unfold output8873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8873_skip : Flapjack.WordAlloc.isSkip output8873 = false := by
  rw [output8873_def]
  conv => lhs; cbv
  try rfl
theorem node8873_eq : Flapjack.WordAlloc.removeDeadStructural input8873 value4440 value1 value2 = (output8873, value4441, value1) := by
  rw [input8873_def, output8873_def]
  try (conv => lhs; cbv)
  try rfl

def value4442 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11253 2696#64))).val
theorem input8874_def : input8874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11253 2696#64)) := by
  unfold input8874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11253 2696#64))).val
theorem output8874_def : output8874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11253 2696#64)) := by
  unfold output8874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8874_skip : Flapjack.WordAlloc.isSkip output8874 = false := by
  rw [output8874_def]
  conv => lhs; cbv
  try rfl
theorem node8874_eq : Flapjack.WordAlloc.removeDeadStructural input8874 value4441 value1 value2 = (output8874, value4442, value1) := by
  rw [input8874_def, output8874_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8874 input8873)).val
theorem input8875_def : input8875 = (.seq input8874 input8873) := by
  unfold input8875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8874 output8873)).val
theorem output8875_def : output8875 = (.seq output8874 output8873) := by
  unfold output8875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8875_skip : Flapjack.WordAlloc.isSkip output8875 = false := by
  rw [output8875_def]
  conv => lhs; cbv
  try rfl
theorem node8875_eq : Flapjack.WordAlloc.removeDeadStructural input8875 value4440 value1 value2 = (output8875, value4442, value1) := by
  rw [input8875_def, output8875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8873_eq]
  dsimp only
  rw [node8874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4443 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11249 (Flapjack.WordLangAddr.addr 11245 18446744073709551104#64)))).val
theorem input8876_def : input8876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11249 (Flapjack.WordLangAddr.addr 11245 18446744073709551104#64))) := by
  unfold input8876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11249 (Flapjack.WordLangAddr.addr 11245 18446744073709551104#64)))).val
theorem output8876_def : output8876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11249 (Flapjack.WordLangAddr.addr 11245 18446744073709551104#64))) := by
  unfold output8876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8876_skip : Flapjack.WordAlloc.isSkip output8876 = false := by
  rw [output8876_def]
  conv => lhs; cbv
  try rfl
theorem node8876_eq : Flapjack.WordAlloc.removeDeadStructural input8876 value4442 value1 value2 = (output8876, value4443, value1) := by
  rw [input8876_def, output8876_def]
  try (conv => lhs; cbv)
  try rfl

def value4444 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11245 11241)).val
theorem input8877_def : input8877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11245 11241) := by
  unfold input8877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11245 11241)).val
theorem output8877_def : output8877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11245 11241) := by
  unfold output8877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8877_skip : Flapjack.WordAlloc.isSkip output8877 = false := by
  rw [output8877_def]
  conv => lhs; cbv
  try rfl
theorem node8877_eq : Flapjack.WordAlloc.removeDeadStructural input8877 value4443 value1 value2 = (output8877, value4444, value1) := by
  rw [input8877_def, output8877_def]
  try (conv => lhs; cbv)
  try rfl

def value4445 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11241 11237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8878_def : input8878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11241 11237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11241 11237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8878_def : output8878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11241 11237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8878_skip : Flapjack.WordAlloc.isSkip output8878 = false := by
  rw [output8878_def]
  conv => lhs; cbv
  try rfl
theorem node8878_eq : Flapjack.WordAlloc.removeDeadStructural input8878 value4444 value1 value2 = (output8878, value4445, value1) := by
  rw [input8878_def, output8878_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11237 Flapjack.WordStore.heapLength)).val
theorem input8879_def : input8879 = (Flapjack.WordLangProgHOL.get 11237 Flapjack.WordStore.heapLength) := by
  unfold input8879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11237 Flapjack.WordStore.heapLength)).val
theorem output8879_def : output8879 = (Flapjack.WordLangProgHOL.get 11237 Flapjack.WordStore.heapLength) := by
  unfold output8879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8879_skip : Flapjack.WordAlloc.isSkip output8879 = false := by
  rw [output8879_def]
  conv => lhs; cbv
  try rfl
theorem node8879_eq : Flapjack.WordAlloc.removeDeadStructural input8879 value4445 value1 value2 = (output8879, value5, value1) := by
  rw [input8879_def, output8879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8879 input8878)).val
theorem input8880_def : input8880 = (.seq input8879 input8878) := by
  unfold input8880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8879 output8878)).val
theorem output8880_def : output8880 = (.seq output8879 output8878) := by
  unfold output8880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8880_skip : Flapjack.WordAlloc.isSkip output8880 = false := by
  rw [output8880_def]
  conv => lhs; cbv
  try rfl
theorem node8880_eq : Flapjack.WordAlloc.removeDeadStructural input8880 value4444 value1 value2 = (output8880, value5, value1) := by
  rw [input8880_def, output8880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8878_eq]
  dsimp only
  rw [node8879_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8880 input8877)).val
theorem input8881_def : input8881 = (.seq input8880 input8877) := by
  unfold input8881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8880 output8877)).val
theorem output8881_def : output8881 = (.seq output8880 output8877) := by
  unfold output8881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8881_skip : Flapjack.WordAlloc.isSkip output8881 = false := by
  rw [output8881_def]
  conv => lhs; cbv
  try rfl
theorem node8881_eq : Flapjack.WordAlloc.removeDeadStructural input8881 value4443 value1 value2 = (output8881, value5, value1) := by
  rw [input8881_def, output8881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8877_eq]
  dsimp only
  rw [node8880_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8881 input8876)).val
theorem input8882_def : input8882 = (.seq input8881 input8876) := by
  unfold input8882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8881 output8876)).val
theorem output8882_def : output8882 = (.seq output8881 output8876) := by
  unfold output8882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8882_skip : Flapjack.WordAlloc.isSkip output8882 = false := by
  rw [output8882_def]
  conv => lhs; cbv
  try rfl
theorem node8882_eq : Flapjack.WordAlloc.removeDeadStructural input8882 value4442 value1 value2 = (output8882, value5, value1) := by
  rw [input8882_def, output8882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8876_eq]
  dsimp only
  rw [node8881_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8882 input8875)).val
theorem input8883_def : input8883 = (.seq input8882 input8875) := by
  unfold input8883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8882 output8875)).val
theorem output8883_def : output8883 = (.seq output8882 output8875) := by
  unfold output8883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8883_skip : Flapjack.WordAlloc.isSkip output8883 = false := by
  rw [output8883_def]
  conv => lhs; cbv
  try rfl
theorem node8883_eq : Flapjack.WordAlloc.removeDeadStructural input8883 value4440 value1 value2 = (output8883, value5, value1) := by
  rw [input8883_def, output8883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8875_eq]
  dsimp only
  rw [node8882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4446 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11229 (Flapjack.WordLangAddr.addr 11233 0#64)))).val
theorem input8884_def : input8884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11229 (Flapjack.WordLangAddr.addr 11233 0#64))) := by
  unfold input8884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11229 (Flapjack.WordLangAddr.addr 11233 0#64)))).val
theorem output8884_def : output8884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11229 (Flapjack.WordLangAddr.addr 11233 0#64))) := by
  unfold output8884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8884_skip : Flapjack.WordAlloc.isSkip output8884 = false := by
  rw [output8884_def]
  conv => lhs; cbv
  try rfl
theorem node8884_eq : Flapjack.WordAlloc.removeDeadStructural input8884 value5 value1 value2 = (output8884, value4446, value1) := by
  rw [input8884_def, output8884_def]
  try (conv => lhs; cbv)
  try rfl

def value4447 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11233, 11221)])).val
theorem input8885_def : input8885 = (Flapjack.WordLangProgHOL.move 0 [(11233, 11221)]) := by
  unfold input8885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11233, 11221)])).val
theorem output8885_def : output8885 = (Flapjack.WordLangProgHOL.move 0 [(11233, 11221)]) := by
  unfold output8885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8885_skip : Flapjack.WordAlloc.isSkip output8885 = false := by
  rw [output8885_def]
  conv => lhs; cbv
  try rfl
theorem node8885_eq : Flapjack.WordAlloc.removeDeadStructural input8885 value4446 value1 value2 = (output8885, value4447, value1) := by
  rw [input8885_def, output8885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8885 input8884)).val
theorem input8886_def : input8886 = (.seq input8885 input8884) := by
  unfold input8886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8885 output8884)).val
theorem output8886_def : output8886 = (.seq output8885 output8884) := by
  unfold output8886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8886_skip : Flapjack.WordAlloc.isSkip output8886 = false := by
  rw [output8886_def]
  conv => lhs; cbv
  try rfl
theorem node8886_eq : Flapjack.WordAlloc.removeDeadStructural input8886 value5 value1 value2 = (output8886, value4447, value1) := by
  rw [input8886_def, output8886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8884_eq]
  dsimp only
  rw [node8885_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11229 10190314345946351322#64))).val
theorem input8887_def : input8887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11229 10190314345946351322#64)) := by
  unfold input8887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11229 10190314345946351322#64))).val
theorem output8887_def : output8887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11229 10190314345946351322#64)) := by
  unfold output8887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8887_skip : Flapjack.WordAlloc.isSkip output8887 = false := by
  rw [output8887_def]
  conv => lhs; cbv
  try rfl
theorem node8887_eq : Flapjack.WordAlloc.removeDeadStructural input8887 value4447 value1 value2 = (output8887, value4448, value1) := by
  rw [input8887_def, output8887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11225 10190314345946351322#64))).val
theorem input8888_def : input8888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11225 10190314345946351322#64)) := by
  unfold input8888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8888_def : output8888 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8888_skip : Flapjack.WordAlloc.isSkip output8888 = true := by
  rw [output8888_def]
  conv => lhs; cbv
  try rfl
theorem node8888_eq : Flapjack.WordAlloc.removeDeadStructural input8888 value4448 value1 value2 = (output8888, value4448, value1) := by
  rw [input8888_def, output8888_def]
  try (conv => lhs; cbv)
  try rfl

def value4449 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11221 11213 (Flapjack.WordRegImm.reg 11217))))).val
theorem input8889_def : input8889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11221 11213 (Flapjack.WordRegImm.reg 11217)))) := by
  unfold input8889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11221 11213 (Flapjack.WordRegImm.reg 11217))))).val
theorem output8889_def : output8889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11221 11213 (Flapjack.WordRegImm.reg 11217)))) := by
  unfold output8889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8889_skip : Flapjack.WordAlloc.isSkip output8889 = false := by
  rw [output8889_def]
  conv => lhs; cbv
  try rfl
theorem node8889_eq : Flapjack.WordAlloc.removeDeadStructural input8889 value4448 value1 value2 = (output8889, value4449, value1) := by
  rw [input8889_def, output8889_def]
  try (conv => lhs; cbv)
  try rfl

def value4450 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11217 2688#64))).val
theorem input8890_def : input8890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11217 2688#64)) := by
  unfold input8890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11217 2688#64))).val
theorem output8890_def : output8890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11217 2688#64)) := by
  unfold output8890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8890_skip : Flapjack.WordAlloc.isSkip output8890 = false := by
  rw [output8890_def]
  conv => lhs; cbv
  try rfl
theorem node8890_eq : Flapjack.WordAlloc.removeDeadStructural input8890 value4449 value1 value2 = (output8890, value4450, value1) := by
  rw [input8890_def, output8890_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8890 input8889)).val
theorem input8891_def : input8891 = (.seq input8890 input8889) := by
  unfold input8891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8890 output8889)).val
theorem output8891_def : output8891 = (.seq output8890 output8889) := by
  unfold output8891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8891_skip : Flapjack.WordAlloc.isSkip output8891 = false := by
  rw [output8891_def]
  conv => lhs; cbv
  try rfl
theorem node8891_eq : Flapjack.WordAlloc.removeDeadStructural input8891 value4448 value1 value2 = (output8891, value4450, value1) := by
  rw [input8891_def, output8891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8889_eq]
  dsimp only
  rw [node8890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4451 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11213 (Flapjack.WordLangAddr.addr 11209 18446744073709551104#64)))).val
theorem input8892_def : input8892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11213 (Flapjack.WordLangAddr.addr 11209 18446744073709551104#64))) := by
  unfold input8892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11213 (Flapjack.WordLangAddr.addr 11209 18446744073709551104#64)))).val
theorem output8892_def : output8892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11213 (Flapjack.WordLangAddr.addr 11209 18446744073709551104#64))) := by
  unfold output8892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8892_skip : Flapjack.WordAlloc.isSkip output8892 = false := by
  rw [output8892_def]
  conv => lhs; cbv
  try rfl
theorem node8892_eq : Flapjack.WordAlloc.removeDeadStructural input8892 value4450 value1 value2 = (output8892, value4451, value1) := by
  rw [input8892_def, output8892_def]
  try (conv => lhs; cbv)
  try rfl

def value4452 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11209 11205)).val
theorem input8893_def : input8893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11209 11205) := by
  unfold input8893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11209 11205)).val
theorem output8893_def : output8893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11209 11205) := by
  unfold output8893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8893_skip : Flapjack.WordAlloc.isSkip output8893 = false := by
  rw [output8893_def]
  conv => lhs; cbv
  try rfl
theorem node8893_eq : Flapjack.WordAlloc.removeDeadStructural input8893 value4451 value1 value2 = (output8893, value4452, value1) := by
  rw [input8893_def, output8893_def]
  try (conv => lhs; cbv)
  try rfl

def value4453 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11205 11201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8894_def : input8894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11205 11201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11205 11201 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8894_def : output8894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11205 11201 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8894_skip : Flapjack.WordAlloc.isSkip output8894 = false := by
  rw [output8894_def]
  conv => lhs; cbv
  try rfl
theorem node8894_eq : Flapjack.WordAlloc.removeDeadStructural input8894 value4452 value1 value2 = (output8894, value4453, value1) := by
  rw [input8894_def, output8894_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11201 Flapjack.WordStore.heapLength)).val
theorem input8895_def : input8895 = (Flapjack.WordLangProgHOL.get 11201 Flapjack.WordStore.heapLength) := by
  unfold input8895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11201 Flapjack.WordStore.heapLength)).val
theorem output8895_def : output8895 = (Flapjack.WordLangProgHOL.get 11201 Flapjack.WordStore.heapLength) := by
  unfold output8895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8895_skip : Flapjack.WordAlloc.isSkip output8895 = false := by
  rw [output8895_def]
  conv => lhs; cbv
  try rfl
theorem node8895_eq : Flapjack.WordAlloc.removeDeadStructural input8895 value4453 value1 value2 = (output8895, value5, value1) := by
  rw [input8895_def, output8895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8895 input8894)).val
theorem input8896_def : input8896 = (.seq input8895 input8894) := by
  unfold input8896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8895 output8894)).val
theorem output8896_def : output8896 = (.seq output8895 output8894) := by
  unfold output8896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8896_skip : Flapjack.WordAlloc.isSkip output8896 = false := by
  rw [output8896_def]
  conv => lhs; cbv
  try rfl
theorem node8896_eq : Flapjack.WordAlloc.removeDeadStructural input8896 value4452 value1 value2 = (output8896, value5, value1) := by
  rw [input8896_def, output8896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8894_eq]
  dsimp only
  rw [node8895_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8896 input8893)).val
theorem input8897_def : input8897 = (.seq input8896 input8893) := by
  unfold input8897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8896 output8893)).val
theorem output8897_def : output8897 = (.seq output8896 output8893) := by
  unfold output8897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8897_skip : Flapjack.WordAlloc.isSkip output8897 = false := by
  rw [output8897_def]
  conv => lhs; cbv
  try rfl
theorem node8897_eq : Flapjack.WordAlloc.removeDeadStructural input8897 value4451 value1 value2 = (output8897, value5, value1) := by
  rw [input8897_def, output8897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8893_eq]
  dsimp only
  rw [node8896_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8897 input8892)).val
theorem input8898_def : input8898 = (.seq input8897 input8892) := by
  unfold input8898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8897 output8892)).val
theorem output8898_def : output8898 = (.seq output8897 output8892) := by
  unfold output8898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8898_skip : Flapjack.WordAlloc.isSkip output8898 = false := by
  rw [output8898_def]
  conv => lhs; cbv
  try rfl
theorem node8898_eq : Flapjack.WordAlloc.removeDeadStructural input8898 value4450 value1 value2 = (output8898, value5, value1) := by
  rw [input8898_def, output8898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8892_eq]
  dsimp only
  rw [node8897_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8898 input8891)).val
theorem input8899_def : input8899 = (.seq input8898 input8891) := by
  unfold input8899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8898 output8891)).val
theorem output8899_def : output8899 = (.seq output8898 output8891) := by
  unfold output8899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8899_skip : Flapjack.WordAlloc.isSkip output8899 = false := by
  rw [output8899_def]
  conv => lhs; cbv
  try rfl
theorem node8899_eq : Flapjack.WordAlloc.removeDeadStructural input8899 value4448 value1 value2 = (output8899, value5, value1) := by
  rw [input8899_def, output8899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8891_eq]
  dsimp only
  rw [node8898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4454 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11193 (Flapjack.WordLangAddr.addr 11197 0#64)))).val
theorem input8900_def : input8900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11193 (Flapjack.WordLangAddr.addr 11197 0#64))) := by
  unfold input8900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11193 (Flapjack.WordLangAddr.addr 11197 0#64)))).val
theorem output8900_def : output8900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11193 (Flapjack.WordLangAddr.addr 11197 0#64))) := by
  unfold output8900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8900_skip : Flapjack.WordAlloc.isSkip output8900 = false := by
  rw [output8900_def]
  conv => lhs; cbv
  try rfl
theorem node8900_eq : Flapjack.WordAlloc.removeDeadStructural input8900 value5 value1 value2 = (output8900, value4454, value1) := by
  rw [input8900_def, output8900_def]
  try (conv => lhs; cbv)
  try rfl

def value4455 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11197, 11185)])).val
theorem input8901_def : input8901 = (Flapjack.WordLangProgHOL.move 0 [(11197, 11185)]) := by
  unfold input8901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11197, 11185)])).val
theorem output8901_def : output8901 = (Flapjack.WordLangProgHOL.move 0 [(11197, 11185)]) := by
  unfold output8901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8901_skip : Flapjack.WordAlloc.isSkip output8901 = false := by
  rw [output8901_def]
  conv => lhs; cbv
  try rfl
theorem node8901_eq : Flapjack.WordAlloc.removeDeadStructural input8901 value4454 value1 value2 = (output8901, value4455, value1) := by
  rw [input8901_def, output8901_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8901 input8900)).val
theorem input8902_def : input8902 = (.seq input8901 input8900) := by
  unfold input8902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8901 output8900)).val
theorem output8902_def : output8902 = (.seq output8901 output8900) := by
  unfold output8902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8902_skip : Flapjack.WordAlloc.isSkip output8902 = false := by
  rw [output8902_def]
  conv => lhs; cbv
  try rfl
theorem node8902_eq : Flapjack.WordAlloc.removeDeadStructural input8902 value5 value1 value2 = (output8902, value4455, value1) := by
  rw [input8902_def, output8902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8900_eq]
  dsimp only
  rw [node8901_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4456 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11193 11228207967368476701#64))).val
theorem input8903_def : input8903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11193 11228207967368476701#64)) := by
  unfold input8903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11193 11228207967368476701#64))).val
theorem output8903_def : output8903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11193 11228207967368476701#64)) := by
  unfold output8903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8903_skip : Flapjack.WordAlloc.isSkip output8903 = false := by
  rw [output8903_def]
  conv => lhs; cbv
  try rfl
theorem node8903_eq : Flapjack.WordAlloc.removeDeadStructural input8903 value4455 value1 value2 = (output8903, value4456, value1) := by
  rw [input8903_def, output8903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11189 11228207967368476701#64))).val
theorem input8904_def : input8904 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11189 11228207967368476701#64)) := by
  unfold input8904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8904_def : output8904 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8904_skip : Flapjack.WordAlloc.isSkip output8904 = true := by
  rw [output8904_def]
  conv => lhs; cbv
  try rfl
theorem node8904_eq : Flapjack.WordAlloc.removeDeadStructural input8904 value4456 value1 value2 = (output8904, value4456, value1) := by
  rw [input8904_def, output8904_def]
  try (conv => lhs; cbv)
  try rfl

def value4457 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11185 11177 (Flapjack.WordRegImm.reg 11181))))).val
theorem input8905_def : input8905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11185 11177 (Flapjack.WordRegImm.reg 11181)))) := by
  unfold input8905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11185 11177 (Flapjack.WordRegImm.reg 11181))))).val
theorem output8905_def : output8905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11185 11177 (Flapjack.WordRegImm.reg 11181)))) := by
  unfold output8905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8905_skip : Flapjack.WordAlloc.isSkip output8905 = false := by
  rw [output8905_def]
  conv => lhs; cbv
  try rfl
theorem node8905_eq : Flapjack.WordAlloc.removeDeadStructural input8905 value4456 value1 value2 = (output8905, value4457, value1) := by
  rw [input8905_def, output8905_def]
  try (conv => lhs; cbv)
  try rfl

def value4458 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11181 2680#64))).val
theorem input8906_def : input8906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11181 2680#64)) := by
  unfold input8906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11181 2680#64))).val
theorem output8906_def : output8906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11181 2680#64)) := by
  unfold output8906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8906_skip : Flapjack.WordAlloc.isSkip output8906 = false := by
  rw [output8906_def]
  conv => lhs; cbv
  try rfl
theorem node8906_eq : Flapjack.WordAlloc.removeDeadStructural input8906 value4457 value1 value2 = (output8906, value4458, value1) := by
  rw [input8906_def, output8906_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8906 input8905)).val
theorem input8907_def : input8907 = (.seq input8906 input8905) := by
  unfold input8907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8906 output8905)).val
theorem output8907_def : output8907 = (.seq output8906 output8905) := by
  unfold output8907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8907_skip : Flapjack.WordAlloc.isSkip output8907 = false := by
  rw [output8907_def]
  conv => lhs; cbv
  try rfl
theorem node8907_eq : Flapjack.WordAlloc.removeDeadStructural input8907 value4456 value1 value2 = (output8907, value4458, value1) := by
  rw [input8907_def, output8907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8905_eq]
  dsimp only
  rw [node8906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4459 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11177 (Flapjack.WordLangAddr.addr 11173 18446744073709551104#64)))).val
theorem input8908_def : input8908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11177 (Flapjack.WordLangAddr.addr 11173 18446744073709551104#64))) := by
  unfold input8908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11177 (Flapjack.WordLangAddr.addr 11173 18446744073709551104#64)))).val
theorem output8908_def : output8908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11177 (Flapjack.WordLangAddr.addr 11173 18446744073709551104#64))) := by
  unfold output8908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8908_skip : Flapjack.WordAlloc.isSkip output8908 = false := by
  rw [output8908_def]
  conv => lhs; cbv
  try rfl
theorem node8908_eq : Flapjack.WordAlloc.removeDeadStructural input8908 value4458 value1 value2 = (output8908, value4459, value1) := by
  rw [input8908_def, output8908_def]
  try (conv => lhs; cbv)
  try rfl

def value4460 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11173 11169)).val
theorem input8909_def : input8909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11173 11169) := by
  unfold input8909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11173 11169)).val
theorem output8909_def : output8909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11173 11169) := by
  unfold output8909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8909_skip : Flapjack.WordAlloc.isSkip output8909 = false := by
  rw [output8909_def]
  conv => lhs; cbv
  try rfl
theorem node8909_eq : Flapjack.WordAlloc.removeDeadStructural input8909 value4459 value1 value2 = (output8909, value4460, value1) := by
  rw [input8909_def, output8909_def]
  try (conv => lhs; cbv)
  try rfl

def value4461 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11169 11165 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8910_def : input8910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11169 11165 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11169 11165 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8910_def : output8910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11169 11165 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8910_skip : Flapjack.WordAlloc.isSkip output8910 = false := by
  rw [output8910_def]
  conv => lhs; cbv
  try rfl
theorem node8910_eq : Flapjack.WordAlloc.removeDeadStructural input8910 value4460 value1 value2 = (output8910, value4461, value1) := by
  rw [input8910_def, output8910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11165 Flapjack.WordStore.heapLength)).val
theorem input8911_def : input8911 = (Flapjack.WordLangProgHOL.get 11165 Flapjack.WordStore.heapLength) := by
  unfold input8911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11165 Flapjack.WordStore.heapLength)).val
theorem output8911_def : output8911 = (Flapjack.WordLangProgHOL.get 11165 Flapjack.WordStore.heapLength) := by
  unfold output8911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8911_skip : Flapjack.WordAlloc.isSkip output8911 = false := by
  rw [output8911_def]
  conv => lhs; cbv
  try rfl
theorem node8911_eq : Flapjack.WordAlloc.removeDeadStructural input8911 value4461 value1 value2 = (output8911, value5, value1) := by
  rw [input8911_def, output8911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8911 input8910)).val
theorem input8912_def : input8912 = (.seq input8911 input8910) := by
  unfold input8912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8911 output8910)).val
theorem output8912_def : output8912 = (.seq output8911 output8910) := by
  unfold output8912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8912_skip : Flapjack.WordAlloc.isSkip output8912 = false := by
  rw [output8912_def]
  conv => lhs; cbv
  try rfl
theorem node8912_eq : Flapjack.WordAlloc.removeDeadStructural input8912 value4460 value1 value2 = (output8912, value5, value1) := by
  rw [input8912_def, output8912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8910_eq]
  dsimp only
  rw [node8911_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8912 input8909)).val
theorem input8913_def : input8913 = (.seq input8912 input8909) := by
  unfold input8913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8912 output8909)).val
theorem output8913_def : output8913 = (.seq output8912 output8909) := by
  unfold output8913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8913_skip : Flapjack.WordAlloc.isSkip output8913 = false := by
  rw [output8913_def]
  conv => lhs; cbv
  try rfl
theorem node8913_eq : Flapjack.WordAlloc.removeDeadStructural input8913 value4459 value1 value2 = (output8913, value5, value1) := by
  rw [input8913_def, output8913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8909_eq]
  dsimp only
  rw [node8912_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8913 input8908)).val
theorem input8914_def : input8914 = (.seq input8913 input8908) := by
  unfold input8914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8913 output8908)).val
theorem output8914_def : output8914 = (.seq output8913 output8908) := by
  unfold output8914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8914_skip : Flapjack.WordAlloc.isSkip output8914 = false := by
  rw [output8914_def]
  conv => lhs; cbv
  try rfl
theorem node8914_eq : Flapjack.WordAlloc.removeDeadStructural input8914 value4458 value1 value2 = (output8914, value5, value1) := by
  rw [input8914_def, output8914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8908_eq]
  dsimp only
  rw [node8913_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8914 input8907)).val
theorem input8915_def : input8915 = (.seq input8914 input8907) := by
  unfold input8915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8914 output8907)).val
theorem output8915_def : output8915 = (.seq output8914 output8907) := by
  unfold output8915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8915_skip : Flapjack.WordAlloc.isSkip output8915 = false := by
  rw [output8915_def]
  conv => lhs; cbv
  try rfl
theorem node8915_eq : Flapjack.WordAlloc.removeDeadStructural input8915 value4456 value1 value2 = (output8915, value5, value1) := by
  rw [input8915_def, output8915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8907_eq]
  dsimp only
  rw [node8914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4462 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11157 (Flapjack.WordLangAddr.addr 11161 0#64)))).val
theorem input8916_def : input8916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11157 (Flapjack.WordLangAddr.addr 11161 0#64))) := by
  unfold input8916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11157 (Flapjack.WordLangAddr.addr 11161 0#64)))).val
theorem output8916_def : output8916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11157 (Flapjack.WordLangAddr.addr 11161 0#64))) := by
  unfold output8916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8916_skip : Flapjack.WordAlloc.isSkip output8916 = false := by
  rw [output8916_def]
  conv => lhs; cbv
  try rfl
theorem node8916_eq : Flapjack.WordAlloc.removeDeadStructural input8916 value5 value1 value2 = (output8916, value4462, value1) := by
  rw [input8916_def, output8916_def]
  try (conv => lhs; cbv)
  try rfl

def value4463 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11161, 11149)])).val
theorem input8917_def : input8917 = (Flapjack.WordLangProgHOL.move 0 [(11161, 11149)]) := by
  unfold input8917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11161, 11149)])).val
theorem output8917_def : output8917 = (Flapjack.WordLangProgHOL.move 0 [(11161, 11149)]) := by
  unfold output8917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8917_skip : Flapjack.WordAlloc.isSkip output8917 = false := by
  rw [output8917_def]
  conv => lhs; cbv
  try rfl
theorem node8917_eq : Flapjack.WordAlloc.removeDeadStructural input8917 value4462 value1 value2 = (output8917, value4463, value1) := by
  rw [input8917_def, output8917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8917 input8916)).val
theorem input8918_def : input8918 = (.seq input8917 input8916) := by
  unfold input8918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8917 output8916)).val
theorem output8918_def : output8918 = (.seq output8917 output8916) := by
  unfold output8918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8918_skip : Flapjack.WordAlloc.isSkip output8918 = false := by
  rw [output8918_def]
  conv => lhs; cbv
  try rfl
theorem node8918_eq : Flapjack.WordAlloc.removeDeadStructural input8918 value5 value1 value2 = (output8918, value4463, value1) := by
  rw [input8918_def, output8918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8916_eq]
  dsimp only
  rw [node8917_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4464 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11157 6025034940388909598#64))).val
theorem input8919_def : input8919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11157 6025034940388909598#64)) := by
  unfold input8919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11157 6025034940388909598#64))).val
theorem output8919_def : output8919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11157 6025034940388909598#64)) := by
  unfold output8919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8919_skip : Flapjack.WordAlloc.isSkip output8919 = false := by
  rw [output8919_def]
  conv => lhs; cbv
  try rfl
theorem node8919_eq : Flapjack.WordAlloc.removeDeadStructural input8919 value4463 value1 value2 = (output8919, value4464, value1) := by
  rw [input8919_def, output8919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11153 6025034940388909598#64))).val
theorem input8920_def : input8920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11153 6025034940388909598#64)) := by
  unfold input8920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8920_def : output8920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8920_skip : Flapjack.WordAlloc.isSkip output8920 = true := by
  rw [output8920_def]
  conv => lhs; cbv
  try rfl
theorem node8920_eq : Flapjack.WordAlloc.removeDeadStructural input8920 value4464 value1 value2 = (output8920, value4464, value1) := by
  rw [input8920_def, output8920_def]
  try (conv => lhs; cbv)
  try rfl

def value4465 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11149 11141 (Flapjack.WordRegImm.reg 11145))))).val
theorem input8921_def : input8921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11149 11141 (Flapjack.WordRegImm.reg 11145)))) := by
  unfold input8921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11149 11141 (Flapjack.WordRegImm.reg 11145))))).val
theorem output8921_def : output8921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11149 11141 (Flapjack.WordRegImm.reg 11145)))) := by
  unfold output8921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8921_skip : Flapjack.WordAlloc.isSkip output8921 = false := by
  rw [output8921_def]
  conv => lhs; cbv
  try rfl
theorem node8921_eq : Flapjack.WordAlloc.removeDeadStructural input8921 value4464 value1 value2 = (output8921, value4465, value1) := by
  rw [input8921_def, output8921_def]
  try (conv => lhs; cbv)
  try rfl

def value4466 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11145 2672#64))).val
theorem input8922_def : input8922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11145 2672#64)) := by
  unfold input8922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11145 2672#64))).val
theorem output8922_def : output8922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11145 2672#64)) := by
  unfold output8922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8922_skip : Flapjack.WordAlloc.isSkip output8922 = false := by
  rw [output8922_def]
  conv => lhs; cbv
  try rfl
theorem node8922_eq : Flapjack.WordAlloc.removeDeadStructural input8922 value4465 value1 value2 = (output8922, value4466, value1) := by
  rw [input8922_def, output8922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8922 input8921)).val
theorem input8923_def : input8923 = (.seq input8922 input8921) := by
  unfold input8923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8922 output8921)).val
theorem output8923_def : output8923 = (.seq output8922 output8921) := by
  unfold output8923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8923_skip : Flapjack.WordAlloc.isSkip output8923 = false := by
  rw [output8923_def]
  conv => lhs; cbv
  try rfl
theorem node8923_eq : Flapjack.WordAlloc.removeDeadStructural input8923 value4464 value1 value2 = (output8923, value4466, value1) := by
  rw [input8923_def, output8923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8921_eq]
  dsimp only
  rw [node8922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4467 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11141 (Flapjack.WordLangAddr.addr 11137 18446744073709551104#64)))).val
theorem input8924_def : input8924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11141 (Flapjack.WordLangAddr.addr 11137 18446744073709551104#64))) := by
  unfold input8924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11141 (Flapjack.WordLangAddr.addr 11137 18446744073709551104#64)))).val
theorem output8924_def : output8924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11141 (Flapjack.WordLangAddr.addr 11137 18446744073709551104#64))) := by
  unfold output8924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8924_skip : Flapjack.WordAlloc.isSkip output8924 = false := by
  rw [output8924_def]
  conv => lhs; cbv
  try rfl
theorem node8924_eq : Flapjack.WordAlloc.removeDeadStructural input8924 value4466 value1 value2 = (output8924, value4467, value1) := by
  rw [input8924_def, output8924_def]
  try (conv => lhs; cbv)
  try rfl

def value4468 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11137 11133)).val
theorem input8925_def : input8925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11137 11133) := by
  unfold input8925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11137 11133)).val
theorem output8925_def : output8925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11137 11133) := by
  unfold output8925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8925_skip : Flapjack.WordAlloc.isSkip output8925 = false := by
  rw [output8925_def]
  conv => lhs; cbv
  try rfl
theorem node8925_eq : Flapjack.WordAlloc.removeDeadStructural input8925 value4467 value1 value2 = (output8925, value4468, value1) := by
  rw [input8925_def, output8925_def]
  try (conv => lhs; cbv)
  try rfl

def value4469 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11133 11129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8926_def : input8926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11133 11129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11133 11129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8926_def : output8926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11133 11129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8926_skip : Flapjack.WordAlloc.isSkip output8926 = false := by
  rw [output8926_def]
  conv => lhs; cbv
  try rfl
theorem node8926_eq : Flapjack.WordAlloc.removeDeadStructural input8926 value4468 value1 value2 = (output8926, value4469, value1) := by
  rw [input8926_def, output8926_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11129 Flapjack.WordStore.heapLength)).val
theorem input8927_def : input8927 = (Flapjack.WordLangProgHOL.get 11129 Flapjack.WordStore.heapLength) := by
  unfold input8927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11129 Flapjack.WordStore.heapLength)).val
theorem output8927_def : output8927 = (Flapjack.WordLangProgHOL.get 11129 Flapjack.WordStore.heapLength) := by
  unfold output8927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8927_skip : Flapjack.WordAlloc.isSkip output8927 = false := by
  rw [output8927_def]
  conv => lhs; cbv
  try rfl
theorem node8927_eq : Flapjack.WordAlloc.removeDeadStructural input8927 value4469 value1 value2 = (output8927, value5, value1) := by
  rw [input8927_def, output8927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8927 input8926)).val
theorem input8928_def : input8928 = (.seq input8927 input8926) := by
  unfold input8928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8927 output8926)).val
theorem output8928_def : output8928 = (.seq output8927 output8926) := by
  unfold output8928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8928_skip : Flapjack.WordAlloc.isSkip output8928 = false := by
  rw [output8928_def]
  conv => lhs; cbv
  try rfl
theorem node8928_eq : Flapjack.WordAlloc.removeDeadStructural input8928 value4468 value1 value2 = (output8928, value5, value1) := by
  rw [input8928_def, output8928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8926_eq]
  dsimp only
  rw [node8927_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8928 input8925)).val
theorem input8929_def : input8929 = (.seq input8928 input8925) := by
  unfold input8929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8928 output8925)).val
theorem output8929_def : output8929 = (.seq output8928 output8925) := by
  unfold output8929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8929_skip : Flapjack.WordAlloc.isSkip output8929 = false := by
  rw [output8929_def]
  conv => lhs; cbv
  try rfl
theorem node8929_eq : Flapjack.WordAlloc.removeDeadStructural input8929 value4467 value1 value2 = (output8929, value5, value1) := by
  rw [input8929_def, output8929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8925_eq]
  dsimp only
  rw [node8928_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8929 input8924)).val
theorem input8930_def : input8930 = (.seq input8929 input8924) := by
  unfold input8930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8929 output8924)).val
theorem output8930_def : output8930 = (.seq output8929 output8924) := by
  unfold output8930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8930_skip : Flapjack.WordAlloc.isSkip output8930 = false := by
  rw [output8930_def]
  conv => lhs; cbv
  try rfl
theorem node8930_eq : Flapjack.WordAlloc.removeDeadStructural input8930 value4466 value1 value2 = (output8930, value5, value1) := by
  rw [input8930_def, output8930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8924_eq]
  dsimp only
  rw [node8929_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8930 input8923)).val
theorem input8931_def : input8931 = (.seq input8930 input8923) := by
  unfold input8931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8930 output8923)).val
theorem output8931_def : output8931 = (.seq output8930 output8923) := by
  unfold output8931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8931_skip : Flapjack.WordAlloc.isSkip output8931 = false := by
  rw [output8931_def]
  conv => lhs; cbv
  try rfl
theorem node8931_eq : Flapjack.WordAlloc.removeDeadStructural input8931 value4464 value1 value2 = (output8931, value5, value1) := by
  rw [input8931_def, output8931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8923_eq]
  dsimp only
  rw [node8930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4470 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11121 (Flapjack.WordLangAddr.addr 11125 0#64)))).val
theorem input8932_def : input8932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11121 (Flapjack.WordLangAddr.addr 11125 0#64))) := by
  unfold input8932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11121 (Flapjack.WordLangAddr.addr 11125 0#64)))).val
theorem output8932_def : output8932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11121 (Flapjack.WordLangAddr.addr 11125 0#64))) := by
  unfold output8932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8932_skip : Flapjack.WordAlloc.isSkip output8932 = false := by
  rw [output8932_def]
  conv => lhs; cbv
  try rfl
theorem node8932_eq : Flapjack.WordAlloc.removeDeadStructural input8932 value5 value1 value2 = (output8932, value4470, value1) := by
  rw [input8932_def, output8932_def]
  try (conv => lhs; cbv)
  try rfl

def value4471 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11125, 11113)])).val
theorem input8933_def : input8933 = (Flapjack.WordLangProgHOL.move 0 [(11125, 11113)]) := by
  unfold input8933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11125, 11113)])).val
theorem output8933_def : output8933 = (Flapjack.WordLangProgHOL.move 0 [(11125, 11113)]) := by
  unfold output8933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8933_skip : Flapjack.WordAlloc.isSkip output8933 = false := by
  rw [output8933_def]
  conv => lhs; cbv
  try rfl
theorem node8933_eq : Flapjack.WordAlloc.removeDeadStructural input8933 value4470 value1 value2 = (output8933, value4471, value1) := by
  rw [input8933_def, output8933_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8933 input8932)).val
theorem input8934_def : input8934 = (.seq input8933 input8932) := by
  unfold input8934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8933 output8932)).val
theorem output8934_def : output8934 = (.seq output8933 output8932) := by
  unfold output8934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8934_skip : Flapjack.WordAlloc.isSkip output8934 = false := by
  rw [output8934_def]
  conv => lhs; cbv
  try rfl
theorem node8934_eq : Flapjack.WordAlloc.removeDeadStructural input8934 value5 value1 value2 = (output8934, value4471, value1) := by
  rw [input8934_def, output8934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8932_eq]
  dsimp only
  rw [node8933_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4472 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11121 234844145893171966#64))).val
theorem input8935_def : input8935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11121 234844145893171966#64)) := by
  unfold input8935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11121 234844145893171966#64))).val
theorem output8935_def : output8935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11121 234844145893171966#64)) := by
  unfold output8935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8935_skip : Flapjack.WordAlloc.isSkip output8935 = false := by
  rw [output8935_def]
  conv => lhs; cbv
  try rfl
theorem node8935_eq : Flapjack.WordAlloc.removeDeadStructural input8935 value4471 value1 value2 = (output8935, value4472, value1) := by
  rw [input8935_def, output8935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11117 234844145893171966#64))).val
theorem input8936_def : input8936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11117 234844145893171966#64)) := by
  unfold input8936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8936_def : output8936 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8936_skip : Flapjack.WordAlloc.isSkip output8936 = true := by
  rw [output8936_def]
  conv => lhs; cbv
  try rfl
theorem node8936_eq : Flapjack.WordAlloc.removeDeadStructural input8936 value4472 value1 value2 = (output8936, value4472, value1) := by
  rw [input8936_def, output8936_def]
  try (conv => lhs; cbv)
  try rfl

def value4473 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11113 11105 (Flapjack.WordRegImm.reg 11109))))).val
theorem input8937_def : input8937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11113 11105 (Flapjack.WordRegImm.reg 11109)))) := by
  unfold input8937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11113 11105 (Flapjack.WordRegImm.reg 11109))))).val
theorem output8937_def : output8937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11113 11105 (Flapjack.WordRegImm.reg 11109)))) := by
  unfold output8937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8937_skip : Flapjack.WordAlloc.isSkip output8937 = false := by
  rw [output8937_def]
  conv => lhs; cbv
  try rfl
theorem node8937_eq : Flapjack.WordAlloc.removeDeadStructural input8937 value4472 value1 value2 = (output8937, value4473, value1) := by
  rw [input8937_def, output8937_def]
  try (conv => lhs; cbv)
  try rfl

def value4474 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11109 2664#64))).val
theorem input8938_def : input8938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11109 2664#64)) := by
  unfold input8938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11109 2664#64))).val
theorem output8938_def : output8938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11109 2664#64)) := by
  unfold output8938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8938_skip : Flapjack.WordAlloc.isSkip output8938 = false := by
  rw [output8938_def]
  conv => lhs; cbv
  try rfl
theorem node8938_eq : Flapjack.WordAlloc.removeDeadStructural input8938 value4473 value1 value2 = (output8938, value4474, value1) := by
  rw [input8938_def, output8938_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8938 input8937)).val
theorem input8939_def : input8939 = (.seq input8938 input8937) := by
  unfold input8939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8938 output8937)).val
theorem output8939_def : output8939 = (.seq output8938 output8937) := by
  unfold output8939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8939_skip : Flapjack.WordAlloc.isSkip output8939 = false := by
  rw [output8939_def]
  conv => lhs; cbv
  try rfl
theorem node8939_eq : Flapjack.WordAlloc.removeDeadStructural input8939 value4472 value1 value2 = (output8939, value4474, value1) := by
  rw [input8939_def, output8939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8937_eq]
  dsimp only
  rw [node8938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4475 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11105 (Flapjack.WordLangAddr.addr 11101 18446744073709551104#64)))).val
theorem input8940_def : input8940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11105 (Flapjack.WordLangAddr.addr 11101 18446744073709551104#64))) := by
  unfold input8940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11105 (Flapjack.WordLangAddr.addr 11101 18446744073709551104#64)))).val
theorem output8940_def : output8940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11105 (Flapjack.WordLangAddr.addr 11101 18446744073709551104#64))) := by
  unfold output8940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8940_skip : Flapjack.WordAlloc.isSkip output8940 = false := by
  rw [output8940_def]
  conv => lhs; cbv
  try rfl
theorem node8940_eq : Flapjack.WordAlloc.removeDeadStructural input8940 value4474 value1 value2 = (output8940, value4475, value1) := by
  rw [input8940_def, output8940_def]
  try (conv => lhs; cbv)
  try rfl

def value4476 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11101 11097)).val
theorem input8941_def : input8941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11101 11097) := by
  unfold input8941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11101 11097)).val
theorem output8941_def : output8941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11101 11097) := by
  unfold output8941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8941_skip : Flapjack.WordAlloc.isSkip output8941 = false := by
  rw [output8941_def]
  conv => lhs; cbv
  try rfl
theorem node8941_eq : Flapjack.WordAlloc.removeDeadStructural input8941 value4475 value1 value2 = (output8941, value4476, value1) := by
  rw [input8941_def, output8941_def]
  try (conv => lhs; cbv)
  try rfl

def value4477 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11097 11093 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8942_def : input8942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11097 11093 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11097 11093 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8942_def : output8942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11097 11093 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8942_skip : Flapjack.WordAlloc.isSkip output8942 = false := by
  rw [output8942_def]
  conv => lhs; cbv
  try rfl
theorem node8942_eq : Flapjack.WordAlloc.removeDeadStructural input8942 value4476 value1 value2 = (output8942, value4477, value1) := by
  rw [input8942_def, output8942_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11093 Flapjack.WordStore.heapLength)).val
theorem input8943_def : input8943 = (Flapjack.WordLangProgHOL.get 11093 Flapjack.WordStore.heapLength) := by
  unfold input8943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11093 Flapjack.WordStore.heapLength)).val
theorem output8943_def : output8943 = (Flapjack.WordLangProgHOL.get 11093 Flapjack.WordStore.heapLength) := by
  unfold output8943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8943_skip : Flapjack.WordAlloc.isSkip output8943 = false := by
  rw [output8943_def]
  conv => lhs; cbv
  try rfl
theorem node8943_eq : Flapjack.WordAlloc.removeDeadStructural input8943 value4477 value1 value2 = (output8943, value5, value1) := by
  rw [input8943_def, output8943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8943 input8942)).val
theorem input8944_def : input8944 = (.seq input8943 input8942) := by
  unfold input8944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8943 output8942)).val
theorem output8944_def : output8944 = (.seq output8943 output8942) := by
  unfold output8944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8944_skip : Flapjack.WordAlloc.isSkip output8944 = false := by
  rw [output8944_def]
  conv => lhs; cbv
  try rfl
theorem node8944_eq : Flapjack.WordAlloc.removeDeadStructural input8944 value4476 value1 value2 = (output8944, value5, value1) := by
  rw [input8944_def, output8944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8942_eq]
  dsimp only
  rw [node8943_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8944 input8941)).val
theorem input8945_def : input8945 = (.seq input8944 input8941) := by
  unfold input8945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8944 output8941)).val
theorem output8945_def : output8945 = (.seq output8944 output8941) := by
  unfold output8945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8945_skip : Flapjack.WordAlloc.isSkip output8945 = false := by
  rw [output8945_def]
  conv => lhs; cbv
  try rfl
theorem node8945_eq : Flapjack.WordAlloc.removeDeadStructural input8945 value4475 value1 value2 = (output8945, value5, value1) := by
  rw [input8945_def, output8945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8941_eq]
  dsimp only
  rw [node8944_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8945 input8940)).val
theorem input8946_def : input8946 = (.seq input8945 input8940) := by
  unfold input8946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8945 output8940)).val
theorem output8946_def : output8946 = (.seq output8945 output8940) := by
  unfold output8946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8946_skip : Flapjack.WordAlloc.isSkip output8946 = false := by
  rw [output8946_def]
  conv => lhs; cbv
  try rfl
theorem node8946_eq : Flapjack.WordAlloc.removeDeadStructural input8946 value4474 value1 value2 = (output8946, value5, value1) := by
  rw [input8946_def, output8946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8940_eq]
  dsimp only
  rw [node8945_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8946 input8939)).val
theorem input8947_def : input8947 = (.seq input8946 input8939) := by
  unfold input8947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8946 output8939)).val
theorem output8947_def : output8947 = (.seq output8946 output8939) := by
  unfold output8947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8947_skip : Flapjack.WordAlloc.isSkip output8947 = false := by
  rw [output8947_def]
  conv => lhs; cbv
  try rfl
theorem node8947_eq : Flapjack.WordAlloc.removeDeadStructural input8947 value4472 value1 value2 = (output8947, value5, value1) := by
  rw [input8947_def, output8947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8939_eq]
  dsimp only
  rw [node8946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4478 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11085 (Flapjack.WordLangAddr.addr 11089 0#64)))).val
theorem input8948_def : input8948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11085 (Flapjack.WordLangAddr.addr 11089 0#64))) := by
  unfold input8948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11085 (Flapjack.WordLangAddr.addr 11089 0#64)))).val
theorem output8948_def : output8948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 11085 (Flapjack.WordLangAddr.addr 11089 0#64))) := by
  unfold output8948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8948_skip : Flapjack.WordAlloc.isSkip output8948 = false := by
  rw [output8948_def]
  conv => lhs; cbv
  try rfl
theorem node8948_eq : Flapjack.WordAlloc.removeDeadStructural input8948 value5 value1 value2 = (output8948, value4478, value1) := by
  rw [input8948_def, output8948_def]
  try (conv => lhs; cbv)
  try rfl

def value4479 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11089, 11077)])).val
theorem input8949_def : input8949 = (Flapjack.WordLangProgHOL.move 0 [(11089, 11077)]) := by
  unfold input8949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(11089, 11077)])).val
theorem output8949_def : output8949 = (Flapjack.WordLangProgHOL.move 0 [(11089, 11077)]) := by
  unfold output8949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8949_skip : Flapjack.WordAlloc.isSkip output8949 = false := by
  rw [output8949_def]
  conv => lhs; cbv
  try rfl
theorem node8949_eq : Flapjack.WordAlloc.removeDeadStructural input8949 value4478 value1 value2 = (output8949, value4479, value1) := by
  rw [input8949_def, output8949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8949 input8948)).val
theorem input8950_def : input8950 = (.seq input8949 input8948) := by
  unfold input8950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8949 output8948)).val
theorem output8950_def : output8950 = (.seq output8949 output8948) := by
  unfold output8950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8950_skip : Flapjack.WordAlloc.isSkip output8950 = false := by
  rw [output8950_def]
  conv => lhs; cbv
  try rfl
theorem node8950_eq : Flapjack.WordAlloc.removeDeadStructural input8950 value5 value1 value2 = (output8950, value4479, value1) := by
  rw [input8950_def, output8950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8948_eq]
  dsimp only
  rw [node8949_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4480 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11085 14428037799351479124#64))).val
theorem input8951_def : input8951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11085 14428037799351479124#64)) := by
  unfold input8951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11085 14428037799351479124#64))).val
theorem output8951_def : output8951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11085 14428037799351479124#64)) := by
  unfold output8951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8951_skip : Flapjack.WordAlloc.isSkip output8951 = false := by
  rw [output8951_def]
  conv => lhs; cbv
  try rfl
theorem node8951_eq : Flapjack.WordAlloc.removeDeadStructural input8951 value4479 value1 value2 = (output8951, value4480, value1) := by
  rw [input8951_def, output8951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11081 14428037799351479124#64))).val
theorem input8952_def : input8952 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11081 14428037799351479124#64)) := by
  unfold input8952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8952_def : output8952 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8952_skip : Flapjack.WordAlloc.isSkip output8952 = true := by
  rw [output8952_def]
  conv => lhs; cbv
  try rfl
theorem node8952_eq : Flapjack.WordAlloc.removeDeadStructural input8952 value4480 value1 value2 = (output8952, value4480, value1) := by
  rw [input8952_def, output8952_def]
  try (conv => lhs; cbv)
  try rfl

def value4481 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11077 11069 (Flapjack.WordRegImm.reg 11073))))).val
theorem input8953_def : input8953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11077 11069 (Flapjack.WordRegImm.reg 11073)))) := by
  unfold input8953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11077 11069 (Flapjack.WordRegImm.reg 11073))))).val
theorem output8953_def : output8953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 11077 11069 (Flapjack.WordRegImm.reg 11073)))) := by
  unfold output8953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8953_skip : Flapjack.WordAlloc.isSkip output8953 = false := by
  rw [output8953_def]
  conv => lhs; cbv
  try rfl
theorem node8953_eq : Flapjack.WordAlloc.removeDeadStructural input8953 value4480 value1 value2 = (output8953, value4481, value1) := by
  rw [input8953_def, output8953_def]
  try (conv => lhs; cbv)
  try rfl

def value4482 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11073 2656#64))).val
theorem input8954_def : input8954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11073 2656#64)) := by
  unfold input8954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11073 2656#64))).val
theorem output8954_def : output8954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 11073 2656#64)) := by
  unfold output8954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8954_skip : Flapjack.WordAlloc.isSkip output8954 = false := by
  rw [output8954_def]
  conv => lhs; cbv
  try rfl
theorem node8954_eq : Flapjack.WordAlloc.removeDeadStructural input8954 value4481 value1 value2 = (output8954, value4482, value1) := by
  rw [input8954_def, output8954_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8954 input8953)).val
theorem input8955_def : input8955 = (.seq input8954 input8953) := by
  unfold input8955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8954 output8953)).val
theorem output8955_def : output8955 = (.seq output8954 output8953) := by
  unfold output8955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8955_skip : Flapjack.WordAlloc.isSkip output8955 = false := by
  rw [output8955_def]
  conv => lhs; cbv
  try rfl
theorem node8955_eq : Flapjack.WordAlloc.removeDeadStructural input8955 value4480 value1 value2 = (output8955, value4482, value1) := by
  rw [input8955_def, output8955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8953_eq]
  dsimp only
  rw [node8954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4483 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11069 (Flapjack.WordLangAddr.addr 11065 18446744073709551104#64)))).val
theorem input8956_def : input8956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11069 (Flapjack.WordLangAddr.addr 11065 18446744073709551104#64))) := by
  unfold input8956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11069 (Flapjack.WordLangAddr.addr 11065 18446744073709551104#64)))).val
theorem output8956_def : output8956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 11069 (Flapjack.WordLangAddr.addr 11065 18446744073709551104#64))) := by
  unfold output8956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8956_skip : Flapjack.WordAlloc.isSkip output8956 = false := by
  rw [output8956_def]
  conv => lhs; cbv
  try rfl
theorem node8956_eq : Flapjack.WordAlloc.removeDeadStructural input8956 value4482 value1 value2 = (output8956, value4483, value1) := by
  rw [input8956_def, output8956_def]
  try (conv => lhs; cbv)
  try rfl

def value4484 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11065 11061)).val
theorem input8957_def : input8957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11065 11061) := by
  unfold input8957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11065 11061)).val
theorem output8957_def : output8957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 11065 11061) := by
  unfold output8957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8957_skip : Flapjack.WordAlloc.isSkip output8957 = false := by
  rw [output8957_def]
  conv => lhs; cbv
  try rfl
theorem node8957_eq : Flapjack.WordAlloc.removeDeadStructural input8957 value4483 value1 value2 = (output8957, value4484, value1) := by
  rw [input8957_def, output8957_def]
  try (conv => lhs; cbv)
  try rfl

def value4485 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11061 11057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8958_def : input8958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11061 11057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11061 11057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8958_def : output8958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 11061 11057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8958_skip : Flapjack.WordAlloc.isSkip output8958 = false := by
  rw [output8958_def]
  conv => lhs; cbv
  try rfl
theorem node8958_eq : Flapjack.WordAlloc.removeDeadStructural input8958 value4484 value1 value2 = (output8958, value4485, value1) := by
  rw [input8958_def, output8958_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11057 Flapjack.WordStore.heapLength)).val
theorem input8959_def : input8959 = (Flapjack.WordLangProgHOL.get 11057 Flapjack.WordStore.heapLength) := by
  unfold input8959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 11057 Flapjack.WordStore.heapLength)).val
theorem output8959_def : output8959 = (Flapjack.WordLangProgHOL.get 11057 Flapjack.WordStore.heapLength) := by
  unfold output8959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8959_skip : Flapjack.WordAlloc.isSkip output8959 = false := by
  rw [output8959_def]
  conv => lhs; cbv
  try rfl
theorem node8959_eq : Flapjack.WordAlloc.removeDeadStructural input8959 value4485 value1 value2 = (output8959, value5, value1) := by
  rw [input8959_def, output8959_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node8959_eq
end InitECandidate.Proofs.DeadStages713
