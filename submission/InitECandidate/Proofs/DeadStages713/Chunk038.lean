import InitECandidate.Proofs.DeadStages713.Chunk037
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input9728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9727 input9726)).val
theorem input9728_def : input9728 = (.seq input9727 input9726) := by
  unfold input9728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9727 output9726)).val
theorem output9728_def : output9728 = (.seq output9727 output9726) := by
  unfold output9728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9728_skip : Flapjack.WordAlloc.isSkip output9728 = false := by
  rw [output9728_def]
  conv => lhs; cbv
  try rfl
theorem node9728_eq : Flapjack.WordAlloc.removeDeadStructural input9728 value4868 value1 value2 = (output9728, value5, value1) := by
  rw [input9728_def, output9728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9726_eq]
  dsimp only
  rw [node9727_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9728 input9725)).val
theorem input9729_def : input9729 = (.seq input9728 input9725) := by
  unfold input9729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9728 output9725)).val
theorem output9729_def : output9729 = (.seq output9728 output9725) := by
  unfold output9729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9729_skip : Flapjack.WordAlloc.isSkip output9729 = false := by
  rw [output9729_def]
  conv => lhs; cbv
  try rfl
theorem node9729_eq : Flapjack.WordAlloc.removeDeadStructural input9729 value4867 value1 value2 = (output9729, value5, value1) := by
  rw [input9729_def, output9729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9725_eq]
  dsimp only
  rw [node9728_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9729 input9724)).val
theorem input9730_def : input9730 = (.seq input9729 input9724) := by
  unfold input9730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9729 output9724)).val
theorem output9730_def : output9730 = (.seq output9729 output9724) := by
  unfold output9730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9730_skip : Flapjack.WordAlloc.isSkip output9730 = false := by
  rw [output9730_def]
  conv => lhs; cbv
  try rfl
theorem node9730_eq : Flapjack.WordAlloc.removeDeadStructural input9730 value4866 value1 value2 = (output9730, value5, value1) := by
  rw [input9730_def, output9730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9724_eq]
  dsimp only
  rw [node9729_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9730 input9723)).val
theorem input9731_def : input9731 = (.seq input9730 input9723) := by
  unfold input9731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9730 output9723)).val
theorem output9731_def : output9731 = (.seq output9730 output9723) := by
  unfold output9731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9731_skip : Flapjack.WordAlloc.isSkip output9731 = false := by
  rw [output9731_def]
  conv => lhs; cbv
  try rfl
theorem node9731_eq : Flapjack.WordAlloc.removeDeadStructural input9731 value4864 value1 value2 = (output9731, value5, value1) := by
  rw [input9731_def, output9731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9723_eq]
  dsimp only
  rw [node9730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4870 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9321 (Flapjack.WordLangAddr.addr 9325 0#64)))).val
theorem input9732_def : input9732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9321 (Flapjack.WordLangAddr.addr 9325 0#64))) := by
  unfold input9732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9321 (Flapjack.WordLangAddr.addr 9325 0#64)))).val
theorem output9732_def : output9732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9321 (Flapjack.WordLangAddr.addr 9325 0#64))) := by
  unfold output9732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9732_skip : Flapjack.WordAlloc.isSkip output9732 = false := by
  rw [output9732_def]
  conv => lhs; cbv
  try rfl
theorem node9732_eq : Flapjack.WordAlloc.removeDeadStructural input9732 value5 value1 value2 = (output9732, value4870, value1) := by
  rw [input9732_def, output9732_def]
  try (conv => lhs; cbv)
  try rfl

def value4871 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9325, 9313)])).val
theorem input9733_def : input9733 = (Flapjack.WordLangProgHOL.move 0 [(9325, 9313)]) := by
  unfold input9733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9325, 9313)])).val
theorem output9733_def : output9733 = (Flapjack.WordLangProgHOL.move 0 [(9325, 9313)]) := by
  unfold output9733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9733_skip : Flapjack.WordAlloc.isSkip output9733 = false := by
  rw [output9733_def]
  conv => lhs; cbv
  try rfl
theorem node9733_eq : Flapjack.WordAlloc.removeDeadStructural input9733 value4870 value1 value2 = (output9733, value4871, value1) := by
  rw [input9733_def, output9733_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9733 input9732)).val
theorem input9734_def : input9734 = (.seq input9733 input9732) := by
  unfold input9734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9733 output9732)).val
theorem output9734_def : output9734 = (.seq output9733 output9732) := by
  unfold output9734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9734_skip : Flapjack.WordAlloc.isSkip output9734 = false := by
  rw [output9734_def]
  conv => lhs; cbv
  try rfl
theorem node9734_eq : Flapjack.WordAlloc.removeDeadStructural input9734 value5 value1 value2 = (output9734, value4871, value1) := by
  rw [input9734_def, output9734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9732_eq]
  dsimp only
  rw [node9733_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4872 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9321 3849985779734105521#64))).val
theorem input9735_def : input9735 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9321 3849985779734105521#64)) := by
  unfold input9735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9321 3849985779734105521#64))).val
theorem output9735_def : output9735 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9321 3849985779734105521#64)) := by
  unfold output9735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9735_skip : Flapjack.WordAlloc.isSkip output9735 = false := by
  rw [output9735_def]
  conv => lhs; cbv
  try rfl
theorem node9735_eq : Flapjack.WordAlloc.removeDeadStructural input9735 value4871 value1 value2 = (output9735, value4872, value1) := by
  rw [input9735_def, output9735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9317 3849985779734105521#64))).val
theorem input9736_def : input9736 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9317 3849985779734105521#64)) := by
  unfold input9736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9736_def : output9736 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9736_skip : Flapjack.WordAlloc.isSkip output9736 = true := by
  rw [output9736_def]
  conv => lhs; cbv
  try rfl
theorem node9736_eq : Flapjack.WordAlloc.removeDeadStructural input9736 value4872 value1 value2 = (output9736, value4872, value1) := by
  rw [input9736_def, output9736_def]
  try (conv => lhs; cbv)
  try rfl

def value4873 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9313 9305 (Flapjack.WordRegImm.reg 9309))))).val
theorem input9737_def : input9737 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9313 9305 (Flapjack.WordRegImm.reg 9309)))) := by
  unfold input9737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9313 9305 (Flapjack.WordRegImm.reg 9309))))).val
theorem output9737_def : output9737 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9313 9305 (Flapjack.WordRegImm.reg 9309)))) := by
  unfold output9737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9737_skip : Flapjack.WordAlloc.isSkip output9737 = false := by
  rw [output9737_def]
  conv => lhs; cbv
  try rfl
theorem node9737_eq : Flapjack.WordAlloc.removeDeadStructural input9737 value4872 value1 value2 = (output9737, value4873, value1) := by
  rw [input9737_def, output9737_def]
  try (conv => lhs; cbv)
  try rfl

def value4874 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9309 2264#64))).val
theorem input9738_def : input9738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9309 2264#64)) := by
  unfold input9738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9309 2264#64))).val
theorem output9738_def : output9738 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9309 2264#64)) := by
  unfold output9738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9738_skip : Flapjack.WordAlloc.isSkip output9738 = false := by
  rw [output9738_def]
  conv => lhs; cbv
  try rfl
theorem node9738_eq : Flapjack.WordAlloc.removeDeadStructural input9738 value4873 value1 value2 = (output9738, value4874, value1) := by
  rw [input9738_def, output9738_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9738 input9737)).val
theorem input9739_def : input9739 = (.seq input9738 input9737) := by
  unfold input9739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9738 output9737)).val
theorem output9739_def : output9739 = (.seq output9738 output9737) := by
  unfold output9739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9739_skip : Flapjack.WordAlloc.isSkip output9739 = false := by
  rw [output9739_def]
  conv => lhs; cbv
  try rfl
theorem node9739_eq : Flapjack.WordAlloc.removeDeadStructural input9739 value4872 value1 value2 = (output9739, value4874, value1) := by
  rw [input9739_def, output9739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9737_eq]
  dsimp only
  rw [node9738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4875 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9305 (Flapjack.WordLangAddr.addr 9301 18446744073709551104#64)))).val
theorem input9740_def : input9740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9305 (Flapjack.WordLangAddr.addr 9301 18446744073709551104#64))) := by
  unfold input9740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9305 (Flapjack.WordLangAddr.addr 9301 18446744073709551104#64)))).val
theorem output9740_def : output9740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9305 (Flapjack.WordLangAddr.addr 9301 18446744073709551104#64))) := by
  unfold output9740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9740_skip : Flapjack.WordAlloc.isSkip output9740 = false := by
  rw [output9740_def]
  conv => lhs; cbv
  try rfl
theorem node9740_eq : Flapjack.WordAlloc.removeDeadStructural input9740 value4874 value1 value2 = (output9740, value4875, value1) := by
  rw [input9740_def, output9740_def]
  try (conv => lhs; cbv)
  try rfl

def value4876 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9301 9297)).val
theorem input9741_def : input9741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9301 9297) := by
  unfold input9741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9301 9297)).val
theorem output9741_def : output9741 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9301 9297) := by
  unfold output9741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9741_skip : Flapjack.WordAlloc.isSkip output9741 = false := by
  rw [output9741_def]
  conv => lhs; cbv
  try rfl
theorem node9741_eq : Flapjack.WordAlloc.removeDeadStructural input9741 value4875 value1 value2 = (output9741, value4876, value1) := by
  rw [input9741_def, output9741_def]
  try (conv => lhs; cbv)
  try rfl

def value4877 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9297 9293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9742_def : input9742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9297 9293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9297 9293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9742_def : output9742 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9297 9293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9742_skip : Flapjack.WordAlloc.isSkip output9742 = false := by
  rw [output9742_def]
  conv => lhs; cbv
  try rfl
theorem node9742_eq : Flapjack.WordAlloc.removeDeadStructural input9742 value4876 value1 value2 = (output9742, value4877, value1) := by
  rw [input9742_def, output9742_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9293 Flapjack.WordStore.heapLength)).val
theorem input9743_def : input9743 = (Flapjack.WordLangProgHOL.get 9293 Flapjack.WordStore.heapLength) := by
  unfold input9743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9293 Flapjack.WordStore.heapLength)).val
theorem output9743_def : output9743 = (Flapjack.WordLangProgHOL.get 9293 Flapjack.WordStore.heapLength) := by
  unfold output9743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9743_skip : Flapjack.WordAlloc.isSkip output9743 = false := by
  rw [output9743_def]
  conv => lhs; cbv
  try rfl
theorem node9743_eq : Flapjack.WordAlloc.removeDeadStructural input9743 value4877 value1 value2 = (output9743, value5, value1) := by
  rw [input9743_def, output9743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9743 input9742)).val
theorem input9744_def : input9744 = (.seq input9743 input9742) := by
  unfold input9744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9743 output9742)).val
theorem output9744_def : output9744 = (.seq output9743 output9742) := by
  unfold output9744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9744_skip : Flapjack.WordAlloc.isSkip output9744 = false := by
  rw [output9744_def]
  conv => lhs; cbv
  try rfl
theorem node9744_eq : Flapjack.WordAlloc.removeDeadStructural input9744 value4876 value1 value2 = (output9744, value5, value1) := by
  rw [input9744_def, output9744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9742_eq]
  dsimp only
  rw [node9743_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9744 input9741)).val
theorem input9745_def : input9745 = (.seq input9744 input9741) := by
  unfold input9745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9744 output9741)).val
theorem output9745_def : output9745 = (.seq output9744 output9741) := by
  unfold output9745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9745_skip : Flapjack.WordAlloc.isSkip output9745 = false := by
  rw [output9745_def]
  conv => lhs; cbv
  try rfl
theorem node9745_eq : Flapjack.WordAlloc.removeDeadStructural input9745 value4875 value1 value2 = (output9745, value5, value1) := by
  rw [input9745_def, output9745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9741_eq]
  dsimp only
  rw [node9744_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9745 input9740)).val
theorem input9746_def : input9746 = (.seq input9745 input9740) := by
  unfold input9746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9745 output9740)).val
theorem output9746_def : output9746 = (.seq output9745 output9740) := by
  unfold output9746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9746_skip : Flapjack.WordAlloc.isSkip output9746 = false := by
  rw [output9746_def]
  conv => lhs; cbv
  try rfl
theorem node9746_eq : Flapjack.WordAlloc.removeDeadStructural input9746 value4874 value1 value2 = (output9746, value5, value1) := by
  rw [input9746_def, output9746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9740_eq]
  dsimp only
  rw [node9745_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9746 input9739)).val
theorem input9747_def : input9747 = (.seq input9746 input9739) := by
  unfold input9747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9746 output9739)).val
theorem output9747_def : output9747 = (.seq output9746 output9739) := by
  unfold output9747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9747_skip : Flapjack.WordAlloc.isSkip output9747 = false := by
  rw [output9747_def]
  conv => lhs; cbv
  try rfl
theorem node9747_eq : Flapjack.WordAlloc.removeDeadStructural input9747 value4872 value1 value2 = (output9747, value5, value1) := by
  rw [input9747_def, output9747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9739_eq]
  dsimp only
  rw [node9746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4878 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9285 (Flapjack.WordLangAddr.addr 9289 0#64)))).val
theorem input9748_def : input9748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9285 (Flapjack.WordLangAddr.addr 9289 0#64))) := by
  unfold input9748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9285 (Flapjack.WordLangAddr.addr 9289 0#64)))).val
theorem output9748_def : output9748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9285 (Flapjack.WordLangAddr.addr 9289 0#64))) := by
  unfold output9748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9748_skip : Flapjack.WordAlloc.isSkip output9748 = false := by
  rw [output9748_def]
  conv => lhs; cbv
  try rfl
theorem node9748_eq : Flapjack.WordAlloc.removeDeadStructural input9748 value5 value1 value2 = (output9748, value4878, value1) := by
  rw [input9748_def, output9748_def]
  try (conv => lhs; cbv)
  try rfl

def value4879 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9289, 9277)])).val
theorem input9749_def : input9749 = (Flapjack.WordLangProgHOL.move 0 [(9289, 9277)]) := by
  unfold input9749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9289, 9277)])).val
theorem output9749_def : output9749 = (Flapjack.WordLangProgHOL.move 0 [(9289, 9277)]) := by
  unfold output9749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9749_skip : Flapjack.WordAlloc.isSkip output9749 = false := by
  rw [output9749_def]
  conv => lhs; cbv
  try rfl
theorem node9749_eq : Flapjack.WordAlloc.removeDeadStructural input9749 value4878 value1 value2 = (output9749, value4879, value1) := by
  rw [input9749_def, output9749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9749 input9748)).val
theorem input9750_def : input9750 = (.seq input9749 input9748) := by
  unfold input9750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9749 output9748)).val
theorem output9750_def : output9750 = (.seq output9749 output9748) := by
  unfold output9750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9750_skip : Flapjack.WordAlloc.isSkip output9750 = false := by
  rw [output9750_def]
  conv => lhs; cbv
  try rfl
theorem node9750_eq : Flapjack.WordAlloc.removeDeadStructural input9750 value5 value1 value2 = (output9750, value4879, value1) := by
  rw [input9750_def, output9750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9748_eq]
  dsimp only
  rw [node9749_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4880 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9285 11998370262181639475#64))).val
theorem input9751_def : input9751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9285 11998370262181639475#64)) := by
  unfold input9751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9285 11998370262181639475#64))).val
theorem output9751_def : output9751 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9285 11998370262181639475#64)) := by
  unfold output9751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9751_skip : Flapjack.WordAlloc.isSkip output9751 = false := by
  rw [output9751_def]
  conv => lhs; cbv
  try rfl
theorem node9751_eq : Flapjack.WordAlloc.removeDeadStructural input9751 value4879 value1 value2 = (output9751, value4880, value1) := by
  rw [input9751_def, output9751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9281 11998370262181639475#64))).val
theorem input9752_def : input9752 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9281 11998370262181639475#64)) := by
  unfold input9752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9752_def : output9752 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9752_skip : Flapjack.WordAlloc.isSkip output9752 = true := by
  rw [output9752_def]
  conv => lhs; cbv
  try rfl
theorem node9752_eq : Flapjack.WordAlloc.removeDeadStructural input9752 value4880 value1 value2 = (output9752, value4880, value1) := by
  rw [input9752_def, output9752_def]
  try (conv => lhs; cbv)
  try rfl

def value4881 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9277 9269 (Flapjack.WordRegImm.reg 9273))))).val
theorem input9753_def : input9753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9277 9269 (Flapjack.WordRegImm.reg 9273)))) := by
  unfold input9753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9277 9269 (Flapjack.WordRegImm.reg 9273))))).val
theorem output9753_def : output9753 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9277 9269 (Flapjack.WordRegImm.reg 9273)))) := by
  unfold output9753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9753_skip : Flapjack.WordAlloc.isSkip output9753 = false := by
  rw [output9753_def]
  conv => lhs; cbv
  try rfl
theorem node9753_eq : Flapjack.WordAlloc.removeDeadStructural input9753 value4880 value1 value2 = (output9753, value4881, value1) := by
  rw [input9753_def, output9753_def]
  try (conv => lhs; cbv)
  try rfl

def value4882 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9273 2256#64))).val
theorem input9754_def : input9754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9273 2256#64)) := by
  unfold input9754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9273 2256#64))).val
theorem output9754_def : output9754 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9273 2256#64)) := by
  unfold output9754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9754_skip : Flapjack.WordAlloc.isSkip output9754 = false := by
  rw [output9754_def]
  conv => lhs; cbv
  try rfl
theorem node9754_eq : Flapjack.WordAlloc.removeDeadStructural input9754 value4881 value1 value2 = (output9754, value4882, value1) := by
  rw [input9754_def, output9754_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9754 input9753)).val
theorem input9755_def : input9755 = (.seq input9754 input9753) := by
  unfold input9755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9754 output9753)).val
theorem output9755_def : output9755 = (.seq output9754 output9753) := by
  unfold output9755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9755_skip : Flapjack.WordAlloc.isSkip output9755 = false := by
  rw [output9755_def]
  conv => lhs; cbv
  try rfl
theorem node9755_eq : Flapjack.WordAlloc.removeDeadStructural input9755 value4880 value1 value2 = (output9755, value4882, value1) := by
  rw [input9755_def, output9755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9753_eq]
  dsimp only
  rw [node9754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4883 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9269 (Flapjack.WordLangAddr.addr 9265 18446744073709551104#64)))).val
theorem input9756_def : input9756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9269 (Flapjack.WordLangAddr.addr 9265 18446744073709551104#64))) := by
  unfold input9756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9269 (Flapjack.WordLangAddr.addr 9265 18446744073709551104#64)))).val
theorem output9756_def : output9756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9269 (Flapjack.WordLangAddr.addr 9265 18446744073709551104#64))) := by
  unfold output9756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9756_skip : Flapjack.WordAlloc.isSkip output9756 = false := by
  rw [output9756_def]
  conv => lhs; cbv
  try rfl
theorem node9756_eq : Flapjack.WordAlloc.removeDeadStructural input9756 value4882 value1 value2 = (output9756, value4883, value1) := by
  rw [input9756_def, output9756_def]
  try (conv => lhs; cbv)
  try rfl

def value4884 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9265 9261)).val
theorem input9757_def : input9757 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9265 9261) := by
  unfold input9757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9265 9261)).val
theorem output9757_def : output9757 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9265 9261) := by
  unfold output9757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9757_skip : Flapjack.WordAlloc.isSkip output9757 = false := by
  rw [output9757_def]
  conv => lhs; cbv
  try rfl
theorem node9757_eq : Flapjack.WordAlloc.removeDeadStructural input9757 value4883 value1 value2 = (output9757, value4884, value1) := by
  rw [input9757_def, output9757_def]
  try (conv => lhs; cbv)
  try rfl

def value4885 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9261 9257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9758_def : input9758 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9261 9257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9261 9257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9758_def : output9758 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9261 9257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9758_skip : Flapjack.WordAlloc.isSkip output9758 = false := by
  rw [output9758_def]
  conv => lhs; cbv
  try rfl
theorem node9758_eq : Flapjack.WordAlloc.removeDeadStructural input9758 value4884 value1 value2 = (output9758, value4885, value1) := by
  rw [input9758_def, output9758_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9257 Flapjack.WordStore.heapLength)).val
theorem input9759_def : input9759 = (Flapjack.WordLangProgHOL.get 9257 Flapjack.WordStore.heapLength) := by
  unfold input9759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9257 Flapjack.WordStore.heapLength)).val
theorem output9759_def : output9759 = (Flapjack.WordLangProgHOL.get 9257 Flapjack.WordStore.heapLength) := by
  unfold output9759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9759_skip : Flapjack.WordAlloc.isSkip output9759 = false := by
  rw [output9759_def]
  conv => lhs; cbv
  try rfl
theorem node9759_eq : Flapjack.WordAlloc.removeDeadStructural input9759 value4885 value1 value2 = (output9759, value5, value1) := by
  rw [input9759_def, output9759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9759 input9758)).val
theorem input9760_def : input9760 = (.seq input9759 input9758) := by
  unfold input9760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9759 output9758)).val
theorem output9760_def : output9760 = (.seq output9759 output9758) := by
  unfold output9760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9760_skip : Flapjack.WordAlloc.isSkip output9760 = false := by
  rw [output9760_def]
  conv => lhs; cbv
  try rfl
theorem node9760_eq : Flapjack.WordAlloc.removeDeadStructural input9760 value4884 value1 value2 = (output9760, value5, value1) := by
  rw [input9760_def, output9760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9758_eq]
  dsimp only
  rw [node9759_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9760 input9757)).val
theorem input9761_def : input9761 = (.seq input9760 input9757) := by
  unfold input9761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9760 output9757)).val
theorem output9761_def : output9761 = (.seq output9760 output9757) := by
  unfold output9761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9761_skip : Flapjack.WordAlloc.isSkip output9761 = false := by
  rw [output9761_def]
  conv => lhs; cbv
  try rfl
theorem node9761_eq : Flapjack.WordAlloc.removeDeadStructural input9761 value4883 value1 value2 = (output9761, value5, value1) := by
  rw [input9761_def, output9761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9757_eq]
  dsimp only
  rw [node9760_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9761 input9756)).val
theorem input9762_def : input9762 = (.seq input9761 input9756) := by
  unfold input9762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9761 output9756)).val
theorem output9762_def : output9762 = (.seq output9761 output9756) := by
  unfold output9762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9762_skip : Flapjack.WordAlloc.isSkip output9762 = false := by
  rw [output9762_def]
  conv => lhs; cbv
  try rfl
theorem node9762_eq : Flapjack.WordAlloc.removeDeadStructural input9762 value4882 value1 value2 = (output9762, value5, value1) := by
  rw [input9762_def, output9762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9756_eq]
  dsimp only
  rw [node9761_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9762 input9755)).val
theorem input9763_def : input9763 = (.seq input9762 input9755) := by
  unfold input9763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9762 output9755)).val
theorem output9763_def : output9763 = (.seq output9762 output9755) := by
  unfold output9763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9763_skip : Flapjack.WordAlloc.isSkip output9763 = false := by
  rw [output9763_def]
  conv => lhs; cbv
  try rfl
theorem node9763_eq : Flapjack.WordAlloc.removeDeadStructural input9763 value4880 value1 value2 = (output9763, value5, value1) := by
  rw [input9763_def, output9763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9755_eq]
  dsimp only
  rw [node9762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4886 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9249 (Flapjack.WordLangAddr.addr 9253 0#64)))).val
theorem input9764_def : input9764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9249 (Flapjack.WordLangAddr.addr 9253 0#64))) := by
  unfold input9764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9249 (Flapjack.WordLangAddr.addr 9253 0#64)))).val
theorem output9764_def : output9764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9249 (Flapjack.WordLangAddr.addr 9253 0#64))) := by
  unfold output9764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9764_skip : Flapjack.WordAlloc.isSkip output9764 = false := by
  rw [output9764_def]
  conv => lhs; cbv
  try rfl
theorem node9764_eq : Flapjack.WordAlloc.removeDeadStructural input9764 value5 value1 value2 = (output9764, value4886, value1) := by
  rw [input9764_def, output9764_def]
  try (conv => lhs; cbv)
  try rfl

def value4887 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9253, 9241)])).val
theorem input9765_def : input9765 = (Flapjack.WordLangProgHOL.move 0 [(9253, 9241)]) := by
  unfold input9765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9253, 9241)])).val
theorem output9765_def : output9765 = (Flapjack.WordLangProgHOL.move 0 [(9253, 9241)]) := by
  unfold output9765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9765_skip : Flapjack.WordAlloc.isSkip output9765 = false := by
  rw [output9765_def]
  conv => lhs; cbv
  try rfl
theorem node9765_eq : Flapjack.WordAlloc.removeDeadStructural input9765 value4886 value1 value2 = (output9765, value4887, value1) := by
  rw [input9765_def, output9765_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9765 input9764)).val
theorem input9766_def : input9766 = (.seq input9765 input9764) := by
  unfold input9766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9765 output9764)).val
theorem output9766_def : output9766 = (.seq output9765 output9764) := by
  unfold output9766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9766_skip : Flapjack.WordAlloc.isSkip output9766 = false := by
  rw [output9766_def]
  conv => lhs; cbv
  try rfl
theorem node9766_eq : Flapjack.WordAlloc.removeDeadStructural input9766 value5 value1 value2 = (output9766, value4887, value1) := by
  rw [input9766_def, output9766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9764_eq]
  dsimp only
  rw [node9765_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4888 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9249 4159013751748851119#64))).val
theorem input9767_def : input9767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9249 4159013751748851119#64)) := by
  unfold input9767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9249 4159013751748851119#64))).val
theorem output9767_def : output9767 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9249 4159013751748851119#64)) := by
  unfold output9767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9767_skip : Flapjack.WordAlloc.isSkip output9767 = false := by
  rw [output9767_def]
  conv => lhs; cbv
  try rfl
theorem node9767_eq : Flapjack.WordAlloc.removeDeadStructural input9767 value4887 value1 value2 = (output9767, value4888, value1) := by
  rw [input9767_def, output9767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9245 4159013751748851119#64))).val
theorem input9768_def : input9768 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9245 4159013751748851119#64)) := by
  unfold input9768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9768_def : output9768 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9768_skip : Flapjack.WordAlloc.isSkip output9768 = true := by
  rw [output9768_def]
  conv => lhs; cbv
  try rfl
theorem node9768_eq : Flapjack.WordAlloc.removeDeadStructural input9768 value4888 value1 value2 = (output9768, value4888, value1) := by
  rw [input9768_def, output9768_def]
  try (conv => lhs; cbv)
  try rfl

def value4889 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9241 9233 (Flapjack.WordRegImm.reg 9237))))).val
theorem input9769_def : input9769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9241 9233 (Flapjack.WordRegImm.reg 9237)))) := by
  unfold input9769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9241 9233 (Flapjack.WordRegImm.reg 9237))))).val
theorem output9769_def : output9769 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9241 9233 (Flapjack.WordRegImm.reg 9237)))) := by
  unfold output9769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9769_skip : Flapjack.WordAlloc.isSkip output9769 = false := by
  rw [output9769_def]
  conv => lhs; cbv
  try rfl
theorem node9769_eq : Flapjack.WordAlloc.removeDeadStructural input9769 value4888 value1 value2 = (output9769, value4889, value1) := by
  rw [input9769_def, output9769_def]
  try (conv => lhs; cbv)
  try rfl

def value4890 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9237 2248#64))).val
theorem input9770_def : input9770 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9237 2248#64)) := by
  unfold input9770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9237 2248#64))).val
theorem output9770_def : output9770 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9237 2248#64)) := by
  unfold output9770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9770_skip : Flapjack.WordAlloc.isSkip output9770 = false := by
  rw [output9770_def]
  conv => lhs; cbv
  try rfl
theorem node9770_eq : Flapjack.WordAlloc.removeDeadStructural input9770 value4889 value1 value2 = (output9770, value4890, value1) := by
  rw [input9770_def, output9770_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9770 input9769)).val
theorem input9771_def : input9771 = (.seq input9770 input9769) := by
  unfold input9771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9770 output9769)).val
theorem output9771_def : output9771 = (.seq output9770 output9769) := by
  unfold output9771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9771_skip : Flapjack.WordAlloc.isSkip output9771 = false := by
  rw [output9771_def]
  conv => lhs; cbv
  try rfl
theorem node9771_eq : Flapjack.WordAlloc.removeDeadStructural input9771 value4888 value1 value2 = (output9771, value4890, value1) := by
  rw [input9771_def, output9771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9769_eq]
  dsimp only
  rw [node9770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4891 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9233 (Flapjack.WordLangAddr.addr 9229 18446744073709551104#64)))).val
theorem input9772_def : input9772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9233 (Flapjack.WordLangAddr.addr 9229 18446744073709551104#64))) := by
  unfold input9772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9233 (Flapjack.WordLangAddr.addr 9229 18446744073709551104#64)))).val
theorem output9772_def : output9772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9233 (Flapjack.WordLangAddr.addr 9229 18446744073709551104#64))) := by
  unfold output9772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9772_skip : Flapjack.WordAlloc.isSkip output9772 = false := by
  rw [output9772_def]
  conv => lhs; cbv
  try rfl
theorem node9772_eq : Flapjack.WordAlloc.removeDeadStructural input9772 value4890 value1 value2 = (output9772, value4891, value1) := by
  rw [input9772_def, output9772_def]
  try (conv => lhs; cbv)
  try rfl

def value4892 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9229 9225)).val
theorem input9773_def : input9773 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9229 9225) := by
  unfold input9773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9229 9225)).val
theorem output9773_def : output9773 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9229 9225) := by
  unfold output9773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9773_skip : Flapjack.WordAlloc.isSkip output9773 = false := by
  rw [output9773_def]
  conv => lhs; cbv
  try rfl
theorem node9773_eq : Flapjack.WordAlloc.removeDeadStructural input9773 value4891 value1 value2 = (output9773, value4892, value1) := by
  rw [input9773_def, output9773_def]
  try (conv => lhs; cbv)
  try rfl

def value4893 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9225 9221 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9774_def : input9774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9225 9221 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9225 9221 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9774_def : output9774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9225 9221 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9774_skip : Flapjack.WordAlloc.isSkip output9774 = false := by
  rw [output9774_def]
  conv => lhs; cbv
  try rfl
theorem node9774_eq : Flapjack.WordAlloc.removeDeadStructural input9774 value4892 value1 value2 = (output9774, value4893, value1) := by
  rw [input9774_def, output9774_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9221 Flapjack.WordStore.heapLength)).val
theorem input9775_def : input9775 = (Flapjack.WordLangProgHOL.get 9221 Flapjack.WordStore.heapLength) := by
  unfold input9775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9221 Flapjack.WordStore.heapLength)).val
theorem output9775_def : output9775 = (Flapjack.WordLangProgHOL.get 9221 Flapjack.WordStore.heapLength) := by
  unfold output9775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9775_skip : Flapjack.WordAlloc.isSkip output9775 = false := by
  rw [output9775_def]
  conv => lhs; cbv
  try rfl
theorem node9775_eq : Flapjack.WordAlloc.removeDeadStructural input9775 value4893 value1 value2 = (output9775, value5, value1) := by
  rw [input9775_def, output9775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9775 input9774)).val
theorem input9776_def : input9776 = (.seq input9775 input9774) := by
  unfold input9776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9775 output9774)).val
theorem output9776_def : output9776 = (.seq output9775 output9774) := by
  unfold output9776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9776_skip : Flapjack.WordAlloc.isSkip output9776 = false := by
  rw [output9776_def]
  conv => lhs; cbv
  try rfl
theorem node9776_eq : Flapjack.WordAlloc.removeDeadStructural input9776 value4892 value1 value2 = (output9776, value5, value1) := by
  rw [input9776_def, output9776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9774_eq]
  dsimp only
  rw [node9775_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9776 input9773)).val
theorem input9777_def : input9777 = (.seq input9776 input9773) := by
  unfold input9777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9776 output9773)).val
theorem output9777_def : output9777 = (.seq output9776 output9773) := by
  unfold output9777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9777_skip : Flapjack.WordAlloc.isSkip output9777 = false := by
  rw [output9777_def]
  conv => lhs; cbv
  try rfl
theorem node9777_eq : Flapjack.WordAlloc.removeDeadStructural input9777 value4891 value1 value2 = (output9777, value5, value1) := by
  rw [input9777_def, output9777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9773_eq]
  dsimp only
  rw [node9776_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9777 input9772)).val
theorem input9778_def : input9778 = (.seq input9777 input9772) := by
  unfold input9778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9777 output9772)).val
theorem output9778_def : output9778 = (.seq output9777 output9772) := by
  unfold output9778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9778_skip : Flapjack.WordAlloc.isSkip output9778 = false := by
  rw [output9778_def]
  conv => lhs; cbv
  try rfl
theorem node9778_eq : Flapjack.WordAlloc.removeDeadStructural input9778 value4890 value1 value2 = (output9778, value5, value1) := by
  rw [input9778_def, output9778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9772_eq]
  dsimp only
  rw [node9777_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9778 input9771)).val
theorem input9779_def : input9779 = (.seq input9778 input9771) := by
  unfold input9779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9778 output9771)).val
theorem output9779_def : output9779 = (.seq output9778 output9771) := by
  unfold output9779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9779_skip : Flapjack.WordAlloc.isSkip output9779 = false := by
  rw [output9779_def]
  conv => lhs; cbv
  try rfl
theorem node9779_eq : Flapjack.WordAlloc.removeDeadStructural input9779 value4888 value1 value2 = (output9779, value5, value1) := by
  rw [input9779_def, output9779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9771_eq]
  dsimp only
  rw [node9778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4894 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9213 (Flapjack.WordLangAddr.addr 9217 0#64)))).val
theorem input9780_def : input9780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9213 (Flapjack.WordLangAddr.addr 9217 0#64))) := by
  unfold input9780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9213 (Flapjack.WordLangAddr.addr 9217 0#64)))).val
theorem output9780_def : output9780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9213 (Flapjack.WordLangAddr.addr 9217 0#64))) := by
  unfold output9780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9780_skip : Flapjack.WordAlloc.isSkip output9780 = false := by
  rw [output9780_def]
  conv => lhs; cbv
  try rfl
theorem node9780_eq : Flapjack.WordAlloc.removeDeadStructural input9780 value5 value1 value2 = (output9780, value4894, value1) := by
  rw [input9780_def, output9780_def]
  try (conv => lhs; cbv)
  try rfl

def value4895 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9217, 9205)])).val
theorem input9781_def : input9781 = (Flapjack.WordLangProgHOL.move 0 [(9217, 9205)]) := by
  unfold input9781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9217, 9205)])).val
theorem output9781_def : output9781 = (Flapjack.WordLangProgHOL.move 0 [(9217, 9205)]) := by
  unfold output9781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9781_skip : Flapjack.WordAlloc.isSkip output9781 = false := by
  rw [output9781_def]
  conv => lhs; cbv
  try rfl
theorem node9781_eq : Flapjack.WordAlloc.removeDeadStructural input9781 value4894 value1 value2 = (output9781, value4895, value1) := by
  rw [input9781_def, output9781_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9781 input9780)).val
theorem input9782_def : input9782 = (.seq input9781 input9780) := by
  unfold input9782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9781 output9780)).val
theorem output9782_def : output9782 = (.seq output9781 output9780) := by
  unfold output9782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9782_skip : Flapjack.WordAlloc.isSkip output9782 = false := by
  rw [output9782_def]
  conv => lhs; cbv
  try rfl
theorem node9782_eq : Flapjack.WordAlloc.removeDeadStructural input9782 value5 value1 value2 = (output9782, value4895, value1) := by
  rw [input9782_def, output9782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9780_eq]
  dsimp only
  rw [node9781_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4896 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9213 11298218755092433038#64))).val
theorem input9783_def : input9783 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9213 11298218755092433038#64)) := by
  unfold input9783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9213 11298218755092433038#64))).val
theorem output9783_def : output9783 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9213 11298218755092433038#64)) := by
  unfold output9783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9783_skip : Flapjack.WordAlloc.isSkip output9783 = false := by
  rw [output9783_def]
  conv => lhs; cbv
  try rfl
theorem node9783_eq : Flapjack.WordAlloc.removeDeadStructural input9783 value4895 value1 value2 = (output9783, value4896, value1) := by
  rw [input9783_def, output9783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9209 11298218755092433038#64))).val
theorem input9784_def : input9784 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9209 11298218755092433038#64)) := by
  unfold input9784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9784_def : output9784 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9784_skip : Flapjack.WordAlloc.isSkip output9784 = true := by
  rw [output9784_def]
  conv => lhs; cbv
  try rfl
theorem node9784_eq : Flapjack.WordAlloc.removeDeadStructural input9784 value4896 value1 value2 = (output9784, value4896, value1) := by
  rw [input9784_def, output9784_def]
  try (conv => lhs; cbv)
  try rfl

def value4897 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9205 9197 (Flapjack.WordRegImm.reg 9201))))).val
theorem input9785_def : input9785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9205 9197 (Flapjack.WordRegImm.reg 9201)))) := by
  unfold input9785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9205 9197 (Flapjack.WordRegImm.reg 9201))))).val
theorem output9785_def : output9785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9205 9197 (Flapjack.WordRegImm.reg 9201)))) := by
  unfold output9785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9785_skip : Flapjack.WordAlloc.isSkip output9785 = false := by
  rw [output9785_def]
  conv => lhs; cbv
  try rfl
theorem node9785_eq : Flapjack.WordAlloc.removeDeadStructural input9785 value4896 value1 value2 = (output9785, value4897, value1) := by
  rw [input9785_def, output9785_def]
  try (conv => lhs; cbv)
  try rfl

def value4898 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9201 2240#64))).val
theorem input9786_def : input9786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9201 2240#64)) := by
  unfold input9786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9201 2240#64))).val
theorem output9786_def : output9786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9201 2240#64)) := by
  unfold output9786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9786_skip : Flapjack.WordAlloc.isSkip output9786 = false := by
  rw [output9786_def]
  conv => lhs; cbv
  try rfl
theorem node9786_eq : Flapjack.WordAlloc.removeDeadStructural input9786 value4897 value1 value2 = (output9786, value4898, value1) := by
  rw [input9786_def, output9786_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9786 input9785)).val
theorem input9787_def : input9787 = (.seq input9786 input9785) := by
  unfold input9787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9786 output9785)).val
theorem output9787_def : output9787 = (.seq output9786 output9785) := by
  unfold output9787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9787_skip : Flapjack.WordAlloc.isSkip output9787 = false := by
  rw [output9787_def]
  conv => lhs; cbv
  try rfl
theorem node9787_eq : Flapjack.WordAlloc.removeDeadStructural input9787 value4896 value1 value2 = (output9787, value4898, value1) := by
  rw [input9787_def, output9787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9785_eq]
  dsimp only
  rw [node9786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4899 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9197 (Flapjack.WordLangAddr.addr 9193 18446744073709551104#64)))).val
theorem input9788_def : input9788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9197 (Flapjack.WordLangAddr.addr 9193 18446744073709551104#64))) := by
  unfold input9788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9197 (Flapjack.WordLangAddr.addr 9193 18446744073709551104#64)))).val
theorem output9788_def : output9788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9197 (Flapjack.WordLangAddr.addr 9193 18446744073709551104#64))) := by
  unfold output9788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9788_skip : Flapjack.WordAlloc.isSkip output9788 = false := by
  rw [output9788_def]
  conv => lhs; cbv
  try rfl
theorem node9788_eq : Flapjack.WordAlloc.removeDeadStructural input9788 value4898 value1 value2 = (output9788, value4899, value1) := by
  rw [input9788_def, output9788_def]
  try (conv => lhs; cbv)
  try rfl

def value4900 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9193 9189)).val
theorem input9789_def : input9789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9193 9189) := by
  unfold input9789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9193 9189)).val
theorem output9789_def : output9789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9193 9189) := by
  unfold output9789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9789_skip : Flapjack.WordAlloc.isSkip output9789 = false := by
  rw [output9789_def]
  conv => lhs; cbv
  try rfl
theorem node9789_eq : Flapjack.WordAlloc.removeDeadStructural input9789 value4899 value1 value2 = (output9789, value4900, value1) := by
  rw [input9789_def, output9789_def]
  try (conv => lhs; cbv)
  try rfl

def value4901 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9189 9185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9790_def : input9790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9189 9185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9189 9185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9790_def : output9790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9189 9185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9790_skip : Flapjack.WordAlloc.isSkip output9790 = false := by
  rw [output9790_def]
  conv => lhs; cbv
  try rfl
theorem node9790_eq : Flapjack.WordAlloc.removeDeadStructural input9790 value4900 value1 value2 = (output9790, value4901, value1) := by
  rw [input9790_def, output9790_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9185 Flapjack.WordStore.heapLength)).val
theorem input9791_def : input9791 = (Flapjack.WordLangProgHOL.get 9185 Flapjack.WordStore.heapLength) := by
  unfold input9791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9185 Flapjack.WordStore.heapLength)).val
theorem output9791_def : output9791 = (Flapjack.WordLangProgHOL.get 9185 Flapjack.WordStore.heapLength) := by
  unfold output9791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9791_skip : Flapjack.WordAlloc.isSkip output9791 = false := by
  rw [output9791_def]
  conv => lhs; cbv
  try rfl
theorem node9791_eq : Flapjack.WordAlloc.removeDeadStructural input9791 value4901 value1 value2 = (output9791, value5, value1) := by
  rw [input9791_def, output9791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9791 input9790)).val
theorem input9792_def : input9792 = (.seq input9791 input9790) := by
  unfold input9792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9791 output9790)).val
theorem output9792_def : output9792 = (.seq output9791 output9790) := by
  unfold output9792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9792_skip : Flapjack.WordAlloc.isSkip output9792 = false := by
  rw [output9792_def]
  conv => lhs; cbv
  try rfl
theorem node9792_eq : Flapjack.WordAlloc.removeDeadStructural input9792 value4900 value1 value2 = (output9792, value5, value1) := by
  rw [input9792_def, output9792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9790_eq]
  dsimp only
  rw [node9791_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9792 input9789)).val
theorem input9793_def : input9793 = (.seq input9792 input9789) := by
  unfold input9793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9792 output9789)).val
theorem output9793_def : output9793 = (.seq output9792 output9789) := by
  unfold output9793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9793_skip : Flapjack.WordAlloc.isSkip output9793 = false := by
  rw [output9793_def]
  conv => lhs; cbv
  try rfl
theorem node9793_eq : Flapjack.WordAlloc.removeDeadStructural input9793 value4899 value1 value2 = (output9793, value5, value1) := by
  rw [input9793_def, output9793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9789_eq]
  dsimp only
  rw [node9792_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9793 input9788)).val
theorem input9794_def : input9794 = (.seq input9793 input9788) := by
  unfold input9794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9793 output9788)).val
theorem output9794_def : output9794 = (.seq output9793 output9788) := by
  unfold output9794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9794_skip : Flapjack.WordAlloc.isSkip output9794 = false := by
  rw [output9794_def]
  conv => lhs; cbv
  try rfl
theorem node9794_eq : Flapjack.WordAlloc.removeDeadStructural input9794 value4898 value1 value2 = (output9794, value5, value1) := by
  rw [input9794_def, output9794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9788_eq]
  dsimp only
  rw [node9793_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9794 input9787)).val
theorem input9795_def : input9795 = (.seq input9794 input9787) := by
  unfold input9795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9794 output9787)).val
theorem output9795_def : output9795 = (.seq output9794 output9787) := by
  unfold output9795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9795_skip : Flapjack.WordAlloc.isSkip output9795 = false := by
  rw [output9795_def]
  conv => lhs; cbv
  try rfl
theorem node9795_eq : Flapjack.WordAlloc.removeDeadStructural input9795 value4896 value1 value2 = (output9795, value5, value1) := by
  rw [input9795_def, output9795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9787_eq]
  dsimp only
  rw [node9794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4902 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9177 (Flapjack.WordLangAddr.addr 9181 0#64)))).val
theorem input9796_def : input9796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9177 (Flapjack.WordLangAddr.addr 9181 0#64))) := by
  unfold input9796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9177 (Flapjack.WordLangAddr.addr 9181 0#64)))).val
theorem output9796_def : output9796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9177 (Flapjack.WordLangAddr.addr 9181 0#64))) := by
  unfold output9796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9796_skip : Flapjack.WordAlloc.isSkip output9796 = false := by
  rw [output9796_def]
  conv => lhs; cbv
  try rfl
theorem node9796_eq : Flapjack.WordAlloc.removeDeadStructural input9796 value5 value1 value2 = (output9796, value4902, value1) := by
  rw [input9796_def, output9796_def]
  try (conv => lhs; cbv)
  try rfl

def value4903 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9181, 9169)])).val
theorem input9797_def : input9797 = (Flapjack.WordLangProgHOL.move 0 [(9181, 9169)]) := by
  unfold input9797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9181, 9169)])).val
theorem output9797_def : output9797 = (Flapjack.WordLangProgHOL.move 0 [(9181, 9169)]) := by
  unfold output9797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9797_skip : Flapjack.WordAlloc.isSkip output9797 = false := by
  rw [output9797_def]
  conv => lhs; cbv
  try rfl
theorem node9797_eq : Flapjack.WordAlloc.removeDeadStructural input9797 value4902 value1 value2 = (output9797, value4903, value1) := by
  rw [input9797_def, output9797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9797 input9796)).val
theorem input9798_def : input9798 = (.seq input9797 input9796) := by
  unfold input9798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9797 output9796)).val
theorem output9798_def : output9798 = (.seq output9797 output9796) := by
  unfold output9798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9798_skip : Flapjack.WordAlloc.isSkip output9798 = false := by
  rw [output9798_def]
  conv => lhs; cbv
  try rfl
theorem node9798_eq : Flapjack.WordAlloc.removeDeadStructural input9798 value5 value1 value2 = (output9798, value4903, value1) := by
  rw [input9798_def, output9798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9796_eq]
  dsimp only
  rw [node9797_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4904 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9177 967946631563726121#64))).val
theorem input9799_def : input9799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9177 967946631563726121#64)) := by
  unfold input9799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9177 967946631563726121#64))).val
theorem output9799_def : output9799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9177 967946631563726121#64)) := by
  unfold output9799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9799_skip : Flapjack.WordAlloc.isSkip output9799 = false := by
  rw [output9799_def]
  conv => lhs; cbv
  try rfl
theorem node9799_eq : Flapjack.WordAlloc.removeDeadStructural input9799 value4903 value1 value2 = (output9799, value4904, value1) := by
  rw [input9799_def, output9799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9173 967946631563726121#64))).val
theorem input9800_def : input9800 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9173 967946631563726121#64)) := by
  unfold input9800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9800_def : output9800 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9800_skip : Flapjack.WordAlloc.isSkip output9800 = true := by
  rw [output9800_def]
  conv => lhs; cbv
  try rfl
theorem node9800_eq : Flapjack.WordAlloc.removeDeadStructural input9800 value4904 value1 value2 = (output9800, value4904, value1) := by
  rw [input9800_def, output9800_def]
  try (conv => lhs; cbv)
  try rfl

def value4905 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9169 9161 (Flapjack.WordRegImm.reg 9165))))).val
theorem input9801_def : input9801 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9169 9161 (Flapjack.WordRegImm.reg 9165)))) := by
  unfold input9801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9169 9161 (Flapjack.WordRegImm.reg 9165))))).val
theorem output9801_def : output9801 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9169 9161 (Flapjack.WordRegImm.reg 9165)))) := by
  unfold output9801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9801_skip : Flapjack.WordAlloc.isSkip output9801 = false := by
  rw [output9801_def]
  conv => lhs; cbv
  try rfl
theorem node9801_eq : Flapjack.WordAlloc.removeDeadStructural input9801 value4904 value1 value2 = (output9801, value4905, value1) := by
  rw [input9801_def, output9801_def]
  try (conv => lhs; cbv)
  try rfl

def value4906 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9165 2232#64))).val
theorem input9802_def : input9802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9165 2232#64)) := by
  unfold input9802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9165 2232#64))).val
theorem output9802_def : output9802 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9165 2232#64)) := by
  unfold output9802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9802_skip : Flapjack.WordAlloc.isSkip output9802 = false := by
  rw [output9802_def]
  conv => lhs; cbv
  try rfl
theorem node9802_eq : Flapjack.WordAlloc.removeDeadStructural input9802 value4905 value1 value2 = (output9802, value4906, value1) := by
  rw [input9802_def, output9802_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9802 input9801)).val
theorem input9803_def : input9803 = (.seq input9802 input9801) := by
  unfold input9803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9802 output9801)).val
theorem output9803_def : output9803 = (.seq output9802 output9801) := by
  unfold output9803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9803_skip : Flapjack.WordAlloc.isSkip output9803 = false := by
  rw [output9803_def]
  conv => lhs; cbv
  try rfl
theorem node9803_eq : Flapjack.WordAlloc.removeDeadStructural input9803 value4904 value1 value2 = (output9803, value4906, value1) := by
  rw [input9803_def, output9803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9801_eq]
  dsimp only
  rw [node9802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4907 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9161 (Flapjack.WordLangAddr.addr 9157 18446744073709551104#64)))).val
theorem input9804_def : input9804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9161 (Flapjack.WordLangAddr.addr 9157 18446744073709551104#64))) := by
  unfold input9804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9161 (Flapjack.WordLangAddr.addr 9157 18446744073709551104#64)))).val
theorem output9804_def : output9804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9161 (Flapjack.WordLangAddr.addr 9157 18446744073709551104#64))) := by
  unfold output9804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9804_skip : Flapjack.WordAlloc.isSkip output9804 = false := by
  rw [output9804_def]
  conv => lhs; cbv
  try rfl
theorem node9804_eq : Flapjack.WordAlloc.removeDeadStructural input9804 value4906 value1 value2 = (output9804, value4907, value1) := by
  rw [input9804_def, output9804_def]
  try (conv => lhs; cbv)
  try rfl

def value4908 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9157 9153)).val
theorem input9805_def : input9805 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9157 9153) := by
  unfold input9805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9157 9153)).val
theorem output9805_def : output9805 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9157 9153) := by
  unfold output9805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9805_skip : Flapjack.WordAlloc.isSkip output9805 = false := by
  rw [output9805_def]
  conv => lhs; cbv
  try rfl
theorem node9805_eq : Flapjack.WordAlloc.removeDeadStructural input9805 value4907 value1 value2 = (output9805, value4908, value1) := by
  rw [input9805_def, output9805_def]
  try (conv => lhs; cbv)
  try rfl

def value4909 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9153 9149 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9806_def : input9806 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9153 9149 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9153 9149 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9806_def : output9806 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9153 9149 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9806_skip : Flapjack.WordAlloc.isSkip output9806 = false := by
  rw [output9806_def]
  conv => lhs; cbv
  try rfl
theorem node9806_eq : Flapjack.WordAlloc.removeDeadStructural input9806 value4908 value1 value2 = (output9806, value4909, value1) := by
  rw [input9806_def, output9806_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9149 Flapjack.WordStore.heapLength)).val
theorem input9807_def : input9807 = (Flapjack.WordLangProgHOL.get 9149 Flapjack.WordStore.heapLength) := by
  unfold input9807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9149 Flapjack.WordStore.heapLength)).val
theorem output9807_def : output9807 = (Flapjack.WordLangProgHOL.get 9149 Flapjack.WordStore.heapLength) := by
  unfold output9807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9807_skip : Flapjack.WordAlloc.isSkip output9807 = false := by
  rw [output9807_def]
  conv => lhs; cbv
  try rfl
theorem node9807_eq : Flapjack.WordAlloc.removeDeadStructural input9807 value4909 value1 value2 = (output9807, value5, value1) := by
  rw [input9807_def, output9807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9807 input9806)).val
theorem input9808_def : input9808 = (.seq input9807 input9806) := by
  unfold input9808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9807 output9806)).val
theorem output9808_def : output9808 = (.seq output9807 output9806) := by
  unfold output9808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9808_skip : Flapjack.WordAlloc.isSkip output9808 = false := by
  rw [output9808_def]
  conv => lhs; cbv
  try rfl
theorem node9808_eq : Flapjack.WordAlloc.removeDeadStructural input9808 value4908 value1 value2 = (output9808, value5, value1) := by
  rw [input9808_def, output9808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9806_eq]
  dsimp only
  rw [node9807_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9808 input9805)).val
theorem input9809_def : input9809 = (.seq input9808 input9805) := by
  unfold input9809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9808 output9805)).val
theorem output9809_def : output9809 = (.seq output9808 output9805) := by
  unfold output9809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9809_skip : Flapjack.WordAlloc.isSkip output9809 = false := by
  rw [output9809_def]
  conv => lhs; cbv
  try rfl
theorem node9809_eq : Flapjack.WordAlloc.removeDeadStructural input9809 value4907 value1 value2 = (output9809, value5, value1) := by
  rw [input9809_def, output9809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9805_eq]
  dsimp only
  rw [node9808_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9809 input9804)).val
theorem input9810_def : input9810 = (.seq input9809 input9804) := by
  unfold input9810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9809 output9804)).val
theorem output9810_def : output9810 = (.seq output9809 output9804) := by
  unfold output9810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9810_skip : Flapjack.WordAlloc.isSkip output9810 = false := by
  rw [output9810_def]
  conv => lhs; cbv
  try rfl
theorem node9810_eq : Flapjack.WordAlloc.removeDeadStructural input9810 value4906 value1 value2 = (output9810, value5, value1) := by
  rw [input9810_def, output9810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9804_eq]
  dsimp only
  rw [node9809_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9810 input9803)).val
theorem input9811_def : input9811 = (.seq input9810 input9803) := by
  unfold input9811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9810 output9803)).val
theorem output9811_def : output9811 = (.seq output9810 output9803) := by
  unfold output9811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9811_skip : Flapjack.WordAlloc.isSkip output9811 = false := by
  rw [output9811_def]
  conv => lhs; cbv
  try rfl
theorem node9811_eq : Flapjack.WordAlloc.removeDeadStructural input9811 value4904 value1 value2 = (output9811, value5, value1) := by
  rw [input9811_def, output9811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9803_eq]
  dsimp only
  rw [node9810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4910 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9141 (Flapjack.WordLangAddr.addr 9145 0#64)))).val
theorem input9812_def : input9812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9141 (Flapjack.WordLangAddr.addr 9145 0#64))) := by
  unfold input9812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9141 (Flapjack.WordLangAddr.addr 9145 0#64)))).val
theorem output9812_def : output9812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9141 (Flapjack.WordLangAddr.addr 9145 0#64))) := by
  unfold output9812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9812_skip : Flapjack.WordAlloc.isSkip output9812 = false := by
  rw [output9812_def]
  conv => lhs; cbv
  try rfl
theorem node9812_eq : Flapjack.WordAlloc.removeDeadStructural input9812 value5 value1 value2 = (output9812, value4910, value1) := by
  rw [input9812_def, output9812_def]
  try (conv => lhs; cbv)
  try rfl

def value4911 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9145, 9133)])).val
theorem input9813_def : input9813 = (Flapjack.WordLangProgHOL.move 0 [(9145, 9133)]) := by
  unfold input9813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9145, 9133)])).val
theorem output9813_def : output9813 = (Flapjack.WordLangProgHOL.move 0 [(9145, 9133)]) := by
  unfold output9813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9813_skip : Flapjack.WordAlloc.isSkip output9813 = false := by
  rw [output9813_def]
  conv => lhs; cbv
  try rfl
theorem node9813_eq : Flapjack.WordAlloc.removeDeadStructural input9813 value4910 value1 value2 = (output9813, value4911, value1) := by
  rw [input9813_def, output9813_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9813 input9812)).val
theorem input9814_def : input9814 = (.seq input9813 input9812) := by
  unfold input9814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9813 output9812)).val
theorem output9814_def : output9814 = (.seq output9813 output9812) := by
  unfold output9814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9814_skip : Flapjack.WordAlloc.isSkip output9814 = false := by
  rw [output9814_def]
  conv => lhs; cbv
  try rfl
theorem node9814_eq : Flapjack.WordAlloc.removeDeadStructural input9814 value5 value1 value2 = (output9814, value4911, value1) := by
  rw [input9814_def, output9814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9812_eq]
  dsimp only
  rw [node9813_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4912 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9141 7653628713030275775#64))).val
theorem input9815_def : input9815 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9141 7653628713030275775#64)) := by
  unfold input9815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9141 7653628713030275775#64))).val
theorem output9815_def : output9815 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9141 7653628713030275775#64)) := by
  unfold output9815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9815_skip : Flapjack.WordAlloc.isSkip output9815 = false := by
  rw [output9815_def]
  conv => lhs; cbv
  try rfl
theorem node9815_eq : Flapjack.WordAlloc.removeDeadStructural input9815 value4911 value1 value2 = (output9815, value4912, value1) := by
  rw [input9815_def, output9815_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9137 7653628713030275775#64))).val
theorem input9816_def : input9816 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9137 7653628713030275775#64)) := by
  unfold input9816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9816_def : output9816 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9816_skip : Flapjack.WordAlloc.isSkip output9816 = true := by
  rw [output9816_def]
  conv => lhs; cbv
  try rfl
theorem node9816_eq : Flapjack.WordAlloc.removeDeadStructural input9816 value4912 value1 value2 = (output9816, value4912, value1) := by
  rw [input9816_def, output9816_def]
  try (conv => lhs; cbv)
  try rfl

def value4913 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9133 9125 (Flapjack.WordRegImm.reg 9129))))).val
theorem input9817_def : input9817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9133 9125 (Flapjack.WordRegImm.reg 9129)))) := by
  unfold input9817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9133 9125 (Flapjack.WordRegImm.reg 9129))))).val
theorem output9817_def : output9817 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9133 9125 (Flapjack.WordRegImm.reg 9129)))) := by
  unfold output9817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9817_skip : Flapjack.WordAlloc.isSkip output9817 = false := by
  rw [output9817_def]
  conv => lhs; cbv
  try rfl
theorem node9817_eq : Flapjack.WordAlloc.removeDeadStructural input9817 value4912 value1 value2 = (output9817, value4913, value1) := by
  rw [input9817_def, output9817_def]
  try (conv => lhs; cbv)
  try rfl

def value4914 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9129 2224#64))).val
theorem input9818_def : input9818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9129 2224#64)) := by
  unfold input9818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9129 2224#64))).val
theorem output9818_def : output9818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9129 2224#64)) := by
  unfold output9818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9818_skip : Flapjack.WordAlloc.isSkip output9818 = false := by
  rw [output9818_def]
  conv => lhs; cbv
  try rfl
theorem node9818_eq : Flapjack.WordAlloc.removeDeadStructural input9818 value4913 value1 value2 = (output9818, value4914, value1) := by
  rw [input9818_def, output9818_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9818 input9817)).val
theorem input9819_def : input9819 = (.seq input9818 input9817) := by
  unfold input9819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9818 output9817)).val
theorem output9819_def : output9819 = (.seq output9818 output9817) := by
  unfold output9819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9819_skip : Flapjack.WordAlloc.isSkip output9819 = false := by
  rw [output9819_def]
  conv => lhs; cbv
  try rfl
theorem node9819_eq : Flapjack.WordAlloc.removeDeadStructural input9819 value4912 value1 value2 = (output9819, value4914, value1) := by
  rw [input9819_def, output9819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9817_eq]
  dsimp only
  rw [node9818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4915 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9125 (Flapjack.WordLangAddr.addr 9121 18446744073709551104#64)))).val
theorem input9820_def : input9820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9125 (Flapjack.WordLangAddr.addr 9121 18446744073709551104#64))) := by
  unfold input9820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9125 (Flapjack.WordLangAddr.addr 9121 18446744073709551104#64)))).val
theorem output9820_def : output9820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9125 (Flapjack.WordLangAddr.addr 9121 18446744073709551104#64))) := by
  unfold output9820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9820_skip : Flapjack.WordAlloc.isSkip output9820 = false := by
  rw [output9820_def]
  conv => lhs; cbv
  try rfl
theorem node9820_eq : Flapjack.WordAlloc.removeDeadStructural input9820 value4914 value1 value2 = (output9820, value4915, value1) := by
  rw [input9820_def, output9820_def]
  try (conv => lhs; cbv)
  try rfl

def value4916 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9121 9117)).val
theorem input9821_def : input9821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9121 9117) := by
  unfold input9821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9121 9117)).val
theorem output9821_def : output9821 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9121 9117) := by
  unfold output9821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9821_skip : Flapjack.WordAlloc.isSkip output9821 = false := by
  rw [output9821_def]
  conv => lhs; cbv
  try rfl
theorem node9821_eq : Flapjack.WordAlloc.removeDeadStructural input9821 value4915 value1 value2 = (output9821, value4916, value1) := by
  rw [input9821_def, output9821_def]
  try (conv => lhs; cbv)
  try rfl

def value4917 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9117 9113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9822_def : input9822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9117 9113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9117 9113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9822_def : output9822 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9117 9113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9822_skip : Flapjack.WordAlloc.isSkip output9822 = false := by
  rw [output9822_def]
  conv => lhs; cbv
  try rfl
theorem node9822_eq : Flapjack.WordAlloc.removeDeadStructural input9822 value4916 value1 value2 = (output9822, value4917, value1) := by
  rw [input9822_def, output9822_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9113 Flapjack.WordStore.heapLength)).val
theorem input9823_def : input9823 = (Flapjack.WordLangProgHOL.get 9113 Flapjack.WordStore.heapLength) := by
  unfold input9823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9113 Flapjack.WordStore.heapLength)).val
theorem output9823_def : output9823 = (Flapjack.WordLangProgHOL.get 9113 Flapjack.WordStore.heapLength) := by
  unfold output9823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9823_skip : Flapjack.WordAlloc.isSkip output9823 = false := by
  rw [output9823_def]
  conv => lhs; cbv
  try rfl
theorem node9823_eq : Flapjack.WordAlloc.removeDeadStructural input9823 value4917 value1 value2 = (output9823, value5, value1) := by
  rw [input9823_def, output9823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9823 input9822)).val
theorem input9824_def : input9824 = (.seq input9823 input9822) := by
  unfold input9824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9823 output9822)).val
theorem output9824_def : output9824 = (.seq output9823 output9822) := by
  unfold output9824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9824_skip : Flapjack.WordAlloc.isSkip output9824 = false := by
  rw [output9824_def]
  conv => lhs; cbv
  try rfl
theorem node9824_eq : Flapjack.WordAlloc.removeDeadStructural input9824 value4916 value1 value2 = (output9824, value5, value1) := by
  rw [input9824_def, output9824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9822_eq]
  dsimp only
  rw [node9823_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9824 input9821)).val
theorem input9825_def : input9825 = (.seq input9824 input9821) := by
  unfold input9825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9824 output9821)).val
theorem output9825_def : output9825 = (.seq output9824 output9821) := by
  unfold output9825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9825_skip : Flapjack.WordAlloc.isSkip output9825 = false := by
  rw [output9825_def]
  conv => lhs; cbv
  try rfl
theorem node9825_eq : Flapjack.WordAlloc.removeDeadStructural input9825 value4915 value1 value2 = (output9825, value5, value1) := by
  rw [input9825_def, output9825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9821_eq]
  dsimp only
  rw [node9824_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9825 input9820)).val
theorem input9826_def : input9826 = (.seq input9825 input9820) := by
  unfold input9826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9825 output9820)).val
theorem output9826_def : output9826 = (.seq output9825 output9820) := by
  unfold output9826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9826_skip : Flapjack.WordAlloc.isSkip output9826 = false := by
  rw [output9826_def]
  conv => lhs; cbv
  try rfl
theorem node9826_eq : Flapjack.WordAlloc.removeDeadStructural input9826 value4914 value1 value2 = (output9826, value5, value1) := by
  rw [input9826_def, output9826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9820_eq]
  dsimp only
  rw [node9825_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9826 input9819)).val
theorem input9827_def : input9827 = (.seq input9826 input9819) := by
  unfold input9827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9826 output9819)).val
theorem output9827_def : output9827 = (.seq output9826 output9819) := by
  unfold output9827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9827_skip : Flapjack.WordAlloc.isSkip output9827 = false := by
  rw [output9827_def]
  conv => lhs; cbv
  try rfl
theorem node9827_eq : Flapjack.WordAlloc.removeDeadStructural input9827 value4912 value1 value2 = (output9827, value5, value1) := by
  rw [input9827_def, output9827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9819_eq]
  dsimp only
  rw [node9826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4918 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9105 (Flapjack.WordLangAddr.addr 9109 0#64)))).val
theorem input9828_def : input9828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9105 (Flapjack.WordLangAddr.addr 9109 0#64))) := by
  unfold input9828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9105 (Flapjack.WordLangAddr.addr 9109 0#64)))).val
theorem output9828_def : output9828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9105 (Flapjack.WordLangAddr.addr 9109 0#64))) := by
  unfold output9828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9828_skip : Flapjack.WordAlloc.isSkip output9828 = false := by
  rw [output9828_def]
  conv => lhs; cbv
  try rfl
theorem node9828_eq : Flapjack.WordAlloc.removeDeadStructural input9828 value5 value1 value2 = (output9828, value4918, value1) := by
  rw [input9828_def, output9828_def]
  try (conv => lhs; cbv)
  try rfl

def value4919 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9109, 9097)])).val
theorem input9829_def : input9829 = (Flapjack.WordLangProgHOL.move 0 [(9109, 9097)]) := by
  unfold input9829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9109, 9097)])).val
theorem output9829_def : output9829 = (Flapjack.WordLangProgHOL.move 0 [(9109, 9097)]) := by
  unfold output9829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9829_skip : Flapjack.WordAlloc.isSkip output9829 = false := by
  rw [output9829_def]
  conv => lhs; cbv
  try rfl
theorem node9829_eq : Flapjack.WordAlloc.removeDeadStructural input9829 value4918 value1 value2 = (output9829, value4919, value1) := by
  rw [input9829_def, output9829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9829 input9828)).val
theorem input9830_def : input9830 = (.seq input9829 input9828) := by
  unfold input9830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9829 output9828)).val
theorem output9830_def : output9830 = (.seq output9829 output9828) := by
  unfold output9830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9830_skip : Flapjack.WordAlloc.isSkip output9830 = false := by
  rw [output9830_def]
  conv => lhs; cbv
  try rfl
theorem node9830_eq : Flapjack.WordAlloc.removeDeadStructural input9830 value5 value1 value2 = (output9830, value4919, value1) := by
  rw [input9830_def, output9830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9828_eq]
  dsimp only
  rw [node9829_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4920 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9105 12760252618317466849#64))).val
theorem input9831_def : input9831 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9105 12760252618317466849#64)) := by
  unfold input9831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9105 12760252618317466849#64))).val
theorem output9831_def : output9831 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9105 12760252618317466849#64)) := by
  unfold output9831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9831_skip : Flapjack.WordAlloc.isSkip output9831 = false := by
  rw [output9831_def]
  conv => lhs; cbv
  try rfl
theorem node9831_eq : Flapjack.WordAlloc.removeDeadStructural input9831 value4919 value1 value2 = (output9831, value4920, value1) := by
  rw [input9831_def, output9831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9101 12760252618317466849#64))).val
theorem input9832_def : input9832 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9101 12760252618317466849#64)) := by
  unfold input9832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9832_def : output9832 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9832_skip : Flapjack.WordAlloc.isSkip output9832 = true := by
  rw [output9832_def]
  conv => lhs; cbv
  try rfl
theorem node9832_eq : Flapjack.WordAlloc.removeDeadStructural input9832 value4920 value1 value2 = (output9832, value4920, value1) := by
  rw [input9832_def, output9832_def]
  try (conv => lhs; cbv)
  try rfl

def value4921 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9097 9089 (Flapjack.WordRegImm.reg 9093))))).val
theorem input9833_def : input9833 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9097 9089 (Flapjack.WordRegImm.reg 9093)))) := by
  unfold input9833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9097 9089 (Flapjack.WordRegImm.reg 9093))))).val
theorem output9833_def : output9833 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9097 9089 (Flapjack.WordRegImm.reg 9093)))) := by
  unfold output9833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9833_skip : Flapjack.WordAlloc.isSkip output9833 = false := by
  rw [output9833_def]
  conv => lhs; cbv
  try rfl
theorem node9833_eq : Flapjack.WordAlloc.removeDeadStructural input9833 value4920 value1 value2 = (output9833, value4921, value1) := by
  rw [input9833_def, output9833_def]
  try (conv => lhs; cbv)
  try rfl

def value4922 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9093 2216#64))).val
theorem input9834_def : input9834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9093 2216#64)) := by
  unfold input9834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9093 2216#64))).val
theorem output9834_def : output9834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9093 2216#64)) := by
  unfold output9834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9834_skip : Flapjack.WordAlloc.isSkip output9834 = false := by
  rw [output9834_def]
  conv => lhs; cbv
  try rfl
theorem node9834_eq : Flapjack.WordAlloc.removeDeadStructural input9834 value4921 value1 value2 = (output9834, value4922, value1) := by
  rw [input9834_def, output9834_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9834 input9833)).val
theorem input9835_def : input9835 = (.seq input9834 input9833) := by
  unfold input9835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9834 output9833)).val
theorem output9835_def : output9835 = (.seq output9834 output9833) := by
  unfold output9835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9835_skip : Flapjack.WordAlloc.isSkip output9835 = false := by
  rw [output9835_def]
  conv => lhs; cbv
  try rfl
theorem node9835_eq : Flapjack.WordAlloc.removeDeadStructural input9835 value4920 value1 value2 = (output9835, value4922, value1) := by
  rw [input9835_def, output9835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9833_eq]
  dsimp only
  rw [node9834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4923 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9089 (Flapjack.WordLangAddr.addr 9085 18446744073709551104#64)))).val
theorem input9836_def : input9836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9089 (Flapjack.WordLangAddr.addr 9085 18446744073709551104#64))) := by
  unfold input9836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9089 (Flapjack.WordLangAddr.addr 9085 18446744073709551104#64)))).val
theorem output9836_def : output9836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9089 (Flapjack.WordLangAddr.addr 9085 18446744073709551104#64))) := by
  unfold output9836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9836_skip : Flapjack.WordAlloc.isSkip output9836 = false := by
  rw [output9836_def]
  conv => lhs; cbv
  try rfl
theorem node9836_eq : Flapjack.WordAlloc.removeDeadStructural input9836 value4922 value1 value2 = (output9836, value4923, value1) := by
  rw [input9836_def, output9836_def]
  try (conv => lhs; cbv)
  try rfl

def value4924 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9085 9081)).val
theorem input9837_def : input9837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9085 9081) := by
  unfold input9837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9085 9081)).val
theorem output9837_def : output9837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9085 9081) := by
  unfold output9837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9837_skip : Flapjack.WordAlloc.isSkip output9837 = false := by
  rw [output9837_def]
  conv => lhs; cbv
  try rfl
theorem node9837_eq : Flapjack.WordAlloc.removeDeadStructural input9837 value4923 value1 value2 = (output9837, value4924, value1) := by
  rw [input9837_def, output9837_def]
  try (conv => lhs; cbv)
  try rfl

def value4925 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9081 9077 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9838_def : input9838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9081 9077 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9081 9077 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9838_def : output9838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9081 9077 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9838_skip : Flapjack.WordAlloc.isSkip output9838 = false := by
  rw [output9838_def]
  conv => lhs; cbv
  try rfl
theorem node9838_eq : Flapjack.WordAlloc.removeDeadStructural input9838 value4924 value1 value2 = (output9838, value4925, value1) := by
  rw [input9838_def, output9838_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9077 Flapjack.WordStore.heapLength)).val
theorem input9839_def : input9839 = (Flapjack.WordLangProgHOL.get 9077 Flapjack.WordStore.heapLength) := by
  unfold input9839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9077 Flapjack.WordStore.heapLength)).val
theorem output9839_def : output9839 = (Flapjack.WordLangProgHOL.get 9077 Flapjack.WordStore.heapLength) := by
  unfold output9839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9839_skip : Flapjack.WordAlloc.isSkip output9839 = false := by
  rw [output9839_def]
  conv => lhs; cbv
  try rfl
theorem node9839_eq : Flapjack.WordAlloc.removeDeadStructural input9839 value4925 value1 value2 = (output9839, value5, value1) := by
  rw [input9839_def, output9839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9839 input9838)).val
theorem input9840_def : input9840 = (.seq input9839 input9838) := by
  unfold input9840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9839 output9838)).val
theorem output9840_def : output9840 = (.seq output9839 output9838) := by
  unfold output9840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9840_skip : Flapjack.WordAlloc.isSkip output9840 = false := by
  rw [output9840_def]
  conv => lhs; cbv
  try rfl
theorem node9840_eq : Flapjack.WordAlloc.removeDeadStructural input9840 value4924 value1 value2 = (output9840, value5, value1) := by
  rw [input9840_def, output9840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9838_eq]
  dsimp only
  rw [node9839_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9840 input9837)).val
theorem input9841_def : input9841 = (.seq input9840 input9837) := by
  unfold input9841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9840 output9837)).val
theorem output9841_def : output9841 = (.seq output9840 output9837) := by
  unfold output9841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9841_skip : Flapjack.WordAlloc.isSkip output9841 = false := by
  rw [output9841_def]
  conv => lhs; cbv
  try rfl
theorem node9841_eq : Flapjack.WordAlloc.removeDeadStructural input9841 value4923 value1 value2 = (output9841, value5, value1) := by
  rw [input9841_def, output9841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9837_eq]
  dsimp only
  rw [node9840_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9841 input9836)).val
theorem input9842_def : input9842 = (.seq input9841 input9836) := by
  unfold input9842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9841 output9836)).val
theorem output9842_def : output9842 = (.seq output9841 output9836) := by
  unfold output9842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9842_skip : Flapjack.WordAlloc.isSkip output9842 = false := by
  rw [output9842_def]
  conv => lhs; cbv
  try rfl
theorem node9842_eq : Flapjack.WordAlloc.removeDeadStructural input9842 value4922 value1 value2 = (output9842, value5, value1) := by
  rw [input9842_def, output9842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9836_eq]
  dsimp only
  rw [node9841_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9842 input9835)).val
theorem input9843_def : input9843 = (.seq input9842 input9835) := by
  unfold input9843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9842 output9835)).val
theorem output9843_def : output9843 = (.seq output9842 output9835) := by
  unfold output9843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9843_skip : Flapjack.WordAlloc.isSkip output9843 = false := by
  rw [output9843_def]
  conv => lhs; cbv
  try rfl
theorem node9843_eq : Flapjack.WordAlloc.removeDeadStructural input9843 value4920 value1 value2 = (output9843, value5, value1) := by
  rw [input9843_def, output9843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9835_eq]
  dsimp only
  rw [node9842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4926 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9069 (Flapjack.WordLangAddr.addr 9073 0#64)))).val
theorem input9844_def : input9844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9069 (Flapjack.WordLangAddr.addr 9073 0#64))) := by
  unfold input9844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9069 (Flapjack.WordLangAddr.addr 9073 0#64)))).val
theorem output9844_def : output9844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9069 (Flapjack.WordLangAddr.addr 9073 0#64))) := by
  unfold output9844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9844_skip : Flapjack.WordAlloc.isSkip output9844 = false := by
  rw [output9844_def]
  conv => lhs; cbv
  try rfl
theorem node9844_eq : Flapjack.WordAlloc.removeDeadStructural input9844 value5 value1 value2 = (output9844, value4926, value1) := by
  rw [input9844_def, output9844_def]
  try (conv => lhs; cbv)
  try rfl

def value4927 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9073, 9061)])).val
theorem input9845_def : input9845 = (Flapjack.WordLangProgHOL.move 0 [(9073, 9061)]) := by
  unfold input9845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9073, 9061)])).val
theorem output9845_def : output9845 = (Flapjack.WordLangProgHOL.move 0 [(9073, 9061)]) := by
  unfold output9845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9845_skip : Flapjack.WordAlloc.isSkip output9845 = false := by
  rw [output9845_def]
  conv => lhs; cbv
  try rfl
theorem node9845_eq : Flapjack.WordAlloc.removeDeadStructural input9845 value4926 value1 value2 = (output9845, value4927, value1) := by
  rw [input9845_def, output9845_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9845 input9844)).val
theorem input9846_def : input9846 = (.seq input9845 input9844) := by
  unfold input9846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9845 output9844)).val
theorem output9846_def : output9846 = (.seq output9845 output9844) := by
  unfold output9846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9846_skip : Flapjack.WordAlloc.isSkip output9846 = false := by
  rw [output9846_def]
  conv => lhs; cbv
  try rfl
theorem node9846_eq : Flapjack.WordAlloc.removeDeadStructural input9846 value5 value1 value2 = (output9846, value4927, value1) := by
  rw [input9846_def, output9846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9844_eq]
  dsimp only
  rw [node9845_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4928 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9069 10378793938173061930#64))).val
theorem input9847_def : input9847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9069 10378793938173061930#64)) := by
  unfold input9847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9069 10378793938173061930#64))).val
theorem output9847_def : output9847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9069 10378793938173061930#64)) := by
  unfold output9847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9847_skip : Flapjack.WordAlloc.isSkip output9847 = false := by
  rw [output9847_def]
  conv => lhs; cbv
  try rfl
theorem node9847_eq : Flapjack.WordAlloc.removeDeadStructural input9847 value4927 value1 value2 = (output9847, value4928, value1) := by
  rw [input9847_def, output9847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9065 10378793938173061930#64))).val
theorem input9848_def : input9848 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9065 10378793938173061930#64)) := by
  unfold input9848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9848_def : output9848 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9848_skip : Flapjack.WordAlloc.isSkip output9848 = true := by
  rw [output9848_def]
  conv => lhs; cbv
  try rfl
theorem node9848_eq : Flapjack.WordAlloc.removeDeadStructural input9848 value4928 value1 value2 = (output9848, value4928, value1) := by
  rw [input9848_def, output9848_def]
  try (conv => lhs; cbv)
  try rfl

def value4929 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9061 9053 (Flapjack.WordRegImm.reg 9057))))).val
theorem input9849_def : input9849 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9061 9053 (Flapjack.WordRegImm.reg 9057)))) := by
  unfold input9849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9061 9053 (Flapjack.WordRegImm.reg 9057))))).val
theorem output9849_def : output9849 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9061 9053 (Flapjack.WordRegImm.reg 9057)))) := by
  unfold output9849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9849_skip : Flapjack.WordAlloc.isSkip output9849 = false := by
  rw [output9849_def]
  conv => lhs; cbv
  try rfl
theorem node9849_eq : Flapjack.WordAlloc.removeDeadStructural input9849 value4928 value1 value2 = (output9849, value4929, value1) := by
  rw [input9849_def, output9849_def]
  try (conv => lhs; cbv)
  try rfl

def value4930 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9057 2208#64))).val
theorem input9850_def : input9850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9057 2208#64)) := by
  unfold input9850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9057 2208#64))).val
theorem output9850_def : output9850 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9057 2208#64)) := by
  unfold output9850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9850_skip : Flapjack.WordAlloc.isSkip output9850 = false := by
  rw [output9850_def]
  conv => lhs; cbv
  try rfl
theorem node9850_eq : Flapjack.WordAlloc.removeDeadStructural input9850 value4929 value1 value2 = (output9850, value4930, value1) := by
  rw [input9850_def, output9850_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9850 input9849)).val
theorem input9851_def : input9851 = (.seq input9850 input9849) := by
  unfold input9851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9850 output9849)).val
theorem output9851_def : output9851 = (.seq output9850 output9849) := by
  unfold output9851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9851_skip : Flapjack.WordAlloc.isSkip output9851 = false := by
  rw [output9851_def]
  conv => lhs; cbv
  try rfl
theorem node9851_eq : Flapjack.WordAlloc.removeDeadStructural input9851 value4928 value1 value2 = (output9851, value4930, value1) := by
  rw [input9851_def, output9851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9849_eq]
  dsimp only
  rw [node9850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4931 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9053 (Flapjack.WordLangAddr.addr 9049 18446744073709551104#64)))).val
theorem input9852_def : input9852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9053 (Flapjack.WordLangAddr.addr 9049 18446744073709551104#64))) := by
  unfold input9852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9053 (Flapjack.WordLangAddr.addr 9049 18446744073709551104#64)))).val
theorem output9852_def : output9852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9053 (Flapjack.WordLangAddr.addr 9049 18446744073709551104#64))) := by
  unfold output9852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9852_skip : Flapjack.WordAlloc.isSkip output9852 = false := by
  rw [output9852_def]
  conv => lhs; cbv
  try rfl
theorem node9852_eq : Flapjack.WordAlloc.removeDeadStructural input9852 value4930 value1 value2 = (output9852, value4931, value1) := by
  rw [input9852_def, output9852_def]
  try (conv => lhs; cbv)
  try rfl

def value4932 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9049 9045)).val
theorem input9853_def : input9853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9049 9045) := by
  unfold input9853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9049 9045)).val
theorem output9853_def : output9853 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9049 9045) := by
  unfold output9853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9853_skip : Flapjack.WordAlloc.isSkip output9853 = false := by
  rw [output9853_def]
  conv => lhs; cbv
  try rfl
theorem node9853_eq : Flapjack.WordAlloc.removeDeadStructural input9853 value4931 value1 value2 = (output9853, value4932, value1) := by
  rw [input9853_def, output9853_def]
  try (conv => lhs; cbv)
  try rfl

def value4933 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9045 9041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9854_def : input9854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9045 9041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9045 9041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9854_def : output9854 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9045 9041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9854_skip : Flapjack.WordAlloc.isSkip output9854 = false := by
  rw [output9854_def]
  conv => lhs; cbv
  try rfl
theorem node9854_eq : Flapjack.WordAlloc.removeDeadStructural input9854 value4932 value1 value2 = (output9854, value4933, value1) := by
  rw [input9854_def, output9854_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9041 Flapjack.WordStore.heapLength)).val
theorem input9855_def : input9855 = (Flapjack.WordLangProgHOL.get 9041 Flapjack.WordStore.heapLength) := by
  unfold input9855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9041 Flapjack.WordStore.heapLength)).val
theorem output9855_def : output9855 = (Flapjack.WordLangProgHOL.get 9041 Flapjack.WordStore.heapLength) := by
  unfold output9855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9855_skip : Flapjack.WordAlloc.isSkip output9855 = false := by
  rw [output9855_def]
  conv => lhs; cbv
  try rfl
theorem node9855_eq : Flapjack.WordAlloc.removeDeadStructural input9855 value4933 value1 value2 = (output9855, value5, value1) := by
  rw [input9855_def, output9855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9855 input9854)).val
theorem input9856_def : input9856 = (.seq input9855 input9854) := by
  unfold input9856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9855 output9854)).val
theorem output9856_def : output9856 = (.seq output9855 output9854) := by
  unfold output9856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9856_skip : Flapjack.WordAlloc.isSkip output9856 = false := by
  rw [output9856_def]
  conv => lhs; cbv
  try rfl
theorem node9856_eq : Flapjack.WordAlloc.removeDeadStructural input9856 value4932 value1 value2 = (output9856, value5, value1) := by
  rw [input9856_def, output9856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9854_eq]
  dsimp only
  rw [node9855_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9856 input9853)).val
theorem input9857_def : input9857 = (.seq input9856 input9853) := by
  unfold input9857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9856 output9853)).val
theorem output9857_def : output9857 = (.seq output9856 output9853) := by
  unfold output9857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9857_skip : Flapjack.WordAlloc.isSkip output9857 = false := by
  rw [output9857_def]
  conv => lhs; cbv
  try rfl
theorem node9857_eq : Flapjack.WordAlloc.removeDeadStructural input9857 value4931 value1 value2 = (output9857, value5, value1) := by
  rw [input9857_def, output9857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9853_eq]
  dsimp only
  rw [node9856_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9857 input9852)).val
theorem input9858_def : input9858 = (.seq input9857 input9852) := by
  unfold input9858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9857 output9852)).val
theorem output9858_def : output9858 = (.seq output9857 output9852) := by
  unfold output9858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9858_skip : Flapjack.WordAlloc.isSkip output9858 = false := by
  rw [output9858_def]
  conv => lhs; cbv
  try rfl
theorem node9858_eq : Flapjack.WordAlloc.removeDeadStructural input9858 value4930 value1 value2 = (output9858, value5, value1) := by
  rw [input9858_def, output9858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9852_eq]
  dsimp only
  rw [node9857_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9858 input9851)).val
theorem input9859_def : input9859 = (.seq input9858 input9851) := by
  unfold input9859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9858 output9851)).val
theorem output9859_def : output9859 = (.seq output9858 output9851) := by
  unfold output9859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9859_skip : Flapjack.WordAlloc.isSkip output9859 = false := by
  rw [output9859_def]
  conv => lhs; cbv
  try rfl
theorem node9859_eq : Flapjack.WordAlloc.removeDeadStructural input9859 value4928 value1 value2 = (output9859, value5, value1) := by
  rw [input9859_def, output9859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9851_eq]
  dsimp only
  rw [node9858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4934 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9033 (Flapjack.WordLangAddr.addr 9037 0#64)))).val
theorem input9860_def : input9860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9033 (Flapjack.WordLangAddr.addr 9037 0#64))) := by
  unfold input9860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9033 (Flapjack.WordLangAddr.addr 9037 0#64)))).val
theorem output9860_def : output9860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9033 (Flapjack.WordLangAddr.addr 9037 0#64))) := by
  unfold output9860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9860_skip : Flapjack.WordAlloc.isSkip output9860 = false := by
  rw [output9860_def]
  conv => lhs; cbv
  try rfl
theorem node9860_eq : Flapjack.WordAlloc.removeDeadStructural input9860 value5 value1 value2 = (output9860, value4934, value1) := by
  rw [input9860_def, output9860_def]
  try (conv => lhs; cbv)
  try rfl

def value4935 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9037, 9025)])).val
theorem input9861_def : input9861 = (Flapjack.WordLangProgHOL.move 0 [(9037, 9025)]) := by
  unfold input9861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9037, 9025)])).val
theorem output9861_def : output9861 = (Flapjack.WordLangProgHOL.move 0 [(9037, 9025)]) := by
  unfold output9861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9861_skip : Flapjack.WordAlloc.isSkip output9861 = false := by
  rw [output9861_def]
  conv => lhs; cbv
  try rfl
theorem node9861_eq : Flapjack.WordAlloc.removeDeadStructural input9861 value4934 value1 value2 = (output9861, value4935, value1) := by
  rw [input9861_def, output9861_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9861 input9860)).val
theorem input9862_def : input9862 = (.seq input9861 input9860) := by
  unfold input9862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9861 output9860)).val
theorem output9862_def : output9862 = (.seq output9861 output9860) := by
  unfold output9862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9862_skip : Flapjack.WordAlloc.isSkip output9862 = false := by
  rw [output9862_def]
  conv => lhs; cbv
  try rfl
theorem node9862_eq : Flapjack.WordAlloc.removeDeadStructural input9862 value5 value1 value2 = (output9862, value4935, value1) := by
  rw [input9862_def, output9862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9860_eq]
  dsimp only
  rw [node9861_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4936 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9033 10205808941053849290#64))).val
theorem input9863_def : input9863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9033 10205808941053849290#64)) := by
  unfold input9863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9033 10205808941053849290#64))).val
theorem output9863_def : output9863 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9033 10205808941053849290#64)) := by
  unfold output9863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9863_skip : Flapjack.WordAlloc.isSkip output9863 = false := by
  rw [output9863_def]
  conv => lhs; cbv
  try rfl
theorem node9863_eq : Flapjack.WordAlloc.removeDeadStructural input9863 value4935 value1 value2 = (output9863, value4936, value1) := by
  rw [input9863_def, output9863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9029 10205808941053849290#64))).val
theorem input9864_def : input9864 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9029 10205808941053849290#64)) := by
  unfold input9864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9864_def : output9864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9864_skip : Flapjack.WordAlloc.isSkip output9864 = true := by
  rw [output9864_def]
  conv => lhs; cbv
  try rfl
theorem node9864_eq : Flapjack.WordAlloc.removeDeadStructural input9864 value4936 value1 value2 = (output9864, value4936, value1) := by
  rw [input9864_def, output9864_def]
  try (conv => lhs; cbv)
  try rfl

def value4937 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9025 9017 (Flapjack.WordRegImm.reg 9021))))).val
theorem input9865_def : input9865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9025 9017 (Flapjack.WordRegImm.reg 9021)))) := by
  unfold input9865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9025 9017 (Flapjack.WordRegImm.reg 9021))))).val
theorem output9865_def : output9865 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9025 9017 (Flapjack.WordRegImm.reg 9021)))) := by
  unfold output9865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9865_skip : Flapjack.WordAlloc.isSkip output9865 = false := by
  rw [output9865_def]
  conv => lhs; cbv
  try rfl
theorem node9865_eq : Flapjack.WordAlloc.removeDeadStructural input9865 value4936 value1 value2 = (output9865, value4937, value1) := by
  rw [input9865_def, output9865_def]
  try (conv => lhs; cbv)
  try rfl

def value4938 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9021 2200#64))).val
theorem input9866_def : input9866 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9021 2200#64)) := by
  unfold input9866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9021 2200#64))).val
theorem output9866_def : output9866 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9021 2200#64)) := by
  unfold output9866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9866_skip : Flapjack.WordAlloc.isSkip output9866 = false := by
  rw [output9866_def]
  conv => lhs; cbv
  try rfl
theorem node9866_eq : Flapjack.WordAlloc.removeDeadStructural input9866 value4937 value1 value2 = (output9866, value4938, value1) := by
  rw [input9866_def, output9866_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9866 input9865)).val
theorem input9867_def : input9867 = (.seq input9866 input9865) := by
  unfold input9867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9866 output9865)).val
theorem output9867_def : output9867 = (.seq output9866 output9865) := by
  unfold output9867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9867_skip : Flapjack.WordAlloc.isSkip output9867 = false := by
  rw [output9867_def]
  conv => lhs; cbv
  try rfl
theorem node9867_eq : Flapjack.WordAlloc.removeDeadStructural input9867 value4936 value1 value2 = (output9867, value4938, value1) := by
  rw [input9867_def, output9867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9865_eq]
  dsimp only
  rw [node9866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4939 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9017 (Flapjack.WordLangAddr.addr 9013 18446744073709551104#64)))).val
theorem input9868_def : input9868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9017 (Flapjack.WordLangAddr.addr 9013 18446744073709551104#64))) := by
  unfold input9868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9017 (Flapjack.WordLangAddr.addr 9013 18446744073709551104#64)))).val
theorem output9868_def : output9868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9017 (Flapjack.WordLangAddr.addr 9013 18446744073709551104#64))) := by
  unfold output9868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9868_skip : Flapjack.WordAlloc.isSkip output9868 = false := by
  rw [output9868_def]
  conv => lhs; cbv
  try rfl
theorem node9868_eq : Flapjack.WordAlloc.removeDeadStructural input9868 value4938 value1 value2 = (output9868, value4939, value1) := by
  rw [input9868_def, output9868_def]
  try (conv => lhs; cbv)
  try rfl

def value4940 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9013 9009)).val
theorem input9869_def : input9869 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9013 9009) := by
  unfold input9869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9013 9009)).val
theorem output9869_def : output9869 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9013 9009) := by
  unfold output9869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9869_skip : Flapjack.WordAlloc.isSkip output9869 = false := by
  rw [output9869_def]
  conv => lhs; cbv
  try rfl
theorem node9869_eq : Flapjack.WordAlloc.removeDeadStructural input9869 value4939 value1 value2 = (output9869, value4940, value1) := by
  rw [input9869_def, output9869_def]
  try (conv => lhs; cbv)
  try rfl

def value4941 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9009 9005 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9870_def : input9870 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9009 9005 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9009 9005 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9870_def : output9870 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9009 9005 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9870_skip : Flapjack.WordAlloc.isSkip output9870 = false := by
  rw [output9870_def]
  conv => lhs; cbv
  try rfl
theorem node9870_eq : Flapjack.WordAlloc.removeDeadStructural input9870 value4940 value1 value2 = (output9870, value4941, value1) := by
  rw [input9870_def, output9870_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9005 Flapjack.WordStore.heapLength)).val
theorem input9871_def : input9871 = (Flapjack.WordLangProgHOL.get 9005 Flapjack.WordStore.heapLength) := by
  unfold input9871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9005 Flapjack.WordStore.heapLength)).val
theorem output9871_def : output9871 = (Flapjack.WordLangProgHOL.get 9005 Flapjack.WordStore.heapLength) := by
  unfold output9871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9871_skip : Flapjack.WordAlloc.isSkip output9871 = false := by
  rw [output9871_def]
  conv => lhs; cbv
  try rfl
theorem node9871_eq : Flapjack.WordAlloc.removeDeadStructural input9871 value4941 value1 value2 = (output9871, value5, value1) := by
  rw [input9871_def, output9871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9871 input9870)).val
theorem input9872_def : input9872 = (.seq input9871 input9870) := by
  unfold input9872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9871 output9870)).val
theorem output9872_def : output9872 = (.seq output9871 output9870) := by
  unfold output9872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9872_skip : Flapjack.WordAlloc.isSkip output9872 = false := by
  rw [output9872_def]
  conv => lhs; cbv
  try rfl
theorem node9872_eq : Flapjack.WordAlloc.removeDeadStructural input9872 value4940 value1 value2 = (output9872, value5, value1) := by
  rw [input9872_def, output9872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9870_eq]
  dsimp only
  rw [node9871_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9872 input9869)).val
theorem input9873_def : input9873 = (.seq input9872 input9869) := by
  unfold input9873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9872 output9869)).val
theorem output9873_def : output9873 = (.seq output9872 output9869) := by
  unfold output9873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9873_skip : Flapjack.WordAlloc.isSkip output9873 = false := by
  rw [output9873_def]
  conv => lhs; cbv
  try rfl
theorem node9873_eq : Flapjack.WordAlloc.removeDeadStructural input9873 value4939 value1 value2 = (output9873, value5, value1) := by
  rw [input9873_def, output9873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9869_eq]
  dsimp only
  rw [node9872_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9873 input9868)).val
theorem input9874_def : input9874 = (.seq input9873 input9868) := by
  unfold input9874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9873 output9868)).val
theorem output9874_def : output9874 = (.seq output9873 output9868) := by
  unfold output9874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9874_skip : Flapjack.WordAlloc.isSkip output9874 = false := by
  rw [output9874_def]
  conv => lhs; cbv
  try rfl
theorem node9874_eq : Flapjack.WordAlloc.removeDeadStructural input9874 value4938 value1 value2 = (output9874, value5, value1) := by
  rw [input9874_def, output9874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9868_eq]
  dsimp only
  rw [node9873_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9874 input9867)).val
theorem input9875_def : input9875 = (.seq input9874 input9867) := by
  unfold input9875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9874 output9867)).val
theorem output9875_def : output9875 = (.seq output9874 output9867) := by
  unfold output9875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9875_skip : Flapjack.WordAlloc.isSkip output9875 = false := by
  rw [output9875_def]
  conv => lhs; cbv
  try rfl
theorem node9875_eq : Flapjack.WordAlloc.removeDeadStructural input9875 value4936 value1 value2 = (output9875, value5, value1) := by
  rw [input9875_def, output9875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9867_eq]
  dsimp only
  rw [node9874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4942 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8997 (Flapjack.WordLangAddr.addr 9001 0#64)))).val
theorem input9876_def : input9876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8997 (Flapjack.WordLangAddr.addr 9001 0#64))) := by
  unfold input9876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8997 (Flapjack.WordLangAddr.addr 9001 0#64)))).val
theorem output9876_def : output9876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8997 (Flapjack.WordLangAddr.addr 9001 0#64))) := by
  unfold output9876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9876_skip : Flapjack.WordAlloc.isSkip output9876 = false := by
  rw [output9876_def]
  conv => lhs; cbv
  try rfl
theorem node9876_eq : Flapjack.WordAlloc.removeDeadStructural input9876 value5 value1 value2 = (output9876, value4942, value1) := by
  rw [input9876_def, output9876_def]
  try (conv => lhs; cbv)
  try rfl

def value4943 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9001, 8989)])).val
theorem input9877_def : input9877 = (Flapjack.WordLangProgHOL.move 0 [(9001, 8989)]) := by
  unfold input9877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9001, 8989)])).val
theorem output9877_def : output9877 = (Flapjack.WordLangProgHOL.move 0 [(9001, 8989)]) := by
  unfold output9877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9877_skip : Flapjack.WordAlloc.isSkip output9877 = false := by
  rw [output9877_def]
  conv => lhs; cbv
  try rfl
theorem node9877_eq : Flapjack.WordAlloc.removeDeadStructural input9877 value4942 value1 value2 = (output9877, value4943, value1) := by
  rw [input9877_def, output9877_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9877 input9876)).val
theorem input9878_def : input9878 = (.seq input9877 input9876) := by
  unfold input9878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9877 output9876)).val
theorem output9878_def : output9878 = (.seq output9877 output9876) := by
  unfold output9878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9878_skip : Flapjack.WordAlloc.isSkip output9878 = false := by
  rw [output9878_def]
  conv => lhs; cbv
  try rfl
theorem node9878_eq : Flapjack.WordAlloc.removeDeadStructural input9878 value5 value1 value2 = (output9878, value4943, value1) := by
  rw [input9878_def, output9878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9876_eq]
  dsimp only
  rw [node9877_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4944 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8997 15985511645807504772#64))).val
theorem input9879_def : input9879 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8997 15985511645807504772#64)) := by
  unfold input9879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8997 15985511645807504772#64))).val
theorem output9879_def : output9879 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8997 15985511645807504772#64)) := by
  unfold output9879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9879_skip : Flapjack.WordAlloc.isSkip output9879 = false := by
  rw [output9879_def]
  conv => lhs; cbv
  try rfl
theorem node9879_eq : Flapjack.WordAlloc.removeDeadStructural input9879 value4943 value1 value2 = (output9879, value4944, value1) := by
  rw [input9879_def, output9879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8993 15985511645807504772#64))).val
theorem input9880_def : input9880 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8993 15985511645807504772#64)) := by
  unfold input9880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9880_def : output9880 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9880_skip : Flapjack.WordAlloc.isSkip output9880 = true := by
  rw [output9880_def]
  conv => lhs; cbv
  try rfl
theorem node9880_eq : Flapjack.WordAlloc.removeDeadStructural input9880 value4944 value1 value2 = (output9880, value4944, value1) := by
  rw [input9880_def, output9880_def]
  try (conv => lhs; cbv)
  try rfl

def value4945 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8989 8981 (Flapjack.WordRegImm.reg 8985))))).val
theorem input9881_def : input9881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8989 8981 (Flapjack.WordRegImm.reg 8985)))) := by
  unfold input9881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8989 8981 (Flapjack.WordRegImm.reg 8985))))).val
theorem output9881_def : output9881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8989 8981 (Flapjack.WordRegImm.reg 8985)))) := by
  unfold output9881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9881_skip : Flapjack.WordAlloc.isSkip output9881 = false := by
  rw [output9881_def]
  conv => lhs; cbv
  try rfl
theorem node9881_eq : Flapjack.WordAlloc.removeDeadStructural input9881 value4944 value1 value2 = (output9881, value4945, value1) := by
  rw [input9881_def, output9881_def]
  try (conv => lhs; cbv)
  try rfl

def value4946 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8985 2192#64))).val
theorem input9882_def : input9882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8985 2192#64)) := by
  unfold input9882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8985 2192#64))).val
theorem output9882_def : output9882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8985 2192#64)) := by
  unfold output9882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9882_skip : Flapjack.WordAlloc.isSkip output9882 = false := by
  rw [output9882_def]
  conv => lhs; cbv
  try rfl
theorem node9882_eq : Flapjack.WordAlloc.removeDeadStructural input9882 value4945 value1 value2 = (output9882, value4946, value1) := by
  rw [input9882_def, output9882_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9882 input9881)).val
theorem input9883_def : input9883 = (.seq input9882 input9881) := by
  unfold input9883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9882 output9881)).val
theorem output9883_def : output9883 = (.seq output9882 output9881) := by
  unfold output9883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9883_skip : Flapjack.WordAlloc.isSkip output9883 = false := by
  rw [output9883_def]
  conv => lhs; cbv
  try rfl
theorem node9883_eq : Flapjack.WordAlloc.removeDeadStructural input9883 value4944 value1 value2 = (output9883, value4946, value1) := by
  rw [input9883_def, output9883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9881_eq]
  dsimp only
  rw [node9882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4947 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8981 (Flapjack.WordLangAddr.addr 8977 18446744073709551104#64)))).val
theorem input9884_def : input9884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8981 (Flapjack.WordLangAddr.addr 8977 18446744073709551104#64))) := by
  unfold input9884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8981 (Flapjack.WordLangAddr.addr 8977 18446744073709551104#64)))).val
theorem output9884_def : output9884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8981 (Flapjack.WordLangAddr.addr 8977 18446744073709551104#64))) := by
  unfold output9884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9884_skip : Flapjack.WordAlloc.isSkip output9884 = false := by
  rw [output9884_def]
  conv => lhs; cbv
  try rfl
theorem node9884_eq : Flapjack.WordAlloc.removeDeadStructural input9884 value4946 value1 value2 = (output9884, value4947, value1) := by
  rw [input9884_def, output9884_def]
  try (conv => lhs; cbv)
  try rfl

def value4948 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8977 8973)).val
theorem input9885_def : input9885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8977 8973) := by
  unfold input9885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8977 8973)).val
theorem output9885_def : output9885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8977 8973) := by
  unfold output9885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9885_skip : Flapjack.WordAlloc.isSkip output9885 = false := by
  rw [output9885_def]
  conv => lhs; cbv
  try rfl
theorem node9885_eq : Flapjack.WordAlloc.removeDeadStructural input9885 value4947 value1 value2 = (output9885, value4948, value1) := by
  rw [input9885_def, output9885_def]
  try (conv => lhs; cbv)
  try rfl

def value4949 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8973 8969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9886_def : input9886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8973 8969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8973 8969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9886_def : output9886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8973 8969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9886_skip : Flapjack.WordAlloc.isSkip output9886 = false := by
  rw [output9886_def]
  conv => lhs; cbv
  try rfl
theorem node9886_eq : Flapjack.WordAlloc.removeDeadStructural input9886 value4948 value1 value2 = (output9886, value4949, value1) := by
  rw [input9886_def, output9886_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8969 Flapjack.WordStore.heapLength)).val
theorem input9887_def : input9887 = (Flapjack.WordLangProgHOL.get 8969 Flapjack.WordStore.heapLength) := by
  unfold input9887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8969 Flapjack.WordStore.heapLength)).val
theorem output9887_def : output9887 = (Flapjack.WordLangProgHOL.get 8969 Flapjack.WordStore.heapLength) := by
  unfold output9887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9887_skip : Flapjack.WordAlloc.isSkip output9887 = false := by
  rw [output9887_def]
  conv => lhs; cbv
  try rfl
theorem node9887_eq : Flapjack.WordAlloc.removeDeadStructural input9887 value4949 value1 value2 = (output9887, value5, value1) := by
  rw [input9887_def, output9887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9887 input9886)).val
theorem input9888_def : input9888 = (.seq input9887 input9886) := by
  unfold input9888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9887 output9886)).val
theorem output9888_def : output9888 = (.seq output9887 output9886) := by
  unfold output9888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9888_skip : Flapjack.WordAlloc.isSkip output9888 = false := by
  rw [output9888_def]
  conv => lhs; cbv
  try rfl
theorem node9888_eq : Flapjack.WordAlloc.removeDeadStructural input9888 value4948 value1 value2 = (output9888, value5, value1) := by
  rw [input9888_def, output9888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9886_eq]
  dsimp only
  rw [node9887_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9888 input9885)).val
theorem input9889_def : input9889 = (.seq input9888 input9885) := by
  unfold input9889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9888 output9885)).val
theorem output9889_def : output9889 = (.seq output9888 output9885) := by
  unfold output9889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9889_skip : Flapjack.WordAlloc.isSkip output9889 = false := by
  rw [output9889_def]
  conv => lhs; cbv
  try rfl
theorem node9889_eq : Flapjack.WordAlloc.removeDeadStructural input9889 value4947 value1 value2 = (output9889, value5, value1) := by
  rw [input9889_def, output9889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9885_eq]
  dsimp only
  rw [node9888_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9889 input9884)).val
theorem input9890_def : input9890 = (.seq input9889 input9884) := by
  unfold input9890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9889 output9884)).val
theorem output9890_def : output9890 = (.seq output9889 output9884) := by
  unfold output9890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9890_skip : Flapjack.WordAlloc.isSkip output9890 = false := by
  rw [output9890_def]
  conv => lhs; cbv
  try rfl
theorem node9890_eq : Flapjack.WordAlloc.removeDeadStructural input9890 value4946 value1 value2 = (output9890, value5, value1) := by
  rw [input9890_def, output9890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9884_eq]
  dsimp only
  rw [node9889_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9890 input9883)).val
theorem input9891_def : input9891 = (.seq input9890 input9883) := by
  unfold input9891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9890 output9883)).val
theorem output9891_def : output9891 = (.seq output9890 output9883) := by
  unfold output9891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9891_skip : Flapjack.WordAlloc.isSkip output9891 = false := by
  rw [output9891_def]
  conv => lhs; cbv
  try rfl
theorem node9891_eq : Flapjack.WordAlloc.removeDeadStructural input9891 value4944 value1 value2 = (output9891, value5, value1) := by
  rw [input9891_def, output9891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9883_eq]
  dsimp only
  rw [node9890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4950 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8961 (Flapjack.WordLangAddr.addr 8965 0#64)))).val
theorem input9892_def : input9892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8961 (Flapjack.WordLangAddr.addr 8965 0#64))) := by
  unfold input9892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8961 (Flapjack.WordLangAddr.addr 8965 0#64)))).val
theorem output9892_def : output9892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8961 (Flapjack.WordLangAddr.addr 8965 0#64))) := by
  unfold output9892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9892_skip : Flapjack.WordAlloc.isSkip output9892 = false := by
  rw [output9892_def]
  conv => lhs; cbv
  try rfl
theorem node9892_eq : Flapjack.WordAlloc.removeDeadStructural input9892 value5 value1 value2 = (output9892, value4950, value1) := by
  rw [input9892_def, output9892_def]
  try (conv => lhs; cbv)
  try rfl

def value4951 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8965, 8953)])).val
theorem input9893_def : input9893 = (Flapjack.WordLangProgHOL.move 0 [(8965, 8953)]) := by
  unfold input9893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8965, 8953)])).val
theorem output9893_def : output9893 = (Flapjack.WordLangProgHOL.move 0 [(8965, 8953)]) := by
  unfold output9893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9893_skip : Flapjack.WordAlloc.isSkip output9893 = false := by
  rw [output9893_def]
  conv => lhs; cbv
  try rfl
theorem node9893_eq : Flapjack.WordAlloc.removeDeadStructural input9893 value4950 value1 value2 = (output9893, value4951, value1) := by
  rw [input9893_def, output9893_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9893 input9892)).val
theorem input9894_def : input9894 = (.seq input9893 input9892) := by
  unfold input9894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9893 output9892)).val
theorem output9894_def : output9894 = (.seq output9893 output9892) := by
  unfold output9894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9894_skip : Flapjack.WordAlloc.isSkip output9894 = false := by
  rw [output9894_def]
  conv => lhs; cbv
  try rfl
theorem node9894_eq : Flapjack.WordAlloc.removeDeadStructural input9894 value5 value1 value2 = (output9894, value4951, value1) := by
  rw [input9894_def, output9894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9892_eq]
  dsimp only
  rw [node9893_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4952 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8961 1598992431623377919#64))).val
theorem input9895_def : input9895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8961 1598992431623377919#64)) := by
  unfold input9895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8961 1598992431623377919#64))).val
theorem output9895_def : output9895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8961 1598992431623377919#64)) := by
  unfold output9895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9895_skip : Flapjack.WordAlloc.isSkip output9895 = false := by
  rw [output9895_def]
  conv => lhs; cbv
  try rfl
theorem node9895_eq : Flapjack.WordAlloc.removeDeadStructural input9895 value4951 value1 value2 = (output9895, value4952, value1) := by
  rw [input9895_def, output9895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8957 1598992431623377919#64))).val
theorem input9896_def : input9896 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8957 1598992431623377919#64)) := by
  unfold input9896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9896_def : output9896 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9896_skip : Flapjack.WordAlloc.isSkip output9896 = true := by
  rw [output9896_def]
  conv => lhs; cbv
  try rfl
theorem node9896_eq : Flapjack.WordAlloc.removeDeadStructural input9896 value4952 value1 value2 = (output9896, value4952, value1) := by
  rw [input9896_def, output9896_def]
  try (conv => lhs; cbv)
  try rfl

def value4953 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8953 8945 (Flapjack.WordRegImm.reg 8949))))).val
theorem input9897_def : input9897 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8953 8945 (Flapjack.WordRegImm.reg 8949)))) := by
  unfold input9897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8953 8945 (Flapjack.WordRegImm.reg 8949))))).val
theorem output9897_def : output9897 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8953 8945 (Flapjack.WordRegImm.reg 8949)))) := by
  unfold output9897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9897_skip : Flapjack.WordAlloc.isSkip output9897 = false := by
  rw [output9897_def]
  conv => lhs; cbv
  try rfl
theorem node9897_eq : Flapjack.WordAlloc.removeDeadStructural input9897 value4952 value1 value2 = (output9897, value4953, value1) := by
  rw [input9897_def, output9897_def]
  try (conv => lhs; cbv)
  try rfl

def value4954 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8949 2184#64))).val
theorem input9898_def : input9898 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8949 2184#64)) := by
  unfold input9898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8949 2184#64))).val
theorem output9898_def : output9898 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8949 2184#64)) := by
  unfold output9898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9898_skip : Flapjack.WordAlloc.isSkip output9898 = false := by
  rw [output9898_def]
  conv => lhs; cbv
  try rfl
theorem node9898_eq : Flapjack.WordAlloc.removeDeadStructural input9898 value4953 value1 value2 = (output9898, value4954, value1) := by
  rw [input9898_def, output9898_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9898 input9897)).val
theorem input9899_def : input9899 = (.seq input9898 input9897) := by
  unfold input9899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9898 output9897)).val
theorem output9899_def : output9899 = (.seq output9898 output9897) := by
  unfold output9899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9899_skip : Flapjack.WordAlloc.isSkip output9899 = false := by
  rw [output9899_def]
  conv => lhs; cbv
  try rfl
theorem node9899_eq : Flapjack.WordAlloc.removeDeadStructural input9899 value4952 value1 value2 = (output9899, value4954, value1) := by
  rw [input9899_def, output9899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9897_eq]
  dsimp only
  rw [node9898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4955 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8945 (Flapjack.WordLangAddr.addr 8941 18446744073709551104#64)))).val
theorem input9900_def : input9900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8945 (Flapjack.WordLangAddr.addr 8941 18446744073709551104#64))) := by
  unfold input9900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8945 (Flapjack.WordLangAddr.addr 8941 18446744073709551104#64)))).val
theorem output9900_def : output9900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8945 (Flapjack.WordLangAddr.addr 8941 18446744073709551104#64))) := by
  unfold output9900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9900_skip : Flapjack.WordAlloc.isSkip output9900 = false := by
  rw [output9900_def]
  conv => lhs; cbv
  try rfl
theorem node9900_eq : Flapjack.WordAlloc.removeDeadStructural input9900 value4954 value1 value2 = (output9900, value4955, value1) := by
  rw [input9900_def, output9900_def]
  try (conv => lhs; cbv)
  try rfl

def value4956 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8941 8937)).val
theorem input9901_def : input9901 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8941 8937) := by
  unfold input9901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8941 8937)).val
theorem output9901_def : output9901 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8941 8937) := by
  unfold output9901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9901_skip : Flapjack.WordAlloc.isSkip output9901 = false := by
  rw [output9901_def]
  conv => lhs; cbv
  try rfl
theorem node9901_eq : Flapjack.WordAlloc.removeDeadStructural input9901 value4955 value1 value2 = (output9901, value4956, value1) := by
  rw [input9901_def, output9901_def]
  try (conv => lhs; cbv)
  try rfl

def value4957 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8937 8933 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9902_def : input9902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8937 8933 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8937 8933 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9902_def : output9902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8937 8933 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9902_skip : Flapjack.WordAlloc.isSkip output9902 = false := by
  rw [output9902_def]
  conv => lhs; cbv
  try rfl
theorem node9902_eq : Flapjack.WordAlloc.removeDeadStructural input9902 value4956 value1 value2 = (output9902, value4957, value1) := by
  rw [input9902_def, output9902_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8933 Flapjack.WordStore.heapLength)).val
theorem input9903_def : input9903 = (Flapjack.WordLangProgHOL.get 8933 Flapjack.WordStore.heapLength) := by
  unfold input9903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8933 Flapjack.WordStore.heapLength)).val
theorem output9903_def : output9903 = (Flapjack.WordLangProgHOL.get 8933 Flapjack.WordStore.heapLength) := by
  unfold output9903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9903_skip : Flapjack.WordAlloc.isSkip output9903 = false := by
  rw [output9903_def]
  conv => lhs; cbv
  try rfl
theorem node9903_eq : Flapjack.WordAlloc.removeDeadStructural input9903 value4957 value1 value2 = (output9903, value5, value1) := by
  rw [input9903_def, output9903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9903 input9902)).val
theorem input9904_def : input9904 = (.seq input9903 input9902) := by
  unfold input9904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9903 output9902)).val
theorem output9904_def : output9904 = (.seq output9903 output9902) := by
  unfold output9904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9904_skip : Flapjack.WordAlloc.isSkip output9904 = false := by
  rw [output9904_def]
  conv => lhs; cbv
  try rfl
theorem node9904_eq : Flapjack.WordAlloc.removeDeadStructural input9904 value4956 value1 value2 = (output9904, value5, value1) := by
  rw [input9904_def, output9904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9902_eq]
  dsimp only
  rw [node9903_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9904 input9901)).val
theorem input9905_def : input9905 = (.seq input9904 input9901) := by
  unfold input9905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9904 output9901)).val
theorem output9905_def : output9905 = (.seq output9904 output9901) := by
  unfold output9905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9905_skip : Flapjack.WordAlloc.isSkip output9905 = false := by
  rw [output9905_def]
  conv => lhs; cbv
  try rfl
theorem node9905_eq : Flapjack.WordAlloc.removeDeadStructural input9905 value4955 value1 value2 = (output9905, value5, value1) := by
  rw [input9905_def, output9905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9901_eq]
  dsimp only
  rw [node9904_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9905 input9900)).val
theorem input9906_def : input9906 = (.seq input9905 input9900) := by
  unfold input9906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9905 output9900)).val
theorem output9906_def : output9906 = (.seq output9905 output9900) := by
  unfold output9906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9906_skip : Flapjack.WordAlloc.isSkip output9906 = false := by
  rw [output9906_def]
  conv => lhs; cbv
  try rfl
theorem node9906_eq : Flapjack.WordAlloc.removeDeadStructural input9906 value4954 value1 value2 = (output9906, value5, value1) := by
  rw [input9906_def, output9906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9900_eq]
  dsimp only
  rw [node9905_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9906 input9899)).val
theorem input9907_def : input9907 = (.seq input9906 input9899) := by
  unfold input9907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9906 output9899)).val
theorem output9907_def : output9907 = (.seq output9906 output9899) := by
  unfold output9907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9907_skip : Flapjack.WordAlloc.isSkip output9907 = false := by
  rw [output9907_def]
  conv => lhs; cbv
  try rfl
theorem node9907_eq : Flapjack.WordAlloc.removeDeadStructural input9907 value4952 value1 value2 = (output9907, value5, value1) := by
  rw [input9907_def, output9907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9899_eq]
  dsimp only
  rw [node9906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4958 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8925 (Flapjack.WordLangAddr.addr 8929 0#64)))).val
theorem input9908_def : input9908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8925 (Flapjack.WordLangAddr.addr 8929 0#64))) := by
  unfold input9908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8925 (Flapjack.WordLangAddr.addr 8929 0#64)))).val
theorem output9908_def : output9908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8925 (Flapjack.WordLangAddr.addr 8929 0#64))) := by
  unfold output9908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9908_skip : Flapjack.WordAlloc.isSkip output9908 = false := by
  rw [output9908_def]
  conv => lhs; cbv
  try rfl
theorem node9908_eq : Flapjack.WordAlloc.removeDeadStructural input9908 value5 value1 value2 = (output9908, value4958, value1) := by
  rw [input9908_def, output9908_def]
  try (conv => lhs; cbv)
  try rfl

def value4959 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8929, 8917)])).val
theorem input9909_def : input9909 = (Flapjack.WordLangProgHOL.move 0 [(8929, 8917)]) := by
  unfold input9909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8929, 8917)])).val
theorem output9909_def : output9909 = (Flapjack.WordLangProgHOL.move 0 [(8929, 8917)]) := by
  unfold output9909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9909_skip : Flapjack.WordAlloc.isSkip output9909 = false := by
  rw [output9909_def]
  conv => lhs; cbv
  try rfl
theorem node9909_eq : Flapjack.WordAlloc.removeDeadStructural input9909 value4958 value1 value2 = (output9909, value4959, value1) := by
  rw [input9909_def, output9909_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9909 input9908)).val
theorem input9910_def : input9910 = (.seq input9909 input9908) := by
  unfold input9910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9909 output9908)).val
theorem output9910_def : output9910 = (.seq output9909 output9908) := by
  unfold output9910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9910_skip : Flapjack.WordAlloc.isSkip output9910 = false := by
  rw [output9910_def]
  conv => lhs; cbv
  try rfl
theorem node9910_eq : Flapjack.WordAlloc.removeDeadStructural input9910 value5 value1 value2 = (output9910, value4959, value1) := by
  rw [input9910_def, output9910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9908_eq]
  dsimp only
  rw [node9909_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4960 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8925 130921168661596853#64))).val
theorem input9911_def : input9911 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8925 130921168661596853#64)) := by
  unfold input9911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8925 130921168661596853#64))).val
theorem output9911_def : output9911 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8925 130921168661596853#64)) := by
  unfold output9911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9911_skip : Flapjack.WordAlloc.isSkip output9911 = false := by
  rw [output9911_def]
  conv => lhs; cbv
  try rfl
theorem node9911_eq : Flapjack.WordAlloc.removeDeadStructural input9911 value4959 value1 value2 = (output9911, value4960, value1) := by
  rw [input9911_def, output9911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8921 130921168661596853#64))).val
theorem input9912_def : input9912 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8921 130921168661596853#64)) := by
  unfold input9912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9912_def : output9912 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9912_skip : Flapjack.WordAlloc.isSkip output9912 = true := by
  rw [output9912_def]
  conv => lhs; cbv
  try rfl
theorem node9912_eq : Flapjack.WordAlloc.removeDeadStructural input9912 value4960 value1 value2 = (output9912, value4960, value1) := by
  rw [input9912_def, output9912_def]
  try (conv => lhs; cbv)
  try rfl

def value4961 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8917 8909 (Flapjack.WordRegImm.reg 8913))))).val
theorem input9913_def : input9913 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8917 8909 (Flapjack.WordRegImm.reg 8913)))) := by
  unfold input9913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8917 8909 (Flapjack.WordRegImm.reg 8913))))).val
theorem output9913_def : output9913 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8917 8909 (Flapjack.WordRegImm.reg 8913)))) := by
  unfold output9913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9913_skip : Flapjack.WordAlloc.isSkip output9913 = false := by
  rw [output9913_def]
  conv => lhs; cbv
  try rfl
theorem node9913_eq : Flapjack.WordAlloc.removeDeadStructural input9913 value4960 value1 value2 = (output9913, value4961, value1) := by
  rw [input9913_def, output9913_def]
  try (conv => lhs; cbv)
  try rfl

def value4962 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8913 2176#64))).val
theorem input9914_def : input9914 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8913 2176#64)) := by
  unfold input9914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8913 2176#64))).val
theorem output9914_def : output9914 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8913 2176#64)) := by
  unfold output9914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9914_skip : Flapjack.WordAlloc.isSkip output9914 = false := by
  rw [output9914_def]
  conv => lhs; cbv
  try rfl
theorem node9914_eq : Flapjack.WordAlloc.removeDeadStructural input9914 value4961 value1 value2 = (output9914, value4962, value1) := by
  rw [input9914_def, output9914_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9914 input9913)).val
theorem input9915_def : input9915 = (.seq input9914 input9913) := by
  unfold input9915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9914 output9913)).val
theorem output9915_def : output9915 = (.seq output9914 output9913) := by
  unfold output9915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9915_skip : Flapjack.WordAlloc.isSkip output9915 = false := by
  rw [output9915_def]
  conv => lhs; cbv
  try rfl
theorem node9915_eq : Flapjack.WordAlloc.removeDeadStructural input9915 value4960 value1 value2 = (output9915, value4962, value1) := by
  rw [input9915_def, output9915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9913_eq]
  dsimp only
  rw [node9914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4963 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8909 (Flapjack.WordLangAddr.addr 8905 18446744073709551104#64)))).val
theorem input9916_def : input9916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8909 (Flapjack.WordLangAddr.addr 8905 18446744073709551104#64))) := by
  unfold input9916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8909 (Flapjack.WordLangAddr.addr 8905 18446744073709551104#64)))).val
theorem output9916_def : output9916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8909 (Flapjack.WordLangAddr.addr 8905 18446744073709551104#64))) := by
  unfold output9916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9916_skip : Flapjack.WordAlloc.isSkip output9916 = false := by
  rw [output9916_def]
  conv => lhs; cbv
  try rfl
theorem node9916_eq : Flapjack.WordAlloc.removeDeadStructural input9916 value4962 value1 value2 = (output9916, value4963, value1) := by
  rw [input9916_def, output9916_def]
  try (conv => lhs; cbv)
  try rfl

def value4964 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8905 8901)).val
theorem input9917_def : input9917 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8905 8901) := by
  unfold input9917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8905 8901)).val
theorem output9917_def : output9917 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8905 8901) := by
  unfold output9917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9917_skip : Flapjack.WordAlloc.isSkip output9917 = false := by
  rw [output9917_def]
  conv => lhs; cbv
  try rfl
theorem node9917_eq : Flapjack.WordAlloc.removeDeadStructural input9917 value4963 value1 value2 = (output9917, value4964, value1) := by
  rw [input9917_def, output9917_def]
  try (conv => lhs; cbv)
  try rfl

def value4965 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8901 8897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9918_def : input9918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8901 8897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8901 8897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9918_def : output9918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8901 8897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9918_skip : Flapjack.WordAlloc.isSkip output9918 = false := by
  rw [output9918_def]
  conv => lhs; cbv
  try rfl
theorem node9918_eq : Flapjack.WordAlloc.removeDeadStructural input9918 value4964 value1 value2 = (output9918, value4965, value1) := by
  rw [input9918_def, output9918_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8897 Flapjack.WordStore.heapLength)).val
theorem input9919_def : input9919 = (Flapjack.WordLangProgHOL.get 8897 Flapjack.WordStore.heapLength) := by
  unfold input9919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8897 Flapjack.WordStore.heapLength)).val
theorem output9919_def : output9919 = (Flapjack.WordLangProgHOL.get 8897 Flapjack.WordStore.heapLength) := by
  unfold output9919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9919_skip : Flapjack.WordAlloc.isSkip output9919 = false := by
  rw [output9919_def]
  conv => lhs; cbv
  try rfl
theorem node9919_eq : Flapjack.WordAlloc.removeDeadStructural input9919 value4965 value1 value2 = (output9919, value5, value1) := by
  rw [input9919_def, output9919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9919 input9918)).val
theorem input9920_def : input9920 = (.seq input9919 input9918) := by
  unfold input9920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9919 output9918)).val
theorem output9920_def : output9920 = (.seq output9919 output9918) := by
  unfold output9920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9920_skip : Flapjack.WordAlloc.isSkip output9920 = false := by
  rw [output9920_def]
  conv => lhs; cbv
  try rfl
theorem node9920_eq : Flapjack.WordAlloc.removeDeadStructural input9920 value4964 value1 value2 = (output9920, value5, value1) := by
  rw [input9920_def, output9920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9918_eq]
  dsimp only
  rw [node9919_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9920 input9917)).val
theorem input9921_def : input9921 = (.seq input9920 input9917) := by
  unfold input9921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9920 output9917)).val
theorem output9921_def : output9921 = (.seq output9920 output9917) := by
  unfold output9921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9921_skip : Flapjack.WordAlloc.isSkip output9921 = false := by
  rw [output9921_def]
  conv => lhs; cbv
  try rfl
theorem node9921_eq : Flapjack.WordAlloc.removeDeadStructural input9921 value4963 value1 value2 = (output9921, value5, value1) := by
  rw [input9921_def, output9921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9917_eq]
  dsimp only
  rw [node9920_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9921 input9916)).val
theorem input9922_def : input9922 = (.seq input9921 input9916) := by
  unfold input9922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9921 output9916)).val
theorem output9922_def : output9922 = (.seq output9921 output9916) := by
  unfold output9922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9922_skip : Flapjack.WordAlloc.isSkip output9922 = false := by
  rw [output9922_def]
  conv => lhs; cbv
  try rfl
theorem node9922_eq : Flapjack.WordAlloc.removeDeadStructural input9922 value4962 value1 value2 = (output9922, value5, value1) := by
  rw [input9922_def, output9922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9916_eq]
  dsimp only
  rw [node9921_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9922 input9915)).val
theorem input9923_def : input9923 = (.seq input9922 input9915) := by
  unfold input9923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9922 output9915)).val
theorem output9923_def : output9923 = (.seq output9922 output9915) := by
  unfold output9923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9923_skip : Flapjack.WordAlloc.isSkip output9923 = false := by
  rw [output9923_def]
  conv => lhs; cbv
  try rfl
theorem node9923_eq : Flapjack.WordAlloc.removeDeadStructural input9923 value4960 value1 value2 = (output9923, value5, value1) := by
  rw [input9923_def, output9923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9915_eq]
  dsimp only
  rw [node9922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4966 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8889 (Flapjack.WordLangAddr.addr 8893 0#64)))).val
theorem input9924_def : input9924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8889 (Flapjack.WordLangAddr.addr 8893 0#64))) := by
  unfold input9924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8889 (Flapjack.WordLangAddr.addr 8893 0#64)))).val
theorem output9924_def : output9924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8889 (Flapjack.WordLangAddr.addr 8893 0#64))) := by
  unfold output9924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9924_skip : Flapjack.WordAlloc.isSkip output9924 = false := by
  rw [output9924_def]
  conv => lhs; cbv
  try rfl
theorem node9924_eq : Flapjack.WordAlloc.removeDeadStructural input9924 value5 value1 value2 = (output9924, value4966, value1) := by
  rw [input9924_def, output9924_def]
  try (conv => lhs; cbv)
  try rfl

def value4967 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8893, 8881)])).val
theorem input9925_def : input9925 = (Flapjack.WordLangProgHOL.move 0 [(8893, 8881)]) := by
  unfold input9925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8893, 8881)])).val
theorem output9925_def : output9925 = (Flapjack.WordLangProgHOL.move 0 [(8893, 8881)]) := by
  unfold output9925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9925_skip : Flapjack.WordAlloc.isSkip output9925 = false := by
  rw [output9925_def]
  conv => lhs; cbv
  try rfl
theorem node9925_eq : Flapjack.WordAlloc.removeDeadStructural input9925 value4966 value1 value2 = (output9925, value4967, value1) := by
  rw [input9925_def, output9925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9925 input9924)).val
theorem input9926_def : input9926 = (.seq input9925 input9924) := by
  unfold input9926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9925 output9924)).val
theorem output9926_def : output9926 = (.seq output9925 output9924) := by
  unfold output9926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9926_skip : Flapjack.WordAlloc.isSkip output9926 = false := by
  rw [output9926_def]
  conv => lhs; cbv
  try rfl
theorem node9926_eq : Flapjack.WordAlloc.removeDeadStructural input9926 value5 value1 value2 = (output9926, value4967, value1) := by
  rw [input9926_def, output9926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9924_eq]
  dsimp only
  rw [node9925_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4968 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8889 15797696746983946651#64))).val
theorem input9927_def : input9927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8889 15797696746983946651#64)) := by
  unfold input9927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8889 15797696746983946651#64))).val
theorem output9927_def : output9927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8889 15797696746983946651#64)) := by
  unfold output9927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9927_skip : Flapjack.WordAlloc.isSkip output9927 = false := by
  rw [output9927_def]
  conv => lhs; cbv
  try rfl
theorem node9927_eq : Flapjack.WordAlloc.removeDeadStructural input9927 value4967 value1 value2 = (output9927, value4968, value1) := by
  rw [input9927_def, output9927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8885 15797696746983946651#64))).val
theorem input9928_def : input9928 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8885 15797696746983946651#64)) := by
  unfold input9928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9928_def : output9928 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9928_skip : Flapjack.WordAlloc.isSkip output9928 = true := by
  rw [output9928_def]
  conv => lhs; cbv
  try rfl
theorem node9928_eq : Flapjack.WordAlloc.removeDeadStructural input9928 value4968 value1 value2 = (output9928, value4968, value1) := by
  rw [input9928_def, output9928_def]
  try (conv => lhs; cbv)
  try rfl

def value4969 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8881 8873 (Flapjack.WordRegImm.reg 8877))))).val
theorem input9929_def : input9929 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8881 8873 (Flapjack.WordRegImm.reg 8877)))) := by
  unfold input9929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8881 8873 (Flapjack.WordRegImm.reg 8877))))).val
theorem output9929_def : output9929 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8881 8873 (Flapjack.WordRegImm.reg 8877)))) := by
  unfold output9929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9929_skip : Flapjack.WordAlloc.isSkip output9929 = false := by
  rw [output9929_def]
  conv => lhs; cbv
  try rfl
theorem node9929_eq : Flapjack.WordAlloc.removeDeadStructural input9929 value4968 value1 value2 = (output9929, value4969, value1) := by
  rw [input9929_def, output9929_def]
  try (conv => lhs; cbv)
  try rfl

def value4970 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8877 2168#64))).val
theorem input9930_def : input9930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8877 2168#64)) := by
  unfold input9930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8877 2168#64))).val
theorem output9930_def : output9930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8877 2168#64)) := by
  unfold output9930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9930_skip : Flapjack.WordAlloc.isSkip output9930 = false := by
  rw [output9930_def]
  conv => lhs; cbv
  try rfl
theorem node9930_eq : Flapjack.WordAlloc.removeDeadStructural input9930 value4969 value1 value2 = (output9930, value4970, value1) := by
  rw [input9930_def, output9930_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9930 input9929)).val
theorem input9931_def : input9931 = (.seq input9930 input9929) := by
  unfold input9931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9930 output9929)).val
theorem output9931_def : output9931 = (.seq output9930 output9929) := by
  unfold output9931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9931_skip : Flapjack.WordAlloc.isSkip output9931 = false := by
  rw [output9931_def]
  conv => lhs; cbv
  try rfl
theorem node9931_eq : Flapjack.WordAlloc.removeDeadStructural input9931 value4968 value1 value2 = (output9931, value4970, value1) := by
  rw [input9931_def, output9931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9929_eq]
  dsimp only
  rw [node9930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4971 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8873 (Flapjack.WordLangAddr.addr 8869 18446744073709551104#64)))).val
theorem input9932_def : input9932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8873 (Flapjack.WordLangAddr.addr 8869 18446744073709551104#64))) := by
  unfold input9932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8873 (Flapjack.WordLangAddr.addr 8869 18446744073709551104#64)))).val
theorem output9932_def : output9932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8873 (Flapjack.WordLangAddr.addr 8869 18446744073709551104#64))) := by
  unfold output9932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9932_skip : Flapjack.WordAlloc.isSkip output9932 = false := by
  rw [output9932_def]
  conv => lhs; cbv
  try rfl
theorem node9932_eq : Flapjack.WordAlloc.removeDeadStructural input9932 value4970 value1 value2 = (output9932, value4971, value1) := by
  rw [input9932_def, output9932_def]
  try (conv => lhs; cbv)
  try rfl

def value4972 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8869 8865)).val
theorem input9933_def : input9933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8869 8865) := by
  unfold input9933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8869 8865)).val
theorem output9933_def : output9933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8869 8865) := by
  unfold output9933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9933_skip : Flapjack.WordAlloc.isSkip output9933 = false := by
  rw [output9933_def]
  conv => lhs; cbv
  try rfl
theorem node9933_eq : Flapjack.WordAlloc.removeDeadStructural input9933 value4971 value1 value2 = (output9933, value4972, value1) := by
  rw [input9933_def, output9933_def]
  try (conv => lhs; cbv)
  try rfl

def value4973 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8865 8861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9934_def : input9934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8865 8861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8865 8861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9934_def : output9934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8865 8861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9934_skip : Flapjack.WordAlloc.isSkip output9934 = false := by
  rw [output9934_def]
  conv => lhs; cbv
  try rfl
theorem node9934_eq : Flapjack.WordAlloc.removeDeadStructural input9934 value4972 value1 value2 = (output9934, value4973, value1) := by
  rw [input9934_def, output9934_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8861 Flapjack.WordStore.heapLength)).val
theorem input9935_def : input9935 = (Flapjack.WordLangProgHOL.get 8861 Flapjack.WordStore.heapLength) := by
  unfold input9935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8861 Flapjack.WordStore.heapLength)).val
theorem output9935_def : output9935 = (Flapjack.WordLangProgHOL.get 8861 Flapjack.WordStore.heapLength) := by
  unfold output9935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9935_skip : Flapjack.WordAlloc.isSkip output9935 = false := by
  rw [output9935_def]
  conv => lhs; cbv
  try rfl
theorem node9935_eq : Flapjack.WordAlloc.removeDeadStructural input9935 value4973 value1 value2 = (output9935, value5, value1) := by
  rw [input9935_def, output9935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9935 input9934)).val
theorem input9936_def : input9936 = (.seq input9935 input9934) := by
  unfold input9936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9935 output9934)).val
theorem output9936_def : output9936 = (.seq output9935 output9934) := by
  unfold output9936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9936_skip : Flapjack.WordAlloc.isSkip output9936 = false := by
  rw [output9936_def]
  conv => lhs; cbv
  try rfl
theorem node9936_eq : Flapjack.WordAlloc.removeDeadStructural input9936 value4972 value1 value2 = (output9936, value5, value1) := by
  rw [input9936_def, output9936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9934_eq]
  dsimp only
  rw [node9935_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9936 input9933)).val
theorem input9937_def : input9937 = (.seq input9936 input9933) := by
  unfold input9937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9936 output9933)).val
theorem output9937_def : output9937 = (.seq output9936 output9933) := by
  unfold output9937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9937_skip : Flapjack.WordAlloc.isSkip output9937 = false := by
  rw [output9937_def]
  conv => lhs; cbv
  try rfl
theorem node9937_eq : Flapjack.WordAlloc.removeDeadStructural input9937 value4971 value1 value2 = (output9937, value5, value1) := by
  rw [input9937_def, output9937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9933_eq]
  dsimp only
  rw [node9936_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9937 input9932)).val
theorem input9938_def : input9938 = (.seq input9937 input9932) := by
  unfold input9938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9937 output9932)).val
theorem output9938_def : output9938 = (.seq output9937 output9932) := by
  unfold output9938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9938_skip : Flapjack.WordAlloc.isSkip output9938 = false := by
  rw [output9938_def]
  conv => lhs; cbv
  try rfl
theorem node9938_eq : Flapjack.WordAlloc.removeDeadStructural input9938 value4970 value1 value2 = (output9938, value5, value1) := by
  rw [input9938_def, output9938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9932_eq]
  dsimp only
  rw [node9937_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9938 input9931)).val
theorem input9939_def : input9939 = (.seq input9938 input9931) := by
  unfold input9939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9938 output9931)).val
theorem output9939_def : output9939 = (.seq output9938 output9931) := by
  unfold output9939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9939_skip : Flapjack.WordAlloc.isSkip output9939 = false := by
  rw [output9939_def]
  conv => lhs; cbv
  try rfl
theorem node9939_eq : Flapjack.WordAlloc.removeDeadStructural input9939 value4968 value1 value2 = (output9939, value5, value1) := by
  rw [input9939_def, output9939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9931_eq]
  dsimp only
  rw [node9938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4974 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8853 (Flapjack.WordLangAddr.addr 8857 0#64)))).val
theorem input9940_def : input9940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8853 (Flapjack.WordLangAddr.addr 8857 0#64))) := by
  unfold input9940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8853 (Flapjack.WordLangAddr.addr 8857 0#64)))).val
theorem output9940_def : output9940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8853 (Flapjack.WordLangAddr.addr 8857 0#64))) := by
  unfold output9940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9940_skip : Flapjack.WordAlloc.isSkip output9940 = false := by
  rw [output9940_def]
  conv => lhs; cbv
  try rfl
theorem node9940_eq : Flapjack.WordAlloc.removeDeadStructural input9940 value5 value1 value2 = (output9940, value4974, value1) := by
  rw [input9940_def, output9940_def]
  try (conv => lhs; cbv)
  try rfl

def value4975 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8857, 8845)])).val
theorem input9941_def : input9941 = (Flapjack.WordLangProgHOL.move 0 [(8857, 8845)]) := by
  unfold input9941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8857, 8845)])).val
theorem output9941_def : output9941 = (Flapjack.WordLangProgHOL.move 0 [(8857, 8845)]) := by
  unfold output9941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9941_skip : Flapjack.WordAlloc.isSkip output9941 = false := by
  rw [output9941_def]
  conv => lhs; cbv
  try rfl
theorem node9941_eq : Flapjack.WordAlloc.removeDeadStructural input9941 value4974 value1 value2 = (output9941, value4975, value1) := by
  rw [input9941_def, output9941_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9941 input9940)).val
theorem input9942_def : input9942 = (.seq input9941 input9940) := by
  unfold input9942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9941 output9940)).val
theorem output9942_def : output9942 = (.seq output9941 output9940) := by
  unfold output9942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9942_skip : Flapjack.WordAlloc.isSkip output9942 = false := by
  rw [output9942_def]
  conv => lhs; cbv
  try rfl
theorem node9942_eq : Flapjack.WordAlloc.removeDeadStructural input9942 value5 value1 value2 = (output9942, value4975, value1) := by
  rw [input9942_def, output9942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9940_eq]
  dsimp only
  rw [node9941_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4976 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8853 11444679715590672272#64))).val
theorem input9943_def : input9943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8853 11444679715590672272#64)) := by
  unfold input9943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8853 11444679715590672272#64))).val
theorem output9943_def : output9943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8853 11444679715590672272#64)) := by
  unfold output9943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9943_skip : Flapjack.WordAlloc.isSkip output9943 = false := by
  rw [output9943_def]
  conv => lhs; cbv
  try rfl
theorem node9943_eq : Flapjack.WordAlloc.removeDeadStructural input9943 value4975 value1 value2 = (output9943, value4976, value1) := by
  rw [input9943_def, output9943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8849 11444679715590672272#64))).val
theorem input9944_def : input9944 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8849 11444679715590672272#64)) := by
  unfold input9944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9944_def : output9944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9944_skip : Flapjack.WordAlloc.isSkip output9944 = true := by
  rw [output9944_def]
  conv => lhs; cbv
  try rfl
theorem node9944_eq : Flapjack.WordAlloc.removeDeadStructural input9944 value4976 value1 value2 = (output9944, value4976, value1) := by
  rw [input9944_def, output9944_def]
  try (conv => lhs; cbv)
  try rfl

def value4977 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8845 8837 (Flapjack.WordRegImm.reg 8841))))).val
theorem input9945_def : input9945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8845 8837 (Flapjack.WordRegImm.reg 8841)))) := by
  unfold input9945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8845 8837 (Flapjack.WordRegImm.reg 8841))))).val
theorem output9945_def : output9945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8845 8837 (Flapjack.WordRegImm.reg 8841)))) := by
  unfold output9945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9945_skip : Flapjack.WordAlloc.isSkip output9945 = false := by
  rw [output9945_def]
  conv => lhs; cbv
  try rfl
theorem node9945_eq : Flapjack.WordAlloc.removeDeadStructural input9945 value4976 value1 value2 = (output9945, value4977, value1) := by
  rw [input9945_def, output9945_def]
  try (conv => lhs; cbv)
  try rfl

def value4978 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8841 2160#64))).val
theorem input9946_def : input9946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8841 2160#64)) := by
  unfold input9946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8841 2160#64))).val
theorem output9946_def : output9946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8841 2160#64)) := by
  unfold output9946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9946_skip : Flapjack.WordAlloc.isSkip output9946 = false := by
  rw [output9946_def]
  conv => lhs; cbv
  try rfl
theorem node9946_eq : Flapjack.WordAlloc.removeDeadStructural input9946 value4977 value1 value2 = (output9946, value4978, value1) := by
  rw [input9946_def, output9946_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9946 input9945)).val
theorem input9947_def : input9947 = (.seq input9946 input9945) := by
  unfold input9947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9946 output9945)).val
theorem output9947_def : output9947 = (.seq output9946 output9945) := by
  unfold output9947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9947_skip : Flapjack.WordAlloc.isSkip output9947 = false := by
  rw [output9947_def]
  conv => lhs; cbv
  try rfl
theorem node9947_eq : Flapjack.WordAlloc.removeDeadStructural input9947 value4976 value1 value2 = (output9947, value4978, value1) := by
  rw [input9947_def, output9947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9945_eq]
  dsimp only
  rw [node9946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4979 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8837 (Flapjack.WordLangAddr.addr 8833 18446744073709551104#64)))).val
theorem input9948_def : input9948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8837 (Flapjack.WordLangAddr.addr 8833 18446744073709551104#64))) := by
  unfold input9948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8837 (Flapjack.WordLangAddr.addr 8833 18446744073709551104#64)))).val
theorem output9948_def : output9948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8837 (Flapjack.WordLangAddr.addr 8833 18446744073709551104#64))) := by
  unfold output9948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9948_skip : Flapjack.WordAlloc.isSkip output9948 = false := by
  rw [output9948_def]
  conv => lhs; cbv
  try rfl
theorem node9948_eq : Flapjack.WordAlloc.removeDeadStructural input9948 value4978 value1 value2 = (output9948, value4979, value1) := by
  rw [input9948_def, output9948_def]
  try (conv => lhs; cbv)
  try rfl

def value4980 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8833 8829)).val
theorem input9949_def : input9949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8833 8829) := by
  unfold input9949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8833 8829)).val
theorem output9949_def : output9949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8833 8829) := by
  unfold output9949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9949_skip : Flapjack.WordAlloc.isSkip output9949 = false := by
  rw [output9949_def]
  conv => lhs; cbv
  try rfl
theorem node9949_eq : Flapjack.WordAlloc.removeDeadStructural input9949 value4979 value1 value2 = (output9949, value4980, value1) := by
  rw [input9949_def, output9949_def]
  try (conv => lhs; cbv)
  try rfl

def value4981 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8829 8825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9950_def : input9950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8829 8825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8829 8825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9950_def : output9950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8829 8825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9950_skip : Flapjack.WordAlloc.isSkip output9950 = false := by
  rw [output9950_def]
  conv => lhs; cbv
  try rfl
theorem node9950_eq : Flapjack.WordAlloc.removeDeadStructural input9950 value4980 value1 value2 = (output9950, value4981, value1) := by
  rw [input9950_def, output9950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8825 Flapjack.WordStore.heapLength)).val
theorem input9951_def : input9951 = (Flapjack.WordLangProgHOL.get 8825 Flapjack.WordStore.heapLength) := by
  unfold input9951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8825 Flapjack.WordStore.heapLength)).val
theorem output9951_def : output9951 = (Flapjack.WordLangProgHOL.get 8825 Flapjack.WordStore.heapLength) := by
  unfold output9951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9951_skip : Flapjack.WordAlloc.isSkip output9951 = false := by
  rw [output9951_def]
  conv => lhs; cbv
  try rfl
theorem node9951_eq : Flapjack.WordAlloc.removeDeadStructural input9951 value4981 value1 value2 = (output9951, value5, value1) := by
  rw [input9951_def, output9951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9951 input9950)).val
theorem input9952_def : input9952 = (.seq input9951 input9950) := by
  unfold input9952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9951 output9950)).val
theorem output9952_def : output9952 = (.seq output9951 output9950) := by
  unfold output9952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9952_skip : Flapjack.WordAlloc.isSkip output9952 = false := by
  rw [output9952_def]
  conv => lhs; cbv
  try rfl
theorem node9952_eq : Flapjack.WordAlloc.removeDeadStructural input9952 value4980 value1 value2 = (output9952, value5, value1) := by
  rw [input9952_def, output9952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9950_eq]
  dsimp only
  rw [node9951_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9952 input9949)).val
theorem input9953_def : input9953 = (.seq input9952 input9949) := by
  unfold input9953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9952 output9949)).val
theorem output9953_def : output9953 = (.seq output9952 output9949) := by
  unfold output9953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9953_skip : Flapjack.WordAlloc.isSkip output9953 = false := by
  rw [output9953_def]
  conv => lhs; cbv
  try rfl
theorem node9953_eq : Flapjack.WordAlloc.removeDeadStructural input9953 value4979 value1 value2 = (output9953, value5, value1) := by
  rw [input9953_def, output9953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9949_eq]
  dsimp only
  rw [node9952_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9953 input9948)).val
theorem input9954_def : input9954 = (.seq input9953 input9948) := by
  unfold input9954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9953 output9948)).val
theorem output9954_def : output9954 = (.seq output9953 output9948) := by
  unfold output9954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9954_skip : Flapjack.WordAlloc.isSkip output9954 = false := by
  rw [output9954_def]
  conv => lhs; cbv
  try rfl
theorem node9954_eq : Flapjack.WordAlloc.removeDeadStructural input9954 value4978 value1 value2 = (output9954, value5, value1) := by
  rw [input9954_def, output9954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9948_eq]
  dsimp only
  rw [node9953_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9954 input9947)).val
theorem input9955_def : input9955 = (.seq input9954 input9947) := by
  unfold input9955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9954 output9947)).val
theorem output9955_def : output9955 = (.seq output9954 output9947) := by
  unfold output9955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9955_skip : Flapjack.WordAlloc.isSkip output9955 = false := by
  rw [output9955_def]
  conv => lhs; cbv
  try rfl
theorem node9955_eq : Flapjack.WordAlloc.removeDeadStructural input9955 value4976 value1 value2 = (output9955, value5, value1) := by
  rw [input9955_def, output9955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9947_eq]
  dsimp only
  rw [node9954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4982 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8817 (Flapjack.WordLangAddr.addr 8821 0#64)))).val
theorem input9956_def : input9956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8817 (Flapjack.WordLangAddr.addr 8821 0#64))) := by
  unfold input9956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8817 (Flapjack.WordLangAddr.addr 8821 0#64)))).val
theorem output9956_def : output9956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8817 (Flapjack.WordLangAddr.addr 8821 0#64))) := by
  unfold output9956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9956_skip : Flapjack.WordAlloc.isSkip output9956 = false := by
  rw [output9956_def]
  conv => lhs; cbv
  try rfl
theorem node9956_eq : Flapjack.WordAlloc.removeDeadStructural input9956 value5 value1 value2 = (output9956, value4982, value1) := by
  rw [input9956_def, output9956_def]
  try (conv => lhs; cbv)
  try rfl

def value4983 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8821, 8809)])).val
theorem input9957_def : input9957 = (Flapjack.WordLangProgHOL.move 0 [(8821, 8809)]) := by
  unfold input9957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8821, 8809)])).val
theorem output9957_def : output9957 = (Flapjack.WordLangProgHOL.move 0 [(8821, 8809)]) := by
  unfold output9957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9957_skip : Flapjack.WordAlloc.isSkip output9957 = false := by
  rw [output9957_def]
  conv => lhs; cbv
  try rfl
theorem node9957_eq : Flapjack.WordAlloc.removeDeadStructural input9957 value4982 value1 value2 = (output9957, value4983, value1) := by
  rw [input9957_def, output9957_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9957 input9956)).val
theorem input9958_def : input9958 = (.seq input9957 input9956) := by
  unfold input9958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9957 output9956)).val
theorem output9958_def : output9958 = (.seq output9957 output9956) := by
  unfold output9958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9958_skip : Flapjack.WordAlloc.isSkip output9958 = false := by
  rw [output9958_def]
  conv => lhs; cbv
  try rfl
theorem node9958_eq : Flapjack.WordAlloc.removeDeadStructural input9958 value5 value1 value2 = (output9958, value4983, value1) := by
  rw [input9958_def, output9958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9956_eq]
  dsimp only
  rw [node9957_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4984 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8817 11567228658253249817#64))).val
theorem input9959_def : input9959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8817 11567228658253249817#64)) := by
  unfold input9959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8817 11567228658253249817#64))).val
theorem output9959_def : output9959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8817 11567228658253249817#64)) := by
  unfold output9959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9959_skip : Flapjack.WordAlloc.isSkip output9959 = false := by
  rw [output9959_def]
  conv => lhs; cbv
  try rfl
theorem node9959_eq : Flapjack.WordAlloc.removeDeadStructural input9959 value4983 value1 value2 = (output9959, value4984, value1) := by
  rw [input9959_def, output9959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8813 11567228658253249817#64))).val
theorem input9960_def : input9960 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8813 11567228658253249817#64)) := by
  unfold input9960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9960_def : output9960 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9960_skip : Flapjack.WordAlloc.isSkip output9960 = true := by
  rw [output9960_def]
  conv => lhs; cbv
  try rfl
theorem node9960_eq : Flapjack.WordAlloc.removeDeadStructural input9960 value4984 value1 value2 = (output9960, value4984, value1) := by
  rw [input9960_def, output9960_def]
  try (conv => lhs; cbv)
  try rfl

def value4985 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8809 8801 (Flapjack.WordRegImm.reg 8805))))).val
theorem input9961_def : input9961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8809 8801 (Flapjack.WordRegImm.reg 8805)))) := by
  unfold input9961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8809 8801 (Flapjack.WordRegImm.reg 8805))))).val
theorem output9961_def : output9961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8809 8801 (Flapjack.WordRegImm.reg 8805)))) := by
  unfold output9961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9961_skip : Flapjack.WordAlloc.isSkip output9961 = false := by
  rw [output9961_def]
  conv => lhs; cbv
  try rfl
theorem node9961_eq : Flapjack.WordAlloc.removeDeadStructural input9961 value4984 value1 value2 = (output9961, value4985, value1) := by
  rw [input9961_def, output9961_def]
  try (conv => lhs; cbv)
  try rfl

def value4986 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8805 2152#64))).val
theorem input9962_def : input9962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8805 2152#64)) := by
  unfold input9962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8805 2152#64))).val
theorem output9962_def : output9962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8805 2152#64)) := by
  unfold output9962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9962_skip : Flapjack.WordAlloc.isSkip output9962 = false := by
  rw [output9962_def]
  conv => lhs; cbv
  try rfl
theorem node9962_eq : Flapjack.WordAlloc.removeDeadStructural input9962 value4985 value1 value2 = (output9962, value4986, value1) := by
  rw [input9962_def, output9962_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9962 input9961)).val
theorem input9963_def : input9963 = (.seq input9962 input9961) := by
  unfold input9963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9962 output9961)).val
theorem output9963_def : output9963 = (.seq output9962 output9961) := by
  unfold output9963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9963_skip : Flapjack.WordAlloc.isSkip output9963 = false := by
  rw [output9963_def]
  conv => lhs; cbv
  try rfl
theorem node9963_eq : Flapjack.WordAlloc.removeDeadStructural input9963 value4984 value1 value2 = (output9963, value4986, value1) := by
  rw [input9963_def, output9963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9961_eq]
  dsimp only
  rw [node9962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4987 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8801 (Flapjack.WordLangAddr.addr 8797 18446744073709551104#64)))).val
theorem input9964_def : input9964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8801 (Flapjack.WordLangAddr.addr 8797 18446744073709551104#64))) := by
  unfold input9964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8801 (Flapjack.WordLangAddr.addr 8797 18446744073709551104#64)))).val
theorem output9964_def : output9964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8801 (Flapjack.WordLangAddr.addr 8797 18446744073709551104#64))) := by
  unfold output9964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9964_skip : Flapjack.WordAlloc.isSkip output9964 = false := by
  rw [output9964_def]
  conv => lhs; cbv
  try rfl
theorem node9964_eq : Flapjack.WordAlloc.removeDeadStructural input9964 value4986 value1 value2 = (output9964, value4987, value1) := by
  rw [input9964_def, output9964_def]
  try (conv => lhs; cbv)
  try rfl

def value4988 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8797 8793)).val
theorem input9965_def : input9965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8797 8793) := by
  unfold input9965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8797 8793)).val
theorem output9965_def : output9965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8797 8793) := by
  unfold output9965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9965_skip : Flapjack.WordAlloc.isSkip output9965 = false := by
  rw [output9965_def]
  conv => lhs; cbv
  try rfl
theorem node9965_eq : Flapjack.WordAlloc.removeDeadStructural input9965 value4987 value1 value2 = (output9965, value4988, value1) := by
  rw [input9965_def, output9965_def]
  try (conv => lhs; cbv)
  try rfl

def value4989 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8793 8789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9966_def : input9966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8793 8789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8793 8789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9966_def : output9966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8793 8789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9966_skip : Flapjack.WordAlloc.isSkip output9966 = false := by
  rw [output9966_def]
  conv => lhs; cbv
  try rfl
theorem node9966_eq : Flapjack.WordAlloc.removeDeadStructural input9966 value4988 value1 value2 = (output9966, value4989, value1) := by
  rw [input9966_def, output9966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8789 Flapjack.WordStore.heapLength)).val
theorem input9967_def : input9967 = (Flapjack.WordLangProgHOL.get 8789 Flapjack.WordStore.heapLength) := by
  unfold input9967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8789 Flapjack.WordStore.heapLength)).val
theorem output9967_def : output9967 = (Flapjack.WordLangProgHOL.get 8789 Flapjack.WordStore.heapLength) := by
  unfold output9967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9967_skip : Flapjack.WordAlloc.isSkip output9967 = false := by
  rw [output9967_def]
  conv => lhs; cbv
  try rfl
theorem node9967_eq : Flapjack.WordAlloc.removeDeadStructural input9967 value4989 value1 value2 = (output9967, value5, value1) := by
  rw [input9967_def, output9967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9967 input9966)).val
theorem input9968_def : input9968 = (.seq input9967 input9966) := by
  unfold input9968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9967 output9966)).val
theorem output9968_def : output9968 = (.seq output9967 output9966) := by
  unfold output9968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9968_skip : Flapjack.WordAlloc.isSkip output9968 = false := by
  rw [output9968_def]
  conv => lhs; cbv
  try rfl
theorem node9968_eq : Flapjack.WordAlloc.removeDeadStructural input9968 value4988 value1 value2 = (output9968, value5, value1) := by
  rw [input9968_def, output9968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9966_eq]
  dsimp only
  rw [node9967_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9968 input9965)).val
theorem input9969_def : input9969 = (.seq input9968 input9965) := by
  unfold input9969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9968 output9965)).val
theorem output9969_def : output9969 = (.seq output9968 output9965) := by
  unfold output9969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9969_skip : Flapjack.WordAlloc.isSkip output9969 = false := by
  rw [output9969_def]
  conv => lhs; cbv
  try rfl
theorem node9969_eq : Flapjack.WordAlloc.removeDeadStructural input9969 value4987 value1 value2 = (output9969, value5, value1) := by
  rw [input9969_def, output9969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9965_eq]
  dsimp only
  rw [node9968_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9969 input9964)).val
theorem input9970_def : input9970 = (.seq input9969 input9964) := by
  unfold input9970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9969 output9964)).val
theorem output9970_def : output9970 = (.seq output9969 output9964) := by
  unfold output9970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9970_skip : Flapjack.WordAlloc.isSkip output9970 = false := by
  rw [output9970_def]
  conv => lhs; cbv
  try rfl
theorem node9970_eq : Flapjack.WordAlloc.removeDeadStructural input9970 value4986 value1 value2 = (output9970, value5, value1) := by
  rw [input9970_def, output9970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9964_eq]
  dsimp only
  rw [node9969_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9970 input9963)).val
theorem input9971_def : input9971 = (.seq input9970 input9963) := by
  unfold input9971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9970 output9963)).val
theorem output9971_def : output9971 = (.seq output9970 output9963) := by
  unfold output9971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9971_skip : Flapjack.WordAlloc.isSkip output9971 = false := by
  rw [output9971_def]
  conv => lhs; cbv
  try rfl
theorem node9971_eq : Flapjack.WordAlloc.removeDeadStructural input9971 value4984 value1 value2 = (output9971, value5, value1) := by
  rw [input9971_def, output9971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9963_eq]
  dsimp only
  rw [node9970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4990 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8781 (Flapjack.WordLangAddr.addr 8785 0#64)))).val
theorem input9972_def : input9972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8781 (Flapjack.WordLangAddr.addr 8785 0#64))) := by
  unfold input9972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8781 (Flapjack.WordLangAddr.addr 8785 0#64)))).val
theorem output9972_def : output9972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8781 (Flapjack.WordLangAddr.addr 8785 0#64))) := by
  unfold output9972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9972_skip : Flapjack.WordAlloc.isSkip output9972 = false := by
  rw [output9972_def]
  conv => lhs; cbv
  try rfl
theorem node9972_eq : Flapjack.WordAlloc.removeDeadStructural input9972 value5 value1 value2 = (output9972, value4990, value1) := by
  rw [input9972_def, output9972_def]
  try (conv => lhs; cbv)
  try rfl

def value4991 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8785, 8773)])).val
theorem input9973_def : input9973 = (Flapjack.WordLangProgHOL.move 0 [(8785, 8773)]) := by
  unfold input9973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8785, 8773)])).val
theorem output9973_def : output9973 = (Flapjack.WordLangProgHOL.move 0 [(8785, 8773)]) := by
  unfold output9973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9973_skip : Flapjack.WordAlloc.isSkip output9973 = false := by
  rw [output9973_def]
  conv => lhs; cbv
  try rfl
theorem node9973_eq : Flapjack.WordAlloc.removeDeadStructural input9973 value4990 value1 value2 = (output9973, value4991, value1) := by
  rw [input9973_def, output9973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9973 input9972)).val
theorem input9974_def : input9974 = (.seq input9973 input9972) := by
  unfold input9974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9973 output9972)).val
theorem output9974_def : output9974 = (.seq output9973 output9972) := by
  unfold output9974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9974_skip : Flapjack.WordAlloc.isSkip output9974 = false := by
  rw [output9974_def]
  conv => lhs; cbv
  try rfl
theorem node9974_eq : Flapjack.WordAlloc.removeDeadStructural input9974 value5 value1 value2 = (output9974, value4991, value1) := by
  rw [input9974_def, output9974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9972_eq]
  dsimp only
  rw [node9973_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4992 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8781 14777367860349315459#64))).val
theorem input9975_def : input9975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8781 14777367860349315459#64)) := by
  unfold input9975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8781 14777367860349315459#64))).val
theorem output9975_def : output9975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8781 14777367860349315459#64)) := by
  unfold output9975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9975_skip : Flapjack.WordAlloc.isSkip output9975 = false := by
  rw [output9975_def]
  conv => lhs; cbv
  try rfl
theorem node9975_eq : Flapjack.WordAlloc.removeDeadStructural input9975 value4991 value1 value2 = (output9975, value4992, value1) := by
  rw [input9975_def, output9975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8777 14777367860349315459#64))).val
theorem input9976_def : input9976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8777 14777367860349315459#64)) := by
  unfold input9976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9976_def : output9976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9976_skip : Flapjack.WordAlloc.isSkip output9976 = true := by
  rw [output9976_def]
  conv => lhs; cbv
  try rfl
theorem node9976_eq : Flapjack.WordAlloc.removeDeadStructural input9976 value4992 value1 value2 = (output9976, value4992, value1) := by
  rw [input9976_def, output9976_def]
  try (conv => lhs; cbv)
  try rfl

def value4993 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8773 8765 (Flapjack.WordRegImm.reg 8769))))).val
theorem input9977_def : input9977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8773 8765 (Flapjack.WordRegImm.reg 8769)))) := by
  unfold input9977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8773 8765 (Flapjack.WordRegImm.reg 8769))))).val
theorem output9977_def : output9977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8773 8765 (Flapjack.WordRegImm.reg 8769)))) := by
  unfold output9977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9977_skip : Flapjack.WordAlloc.isSkip output9977 = false := by
  rw [output9977_def]
  conv => lhs; cbv
  try rfl
theorem node9977_eq : Flapjack.WordAlloc.removeDeadStructural input9977 value4992 value1 value2 = (output9977, value4993, value1) := by
  rw [input9977_def, output9977_def]
  try (conv => lhs; cbv)
  try rfl

def value4994 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8769 2144#64))).val
theorem input9978_def : input9978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8769 2144#64)) := by
  unfold input9978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8769 2144#64))).val
theorem output9978_def : output9978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8769 2144#64)) := by
  unfold output9978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9978_skip : Flapjack.WordAlloc.isSkip output9978 = false := by
  rw [output9978_def]
  conv => lhs; cbv
  try rfl
theorem node9978_eq : Flapjack.WordAlloc.removeDeadStructural input9978 value4993 value1 value2 = (output9978, value4994, value1) := by
  rw [input9978_def, output9978_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9978 input9977)).val
theorem input9979_def : input9979 = (.seq input9978 input9977) := by
  unfold input9979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9978 output9977)).val
theorem output9979_def : output9979 = (.seq output9978 output9977) := by
  unfold output9979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9979_skip : Flapjack.WordAlloc.isSkip output9979 = false := by
  rw [output9979_def]
  conv => lhs; cbv
  try rfl
theorem node9979_eq : Flapjack.WordAlloc.removeDeadStructural input9979 value4992 value1 value2 = (output9979, value4994, value1) := by
  rw [input9979_def, output9979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9977_eq]
  dsimp only
  rw [node9978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4995 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8765 (Flapjack.WordLangAddr.addr 8761 18446744073709551104#64)))).val
theorem input9980_def : input9980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8765 (Flapjack.WordLangAddr.addr 8761 18446744073709551104#64))) := by
  unfold input9980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8765 (Flapjack.WordLangAddr.addr 8761 18446744073709551104#64)))).val
theorem output9980_def : output9980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8765 (Flapjack.WordLangAddr.addr 8761 18446744073709551104#64))) := by
  unfold output9980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9980_skip : Flapjack.WordAlloc.isSkip output9980 = false := by
  rw [output9980_def]
  conv => lhs; cbv
  try rfl
theorem node9980_eq : Flapjack.WordAlloc.removeDeadStructural input9980 value4994 value1 value2 = (output9980, value4995, value1) := by
  rw [input9980_def, output9980_def]
  try (conv => lhs; cbv)
  try rfl

def value4996 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8761 8757)).val
theorem input9981_def : input9981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8761 8757) := by
  unfold input9981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8761 8757)).val
theorem output9981_def : output9981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8761 8757) := by
  unfold output9981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9981_skip : Flapjack.WordAlloc.isSkip output9981 = false := by
  rw [output9981_def]
  conv => lhs; cbv
  try rfl
theorem node9981_eq : Flapjack.WordAlloc.removeDeadStructural input9981 value4995 value1 value2 = (output9981, value4996, value1) := by
  rw [input9981_def, output9981_def]
  try (conv => lhs; cbv)
  try rfl

def value4997 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8757 8753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9982_def : input9982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8757 8753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8757 8753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9982_def : output9982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8757 8753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9982_skip : Flapjack.WordAlloc.isSkip output9982 = false := by
  rw [output9982_def]
  conv => lhs; cbv
  try rfl
theorem node9982_eq : Flapjack.WordAlloc.removeDeadStructural input9982 value4996 value1 value2 = (output9982, value4997, value1) := by
  rw [input9982_def, output9982_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8753 Flapjack.WordStore.heapLength)).val
theorem input9983_def : input9983 = (Flapjack.WordLangProgHOL.get 8753 Flapjack.WordStore.heapLength) := by
  unfold input9983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8753 Flapjack.WordStore.heapLength)).val
theorem output9983_def : output9983 = (Flapjack.WordLangProgHOL.get 8753 Flapjack.WordStore.heapLength) := by
  unfold output9983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9983_skip : Flapjack.WordAlloc.isSkip output9983 = false := by
  rw [output9983_def]
  conv => lhs; cbv
  try rfl
theorem node9983_eq : Flapjack.WordAlloc.removeDeadStructural input9983 value4997 value1 value2 = (output9983, value5, value1) := by
  rw [input9983_def, output9983_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node9983_eq
end InitECandidate.Proofs.DeadStages713
