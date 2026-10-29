import InitECandidate.Proofs.DeadStages713.Chunk036
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input9472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9471 input9470)).val
theorem input9472_def : input9472 = (.seq input9471 input9470) := by
  unfold input9472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9471 output9470)).val
theorem output9472_def : output9472 = (.seq output9471 output9470) := by
  unfold output9472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9472_skip : Flapjack.WordAlloc.isSkip output9472 = false := by
  rw [output9472_def]
  conv => lhs; cbv
  try rfl
theorem node9472_eq : Flapjack.WordAlloc.removeDeadStructural input9472 value4740 value1 value2 = (output9472, value5, value1) := by
  rw [input9472_def, output9472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9470_eq]
  dsimp only
  rw [node9471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9472 input9469)).val
theorem input9473_def : input9473 = (.seq input9472 input9469) := by
  unfold input9473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9472 output9469)).val
theorem output9473_def : output9473 = (.seq output9472 output9469) := by
  unfold output9473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9473_skip : Flapjack.WordAlloc.isSkip output9473 = false := by
  rw [output9473_def]
  conv => lhs; cbv
  try rfl
theorem node9473_eq : Flapjack.WordAlloc.removeDeadStructural input9473 value4739 value1 value2 = (output9473, value5, value1) := by
  rw [input9473_def, output9473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9469_eq]
  dsimp only
  rw [node9472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9473 input9468)).val
theorem input9474_def : input9474 = (.seq input9473 input9468) := by
  unfold input9474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9473 output9468)).val
theorem output9474_def : output9474 = (.seq output9473 output9468) := by
  unfold output9474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9474_skip : Flapjack.WordAlloc.isSkip output9474 = false := by
  rw [output9474_def]
  conv => lhs; cbv
  try rfl
theorem node9474_eq : Flapjack.WordAlloc.removeDeadStructural input9474 value4738 value1 value2 = (output9474, value5, value1) := by
  rw [input9474_def, output9474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9468_eq]
  dsimp only
  rw [node9473_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9474 input9467)).val
theorem input9475_def : input9475 = (.seq input9474 input9467) := by
  unfold input9475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9474 output9467)).val
theorem output9475_def : output9475 = (.seq output9474 output9467) := by
  unfold output9475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9475_skip : Flapjack.WordAlloc.isSkip output9475 = false := by
  rw [output9475_def]
  conv => lhs; cbv
  try rfl
theorem node9475_eq : Flapjack.WordAlloc.removeDeadStructural input9475 value4736 value1 value2 = (output9475, value5, value1) := by
  rw [input9475_def, output9475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9467_eq]
  dsimp only
  rw [node9474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4742 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9897 (Flapjack.WordLangAddr.addr 9901 0#64)))).val
theorem input9476_def : input9476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9897 (Flapjack.WordLangAddr.addr 9901 0#64))) := by
  unfold input9476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9897 (Flapjack.WordLangAddr.addr 9901 0#64)))).val
theorem output9476_def : output9476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9897 (Flapjack.WordLangAddr.addr 9901 0#64))) := by
  unfold output9476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9476_skip : Flapjack.WordAlloc.isSkip output9476 = false := by
  rw [output9476_def]
  conv => lhs; cbv
  try rfl
theorem node9476_eq : Flapjack.WordAlloc.removeDeadStructural input9476 value5 value1 value2 = (output9476, value4742, value1) := by
  rw [input9476_def, output9476_def]
  try (conv => lhs; cbv)
  try rfl

def value4743 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9901, 9889)])).val
theorem input9477_def : input9477 = (Flapjack.WordLangProgHOL.move 0 [(9901, 9889)]) := by
  unfold input9477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9901, 9889)])).val
theorem output9477_def : output9477 = (Flapjack.WordLangProgHOL.move 0 [(9901, 9889)]) := by
  unfold output9477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9477_skip : Flapjack.WordAlloc.isSkip output9477 = false := by
  rw [output9477_def]
  conv => lhs; cbv
  try rfl
theorem node9477_eq : Flapjack.WordAlloc.removeDeadStructural input9477 value4742 value1 value2 = (output9477, value4743, value1) := by
  rw [input9477_def, output9477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9477 input9476)).val
theorem input9478_def : input9478 = (.seq input9477 input9476) := by
  unfold input9478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9477 output9476)).val
theorem output9478_def : output9478 = (.seq output9477 output9476) := by
  unfold output9478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9478_skip : Flapjack.WordAlloc.isSkip output9478 = false := by
  rw [output9478_def]
  conv => lhs; cbv
  try rfl
theorem node9478_eq : Flapjack.WordAlloc.removeDeadStructural input9478 value5 value1 value2 = (output9478, value4743, value1) := by
  rw [input9478_def, output9478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9476_eq]
  dsimp only
  rw [node9477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4744 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9897 17769927732099571180#64))).val
theorem input9479_def : input9479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9897 17769927732099571180#64)) := by
  unfold input9479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9897 17769927732099571180#64))).val
theorem output9479_def : output9479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9897 17769927732099571180#64)) := by
  unfold output9479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9479_skip : Flapjack.WordAlloc.isSkip output9479 = false := by
  rw [output9479_def]
  conv => lhs; cbv
  try rfl
theorem node9479_eq : Flapjack.WordAlloc.removeDeadStructural input9479 value4743 value1 value2 = (output9479, value4744, value1) := by
  rw [input9479_def, output9479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9893 17769927732099571180#64))).val
theorem input9480_def : input9480 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9893 17769927732099571180#64)) := by
  unfold input9480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9480_def : output9480 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9480_skip : Flapjack.WordAlloc.isSkip output9480 = true := by
  rw [output9480_def]
  conv => lhs; cbv
  try rfl
theorem node9480_eq : Flapjack.WordAlloc.removeDeadStructural input9480 value4744 value1 value2 = (output9480, value4744, value1) := by
  rw [input9480_def, output9480_def]
  try (conv => lhs; cbv)
  try rfl

def value4745 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9889 9881 (Flapjack.WordRegImm.reg 9885))))).val
theorem input9481_def : input9481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9889 9881 (Flapjack.WordRegImm.reg 9885)))) := by
  unfold input9481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9889 9881 (Flapjack.WordRegImm.reg 9885))))).val
theorem output9481_def : output9481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9889 9881 (Flapjack.WordRegImm.reg 9885)))) := by
  unfold output9481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9481_skip : Flapjack.WordAlloc.isSkip output9481 = false := by
  rw [output9481_def]
  conv => lhs; cbv
  try rfl
theorem node9481_eq : Flapjack.WordAlloc.removeDeadStructural input9481 value4744 value1 value2 = (output9481, value4745, value1) := by
  rw [input9481_def, output9481_def]
  try (conv => lhs; cbv)
  try rfl

def value4746 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9885 2392#64))).val
theorem input9482_def : input9482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9885 2392#64)) := by
  unfold input9482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9885 2392#64))).val
theorem output9482_def : output9482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9885 2392#64)) := by
  unfold output9482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9482_skip : Flapjack.WordAlloc.isSkip output9482 = false := by
  rw [output9482_def]
  conv => lhs; cbv
  try rfl
theorem node9482_eq : Flapjack.WordAlloc.removeDeadStructural input9482 value4745 value1 value2 = (output9482, value4746, value1) := by
  rw [input9482_def, output9482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9482 input9481)).val
theorem input9483_def : input9483 = (.seq input9482 input9481) := by
  unfold input9483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9482 output9481)).val
theorem output9483_def : output9483 = (.seq output9482 output9481) := by
  unfold output9483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9483_skip : Flapjack.WordAlloc.isSkip output9483 = false := by
  rw [output9483_def]
  conv => lhs; cbv
  try rfl
theorem node9483_eq : Flapjack.WordAlloc.removeDeadStructural input9483 value4744 value1 value2 = (output9483, value4746, value1) := by
  rw [input9483_def, output9483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9481_eq]
  dsimp only
  rw [node9482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4747 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9881 (Flapjack.WordLangAddr.addr 9877 18446744073709551104#64)))).val
theorem input9484_def : input9484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9881 (Flapjack.WordLangAddr.addr 9877 18446744073709551104#64))) := by
  unfold input9484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9881 (Flapjack.WordLangAddr.addr 9877 18446744073709551104#64)))).val
theorem output9484_def : output9484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9881 (Flapjack.WordLangAddr.addr 9877 18446744073709551104#64))) := by
  unfold output9484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9484_skip : Flapjack.WordAlloc.isSkip output9484 = false := by
  rw [output9484_def]
  conv => lhs; cbv
  try rfl
theorem node9484_eq : Flapjack.WordAlloc.removeDeadStructural input9484 value4746 value1 value2 = (output9484, value4747, value1) := by
  rw [input9484_def, output9484_def]
  try (conv => lhs; cbv)
  try rfl

def value4748 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9877 9873)).val
theorem input9485_def : input9485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9877 9873) := by
  unfold input9485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9877 9873)).val
theorem output9485_def : output9485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9877 9873) := by
  unfold output9485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9485_skip : Flapjack.WordAlloc.isSkip output9485 = false := by
  rw [output9485_def]
  conv => lhs; cbv
  try rfl
theorem node9485_eq : Flapjack.WordAlloc.removeDeadStructural input9485 value4747 value1 value2 = (output9485, value4748, value1) := by
  rw [input9485_def, output9485_def]
  try (conv => lhs; cbv)
  try rfl

def value4749 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9873 9869 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9486_def : input9486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9873 9869 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9873 9869 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9486_def : output9486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9873 9869 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9486_skip : Flapjack.WordAlloc.isSkip output9486 = false := by
  rw [output9486_def]
  conv => lhs; cbv
  try rfl
theorem node9486_eq : Flapjack.WordAlloc.removeDeadStructural input9486 value4748 value1 value2 = (output9486, value4749, value1) := by
  rw [input9486_def, output9486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9869 Flapjack.WordStore.heapLength)).val
theorem input9487_def : input9487 = (Flapjack.WordLangProgHOL.get 9869 Flapjack.WordStore.heapLength) := by
  unfold input9487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9869 Flapjack.WordStore.heapLength)).val
theorem output9487_def : output9487 = (Flapjack.WordLangProgHOL.get 9869 Flapjack.WordStore.heapLength) := by
  unfold output9487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9487_skip : Flapjack.WordAlloc.isSkip output9487 = false := by
  rw [output9487_def]
  conv => lhs; cbv
  try rfl
theorem node9487_eq : Flapjack.WordAlloc.removeDeadStructural input9487 value4749 value1 value2 = (output9487, value5, value1) := by
  rw [input9487_def, output9487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9487 input9486)).val
theorem input9488_def : input9488 = (.seq input9487 input9486) := by
  unfold input9488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9487 output9486)).val
theorem output9488_def : output9488 = (.seq output9487 output9486) := by
  unfold output9488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9488_skip : Flapjack.WordAlloc.isSkip output9488 = false := by
  rw [output9488_def]
  conv => lhs; cbv
  try rfl
theorem node9488_eq : Flapjack.WordAlloc.removeDeadStructural input9488 value4748 value1 value2 = (output9488, value5, value1) := by
  rw [input9488_def, output9488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9486_eq]
  dsimp only
  rw [node9487_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9488 input9485)).val
theorem input9489_def : input9489 = (.seq input9488 input9485) := by
  unfold input9489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9488 output9485)).val
theorem output9489_def : output9489 = (.seq output9488 output9485) := by
  unfold output9489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9489_skip : Flapjack.WordAlloc.isSkip output9489 = false := by
  rw [output9489_def]
  conv => lhs; cbv
  try rfl
theorem node9489_eq : Flapjack.WordAlloc.removeDeadStructural input9489 value4747 value1 value2 = (output9489, value5, value1) := by
  rw [input9489_def, output9489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9485_eq]
  dsimp only
  rw [node9488_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9489 input9484)).val
theorem input9490_def : input9490 = (.seq input9489 input9484) := by
  unfold input9490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9489 output9484)).val
theorem output9490_def : output9490 = (.seq output9489 output9484) := by
  unfold output9490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9490_skip : Flapjack.WordAlloc.isSkip output9490 = false := by
  rw [output9490_def]
  conv => lhs; cbv
  try rfl
theorem node9490_eq : Flapjack.WordAlloc.removeDeadStructural input9490 value4746 value1 value2 = (output9490, value5, value1) := by
  rw [input9490_def, output9490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9484_eq]
  dsimp only
  rw [node9489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9490 input9483)).val
theorem input9491_def : input9491 = (.seq input9490 input9483) := by
  unfold input9491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9490 output9483)).val
theorem output9491_def : output9491 = (.seq output9490 output9483) := by
  unfold output9491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9491_skip : Flapjack.WordAlloc.isSkip output9491 = false := by
  rw [output9491_def]
  conv => lhs; cbv
  try rfl
theorem node9491_eq : Flapjack.WordAlloc.removeDeadStructural input9491 value4744 value1 value2 = (output9491, value5, value1) := by
  rw [input9491_def, output9491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9483_eq]
  dsimp only
  rw [node9490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4750 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9861 (Flapjack.WordLangAddr.addr 9865 0#64)))).val
theorem input9492_def : input9492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9861 (Flapjack.WordLangAddr.addr 9865 0#64))) := by
  unfold input9492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9861 (Flapjack.WordLangAddr.addr 9865 0#64)))).val
theorem output9492_def : output9492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9861 (Flapjack.WordLangAddr.addr 9865 0#64))) := by
  unfold output9492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9492_skip : Flapjack.WordAlloc.isSkip output9492 = false := by
  rw [output9492_def]
  conv => lhs; cbv
  try rfl
theorem node9492_eq : Flapjack.WordAlloc.removeDeadStructural input9492 value5 value1 value2 = (output9492, value4750, value1) := by
  rw [input9492_def, output9492_def]
  try (conv => lhs; cbv)
  try rfl

def value4751 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9865, 9853)])).val
theorem input9493_def : input9493 = (Flapjack.WordLangProgHOL.move 0 [(9865, 9853)]) := by
  unfold input9493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9865, 9853)])).val
theorem output9493_def : output9493 = (Flapjack.WordLangProgHOL.move 0 [(9865, 9853)]) := by
  unfold output9493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9493_skip : Flapjack.WordAlloc.isSkip output9493 = false := by
  rw [output9493_def]
  conv => lhs; cbv
  try rfl
theorem node9493_eq : Flapjack.WordAlloc.removeDeadStructural input9493 value4750 value1 value2 = (output9493, value4751, value1) := by
  rw [input9493_def, output9493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9493 input9492)).val
theorem input9494_def : input9494 = (.seq input9493 input9492) := by
  unfold input9494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9493 output9492)).val
theorem output9494_def : output9494 = (.seq output9493 output9492) := by
  unfold output9494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9494_skip : Flapjack.WordAlloc.isSkip output9494 = false := by
  rw [output9494_def]
  conv => lhs; cbv
  try rfl
theorem node9494_eq : Flapjack.WordAlloc.removeDeadStructural input9494 value5 value1 value2 = (output9494, value4751, value1) := by
  rw [input9494_def, output9494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9492_eq]
  dsimp only
  rw [node9493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4752 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9861 14584871380308065147#64))).val
theorem input9495_def : input9495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9861 14584871380308065147#64)) := by
  unfold input9495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9861 14584871380308065147#64))).val
theorem output9495_def : output9495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9861 14584871380308065147#64)) := by
  unfold output9495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9495_skip : Flapjack.WordAlloc.isSkip output9495 = false := by
  rw [output9495_def]
  conv => lhs; cbv
  try rfl
theorem node9495_eq : Flapjack.WordAlloc.removeDeadStructural input9495 value4751 value1 value2 = (output9495, value4752, value1) := by
  rw [input9495_def, output9495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9857 14584871380308065147#64))).val
theorem input9496_def : input9496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9857 14584871380308065147#64)) := by
  unfold input9496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9496_def : output9496 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9496_skip : Flapjack.WordAlloc.isSkip output9496 = true := by
  rw [output9496_def]
  conv => lhs; cbv
  try rfl
theorem node9496_eq : Flapjack.WordAlloc.removeDeadStructural input9496 value4752 value1 value2 = (output9496, value4752, value1) := by
  rw [input9496_def, output9496_def]
  try (conv => lhs; cbv)
  try rfl

def value4753 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9853 9845 (Flapjack.WordRegImm.reg 9849))))).val
theorem input9497_def : input9497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9853 9845 (Flapjack.WordRegImm.reg 9849)))) := by
  unfold input9497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9853 9845 (Flapjack.WordRegImm.reg 9849))))).val
theorem output9497_def : output9497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9853 9845 (Flapjack.WordRegImm.reg 9849)))) := by
  unfold output9497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9497_skip : Flapjack.WordAlloc.isSkip output9497 = false := by
  rw [output9497_def]
  conv => lhs; cbv
  try rfl
theorem node9497_eq : Flapjack.WordAlloc.removeDeadStructural input9497 value4752 value1 value2 = (output9497, value4753, value1) := by
  rw [input9497_def, output9497_def]
  try (conv => lhs; cbv)
  try rfl

def value4754 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9849 2384#64))).val
theorem input9498_def : input9498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9849 2384#64)) := by
  unfold input9498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9849 2384#64))).val
theorem output9498_def : output9498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9849 2384#64)) := by
  unfold output9498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9498_skip : Flapjack.WordAlloc.isSkip output9498 = false := by
  rw [output9498_def]
  conv => lhs; cbv
  try rfl
theorem node9498_eq : Flapjack.WordAlloc.removeDeadStructural input9498 value4753 value1 value2 = (output9498, value4754, value1) := by
  rw [input9498_def, output9498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9498 input9497)).val
theorem input9499_def : input9499 = (.seq input9498 input9497) := by
  unfold input9499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9498 output9497)).val
theorem output9499_def : output9499 = (.seq output9498 output9497) := by
  unfold output9499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9499_skip : Flapjack.WordAlloc.isSkip output9499 = false := by
  rw [output9499_def]
  conv => lhs; cbv
  try rfl
theorem node9499_eq : Flapjack.WordAlloc.removeDeadStructural input9499 value4752 value1 value2 = (output9499, value4754, value1) := by
  rw [input9499_def, output9499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9497_eq]
  dsimp only
  rw [node9498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4755 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9845 (Flapjack.WordLangAddr.addr 9841 18446744073709551104#64)))).val
theorem input9500_def : input9500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9845 (Flapjack.WordLangAddr.addr 9841 18446744073709551104#64))) := by
  unfold input9500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9845 (Flapjack.WordLangAddr.addr 9841 18446744073709551104#64)))).val
theorem output9500_def : output9500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9845 (Flapjack.WordLangAddr.addr 9841 18446744073709551104#64))) := by
  unfold output9500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9500_skip : Flapjack.WordAlloc.isSkip output9500 = false := by
  rw [output9500_def]
  conv => lhs; cbv
  try rfl
theorem node9500_eq : Flapjack.WordAlloc.removeDeadStructural input9500 value4754 value1 value2 = (output9500, value4755, value1) := by
  rw [input9500_def, output9500_def]
  try (conv => lhs; cbv)
  try rfl

def value4756 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9841 9837)).val
theorem input9501_def : input9501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9841 9837) := by
  unfold input9501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9841 9837)).val
theorem output9501_def : output9501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9841 9837) := by
  unfold output9501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9501_skip : Flapjack.WordAlloc.isSkip output9501 = false := by
  rw [output9501_def]
  conv => lhs; cbv
  try rfl
theorem node9501_eq : Flapjack.WordAlloc.removeDeadStructural input9501 value4755 value1 value2 = (output9501, value4756, value1) := by
  rw [input9501_def, output9501_def]
  try (conv => lhs; cbv)
  try rfl

def value4757 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9837 9833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9502_def : input9502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9837 9833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9837 9833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9502_def : output9502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9837 9833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9502_skip : Flapjack.WordAlloc.isSkip output9502 = false := by
  rw [output9502_def]
  conv => lhs; cbv
  try rfl
theorem node9502_eq : Flapjack.WordAlloc.removeDeadStructural input9502 value4756 value1 value2 = (output9502, value4757, value1) := by
  rw [input9502_def, output9502_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9833 Flapjack.WordStore.heapLength)).val
theorem input9503_def : input9503 = (Flapjack.WordLangProgHOL.get 9833 Flapjack.WordStore.heapLength) := by
  unfold input9503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9833 Flapjack.WordStore.heapLength)).val
theorem output9503_def : output9503 = (Flapjack.WordLangProgHOL.get 9833 Flapjack.WordStore.heapLength) := by
  unfold output9503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9503_skip : Flapjack.WordAlloc.isSkip output9503 = false := by
  rw [output9503_def]
  conv => lhs; cbv
  try rfl
theorem node9503_eq : Flapjack.WordAlloc.removeDeadStructural input9503 value4757 value1 value2 = (output9503, value5, value1) := by
  rw [input9503_def, output9503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9503 input9502)).val
theorem input9504_def : input9504 = (.seq input9503 input9502) := by
  unfold input9504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9503 output9502)).val
theorem output9504_def : output9504 = (.seq output9503 output9502) := by
  unfold output9504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9504_skip : Flapjack.WordAlloc.isSkip output9504 = false := by
  rw [output9504_def]
  conv => lhs; cbv
  try rfl
theorem node9504_eq : Flapjack.WordAlloc.removeDeadStructural input9504 value4756 value1 value2 = (output9504, value5, value1) := by
  rw [input9504_def, output9504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9502_eq]
  dsimp only
  rw [node9503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9504 input9501)).val
theorem input9505_def : input9505 = (.seq input9504 input9501) := by
  unfold input9505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9504 output9501)).val
theorem output9505_def : output9505 = (.seq output9504 output9501) := by
  unfold output9505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9505_skip : Flapjack.WordAlloc.isSkip output9505 = false := by
  rw [output9505_def]
  conv => lhs; cbv
  try rfl
theorem node9505_eq : Flapjack.WordAlloc.removeDeadStructural input9505 value4755 value1 value2 = (output9505, value5, value1) := by
  rw [input9505_def, output9505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9501_eq]
  dsimp only
  rw [node9504_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9505 input9500)).val
theorem input9506_def : input9506 = (.seq input9505 input9500) := by
  unfold input9506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9505 output9500)).val
theorem output9506_def : output9506 = (.seq output9505 output9500) := by
  unfold output9506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9506_skip : Flapjack.WordAlloc.isSkip output9506 = false := by
  rw [output9506_def]
  conv => lhs; cbv
  try rfl
theorem node9506_eq : Flapjack.WordAlloc.removeDeadStructural input9506 value4754 value1 value2 = (output9506, value5, value1) := by
  rw [input9506_def, output9506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9500_eq]
  dsimp only
  rw [node9505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9506 input9499)).val
theorem input9507_def : input9507 = (.seq input9506 input9499) := by
  unfold input9507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9506 output9499)).val
theorem output9507_def : output9507 = (.seq output9506 output9499) := by
  unfold output9507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9507_skip : Flapjack.WordAlloc.isSkip output9507 = false := by
  rw [output9507_def]
  conv => lhs; cbv
  try rfl
theorem node9507_eq : Flapjack.WordAlloc.removeDeadStructural input9507 value4752 value1 value2 = (output9507, value5, value1) := by
  rw [input9507_def, output9507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9499_eq]
  dsimp only
  rw [node9506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4758 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9825 (Flapjack.WordLangAddr.addr 9829 0#64)))).val
theorem input9508_def : input9508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9825 (Flapjack.WordLangAddr.addr 9829 0#64))) := by
  unfold input9508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9825 (Flapjack.WordLangAddr.addr 9829 0#64)))).val
theorem output9508_def : output9508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9825 (Flapjack.WordLangAddr.addr 9829 0#64))) := by
  unfold output9508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9508_skip : Flapjack.WordAlloc.isSkip output9508 = false := by
  rw [output9508_def]
  conv => lhs; cbv
  try rfl
theorem node9508_eq : Flapjack.WordAlloc.removeDeadStructural input9508 value5 value1 value2 = (output9508, value4758, value1) := by
  rw [input9508_def, output9508_def]
  try (conv => lhs; cbv)
  try rfl

def value4759 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9829, 9817)])).val
theorem input9509_def : input9509 = (Flapjack.WordLangProgHOL.move 0 [(9829, 9817)]) := by
  unfold input9509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9829, 9817)])).val
theorem output9509_def : output9509 = (Flapjack.WordLangProgHOL.move 0 [(9829, 9817)]) := by
  unfold output9509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9509_skip : Flapjack.WordAlloc.isSkip output9509 = false := by
  rw [output9509_def]
  conv => lhs; cbv
  try rfl
theorem node9509_eq : Flapjack.WordAlloc.removeDeadStructural input9509 value4758 value1 value2 = (output9509, value4759, value1) := by
  rw [input9509_def, output9509_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9509 input9508)).val
theorem input9510_def : input9510 = (.seq input9509 input9508) := by
  unfold input9510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9509 output9508)).val
theorem output9510_def : output9510 = (.seq output9509 output9508) := by
  unfold output9510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9510_skip : Flapjack.WordAlloc.isSkip output9510 = false := by
  rw [output9510_def]
  conv => lhs; cbv
  try rfl
theorem node9510_eq : Flapjack.WordAlloc.removeDeadStructural input9510 value5 value1 value2 = (output9510, value4759, value1) := by
  rw [input9510_def, output9510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9508_eq]
  dsimp only
  rw [node9509_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4760 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9825 1628930385436977092#64))).val
theorem input9511_def : input9511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9825 1628930385436977092#64)) := by
  unfold input9511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9825 1628930385436977092#64))).val
theorem output9511_def : output9511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9825 1628930385436977092#64)) := by
  unfold output9511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9511_skip : Flapjack.WordAlloc.isSkip output9511 = false := by
  rw [output9511_def]
  conv => lhs; cbv
  try rfl
theorem node9511_eq : Flapjack.WordAlloc.removeDeadStructural input9511 value4759 value1 value2 = (output9511, value4760, value1) := by
  rw [input9511_def, output9511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9821 1628930385436977092#64))).val
theorem input9512_def : input9512 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9821 1628930385436977092#64)) := by
  unfold input9512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9512_def : output9512 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9512_skip : Flapjack.WordAlloc.isSkip output9512 = true := by
  rw [output9512_def]
  conv => lhs; cbv
  try rfl
theorem node9512_eq : Flapjack.WordAlloc.removeDeadStructural input9512 value4760 value1 value2 = (output9512, value4760, value1) := by
  rw [input9512_def, output9512_def]
  try (conv => lhs; cbv)
  try rfl

def value4761 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9817 9809 (Flapjack.WordRegImm.reg 9813))))).val
theorem input9513_def : input9513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9817 9809 (Flapjack.WordRegImm.reg 9813)))) := by
  unfold input9513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9817 9809 (Flapjack.WordRegImm.reg 9813))))).val
theorem output9513_def : output9513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9817 9809 (Flapjack.WordRegImm.reg 9813)))) := by
  unfold output9513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9513_skip : Flapjack.WordAlloc.isSkip output9513 = false := by
  rw [output9513_def]
  conv => lhs; cbv
  try rfl
theorem node9513_eq : Flapjack.WordAlloc.removeDeadStructural input9513 value4760 value1 value2 = (output9513, value4761, value1) := by
  rw [input9513_def, output9513_def]
  try (conv => lhs; cbv)
  try rfl

def value4762 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9813 2376#64))).val
theorem input9514_def : input9514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9813 2376#64)) := by
  unfold input9514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9813 2376#64))).val
theorem output9514_def : output9514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9813 2376#64)) := by
  unfold output9514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9514_skip : Flapjack.WordAlloc.isSkip output9514 = false := by
  rw [output9514_def]
  conv => lhs; cbv
  try rfl
theorem node9514_eq : Flapjack.WordAlloc.removeDeadStructural input9514 value4761 value1 value2 = (output9514, value4762, value1) := by
  rw [input9514_def, output9514_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9514 input9513)).val
theorem input9515_def : input9515 = (.seq input9514 input9513) := by
  unfold input9515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9514 output9513)).val
theorem output9515_def : output9515 = (.seq output9514 output9513) := by
  unfold output9515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9515_skip : Flapjack.WordAlloc.isSkip output9515 = false := by
  rw [output9515_def]
  conv => lhs; cbv
  try rfl
theorem node9515_eq : Flapjack.WordAlloc.removeDeadStructural input9515 value4760 value1 value2 = (output9515, value4762, value1) := by
  rw [input9515_def, output9515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9513_eq]
  dsimp only
  rw [node9514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4763 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9809 (Flapjack.WordLangAddr.addr 9805 18446744073709551104#64)))).val
theorem input9516_def : input9516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9809 (Flapjack.WordLangAddr.addr 9805 18446744073709551104#64))) := by
  unfold input9516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9809 (Flapjack.WordLangAddr.addr 9805 18446744073709551104#64)))).val
theorem output9516_def : output9516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9809 (Flapjack.WordLangAddr.addr 9805 18446744073709551104#64))) := by
  unfold output9516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9516_skip : Flapjack.WordAlloc.isSkip output9516 = false := by
  rw [output9516_def]
  conv => lhs; cbv
  try rfl
theorem node9516_eq : Flapjack.WordAlloc.removeDeadStructural input9516 value4762 value1 value2 = (output9516, value4763, value1) := by
  rw [input9516_def, output9516_def]
  try (conv => lhs; cbv)
  try rfl

def value4764 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9805 9801)).val
theorem input9517_def : input9517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9805 9801) := by
  unfold input9517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9805 9801)).val
theorem output9517_def : output9517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9805 9801) := by
  unfold output9517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9517_skip : Flapjack.WordAlloc.isSkip output9517 = false := by
  rw [output9517_def]
  conv => lhs; cbv
  try rfl
theorem node9517_eq : Flapjack.WordAlloc.removeDeadStructural input9517 value4763 value1 value2 = (output9517, value4764, value1) := by
  rw [input9517_def, output9517_def]
  try (conv => lhs; cbv)
  try rfl

def value4765 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9801 9797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9518_def : input9518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9801 9797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9801 9797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9518_def : output9518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9801 9797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9518_skip : Flapjack.WordAlloc.isSkip output9518 = false := by
  rw [output9518_def]
  conv => lhs; cbv
  try rfl
theorem node9518_eq : Flapjack.WordAlloc.removeDeadStructural input9518 value4764 value1 value2 = (output9518, value4765, value1) := by
  rw [input9518_def, output9518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9797 Flapjack.WordStore.heapLength)).val
theorem input9519_def : input9519 = (Flapjack.WordLangProgHOL.get 9797 Flapjack.WordStore.heapLength) := by
  unfold input9519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9797 Flapjack.WordStore.heapLength)).val
theorem output9519_def : output9519 = (Flapjack.WordLangProgHOL.get 9797 Flapjack.WordStore.heapLength) := by
  unfold output9519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9519_skip : Flapjack.WordAlloc.isSkip output9519 = false := by
  rw [output9519_def]
  conv => lhs; cbv
  try rfl
theorem node9519_eq : Flapjack.WordAlloc.removeDeadStructural input9519 value4765 value1 value2 = (output9519, value5, value1) := by
  rw [input9519_def, output9519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9519 input9518)).val
theorem input9520_def : input9520 = (.seq input9519 input9518) := by
  unfold input9520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9519 output9518)).val
theorem output9520_def : output9520 = (.seq output9519 output9518) := by
  unfold output9520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9520_skip : Flapjack.WordAlloc.isSkip output9520 = false := by
  rw [output9520_def]
  conv => lhs; cbv
  try rfl
theorem node9520_eq : Flapjack.WordAlloc.removeDeadStructural input9520 value4764 value1 value2 = (output9520, value5, value1) := by
  rw [input9520_def, output9520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9518_eq]
  dsimp only
  rw [node9519_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9520 input9517)).val
theorem input9521_def : input9521 = (.seq input9520 input9517) := by
  unfold input9521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9520 output9517)).val
theorem output9521_def : output9521 = (.seq output9520 output9517) := by
  unfold output9521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9521_skip : Flapjack.WordAlloc.isSkip output9521 = false := by
  rw [output9521_def]
  conv => lhs; cbv
  try rfl
theorem node9521_eq : Flapjack.WordAlloc.removeDeadStructural input9521 value4763 value1 value2 = (output9521, value5, value1) := by
  rw [input9521_def, output9521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9517_eq]
  dsimp only
  rw [node9520_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9521 input9516)).val
theorem input9522_def : input9522 = (.seq input9521 input9516) := by
  unfold input9522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9521 output9516)).val
theorem output9522_def : output9522 = (.seq output9521 output9516) := by
  unfold output9522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9522_skip : Flapjack.WordAlloc.isSkip output9522 = false := by
  rw [output9522_def]
  conv => lhs; cbv
  try rfl
theorem node9522_eq : Flapjack.WordAlloc.removeDeadStructural input9522 value4762 value1 value2 = (output9522, value5, value1) := by
  rw [input9522_def, output9522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9516_eq]
  dsimp only
  rw [node9521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9522 input9515)).val
theorem input9523_def : input9523 = (.seq input9522 input9515) := by
  unfold input9523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9522 output9515)).val
theorem output9523_def : output9523 = (.seq output9522 output9515) := by
  unfold output9523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9523_skip : Flapjack.WordAlloc.isSkip output9523 = false := by
  rw [output9523_def]
  conv => lhs; cbv
  try rfl
theorem node9523_eq : Flapjack.WordAlloc.removeDeadStructural input9523 value4760 value1 value2 = (output9523, value5, value1) := by
  rw [input9523_def, output9523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9515_eq]
  dsimp only
  rw [node9522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4766 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9789 (Flapjack.WordLangAddr.addr 9793 0#64)))).val
theorem input9524_def : input9524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9789 (Flapjack.WordLangAddr.addr 9793 0#64))) := by
  unfold input9524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9789 (Flapjack.WordLangAddr.addr 9793 0#64)))).val
theorem output9524_def : output9524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9789 (Flapjack.WordLangAddr.addr 9793 0#64))) := by
  unfold output9524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9524_skip : Flapjack.WordAlloc.isSkip output9524 = false := by
  rw [output9524_def]
  conv => lhs; cbv
  try rfl
theorem node9524_eq : Flapjack.WordAlloc.removeDeadStructural input9524 value5 value1 value2 = (output9524, value4766, value1) := by
  rw [input9524_def, output9524_def]
  try (conv => lhs; cbv)
  try rfl

def value4767 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9793, 9781)])).val
theorem input9525_def : input9525 = (Flapjack.WordLangProgHOL.move 0 [(9793, 9781)]) := by
  unfold input9525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9793, 9781)])).val
theorem output9525_def : output9525 = (Flapjack.WordLangProgHOL.move 0 [(9793, 9781)]) := by
  unfold output9525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9525_skip : Flapjack.WordAlloc.isSkip output9525 = false := by
  rw [output9525_def]
  conv => lhs; cbv
  try rfl
theorem node9525_eq : Flapjack.WordAlloc.removeDeadStructural input9525 value4766 value1 value2 = (output9525, value4767, value1) := by
  rw [input9525_def, output9525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9525 input9524)).val
theorem input9526_def : input9526 = (.seq input9525 input9524) := by
  unfold input9526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9525 output9524)).val
theorem output9526_def : output9526 = (.seq output9525 output9524) := by
  unfold output9526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9526_skip : Flapjack.WordAlloc.isSkip output9526 = false := by
  rw [output9526_def]
  conv => lhs; cbv
  try rfl
theorem node9526_eq : Flapjack.WordAlloc.removeDeadStructural input9526 value5 value1 value2 = (output9526, value4767, value1) := by
  rw [input9526_def, output9526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9524_eq]
  dsimp only
  rw [node9525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4768 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9789 3318087848058654498#64))).val
theorem input9527_def : input9527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9789 3318087848058654498#64)) := by
  unfold input9527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9789 3318087848058654498#64))).val
theorem output9527_def : output9527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9789 3318087848058654498#64)) := by
  unfold output9527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9527_skip : Flapjack.WordAlloc.isSkip output9527 = false := by
  rw [output9527_def]
  conv => lhs; cbv
  try rfl
theorem node9527_eq : Flapjack.WordAlloc.removeDeadStructural input9527 value4767 value1 value2 = (output9527, value4768, value1) := by
  rw [input9527_def, output9527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9785 3318087848058654498#64))).val
theorem input9528_def : input9528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9785 3318087848058654498#64)) := by
  unfold input9528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9528_def : output9528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9528_skip : Flapjack.WordAlloc.isSkip output9528 = true := by
  rw [output9528_def]
  conv => lhs; cbv
  try rfl
theorem node9528_eq : Flapjack.WordAlloc.removeDeadStructural input9528 value4768 value1 value2 = (output9528, value4768, value1) := by
  rw [input9528_def, output9528_def]
  try (conv => lhs; cbv)
  try rfl

def value4769 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9781 9773 (Flapjack.WordRegImm.reg 9777))))).val
theorem input9529_def : input9529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9781 9773 (Flapjack.WordRegImm.reg 9777)))) := by
  unfold input9529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9781 9773 (Flapjack.WordRegImm.reg 9777))))).val
theorem output9529_def : output9529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9781 9773 (Flapjack.WordRegImm.reg 9777)))) := by
  unfold output9529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9529_skip : Flapjack.WordAlloc.isSkip output9529 = false := by
  rw [output9529_def]
  conv => lhs; cbv
  try rfl
theorem node9529_eq : Flapjack.WordAlloc.removeDeadStructural input9529 value4768 value1 value2 = (output9529, value4769, value1) := by
  rw [input9529_def, output9529_def]
  try (conv => lhs; cbv)
  try rfl

def value4770 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9777 2368#64))).val
theorem input9530_def : input9530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9777 2368#64)) := by
  unfold input9530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9777 2368#64))).val
theorem output9530_def : output9530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9777 2368#64)) := by
  unfold output9530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9530_skip : Flapjack.WordAlloc.isSkip output9530 = false := by
  rw [output9530_def]
  conv => lhs; cbv
  try rfl
theorem node9530_eq : Flapjack.WordAlloc.removeDeadStructural input9530 value4769 value1 value2 = (output9530, value4770, value1) := by
  rw [input9530_def, output9530_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9530 input9529)).val
theorem input9531_def : input9531 = (.seq input9530 input9529) := by
  unfold input9531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9530 output9529)).val
theorem output9531_def : output9531 = (.seq output9530 output9529) := by
  unfold output9531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9531_skip : Flapjack.WordAlloc.isSkip output9531 = false := by
  rw [output9531_def]
  conv => lhs; cbv
  try rfl
theorem node9531_eq : Flapjack.WordAlloc.removeDeadStructural input9531 value4768 value1 value2 = (output9531, value4770, value1) := by
  rw [input9531_def, output9531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9529_eq]
  dsimp only
  rw [node9530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4771 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9773 (Flapjack.WordLangAddr.addr 9769 18446744073709551104#64)))).val
theorem input9532_def : input9532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9773 (Flapjack.WordLangAddr.addr 9769 18446744073709551104#64))) := by
  unfold input9532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9773 (Flapjack.WordLangAddr.addr 9769 18446744073709551104#64)))).val
theorem output9532_def : output9532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9773 (Flapjack.WordLangAddr.addr 9769 18446744073709551104#64))) := by
  unfold output9532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9532_skip : Flapjack.WordAlloc.isSkip output9532 = false := by
  rw [output9532_def]
  conv => lhs; cbv
  try rfl
theorem node9532_eq : Flapjack.WordAlloc.removeDeadStructural input9532 value4770 value1 value2 = (output9532, value4771, value1) := by
  rw [input9532_def, output9532_def]
  try (conv => lhs; cbv)
  try rfl

def value4772 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9769 9765)).val
theorem input9533_def : input9533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9769 9765) := by
  unfold input9533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9769 9765)).val
theorem output9533_def : output9533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9769 9765) := by
  unfold output9533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9533_skip : Flapjack.WordAlloc.isSkip output9533 = false := by
  rw [output9533_def]
  conv => lhs; cbv
  try rfl
theorem node9533_eq : Flapjack.WordAlloc.removeDeadStructural input9533 value4771 value1 value2 = (output9533, value4772, value1) := by
  rw [input9533_def, output9533_def]
  try (conv => lhs; cbv)
  try rfl

def value4773 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9765 9761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9534_def : input9534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9765 9761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9765 9761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9534_def : output9534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9765 9761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9534_skip : Flapjack.WordAlloc.isSkip output9534 = false := by
  rw [output9534_def]
  conv => lhs; cbv
  try rfl
theorem node9534_eq : Flapjack.WordAlloc.removeDeadStructural input9534 value4772 value1 value2 = (output9534, value4773, value1) := by
  rw [input9534_def, output9534_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9761 Flapjack.WordStore.heapLength)).val
theorem input9535_def : input9535 = (Flapjack.WordLangProgHOL.get 9761 Flapjack.WordStore.heapLength) := by
  unfold input9535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9761 Flapjack.WordStore.heapLength)).val
theorem output9535_def : output9535 = (Flapjack.WordLangProgHOL.get 9761 Flapjack.WordStore.heapLength) := by
  unfold output9535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9535_skip : Flapjack.WordAlloc.isSkip output9535 = false := by
  rw [output9535_def]
  conv => lhs; cbv
  try rfl
theorem node9535_eq : Flapjack.WordAlloc.removeDeadStructural input9535 value4773 value1 value2 = (output9535, value5, value1) := by
  rw [input9535_def, output9535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9535 input9534)).val
theorem input9536_def : input9536 = (.seq input9535 input9534) := by
  unfold input9536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9535 output9534)).val
theorem output9536_def : output9536 = (.seq output9535 output9534) := by
  unfold output9536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9536_skip : Flapjack.WordAlloc.isSkip output9536 = false := by
  rw [output9536_def]
  conv => lhs; cbv
  try rfl
theorem node9536_eq : Flapjack.WordAlloc.removeDeadStructural input9536 value4772 value1 value2 = (output9536, value5, value1) := by
  rw [input9536_def, output9536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9534_eq]
  dsimp only
  rw [node9535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9536 input9533)).val
theorem input9537_def : input9537 = (.seq input9536 input9533) := by
  unfold input9537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9536 output9533)).val
theorem output9537_def : output9537 = (.seq output9536 output9533) := by
  unfold output9537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9537_skip : Flapjack.WordAlloc.isSkip output9537 = false := by
  rw [output9537_def]
  conv => lhs; cbv
  try rfl
theorem node9537_eq : Flapjack.WordAlloc.removeDeadStructural input9537 value4771 value1 value2 = (output9537, value5, value1) := by
  rw [input9537_def, output9537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9533_eq]
  dsimp only
  rw [node9536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9537 input9532)).val
theorem input9538_def : input9538 = (.seq input9537 input9532) := by
  unfold input9538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9537 output9532)).val
theorem output9538_def : output9538 = (.seq output9537 output9532) := by
  unfold output9538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9538_skip : Flapjack.WordAlloc.isSkip output9538 = false := by
  rw [output9538_def]
  conv => lhs; cbv
  try rfl
theorem node9538_eq : Flapjack.WordAlloc.removeDeadStructural input9538 value4770 value1 value2 = (output9538, value5, value1) := by
  rw [input9538_def, output9538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9532_eq]
  dsimp only
  rw [node9537_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9538 input9531)).val
theorem input9539_def : input9539 = (.seq input9538 input9531) := by
  unfold input9539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9538 output9531)).val
theorem output9539_def : output9539 = (.seq output9538 output9531) := by
  unfold output9539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9539_skip : Flapjack.WordAlloc.isSkip output9539 = false := by
  rw [output9539_def]
  conv => lhs; cbv
  try rfl
theorem node9539_eq : Flapjack.WordAlloc.removeDeadStructural input9539 value4768 value1 value2 = (output9539, value5, value1) := by
  rw [input9539_def, output9539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9531_eq]
  dsimp only
  rw [node9538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4774 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9753 (Flapjack.WordLangAddr.addr 9757 0#64)))).val
theorem input9540_def : input9540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9753 (Flapjack.WordLangAddr.addr 9757 0#64))) := by
  unfold input9540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9753 (Flapjack.WordLangAddr.addr 9757 0#64)))).val
theorem output9540_def : output9540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9753 (Flapjack.WordLangAddr.addr 9757 0#64))) := by
  unfold output9540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9540_skip : Flapjack.WordAlloc.isSkip output9540 = false := by
  rw [output9540_def]
  conv => lhs; cbv
  try rfl
theorem node9540_eq : Flapjack.WordAlloc.removeDeadStructural input9540 value5 value1 value2 = (output9540, value4774, value1) := by
  rw [input9540_def, output9540_def]
  try (conv => lhs; cbv)
  try rfl

def value4775 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9757, 9745)])).val
theorem input9541_def : input9541 = (Flapjack.WordLangProgHOL.move 0 [(9757, 9745)]) := by
  unfold input9541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9757, 9745)])).val
theorem output9541_def : output9541 = (Flapjack.WordLangProgHOL.move 0 [(9757, 9745)]) := by
  unfold output9541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9541_skip : Flapjack.WordAlloc.isSkip output9541 = false := by
  rw [output9541_def]
  conv => lhs; cbv
  try rfl
theorem node9541_eq : Flapjack.WordAlloc.removeDeadStructural input9541 value4774 value1 value2 = (output9541, value4775, value1) := by
  rw [input9541_def, output9541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9541 input9540)).val
theorem input9542_def : input9542 = (.seq input9541 input9540) := by
  unfold input9542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9541 output9540)).val
theorem output9542_def : output9542 = (.seq output9541 output9540) := by
  unfold output9542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9542_skip : Flapjack.WordAlloc.isSkip output9542 = false := by
  rw [output9542_def]
  conv => lhs; cbv
  try rfl
theorem node9542_eq : Flapjack.WordAlloc.removeDeadStructural input9542 value5 value1 value2 = (output9542, value4775, value1) := by
  rw [input9542_def, output9542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9540_eq]
  dsimp only
  rw [node9541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4776 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9753 15937899882900905113#64))).val
theorem input9543_def : input9543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9753 15937899882900905113#64)) := by
  unfold input9543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9753 15937899882900905113#64))).val
theorem output9543_def : output9543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9753 15937899882900905113#64)) := by
  unfold output9543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9543_skip : Flapjack.WordAlloc.isSkip output9543 = false := by
  rw [output9543_def]
  conv => lhs; cbv
  try rfl
theorem node9543_eq : Flapjack.WordAlloc.removeDeadStructural input9543 value4775 value1 value2 = (output9543, value4776, value1) := by
  rw [input9543_def, output9543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9749 15937899882900905113#64))).val
theorem input9544_def : input9544 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9749 15937899882900905113#64)) := by
  unfold input9544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9544_def : output9544 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9544_skip : Flapjack.WordAlloc.isSkip output9544 = true := by
  rw [output9544_def]
  conv => lhs; cbv
  try rfl
theorem node9544_eq : Flapjack.WordAlloc.removeDeadStructural input9544 value4776 value1 value2 = (output9544, value4776, value1) := by
  rw [input9544_def, output9544_def]
  try (conv => lhs; cbv)
  try rfl

def value4777 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9745 9737 (Flapjack.WordRegImm.reg 9741))))).val
theorem input9545_def : input9545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9745 9737 (Flapjack.WordRegImm.reg 9741)))) := by
  unfold input9545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9745 9737 (Flapjack.WordRegImm.reg 9741))))).val
theorem output9545_def : output9545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9745 9737 (Flapjack.WordRegImm.reg 9741)))) := by
  unfold output9545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9545_skip : Flapjack.WordAlloc.isSkip output9545 = false := by
  rw [output9545_def]
  conv => lhs; cbv
  try rfl
theorem node9545_eq : Flapjack.WordAlloc.removeDeadStructural input9545 value4776 value1 value2 = (output9545, value4777, value1) := by
  rw [input9545_def, output9545_def]
  try (conv => lhs; cbv)
  try rfl

def value4778 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9741 2360#64))).val
theorem input9546_def : input9546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9741 2360#64)) := by
  unfold input9546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9741 2360#64))).val
theorem output9546_def : output9546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9741 2360#64)) := by
  unfold output9546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9546_skip : Flapjack.WordAlloc.isSkip output9546 = false := by
  rw [output9546_def]
  conv => lhs; cbv
  try rfl
theorem node9546_eq : Flapjack.WordAlloc.removeDeadStructural input9546 value4777 value1 value2 = (output9546, value4778, value1) := by
  rw [input9546_def, output9546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9546 input9545)).val
theorem input9547_def : input9547 = (.seq input9546 input9545) := by
  unfold input9547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9546 output9545)).val
theorem output9547_def : output9547 = (.seq output9546 output9545) := by
  unfold output9547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9547_skip : Flapjack.WordAlloc.isSkip output9547 = false := by
  rw [output9547_def]
  conv => lhs; cbv
  try rfl
theorem node9547_eq : Flapjack.WordAlloc.removeDeadStructural input9547 value4776 value1 value2 = (output9547, value4778, value1) := by
  rw [input9547_def, output9547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9545_eq]
  dsimp only
  rw [node9546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4779 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9737 (Flapjack.WordLangAddr.addr 9733 18446744073709551104#64)))).val
theorem input9548_def : input9548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9737 (Flapjack.WordLangAddr.addr 9733 18446744073709551104#64))) := by
  unfold input9548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9737 (Flapjack.WordLangAddr.addr 9733 18446744073709551104#64)))).val
theorem output9548_def : output9548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9737 (Flapjack.WordLangAddr.addr 9733 18446744073709551104#64))) := by
  unfold output9548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9548_skip : Flapjack.WordAlloc.isSkip output9548 = false := by
  rw [output9548_def]
  conv => lhs; cbv
  try rfl
theorem node9548_eq : Flapjack.WordAlloc.removeDeadStructural input9548 value4778 value1 value2 = (output9548, value4779, value1) := by
  rw [input9548_def, output9548_def]
  try (conv => lhs; cbv)
  try rfl

def value4780 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9733 9729)).val
theorem input9549_def : input9549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9733 9729) := by
  unfold input9549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9733 9729)).val
theorem output9549_def : output9549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9733 9729) := by
  unfold output9549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9549_skip : Flapjack.WordAlloc.isSkip output9549 = false := by
  rw [output9549_def]
  conv => lhs; cbv
  try rfl
theorem node9549_eq : Flapjack.WordAlloc.removeDeadStructural input9549 value4779 value1 value2 = (output9549, value4780, value1) := by
  rw [input9549_def, output9549_def]
  try (conv => lhs; cbv)
  try rfl

def value4781 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9729 9725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9550_def : input9550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9729 9725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9729 9725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9550_def : output9550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9729 9725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9550_skip : Flapjack.WordAlloc.isSkip output9550 = false := by
  rw [output9550_def]
  conv => lhs; cbv
  try rfl
theorem node9550_eq : Flapjack.WordAlloc.removeDeadStructural input9550 value4780 value1 value2 = (output9550, value4781, value1) := by
  rw [input9550_def, output9550_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9725 Flapjack.WordStore.heapLength)).val
theorem input9551_def : input9551 = (Flapjack.WordLangProgHOL.get 9725 Flapjack.WordStore.heapLength) := by
  unfold input9551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9725 Flapjack.WordStore.heapLength)).val
theorem output9551_def : output9551 = (Flapjack.WordLangProgHOL.get 9725 Flapjack.WordStore.heapLength) := by
  unfold output9551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9551_skip : Flapjack.WordAlloc.isSkip output9551 = false := by
  rw [output9551_def]
  conv => lhs; cbv
  try rfl
theorem node9551_eq : Flapjack.WordAlloc.removeDeadStructural input9551 value4781 value1 value2 = (output9551, value5, value1) := by
  rw [input9551_def, output9551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9551 input9550)).val
theorem input9552_def : input9552 = (.seq input9551 input9550) := by
  unfold input9552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9551 output9550)).val
theorem output9552_def : output9552 = (.seq output9551 output9550) := by
  unfold output9552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9552_skip : Flapjack.WordAlloc.isSkip output9552 = false := by
  rw [output9552_def]
  conv => lhs; cbv
  try rfl
theorem node9552_eq : Flapjack.WordAlloc.removeDeadStructural input9552 value4780 value1 value2 = (output9552, value5, value1) := by
  rw [input9552_def, output9552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9550_eq]
  dsimp only
  rw [node9551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9552 input9549)).val
theorem input9553_def : input9553 = (.seq input9552 input9549) := by
  unfold input9553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9552 output9549)).val
theorem output9553_def : output9553 = (.seq output9552 output9549) := by
  unfold output9553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9553_skip : Flapjack.WordAlloc.isSkip output9553 = false := by
  rw [output9553_def]
  conv => lhs; cbv
  try rfl
theorem node9553_eq : Flapjack.WordAlloc.removeDeadStructural input9553 value4779 value1 value2 = (output9553, value5, value1) := by
  rw [input9553_def, output9553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9549_eq]
  dsimp only
  rw [node9552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9553 input9548)).val
theorem input9554_def : input9554 = (.seq input9553 input9548) := by
  unfold input9554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9553 output9548)).val
theorem output9554_def : output9554 = (.seq output9553 output9548) := by
  unfold output9554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9554_skip : Flapjack.WordAlloc.isSkip output9554 = false := by
  rw [output9554_def]
  conv => lhs; cbv
  try rfl
theorem node9554_eq : Flapjack.WordAlloc.removeDeadStructural input9554 value4778 value1 value2 = (output9554, value5, value1) := by
  rw [input9554_def, output9554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9548_eq]
  dsimp only
  rw [node9553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9554 input9547)).val
theorem input9555_def : input9555 = (.seq input9554 input9547) := by
  unfold input9555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9554 output9547)).val
theorem output9555_def : output9555 = (.seq output9554 output9547) := by
  unfold output9555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9555_skip : Flapjack.WordAlloc.isSkip output9555 = false := by
  rw [output9555_def]
  conv => lhs; cbv
  try rfl
theorem node9555_eq : Flapjack.WordAlloc.removeDeadStructural input9555 value4776 value1 value2 = (output9555, value5, value1) := by
  rw [input9555_def, output9555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9547_eq]
  dsimp only
  rw [node9554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4782 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9717 (Flapjack.WordLangAddr.addr 9721 0#64)))).val
theorem input9556_def : input9556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9717 (Flapjack.WordLangAddr.addr 9721 0#64))) := by
  unfold input9556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9717 (Flapjack.WordLangAddr.addr 9721 0#64)))).val
theorem output9556_def : output9556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9717 (Flapjack.WordLangAddr.addr 9721 0#64))) := by
  unfold output9556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9556_skip : Flapjack.WordAlloc.isSkip output9556 = false := by
  rw [output9556_def]
  conv => lhs; cbv
  try rfl
theorem node9556_eq : Flapjack.WordAlloc.removeDeadStructural input9556 value5 value1 value2 = (output9556, value4782, value1) := by
  rw [input9556_def, output9556_def]
  try (conv => lhs; cbv)
  try rfl

def value4783 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9721, 9709)])).val
theorem input9557_def : input9557 = (Flapjack.WordLangProgHOL.move 0 [(9721, 9709)]) := by
  unfold input9557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9721, 9709)])).val
theorem output9557_def : output9557 = (Flapjack.WordLangProgHOL.move 0 [(9721, 9709)]) := by
  unfold output9557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9557_skip : Flapjack.WordAlloc.isSkip output9557 = false := by
  rw [output9557_def]
  conv => lhs; cbv
  try rfl
theorem node9557_eq : Flapjack.WordAlloc.removeDeadStructural input9557 value4782 value1 value2 = (output9557, value4783, value1) := by
  rw [input9557_def, output9557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9557 input9556)).val
theorem input9558_def : input9558 = (.seq input9557 input9556) := by
  unfold input9558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9557 output9556)).val
theorem output9558_def : output9558 = (.seq output9557 output9556) := by
  unfold output9558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9558_skip : Flapjack.WordAlloc.isSkip output9558 = false := by
  rw [output9558_def]
  conv => lhs; cbv
  try rfl
theorem node9558_eq : Flapjack.WordAlloc.removeDeadStructural input9558 value5 value1 value2 = (output9558, value4783, value1) := by
  rw [input9558_def, output9558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9556_eq]
  dsimp only
  rw [node9557_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4784 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9717 7449821001803307903#64))).val
theorem input9559_def : input9559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9717 7449821001803307903#64)) := by
  unfold input9559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9717 7449821001803307903#64))).val
theorem output9559_def : output9559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9717 7449821001803307903#64)) := by
  unfold output9559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9559_skip : Flapjack.WordAlloc.isSkip output9559 = false := by
  rw [output9559_def]
  conv => lhs; cbv
  try rfl
theorem node9559_eq : Flapjack.WordAlloc.removeDeadStructural input9559 value4783 value1 value2 = (output9559, value4784, value1) := by
  rw [input9559_def, output9559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9713 7449821001803307903#64))).val
theorem input9560_def : input9560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9713 7449821001803307903#64)) := by
  unfold input9560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9560_def : output9560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9560_skip : Flapjack.WordAlloc.isSkip output9560 = true := by
  rw [output9560_def]
  conv => lhs; cbv
  try rfl
theorem node9560_eq : Flapjack.WordAlloc.removeDeadStructural input9560 value4784 value1 value2 = (output9560, value4784, value1) := by
  rw [input9560_def, output9560_def]
  try (conv => lhs; cbv)
  try rfl

def value4785 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9709 9701 (Flapjack.WordRegImm.reg 9705))))).val
theorem input9561_def : input9561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9709 9701 (Flapjack.WordRegImm.reg 9705)))) := by
  unfold input9561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9709 9701 (Flapjack.WordRegImm.reg 9705))))).val
theorem output9561_def : output9561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9709 9701 (Flapjack.WordRegImm.reg 9705)))) := by
  unfold output9561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9561_skip : Flapjack.WordAlloc.isSkip output9561 = false := by
  rw [output9561_def]
  conv => lhs; cbv
  try rfl
theorem node9561_eq : Flapjack.WordAlloc.removeDeadStructural input9561 value4784 value1 value2 = (output9561, value4785, value1) := by
  rw [input9561_def, output9561_def]
  try (conv => lhs; cbv)
  try rfl

def value4786 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9705 2352#64))).val
theorem input9562_def : input9562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9705 2352#64)) := by
  unfold input9562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9705 2352#64))).val
theorem output9562_def : output9562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9705 2352#64)) := by
  unfold output9562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9562_skip : Flapjack.WordAlloc.isSkip output9562 = false := by
  rw [output9562_def]
  conv => lhs; cbv
  try rfl
theorem node9562_eq : Flapjack.WordAlloc.removeDeadStructural input9562 value4785 value1 value2 = (output9562, value4786, value1) := by
  rw [input9562_def, output9562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9562 input9561)).val
theorem input9563_def : input9563 = (.seq input9562 input9561) := by
  unfold input9563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9562 output9561)).val
theorem output9563_def : output9563 = (.seq output9562 output9561) := by
  unfold output9563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9563_skip : Flapjack.WordAlloc.isSkip output9563 = false := by
  rw [output9563_def]
  conv => lhs; cbv
  try rfl
theorem node9563_eq : Flapjack.WordAlloc.removeDeadStructural input9563 value4784 value1 value2 = (output9563, value4786, value1) := by
  rw [input9563_def, output9563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9561_eq]
  dsimp only
  rw [node9562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4787 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9701 (Flapjack.WordLangAddr.addr 9697 18446744073709551104#64)))).val
theorem input9564_def : input9564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9701 (Flapjack.WordLangAddr.addr 9697 18446744073709551104#64))) := by
  unfold input9564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9701 (Flapjack.WordLangAddr.addr 9697 18446744073709551104#64)))).val
theorem output9564_def : output9564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9701 (Flapjack.WordLangAddr.addr 9697 18446744073709551104#64))) := by
  unfold output9564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9564_skip : Flapjack.WordAlloc.isSkip output9564 = false := by
  rw [output9564_def]
  conv => lhs; cbv
  try rfl
theorem node9564_eq : Flapjack.WordAlloc.removeDeadStructural input9564 value4786 value1 value2 = (output9564, value4787, value1) := by
  rw [input9564_def, output9564_def]
  try (conv => lhs; cbv)
  try rfl

def value4788 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9697 9693)).val
theorem input9565_def : input9565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9697 9693) := by
  unfold input9565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9697 9693)).val
theorem output9565_def : output9565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9697 9693) := by
  unfold output9565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9565_skip : Flapjack.WordAlloc.isSkip output9565 = false := by
  rw [output9565_def]
  conv => lhs; cbv
  try rfl
theorem node9565_eq : Flapjack.WordAlloc.removeDeadStructural input9565 value4787 value1 value2 = (output9565, value4788, value1) := by
  rw [input9565_def, output9565_def]
  try (conv => lhs; cbv)
  try rfl

def value4789 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9693 9689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9566_def : input9566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9693 9689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9693 9689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9566_def : output9566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9693 9689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9566_skip : Flapjack.WordAlloc.isSkip output9566 = false := by
  rw [output9566_def]
  conv => lhs; cbv
  try rfl
theorem node9566_eq : Flapjack.WordAlloc.removeDeadStructural input9566 value4788 value1 value2 = (output9566, value4789, value1) := by
  rw [input9566_def, output9566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9689 Flapjack.WordStore.heapLength)).val
theorem input9567_def : input9567 = (Flapjack.WordLangProgHOL.get 9689 Flapjack.WordStore.heapLength) := by
  unfold input9567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9689 Flapjack.WordStore.heapLength)).val
theorem output9567_def : output9567 = (Flapjack.WordLangProgHOL.get 9689 Flapjack.WordStore.heapLength) := by
  unfold output9567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9567_skip : Flapjack.WordAlloc.isSkip output9567 = false := by
  rw [output9567_def]
  conv => lhs; cbv
  try rfl
theorem node9567_eq : Flapjack.WordAlloc.removeDeadStructural input9567 value4789 value1 value2 = (output9567, value5, value1) := by
  rw [input9567_def, output9567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9567 input9566)).val
theorem input9568_def : input9568 = (.seq input9567 input9566) := by
  unfold input9568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9567 output9566)).val
theorem output9568_def : output9568 = (.seq output9567 output9566) := by
  unfold output9568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9568_skip : Flapjack.WordAlloc.isSkip output9568 = false := by
  rw [output9568_def]
  conv => lhs; cbv
  try rfl
theorem node9568_eq : Flapjack.WordAlloc.removeDeadStructural input9568 value4788 value1 value2 = (output9568, value5, value1) := by
  rw [input9568_def, output9568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9566_eq]
  dsimp only
  rw [node9567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9568 input9565)).val
theorem input9569_def : input9569 = (.seq input9568 input9565) := by
  unfold input9569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9568 output9565)).val
theorem output9569_def : output9569 = (.seq output9568 output9565) := by
  unfold output9569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9569_skip : Flapjack.WordAlloc.isSkip output9569 = false := by
  rw [output9569_def]
  conv => lhs; cbv
  try rfl
theorem node9569_eq : Flapjack.WordAlloc.removeDeadStructural input9569 value4787 value1 value2 = (output9569, value5, value1) := by
  rw [input9569_def, output9569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9565_eq]
  dsimp only
  rw [node9568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9569 input9564)).val
theorem input9570_def : input9570 = (.seq input9569 input9564) := by
  unfold input9570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9569 output9564)).val
theorem output9570_def : output9570 = (.seq output9569 output9564) := by
  unfold output9570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9570_skip : Flapjack.WordAlloc.isSkip output9570 = false := by
  rw [output9570_def]
  conv => lhs; cbv
  try rfl
theorem node9570_eq : Flapjack.WordAlloc.removeDeadStructural input9570 value4786 value1 value2 = (output9570, value5, value1) := by
  rw [input9570_def, output9570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9564_eq]
  dsimp only
  rw [node9569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9570 input9563)).val
theorem input9571_def : input9571 = (.seq input9570 input9563) := by
  unfold input9571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9570 output9563)).val
theorem output9571_def : output9571 = (.seq output9570 output9563) := by
  unfold output9571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9571_skip : Flapjack.WordAlloc.isSkip output9571 = false := by
  rw [output9571_def]
  conv => lhs; cbv
  try rfl
theorem node9571_eq : Flapjack.WordAlloc.removeDeadStructural input9571 value4784 value1 value2 = (output9571, value5, value1) := by
  rw [input9571_def, output9571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9563_eq]
  dsimp only
  rw [node9570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4790 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9681 (Flapjack.WordLangAddr.addr 9685 0#64)))).val
theorem input9572_def : input9572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9681 (Flapjack.WordLangAddr.addr 9685 0#64))) := by
  unfold input9572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9681 (Flapjack.WordLangAddr.addr 9685 0#64)))).val
theorem output9572_def : output9572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9681 (Flapjack.WordLangAddr.addr 9685 0#64))) := by
  unfold output9572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9572_skip : Flapjack.WordAlloc.isSkip output9572 = false := by
  rw [output9572_def]
  conv => lhs; cbv
  try rfl
theorem node9572_eq : Flapjack.WordAlloc.removeDeadStructural input9572 value5 value1 value2 = (output9572, value4790, value1) := by
  rw [input9572_def, output9572_def]
  try (conv => lhs; cbv)
  try rfl

def value4791 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9685, 9673)])).val
theorem input9573_def : input9573 = (Flapjack.WordLangProgHOL.move 0 [(9685, 9673)]) := by
  unfold input9573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9685, 9673)])).val
theorem output9573_def : output9573 = (Flapjack.WordLangProgHOL.move 0 [(9685, 9673)]) := by
  unfold output9573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9573_skip : Flapjack.WordAlloc.isSkip output9573 = false := by
  rw [output9573_def]
  conv => lhs; cbv
  try rfl
theorem node9573_eq : Flapjack.WordAlloc.removeDeadStructural input9573 value4790 value1 value2 = (output9573, value4791, value1) := by
  rw [input9573_def, output9573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9573 input9572)).val
theorem input9574_def : input9574 = (.seq input9573 input9572) := by
  unfold input9574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9573 output9572)).val
theorem output9574_def : output9574 = (.seq output9573 output9572) := by
  unfold output9574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9574_skip : Flapjack.WordAlloc.isSkip output9574 = false := by
  rw [output9574_def]
  conv => lhs; cbv
  try rfl
theorem node9574_eq : Flapjack.WordAlloc.removeDeadStructural input9574 value5 value1 value2 = (output9574, value4791, value1) := by
  rw [input9574_def, output9574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9572_eq]
  dsimp only
  rw [node9573_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4792 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9681 11752436998487615353#64))).val
theorem input9575_def : input9575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9681 11752436998487615353#64)) := by
  unfold input9575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9681 11752436998487615353#64))).val
theorem output9575_def : output9575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9681 11752436998487615353#64)) := by
  unfold output9575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9575_skip : Flapjack.WordAlloc.isSkip output9575 = false := by
  rw [output9575_def]
  conv => lhs; cbv
  try rfl
theorem node9575_eq : Flapjack.WordAlloc.removeDeadStructural input9575 value4791 value1 value2 = (output9575, value4792, value1) := by
  rw [input9575_def, output9575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9677 11752436998487615353#64))).val
theorem input9576_def : input9576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9677 11752436998487615353#64)) := by
  unfold input9576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9576_def : output9576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9576_skip : Flapjack.WordAlloc.isSkip output9576 = true := by
  rw [output9576_def]
  conv => lhs; cbv
  try rfl
theorem node9576_eq : Flapjack.WordAlloc.removeDeadStructural input9576 value4792 value1 value2 = (output9576, value4792, value1) := by
  rw [input9576_def, output9576_def]
  try (conv => lhs; cbv)
  try rfl

def value4793 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9673 9665 (Flapjack.WordRegImm.reg 9669))))).val
theorem input9577_def : input9577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9673 9665 (Flapjack.WordRegImm.reg 9669)))) := by
  unfold input9577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9673 9665 (Flapjack.WordRegImm.reg 9669))))).val
theorem output9577_def : output9577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9673 9665 (Flapjack.WordRegImm.reg 9669)))) := by
  unfold output9577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9577_skip : Flapjack.WordAlloc.isSkip output9577 = false := by
  rw [output9577_def]
  conv => lhs; cbv
  try rfl
theorem node9577_eq : Flapjack.WordAlloc.removeDeadStructural input9577 value4792 value1 value2 = (output9577, value4793, value1) := by
  rw [input9577_def, output9577_def]
  try (conv => lhs; cbv)
  try rfl

def value4794 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9669 2344#64))).val
theorem input9578_def : input9578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9669 2344#64)) := by
  unfold input9578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9669 2344#64))).val
theorem output9578_def : output9578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9669 2344#64)) := by
  unfold output9578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9578_skip : Flapjack.WordAlloc.isSkip output9578 = false := by
  rw [output9578_def]
  conv => lhs; cbv
  try rfl
theorem node9578_eq : Flapjack.WordAlloc.removeDeadStructural input9578 value4793 value1 value2 = (output9578, value4794, value1) := by
  rw [input9578_def, output9578_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9578 input9577)).val
theorem input9579_def : input9579 = (.seq input9578 input9577) := by
  unfold input9579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9578 output9577)).val
theorem output9579_def : output9579 = (.seq output9578 output9577) := by
  unfold output9579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9579_skip : Flapjack.WordAlloc.isSkip output9579 = false := by
  rw [output9579_def]
  conv => lhs; cbv
  try rfl
theorem node9579_eq : Flapjack.WordAlloc.removeDeadStructural input9579 value4792 value1 value2 = (output9579, value4794, value1) := by
  rw [input9579_def, output9579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9577_eq]
  dsimp only
  rw [node9578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4795 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9665 (Flapjack.WordLangAddr.addr 9661 18446744073709551104#64)))).val
theorem input9580_def : input9580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9665 (Flapjack.WordLangAddr.addr 9661 18446744073709551104#64))) := by
  unfold input9580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9665 (Flapjack.WordLangAddr.addr 9661 18446744073709551104#64)))).val
theorem output9580_def : output9580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9665 (Flapjack.WordLangAddr.addr 9661 18446744073709551104#64))) := by
  unfold output9580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9580_skip : Flapjack.WordAlloc.isSkip output9580 = false := by
  rw [output9580_def]
  conv => lhs; cbv
  try rfl
theorem node9580_eq : Flapjack.WordAlloc.removeDeadStructural input9580 value4794 value1 value2 = (output9580, value4795, value1) := by
  rw [input9580_def, output9580_def]
  try (conv => lhs; cbv)
  try rfl

def value4796 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9661 9657)).val
theorem input9581_def : input9581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9661 9657) := by
  unfold input9581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9661 9657)).val
theorem output9581_def : output9581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9661 9657) := by
  unfold output9581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9581_skip : Flapjack.WordAlloc.isSkip output9581 = false := by
  rw [output9581_def]
  conv => lhs; cbv
  try rfl
theorem node9581_eq : Flapjack.WordAlloc.removeDeadStructural input9581 value4795 value1 value2 = (output9581, value4796, value1) := by
  rw [input9581_def, output9581_def]
  try (conv => lhs; cbv)
  try rfl

def value4797 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9657 9653 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9582_def : input9582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9657 9653 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9657 9653 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9582_def : output9582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9657 9653 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9582_skip : Flapjack.WordAlloc.isSkip output9582 = false := by
  rw [output9582_def]
  conv => lhs; cbv
  try rfl
theorem node9582_eq : Flapjack.WordAlloc.removeDeadStructural input9582 value4796 value1 value2 = (output9582, value4797, value1) := by
  rw [input9582_def, output9582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9653 Flapjack.WordStore.heapLength)).val
theorem input9583_def : input9583 = (Flapjack.WordLangProgHOL.get 9653 Flapjack.WordStore.heapLength) := by
  unfold input9583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9653 Flapjack.WordStore.heapLength)).val
theorem output9583_def : output9583 = (Flapjack.WordLangProgHOL.get 9653 Flapjack.WordStore.heapLength) := by
  unfold output9583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9583_skip : Flapjack.WordAlloc.isSkip output9583 = false := by
  rw [output9583_def]
  conv => lhs; cbv
  try rfl
theorem node9583_eq : Flapjack.WordAlloc.removeDeadStructural input9583 value4797 value1 value2 = (output9583, value5, value1) := by
  rw [input9583_def, output9583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9583 input9582)).val
theorem input9584_def : input9584 = (.seq input9583 input9582) := by
  unfold input9584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9583 output9582)).val
theorem output9584_def : output9584 = (.seq output9583 output9582) := by
  unfold output9584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9584_skip : Flapjack.WordAlloc.isSkip output9584 = false := by
  rw [output9584_def]
  conv => lhs; cbv
  try rfl
theorem node9584_eq : Flapjack.WordAlloc.removeDeadStructural input9584 value4796 value1 value2 = (output9584, value5, value1) := by
  rw [input9584_def, output9584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9582_eq]
  dsimp only
  rw [node9583_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9584 input9581)).val
theorem input9585_def : input9585 = (.seq input9584 input9581) := by
  unfold input9585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9584 output9581)).val
theorem output9585_def : output9585 = (.seq output9584 output9581) := by
  unfold output9585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9585_skip : Flapjack.WordAlloc.isSkip output9585 = false := by
  rw [output9585_def]
  conv => lhs; cbv
  try rfl
theorem node9585_eq : Flapjack.WordAlloc.removeDeadStructural input9585 value4795 value1 value2 = (output9585, value5, value1) := by
  rw [input9585_def, output9585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9581_eq]
  dsimp only
  rw [node9584_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9585 input9580)).val
theorem input9586_def : input9586 = (.seq input9585 input9580) := by
  unfold input9586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9585 output9580)).val
theorem output9586_def : output9586 = (.seq output9585 output9580) := by
  unfold output9586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9586_skip : Flapjack.WordAlloc.isSkip output9586 = false := by
  rw [output9586_def]
  conv => lhs; cbv
  try rfl
theorem node9586_eq : Flapjack.WordAlloc.removeDeadStructural input9586 value4794 value1 value2 = (output9586, value5, value1) := by
  rw [input9586_def, output9586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9580_eq]
  dsimp only
  rw [node9585_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9586 input9579)).val
theorem input9587_def : input9587 = (.seq input9586 input9579) := by
  unfold input9587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9586 output9579)).val
theorem output9587_def : output9587 = (.seq output9586 output9579) := by
  unfold output9587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9587_skip : Flapjack.WordAlloc.isSkip output9587 = false := by
  rw [output9587_def]
  conv => lhs; cbv
  try rfl
theorem node9587_eq : Flapjack.WordAlloc.removeDeadStructural input9587 value4792 value1 value2 = (output9587, value5, value1) := by
  rw [input9587_def, output9587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9579_eq]
  dsimp only
  rw [node9586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4798 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9645 (Flapjack.WordLangAddr.addr 9649 0#64)))).val
theorem input9588_def : input9588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9645 (Flapjack.WordLangAddr.addr 9649 0#64))) := by
  unfold input9588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9645 (Flapjack.WordLangAddr.addr 9649 0#64)))).val
theorem output9588_def : output9588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9645 (Flapjack.WordLangAddr.addr 9649 0#64))) := by
  unfold output9588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9588_skip : Flapjack.WordAlloc.isSkip output9588 = false := by
  rw [output9588_def]
  conv => lhs; cbv
  try rfl
theorem node9588_eq : Flapjack.WordAlloc.removeDeadStructural input9588 value5 value1 value2 = (output9588, value4798, value1) := by
  rw [input9588_def, output9588_def]
  try (conv => lhs; cbv)
  try rfl

def value4799 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9649, 9637)])).val
theorem input9589_def : input9589 = (Flapjack.WordLangProgHOL.move 0 [(9649, 9637)]) := by
  unfold input9589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9649, 9637)])).val
theorem output9589_def : output9589 = (Flapjack.WordLangProgHOL.move 0 [(9649, 9637)]) := by
  unfold output9589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9589_skip : Flapjack.WordAlloc.isSkip output9589 = false := by
  rw [output9589_def]
  conv => lhs; cbv
  try rfl
theorem node9589_eq : Flapjack.WordAlloc.removeDeadStructural input9589 value4798 value1 value2 = (output9589, value4799, value1) := by
  rw [input9589_def, output9589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9589 input9588)).val
theorem input9590_def : input9590 = (.seq input9589 input9588) := by
  unfold input9590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9589 output9588)).val
theorem output9590_def : output9590 = (.seq output9589 output9588) := by
  unfold output9590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9590_skip : Flapjack.WordAlloc.isSkip output9590 = false := by
  rw [output9590_def]
  conv => lhs; cbv
  try rfl
theorem node9590_eq : Flapjack.WordAlloc.removeDeadStructural input9590 value5 value1 value2 = (output9590, value4799, value1) := by
  rw [input9590_def, output9590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9588_eq]
  dsimp only
  rw [node9589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4800 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9645 9161465579737517214#64))).val
theorem input9591_def : input9591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9645 9161465579737517214#64)) := by
  unfold input9591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9645 9161465579737517214#64))).val
theorem output9591_def : output9591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9645 9161465579737517214#64)) := by
  unfold output9591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9591_skip : Flapjack.WordAlloc.isSkip output9591 = false := by
  rw [output9591_def]
  conv => lhs; cbv
  try rfl
theorem node9591_eq : Flapjack.WordAlloc.removeDeadStructural input9591 value4799 value1 value2 = (output9591, value4800, value1) := by
  rw [input9591_def, output9591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9641 9161465579737517214#64))).val
theorem input9592_def : input9592 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9641 9161465579737517214#64)) := by
  unfold input9592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9592_def : output9592 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9592_skip : Flapjack.WordAlloc.isSkip output9592 = true := by
  rw [output9592_def]
  conv => lhs; cbv
  try rfl
theorem node9592_eq : Flapjack.WordAlloc.removeDeadStructural input9592 value4800 value1 value2 = (output9592, value4800, value1) := by
  rw [input9592_def, output9592_def]
  try (conv => lhs; cbv)
  try rfl

def value4801 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9637 9629 (Flapjack.WordRegImm.reg 9633))))).val
theorem input9593_def : input9593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9637 9629 (Flapjack.WordRegImm.reg 9633)))) := by
  unfold input9593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9637 9629 (Flapjack.WordRegImm.reg 9633))))).val
theorem output9593_def : output9593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9637 9629 (Flapjack.WordRegImm.reg 9633)))) := by
  unfold output9593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9593_skip : Flapjack.WordAlloc.isSkip output9593 = false := by
  rw [output9593_def]
  conv => lhs; cbv
  try rfl
theorem node9593_eq : Flapjack.WordAlloc.removeDeadStructural input9593 value4800 value1 value2 = (output9593, value4801, value1) := by
  rw [input9593_def, output9593_def]
  try (conv => lhs; cbv)
  try rfl

def value4802 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9633 2336#64))).val
theorem input9594_def : input9594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9633 2336#64)) := by
  unfold input9594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9633 2336#64))).val
theorem output9594_def : output9594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9633 2336#64)) := by
  unfold output9594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9594_skip : Flapjack.WordAlloc.isSkip output9594 = false := by
  rw [output9594_def]
  conv => lhs; cbv
  try rfl
theorem node9594_eq : Flapjack.WordAlloc.removeDeadStructural input9594 value4801 value1 value2 = (output9594, value4802, value1) := by
  rw [input9594_def, output9594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9594 input9593)).val
theorem input9595_def : input9595 = (.seq input9594 input9593) := by
  unfold input9595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9594 output9593)).val
theorem output9595_def : output9595 = (.seq output9594 output9593) := by
  unfold output9595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9595_skip : Flapjack.WordAlloc.isSkip output9595 = false := by
  rw [output9595_def]
  conv => lhs; cbv
  try rfl
theorem node9595_eq : Flapjack.WordAlloc.removeDeadStructural input9595 value4800 value1 value2 = (output9595, value4802, value1) := by
  rw [input9595_def, output9595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9593_eq]
  dsimp only
  rw [node9594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4803 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9629 (Flapjack.WordLangAddr.addr 9625 18446744073709551104#64)))).val
theorem input9596_def : input9596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9629 (Flapjack.WordLangAddr.addr 9625 18446744073709551104#64))) := by
  unfold input9596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9629 (Flapjack.WordLangAddr.addr 9625 18446744073709551104#64)))).val
theorem output9596_def : output9596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9629 (Flapjack.WordLangAddr.addr 9625 18446744073709551104#64))) := by
  unfold output9596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9596_skip : Flapjack.WordAlloc.isSkip output9596 = false := by
  rw [output9596_def]
  conv => lhs; cbv
  try rfl
theorem node9596_eq : Flapjack.WordAlloc.removeDeadStructural input9596 value4802 value1 value2 = (output9596, value4803, value1) := by
  rw [input9596_def, output9596_def]
  try (conv => lhs; cbv)
  try rfl

def value4804 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9625 9621)).val
theorem input9597_def : input9597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9625 9621) := by
  unfold input9597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9625 9621)).val
theorem output9597_def : output9597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9625 9621) := by
  unfold output9597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9597_skip : Flapjack.WordAlloc.isSkip output9597 = false := by
  rw [output9597_def]
  conv => lhs; cbv
  try rfl
theorem node9597_eq : Flapjack.WordAlloc.removeDeadStructural input9597 value4803 value1 value2 = (output9597, value4804, value1) := by
  rw [input9597_def, output9597_def]
  try (conv => lhs; cbv)
  try rfl

def value4805 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9621 9617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9598_def : input9598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9621 9617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9621 9617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9598_def : output9598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9621 9617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9598_skip : Flapjack.WordAlloc.isSkip output9598 = false := by
  rw [output9598_def]
  conv => lhs; cbv
  try rfl
theorem node9598_eq : Flapjack.WordAlloc.removeDeadStructural input9598 value4804 value1 value2 = (output9598, value4805, value1) := by
  rw [input9598_def, output9598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9617 Flapjack.WordStore.heapLength)).val
theorem input9599_def : input9599 = (Flapjack.WordLangProgHOL.get 9617 Flapjack.WordStore.heapLength) := by
  unfold input9599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9617 Flapjack.WordStore.heapLength)).val
theorem output9599_def : output9599 = (Flapjack.WordLangProgHOL.get 9617 Flapjack.WordStore.heapLength) := by
  unfold output9599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9599_skip : Flapjack.WordAlloc.isSkip output9599 = false := by
  rw [output9599_def]
  conv => lhs; cbv
  try rfl
theorem node9599_eq : Flapjack.WordAlloc.removeDeadStructural input9599 value4805 value1 value2 = (output9599, value5, value1) := by
  rw [input9599_def, output9599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9599 input9598)).val
theorem input9600_def : input9600 = (.seq input9599 input9598) := by
  unfold input9600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9599 output9598)).val
theorem output9600_def : output9600 = (.seq output9599 output9598) := by
  unfold output9600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9600_skip : Flapjack.WordAlloc.isSkip output9600 = false := by
  rw [output9600_def]
  conv => lhs; cbv
  try rfl
theorem node9600_eq : Flapjack.WordAlloc.removeDeadStructural input9600 value4804 value1 value2 = (output9600, value5, value1) := by
  rw [input9600_def, output9600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9598_eq]
  dsimp only
  rw [node9599_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9600 input9597)).val
theorem input9601_def : input9601 = (.seq input9600 input9597) := by
  unfold input9601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9600 output9597)).val
theorem output9601_def : output9601 = (.seq output9600 output9597) := by
  unfold output9601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9601_skip : Flapjack.WordAlloc.isSkip output9601 = false := by
  rw [output9601_def]
  conv => lhs; cbv
  try rfl
theorem node9601_eq : Flapjack.WordAlloc.removeDeadStructural input9601 value4803 value1 value2 = (output9601, value5, value1) := by
  rw [input9601_def, output9601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9597_eq]
  dsimp only
  rw [node9600_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9601 input9596)).val
theorem input9602_def : input9602 = (.seq input9601 input9596) := by
  unfold input9602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9601 output9596)).val
theorem output9602_def : output9602 = (.seq output9601 output9596) := by
  unfold output9602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9602_skip : Flapjack.WordAlloc.isSkip output9602 = false := by
  rw [output9602_def]
  conv => lhs; cbv
  try rfl
theorem node9602_eq : Flapjack.WordAlloc.removeDeadStructural input9602 value4802 value1 value2 = (output9602, value5, value1) := by
  rw [input9602_def, output9602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9596_eq]
  dsimp only
  rw [node9601_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9602 input9595)).val
theorem input9603_def : input9603 = (.seq input9602 input9595) := by
  unfold input9603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9602 output9595)).val
theorem output9603_def : output9603 = (.seq output9602 output9595) := by
  unfold output9603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9603_skip : Flapjack.WordAlloc.isSkip output9603 = false := by
  rw [output9603_def]
  conv => lhs; cbv
  try rfl
theorem node9603_eq : Flapjack.WordAlloc.removeDeadStructural input9603 value4800 value1 value2 = (output9603, value5, value1) := by
  rw [input9603_def, output9603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9595_eq]
  dsimp only
  rw [node9602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4806 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9609 (Flapjack.WordLangAddr.addr 9613 0#64)))).val
theorem input9604_def : input9604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9609 (Flapjack.WordLangAddr.addr 9613 0#64))) := by
  unfold input9604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9609 (Flapjack.WordLangAddr.addr 9613 0#64)))).val
theorem output9604_def : output9604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9609 (Flapjack.WordLangAddr.addr 9613 0#64))) := by
  unfold output9604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9604_skip : Flapjack.WordAlloc.isSkip output9604 = false := by
  rw [output9604_def]
  conv => lhs; cbv
  try rfl
theorem node9604_eq : Flapjack.WordAlloc.removeDeadStructural input9604 value5 value1 value2 = (output9604, value4806, value1) := by
  rw [input9604_def, output9604_def]
  try (conv => lhs; cbv)
  try rfl

def value4807 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9613, 9601)])).val
theorem input9605_def : input9605 = (Flapjack.WordLangProgHOL.move 0 [(9613, 9601)]) := by
  unfold input9605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9613, 9601)])).val
theorem output9605_def : output9605 = (Flapjack.WordLangProgHOL.move 0 [(9613, 9601)]) := by
  unfold output9605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9605_skip : Flapjack.WordAlloc.isSkip output9605 = false := by
  rw [output9605_def]
  conv => lhs; cbv
  try rfl
theorem node9605_eq : Flapjack.WordAlloc.removeDeadStructural input9605 value4806 value1 value2 = (output9605, value4807, value1) := by
  rw [input9605_def, output9605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9605 input9604)).val
theorem input9606_def : input9606 = (.seq input9605 input9604) := by
  unfold input9606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9605 output9604)).val
theorem output9606_def : output9606 = (.seq output9605 output9604) := by
  unfold output9606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9606_skip : Flapjack.WordAlloc.isSkip output9606 = false := by
  rw [output9606_def]
  conv => lhs; cbv
  try rfl
theorem node9606_eq : Flapjack.WordAlloc.removeDeadStructural input9606 value5 value1 value2 = (output9606, value4807, value1) := by
  rw [input9606_def, output9606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9604_eq]
  dsimp only
  rw [node9605_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4808 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9609 580186936973955012#64))).val
theorem input9607_def : input9607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9609 580186936973955012#64)) := by
  unfold input9607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9609 580186936973955012#64))).val
theorem output9607_def : output9607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9609 580186936973955012#64)) := by
  unfold output9607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9607_skip : Flapjack.WordAlloc.isSkip output9607 = false := by
  rw [output9607_def]
  conv => lhs; cbv
  try rfl
theorem node9607_eq : Flapjack.WordAlloc.removeDeadStructural input9607 value4807 value1 value2 = (output9607, value4808, value1) := by
  rw [input9607_def, output9607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9605 580186936973955012#64))).val
theorem input9608_def : input9608 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9605 580186936973955012#64)) := by
  unfold input9608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9608_def : output9608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9608_skip : Flapjack.WordAlloc.isSkip output9608 = true := by
  rw [output9608_def]
  conv => lhs; cbv
  try rfl
theorem node9608_eq : Flapjack.WordAlloc.removeDeadStructural input9608 value4808 value1 value2 = (output9608, value4808, value1) := by
  rw [input9608_def, output9608_def]
  try (conv => lhs; cbv)
  try rfl

def value4809 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9601 9593 (Flapjack.WordRegImm.reg 9597))))).val
theorem input9609_def : input9609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9601 9593 (Flapjack.WordRegImm.reg 9597)))) := by
  unfold input9609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9601 9593 (Flapjack.WordRegImm.reg 9597))))).val
theorem output9609_def : output9609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9601 9593 (Flapjack.WordRegImm.reg 9597)))) := by
  unfold output9609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9609_skip : Flapjack.WordAlloc.isSkip output9609 = false := by
  rw [output9609_def]
  conv => lhs; cbv
  try rfl
theorem node9609_eq : Flapjack.WordAlloc.removeDeadStructural input9609 value4808 value1 value2 = (output9609, value4809, value1) := by
  rw [input9609_def, output9609_def]
  try (conv => lhs; cbv)
  try rfl

def value4810 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9597 2328#64))).val
theorem input9610_def : input9610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9597 2328#64)) := by
  unfold input9610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9597 2328#64))).val
theorem output9610_def : output9610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9597 2328#64)) := by
  unfold output9610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9610_skip : Flapjack.WordAlloc.isSkip output9610 = false := by
  rw [output9610_def]
  conv => lhs; cbv
  try rfl
theorem node9610_eq : Flapjack.WordAlloc.removeDeadStructural input9610 value4809 value1 value2 = (output9610, value4810, value1) := by
  rw [input9610_def, output9610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9610 input9609)).val
theorem input9611_def : input9611 = (.seq input9610 input9609) := by
  unfold input9611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9610 output9609)).val
theorem output9611_def : output9611 = (.seq output9610 output9609) := by
  unfold output9611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9611_skip : Flapjack.WordAlloc.isSkip output9611 = false := by
  rw [output9611_def]
  conv => lhs; cbv
  try rfl
theorem node9611_eq : Flapjack.WordAlloc.removeDeadStructural input9611 value4808 value1 value2 = (output9611, value4810, value1) := by
  rw [input9611_def, output9611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9609_eq]
  dsimp only
  rw [node9610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4811 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9593 (Flapjack.WordLangAddr.addr 9589 18446744073709551104#64)))).val
theorem input9612_def : input9612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9593 (Flapjack.WordLangAddr.addr 9589 18446744073709551104#64))) := by
  unfold input9612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9593 (Flapjack.WordLangAddr.addr 9589 18446744073709551104#64)))).val
theorem output9612_def : output9612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9593 (Flapjack.WordLangAddr.addr 9589 18446744073709551104#64))) := by
  unfold output9612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9612_skip : Flapjack.WordAlloc.isSkip output9612 = false := by
  rw [output9612_def]
  conv => lhs; cbv
  try rfl
theorem node9612_eq : Flapjack.WordAlloc.removeDeadStructural input9612 value4810 value1 value2 = (output9612, value4811, value1) := by
  rw [input9612_def, output9612_def]
  try (conv => lhs; cbv)
  try rfl

def value4812 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9589 9585)).val
theorem input9613_def : input9613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9589 9585) := by
  unfold input9613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9589 9585)).val
theorem output9613_def : output9613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9589 9585) := by
  unfold output9613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9613_skip : Flapjack.WordAlloc.isSkip output9613 = false := by
  rw [output9613_def]
  conv => lhs; cbv
  try rfl
theorem node9613_eq : Flapjack.WordAlloc.removeDeadStructural input9613 value4811 value1 value2 = (output9613, value4812, value1) := by
  rw [input9613_def, output9613_def]
  try (conv => lhs; cbv)
  try rfl

def value4813 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9585 9581 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9614_def : input9614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9585 9581 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9585 9581 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9614_def : output9614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9585 9581 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9614_skip : Flapjack.WordAlloc.isSkip output9614 = false := by
  rw [output9614_def]
  conv => lhs; cbv
  try rfl
theorem node9614_eq : Flapjack.WordAlloc.removeDeadStructural input9614 value4812 value1 value2 = (output9614, value4813, value1) := by
  rw [input9614_def, output9614_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9581 Flapjack.WordStore.heapLength)).val
theorem input9615_def : input9615 = (Flapjack.WordLangProgHOL.get 9581 Flapjack.WordStore.heapLength) := by
  unfold input9615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9581 Flapjack.WordStore.heapLength)).val
theorem output9615_def : output9615 = (Flapjack.WordLangProgHOL.get 9581 Flapjack.WordStore.heapLength) := by
  unfold output9615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9615_skip : Flapjack.WordAlloc.isSkip output9615 = false := by
  rw [output9615_def]
  conv => lhs; cbv
  try rfl
theorem node9615_eq : Flapjack.WordAlloc.removeDeadStructural input9615 value4813 value1 value2 = (output9615, value5, value1) := by
  rw [input9615_def, output9615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9615 input9614)).val
theorem input9616_def : input9616 = (.seq input9615 input9614) := by
  unfold input9616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9615 output9614)).val
theorem output9616_def : output9616 = (.seq output9615 output9614) := by
  unfold output9616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9616_skip : Flapjack.WordAlloc.isSkip output9616 = false := by
  rw [output9616_def]
  conv => lhs; cbv
  try rfl
theorem node9616_eq : Flapjack.WordAlloc.removeDeadStructural input9616 value4812 value1 value2 = (output9616, value5, value1) := by
  rw [input9616_def, output9616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9614_eq]
  dsimp only
  rw [node9615_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9616 input9613)).val
theorem input9617_def : input9617 = (.seq input9616 input9613) := by
  unfold input9617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9616 output9613)).val
theorem output9617_def : output9617 = (.seq output9616 output9613) := by
  unfold output9617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9617_skip : Flapjack.WordAlloc.isSkip output9617 = false := by
  rw [output9617_def]
  conv => lhs; cbv
  try rfl
theorem node9617_eq : Flapjack.WordAlloc.removeDeadStructural input9617 value4811 value1 value2 = (output9617, value5, value1) := by
  rw [input9617_def, output9617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9613_eq]
  dsimp only
  rw [node9616_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9617 input9612)).val
theorem input9618_def : input9618 = (.seq input9617 input9612) := by
  unfold input9618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9617 output9612)).val
theorem output9618_def : output9618 = (.seq output9617 output9612) := by
  unfold output9618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9618_skip : Flapjack.WordAlloc.isSkip output9618 = false := by
  rw [output9618_def]
  conv => lhs; cbv
  try rfl
theorem node9618_eq : Flapjack.WordAlloc.removeDeadStructural input9618 value4810 value1 value2 = (output9618, value5, value1) := by
  rw [input9618_def, output9618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9612_eq]
  dsimp only
  rw [node9617_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9618 input9611)).val
theorem input9619_def : input9619 = (.seq input9618 input9611) := by
  unfold input9619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9618 output9611)).val
theorem output9619_def : output9619 = (.seq output9618 output9611) := by
  unfold output9619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9619_skip : Flapjack.WordAlloc.isSkip output9619 = false := by
  rw [output9619_def]
  conv => lhs; cbv
  try rfl
theorem node9619_eq : Flapjack.WordAlloc.removeDeadStructural input9619 value4808 value1 value2 = (output9619, value5, value1) := by
  rw [input9619_def, output9619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9611_eq]
  dsimp only
  rw [node9618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4814 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9573 (Flapjack.WordLangAddr.addr 9577 0#64)))).val
theorem input9620_def : input9620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9573 (Flapjack.WordLangAddr.addr 9577 0#64))) := by
  unfold input9620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9573 (Flapjack.WordLangAddr.addr 9577 0#64)))).val
theorem output9620_def : output9620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9573 (Flapjack.WordLangAddr.addr 9577 0#64))) := by
  unfold output9620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9620_skip : Flapjack.WordAlloc.isSkip output9620 = false := by
  rw [output9620_def]
  conv => lhs; cbv
  try rfl
theorem node9620_eq : Flapjack.WordAlloc.removeDeadStructural input9620 value5 value1 value2 = (output9620, value4814, value1) := by
  rw [input9620_def, output9620_def]
  try (conv => lhs; cbv)
  try rfl

def value4815 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9577, 9565)])).val
theorem input9621_def : input9621 = (Flapjack.WordLangProgHOL.move 0 [(9577, 9565)]) := by
  unfold input9621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9577, 9565)])).val
theorem output9621_def : output9621 = (Flapjack.WordLangProgHOL.move 0 [(9577, 9565)]) := by
  unfold output9621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9621_skip : Flapjack.WordAlloc.isSkip output9621 = false := by
  rw [output9621_def]
  conv => lhs; cbv
  try rfl
theorem node9621_eq : Flapjack.WordAlloc.removeDeadStructural input9621 value4814 value1 value2 = (output9621, value4815, value1) := by
  rw [input9621_def, output9621_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9621 input9620)).val
theorem input9622_def : input9622 = (.seq input9621 input9620) := by
  unfold input9622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9621 output9620)).val
theorem output9622_def : output9622 = (.seq output9621 output9620) := by
  unfold output9622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9622_skip : Flapjack.WordAlloc.isSkip output9622 = false := by
  rw [output9622_def]
  conv => lhs; cbv
  try rfl
theorem node9622_eq : Flapjack.WordAlloc.removeDeadStructural input9622 value5 value1 value2 = (output9622, value4815, value1) := by
  rw [input9622_def, output9622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9620_eq]
  dsimp only
  rw [node9621_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4816 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9573 8903813505199544589#64))).val
theorem input9623_def : input9623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9573 8903813505199544589#64)) := by
  unfold input9623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9573 8903813505199544589#64))).val
theorem output9623_def : output9623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9573 8903813505199544589#64)) := by
  unfold output9623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9623_skip : Flapjack.WordAlloc.isSkip output9623 = false := by
  rw [output9623_def]
  conv => lhs; cbv
  try rfl
theorem node9623_eq : Flapjack.WordAlloc.removeDeadStructural input9623 value4815 value1 value2 = (output9623, value4816, value1) := by
  rw [input9623_def, output9623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9569 8903813505199544589#64))).val
theorem input9624_def : input9624 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9569 8903813505199544589#64)) := by
  unfold input9624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9624_def : output9624 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9624_skip : Flapjack.WordAlloc.isSkip output9624 = true := by
  rw [output9624_def]
  conv => lhs; cbv
  try rfl
theorem node9624_eq : Flapjack.WordAlloc.removeDeadStructural input9624 value4816 value1 value2 = (output9624, value4816, value1) := by
  rw [input9624_def, output9624_def]
  try (conv => lhs; cbv)
  try rfl

def value4817 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9565 9557 (Flapjack.WordRegImm.reg 9561))))).val
theorem input9625_def : input9625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9565 9557 (Flapjack.WordRegImm.reg 9561)))) := by
  unfold input9625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9565 9557 (Flapjack.WordRegImm.reg 9561))))).val
theorem output9625_def : output9625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9565 9557 (Flapjack.WordRegImm.reg 9561)))) := by
  unfold output9625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9625_skip : Flapjack.WordAlloc.isSkip output9625 = false := by
  rw [output9625_def]
  conv => lhs; cbv
  try rfl
theorem node9625_eq : Flapjack.WordAlloc.removeDeadStructural input9625 value4816 value1 value2 = (output9625, value4817, value1) := by
  rw [input9625_def, output9625_def]
  try (conv => lhs; cbv)
  try rfl

def value4818 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9561 2320#64))).val
theorem input9626_def : input9626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9561 2320#64)) := by
  unfold input9626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9561 2320#64))).val
theorem output9626_def : output9626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9561 2320#64)) := by
  unfold output9626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9626_skip : Flapjack.WordAlloc.isSkip output9626 = false := by
  rw [output9626_def]
  conv => lhs; cbv
  try rfl
theorem node9626_eq : Flapjack.WordAlloc.removeDeadStructural input9626 value4817 value1 value2 = (output9626, value4818, value1) := by
  rw [input9626_def, output9626_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9626 input9625)).val
theorem input9627_def : input9627 = (.seq input9626 input9625) := by
  unfold input9627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9626 output9625)).val
theorem output9627_def : output9627 = (.seq output9626 output9625) := by
  unfold output9627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9627_skip : Flapjack.WordAlloc.isSkip output9627 = false := by
  rw [output9627_def]
  conv => lhs; cbv
  try rfl
theorem node9627_eq : Flapjack.WordAlloc.removeDeadStructural input9627 value4816 value1 value2 = (output9627, value4818, value1) := by
  rw [input9627_def, output9627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9625_eq]
  dsimp only
  rw [node9626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4819 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9557 (Flapjack.WordLangAddr.addr 9553 18446744073709551104#64)))).val
theorem input9628_def : input9628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9557 (Flapjack.WordLangAddr.addr 9553 18446744073709551104#64))) := by
  unfold input9628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9557 (Flapjack.WordLangAddr.addr 9553 18446744073709551104#64)))).val
theorem output9628_def : output9628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9557 (Flapjack.WordLangAddr.addr 9553 18446744073709551104#64))) := by
  unfold output9628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9628_skip : Flapjack.WordAlloc.isSkip output9628 = false := by
  rw [output9628_def]
  conv => lhs; cbv
  try rfl
theorem node9628_eq : Flapjack.WordAlloc.removeDeadStructural input9628 value4818 value1 value2 = (output9628, value4819, value1) := by
  rw [input9628_def, output9628_def]
  try (conv => lhs; cbv)
  try rfl

def value4820 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9553 9549)).val
theorem input9629_def : input9629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9553 9549) := by
  unfold input9629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9553 9549)).val
theorem output9629_def : output9629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9553 9549) := by
  unfold output9629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9629_skip : Flapjack.WordAlloc.isSkip output9629 = false := by
  rw [output9629_def]
  conv => lhs; cbv
  try rfl
theorem node9629_eq : Flapjack.WordAlloc.removeDeadStructural input9629 value4819 value1 value2 = (output9629, value4820, value1) := by
  rw [input9629_def, output9629_def]
  try (conv => lhs; cbv)
  try rfl

def value4821 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9549 9545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9630_def : input9630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9549 9545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9549 9545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9630_def : output9630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9549 9545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9630_skip : Flapjack.WordAlloc.isSkip output9630 = false := by
  rw [output9630_def]
  conv => lhs; cbv
  try rfl
theorem node9630_eq : Flapjack.WordAlloc.removeDeadStructural input9630 value4820 value1 value2 = (output9630, value4821, value1) := by
  rw [input9630_def, output9630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9545 Flapjack.WordStore.heapLength)).val
theorem input9631_def : input9631 = (Flapjack.WordLangProgHOL.get 9545 Flapjack.WordStore.heapLength) := by
  unfold input9631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9545 Flapjack.WordStore.heapLength)).val
theorem output9631_def : output9631 = (Flapjack.WordLangProgHOL.get 9545 Flapjack.WordStore.heapLength) := by
  unfold output9631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9631_skip : Flapjack.WordAlloc.isSkip output9631 = false := by
  rw [output9631_def]
  conv => lhs; cbv
  try rfl
theorem node9631_eq : Flapjack.WordAlloc.removeDeadStructural input9631 value4821 value1 value2 = (output9631, value5, value1) := by
  rw [input9631_def, output9631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9631 input9630)).val
theorem input9632_def : input9632 = (.seq input9631 input9630) := by
  unfold input9632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9631 output9630)).val
theorem output9632_def : output9632 = (.seq output9631 output9630) := by
  unfold output9632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9632_skip : Flapjack.WordAlloc.isSkip output9632 = false := by
  rw [output9632_def]
  conv => lhs; cbv
  try rfl
theorem node9632_eq : Flapjack.WordAlloc.removeDeadStructural input9632 value4820 value1 value2 = (output9632, value5, value1) := by
  rw [input9632_def, output9632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9630_eq]
  dsimp only
  rw [node9631_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9632 input9629)).val
theorem input9633_def : input9633 = (.seq input9632 input9629) := by
  unfold input9633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9632 output9629)).val
theorem output9633_def : output9633 = (.seq output9632 output9629) := by
  unfold output9633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9633_skip : Flapjack.WordAlloc.isSkip output9633 = false := by
  rw [output9633_def]
  conv => lhs; cbv
  try rfl
theorem node9633_eq : Flapjack.WordAlloc.removeDeadStructural input9633 value4819 value1 value2 = (output9633, value5, value1) := by
  rw [input9633_def, output9633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9629_eq]
  dsimp only
  rw [node9632_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9633 input9628)).val
theorem input9634_def : input9634 = (.seq input9633 input9628) := by
  unfold input9634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9633 output9628)).val
theorem output9634_def : output9634 = (.seq output9633 output9628) := by
  unfold output9634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9634_skip : Flapjack.WordAlloc.isSkip output9634 = false := by
  rw [output9634_def]
  conv => lhs; cbv
  try rfl
theorem node9634_eq : Flapjack.WordAlloc.removeDeadStructural input9634 value4818 value1 value2 = (output9634, value5, value1) := by
  rw [input9634_def, output9634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9628_eq]
  dsimp only
  rw [node9633_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9634 input9627)).val
theorem input9635_def : input9635 = (.seq input9634 input9627) := by
  unfold input9635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9634 output9627)).val
theorem output9635_def : output9635 = (.seq output9634 output9627) := by
  unfold output9635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9635_skip : Flapjack.WordAlloc.isSkip output9635 = false := by
  rw [output9635_def]
  conv => lhs; cbv
  try rfl
theorem node9635_eq : Flapjack.WordAlloc.removeDeadStructural input9635 value4816 value1 value2 = (output9635, value5, value1) := by
  rw [input9635_def, output9635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9627_eq]
  dsimp only
  rw [node9634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4822 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9537 (Flapjack.WordLangAddr.addr 9541 0#64)))).val
theorem input9636_def : input9636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9537 (Flapjack.WordLangAddr.addr 9541 0#64))) := by
  unfold input9636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9537 (Flapjack.WordLangAddr.addr 9541 0#64)))).val
theorem output9636_def : output9636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9537 (Flapjack.WordLangAddr.addr 9541 0#64))) := by
  unfold output9636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9636_skip : Flapjack.WordAlloc.isSkip output9636 = false := by
  rw [output9636_def]
  conv => lhs; cbv
  try rfl
theorem node9636_eq : Flapjack.WordAlloc.removeDeadStructural input9636 value5 value1 value2 = (output9636, value4822, value1) := by
  rw [input9636_def, output9636_def]
  try (conv => lhs; cbv)
  try rfl

def value4823 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9541, 9529)])).val
theorem input9637_def : input9637 = (Flapjack.WordLangProgHOL.move 0 [(9541, 9529)]) := by
  unfold input9637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9541, 9529)])).val
theorem output9637_def : output9637 = (Flapjack.WordLangProgHOL.move 0 [(9541, 9529)]) := by
  unfold output9637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9637_skip : Flapjack.WordAlloc.isSkip output9637 = false := by
  rw [output9637_def]
  conv => lhs; cbv
  try rfl
theorem node9637_eq : Flapjack.WordAlloc.removeDeadStructural input9637 value4822 value1 value2 = (output9637, value4823, value1) := by
  rw [input9637_def, output9637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9637 input9636)).val
theorem input9638_def : input9638 = (.seq input9637 input9636) := by
  unfold input9638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9637 output9636)).val
theorem output9638_def : output9638 = (.seq output9637 output9636) := by
  unfold output9638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9638_skip : Flapjack.WordAlloc.isSkip output9638 = false := by
  rw [output9638_def]
  conv => lhs; cbv
  try rfl
theorem node9638_eq : Flapjack.WordAlloc.removeDeadStructural input9638 value5 value1 value2 = (output9638, value4823, value1) := by
  rw [input9638_def, output9638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9636_eq]
  dsimp only
  rw [node9637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4824 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9537 14140024565662700916#64))).val
theorem input9639_def : input9639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9537 14140024565662700916#64)) := by
  unfold input9639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9537 14140024565662700916#64))).val
theorem output9639_def : output9639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9537 14140024565662700916#64)) := by
  unfold output9639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9639_skip : Flapjack.WordAlloc.isSkip output9639 = false := by
  rw [output9639_def]
  conv => lhs; cbv
  try rfl
theorem node9639_eq : Flapjack.WordAlloc.removeDeadStructural input9639 value4823 value1 value2 = (output9639, value4824, value1) := by
  rw [input9639_def, output9639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9533 14140024565662700916#64))).val
theorem input9640_def : input9640 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9533 14140024565662700916#64)) := by
  unfold input9640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9640_def : output9640 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9640_skip : Flapjack.WordAlloc.isSkip output9640 = true := by
  rw [output9640_def]
  conv => lhs; cbv
  try rfl
theorem node9640_eq : Flapjack.WordAlloc.removeDeadStructural input9640 value4824 value1 value2 = (output9640, value4824, value1) := by
  rw [input9640_def, output9640_def]
  try (conv => lhs; cbv)
  try rfl

def value4825 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9529 9521 (Flapjack.WordRegImm.reg 9525))))).val
theorem input9641_def : input9641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9529 9521 (Flapjack.WordRegImm.reg 9525)))) := by
  unfold input9641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9529 9521 (Flapjack.WordRegImm.reg 9525))))).val
theorem output9641_def : output9641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9529 9521 (Flapjack.WordRegImm.reg 9525)))) := by
  unfold output9641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9641_skip : Flapjack.WordAlloc.isSkip output9641 = false := by
  rw [output9641_def]
  conv => lhs; cbv
  try rfl
theorem node9641_eq : Flapjack.WordAlloc.removeDeadStructural input9641 value4824 value1 value2 = (output9641, value4825, value1) := by
  rw [input9641_def, output9641_def]
  try (conv => lhs; cbv)
  try rfl

def value4826 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9525 2312#64))).val
theorem input9642_def : input9642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9525 2312#64)) := by
  unfold input9642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9525 2312#64))).val
theorem output9642_def : output9642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9525 2312#64)) := by
  unfold output9642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9642_skip : Flapjack.WordAlloc.isSkip output9642 = false := by
  rw [output9642_def]
  conv => lhs; cbv
  try rfl
theorem node9642_eq : Flapjack.WordAlloc.removeDeadStructural input9642 value4825 value1 value2 = (output9642, value4826, value1) := by
  rw [input9642_def, output9642_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9642 input9641)).val
theorem input9643_def : input9643 = (.seq input9642 input9641) := by
  unfold input9643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9642 output9641)).val
theorem output9643_def : output9643 = (.seq output9642 output9641) := by
  unfold output9643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9643_skip : Flapjack.WordAlloc.isSkip output9643 = false := by
  rw [output9643_def]
  conv => lhs; cbv
  try rfl
theorem node9643_eq : Flapjack.WordAlloc.removeDeadStructural input9643 value4824 value1 value2 = (output9643, value4826, value1) := by
  rw [input9643_def, output9643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9641_eq]
  dsimp only
  rw [node9642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4827 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9521 (Flapjack.WordLangAddr.addr 9517 18446744073709551104#64)))).val
theorem input9644_def : input9644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9521 (Flapjack.WordLangAddr.addr 9517 18446744073709551104#64))) := by
  unfold input9644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9521 (Flapjack.WordLangAddr.addr 9517 18446744073709551104#64)))).val
theorem output9644_def : output9644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9521 (Flapjack.WordLangAddr.addr 9517 18446744073709551104#64))) := by
  unfold output9644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9644_skip : Flapjack.WordAlloc.isSkip output9644 = false := by
  rw [output9644_def]
  conv => lhs; cbv
  try rfl
theorem node9644_eq : Flapjack.WordAlloc.removeDeadStructural input9644 value4826 value1 value2 = (output9644, value4827, value1) := by
  rw [input9644_def, output9644_def]
  try (conv => lhs; cbv)
  try rfl

def value4828 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9517 9513)).val
theorem input9645_def : input9645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9517 9513) := by
  unfold input9645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9517 9513)).val
theorem output9645_def : output9645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9517 9513) := by
  unfold output9645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9645_skip : Flapjack.WordAlloc.isSkip output9645 = false := by
  rw [output9645_def]
  conv => lhs; cbv
  try rfl
theorem node9645_eq : Flapjack.WordAlloc.removeDeadStructural input9645 value4827 value1 value2 = (output9645, value4828, value1) := by
  rw [input9645_def, output9645_def]
  try (conv => lhs; cbv)
  try rfl

def value4829 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9513 9509 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9646_def : input9646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9513 9509 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9513 9509 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9646_def : output9646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9513 9509 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9646_skip : Flapjack.WordAlloc.isSkip output9646 = false := by
  rw [output9646_def]
  conv => lhs; cbv
  try rfl
theorem node9646_eq : Flapjack.WordAlloc.removeDeadStructural input9646 value4828 value1 value2 = (output9646, value4829, value1) := by
  rw [input9646_def, output9646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9509 Flapjack.WordStore.heapLength)).val
theorem input9647_def : input9647 = (Flapjack.WordLangProgHOL.get 9509 Flapjack.WordStore.heapLength) := by
  unfold input9647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9509 Flapjack.WordStore.heapLength)).val
theorem output9647_def : output9647 = (Flapjack.WordLangProgHOL.get 9509 Flapjack.WordStore.heapLength) := by
  unfold output9647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9647_skip : Flapjack.WordAlloc.isSkip output9647 = false := by
  rw [output9647_def]
  conv => lhs; cbv
  try rfl
theorem node9647_eq : Flapjack.WordAlloc.removeDeadStructural input9647 value4829 value1 value2 = (output9647, value5, value1) := by
  rw [input9647_def, output9647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9647 input9646)).val
theorem input9648_def : input9648 = (.seq input9647 input9646) := by
  unfold input9648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9647 output9646)).val
theorem output9648_def : output9648 = (.seq output9647 output9646) := by
  unfold output9648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9648_skip : Flapjack.WordAlloc.isSkip output9648 = false := by
  rw [output9648_def]
  conv => lhs; cbv
  try rfl
theorem node9648_eq : Flapjack.WordAlloc.removeDeadStructural input9648 value4828 value1 value2 = (output9648, value5, value1) := by
  rw [input9648_def, output9648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9646_eq]
  dsimp only
  rw [node9647_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9648 input9645)).val
theorem input9649_def : input9649 = (.seq input9648 input9645) := by
  unfold input9649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9648 output9645)).val
theorem output9649_def : output9649 = (.seq output9648 output9645) := by
  unfold output9649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9649_skip : Flapjack.WordAlloc.isSkip output9649 = false := by
  rw [output9649_def]
  conv => lhs; cbv
  try rfl
theorem node9649_eq : Flapjack.WordAlloc.removeDeadStructural input9649 value4827 value1 value2 = (output9649, value5, value1) := by
  rw [input9649_def, output9649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9645_eq]
  dsimp only
  rw [node9648_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9649 input9644)).val
theorem input9650_def : input9650 = (.seq input9649 input9644) := by
  unfold input9650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9649 output9644)).val
theorem output9650_def : output9650 = (.seq output9649 output9644) := by
  unfold output9650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9650_skip : Flapjack.WordAlloc.isSkip output9650 = false := by
  rw [output9650_def]
  conv => lhs; cbv
  try rfl
theorem node9650_eq : Flapjack.WordAlloc.removeDeadStructural input9650 value4826 value1 value2 = (output9650, value5, value1) := by
  rw [input9650_def, output9650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9644_eq]
  dsimp only
  rw [node9649_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9650 input9643)).val
theorem input9651_def : input9651 = (.seq input9650 input9643) := by
  unfold input9651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9650 output9643)).val
theorem output9651_def : output9651 = (.seq output9650 output9643) := by
  unfold output9651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9651_skip : Flapjack.WordAlloc.isSkip output9651 = false := by
  rw [output9651_def]
  conv => lhs; cbv
  try rfl
theorem node9651_eq : Flapjack.WordAlloc.removeDeadStructural input9651 value4824 value1 value2 = (output9651, value5, value1) := by
  rw [input9651_def, output9651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9643_eq]
  dsimp only
  rw [node9650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4830 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9501 (Flapjack.WordLangAddr.addr 9505 0#64)))).val
theorem input9652_def : input9652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9501 (Flapjack.WordLangAddr.addr 9505 0#64))) := by
  unfold input9652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9501 (Flapjack.WordLangAddr.addr 9505 0#64)))).val
theorem output9652_def : output9652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9501 (Flapjack.WordLangAddr.addr 9505 0#64))) := by
  unfold output9652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9652_skip : Flapjack.WordAlloc.isSkip output9652 = false := by
  rw [output9652_def]
  conv => lhs; cbv
  try rfl
theorem node9652_eq : Flapjack.WordAlloc.removeDeadStructural input9652 value5 value1 value2 = (output9652, value4830, value1) := by
  rw [input9652_def, output9652_def]
  try (conv => lhs; cbv)
  try rfl

def value4831 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9505, 9493)])).val
theorem input9653_def : input9653 = (Flapjack.WordLangProgHOL.move 0 [(9505, 9493)]) := by
  unfold input9653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9505, 9493)])).val
theorem output9653_def : output9653 = (Flapjack.WordLangProgHOL.move 0 [(9505, 9493)]) := by
  unfold output9653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9653_skip : Flapjack.WordAlloc.isSkip output9653 = false := by
  rw [output9653_def]
  conv => lhs; cbv
  try rfl
theorem node9653_eq : Flapjack.WordAlloc.removeDeadStructural input9653 value4830 value1 value2 = (output9653, value4831, value1) := by
  rw [input9653_def, output9653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9653 input9652)).val
theorem input9654_def : input9654 = (.seq input9653 input9652) := by
  unfold input9654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9653 output9652)).val
theorem output9654_def : output9654 = (.seq output9653 output9652) := by
  unfold output9654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9654_skip : Flapjack.WordAlloc.isSkip output9654 = false := by
  rw [output9654_def]
  conv => lhs; cbv
  try rfl
theorem node9654_eq : Flapjack.WordAlloc.removeDeadStructural input9654 value5 value1 value2 = (output9654, value4831, value1) := by
  rw [input9654_def, output9654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9652_eq]
  dsimp only
  rw [node9653_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4832 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9501 11728946595272970718#64))).val
theorem input9655_def : input9655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9501 11728946595272970718#64)) := by
  unfold input9655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9501 11728946595272970718#64))).val
theorem output9655_def : output9655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9501 11728946595272970718#64)) := by
  unfold output9655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9655_skip : Flapjack.WordAlloc.isSkip output9655 = false := by
  rw [output9655_def]
  conv => lhs; cbv
  try rfl
theorem node9655_eq : Flapjack.WordAlloc.removeDeadStructural input9655 value4831 value1 value2 = (output9655, value4832, value1) := by
  rw [input9655_def, output9655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9497 11728946595272970718#64))).val
theorem input9656_def : input9656 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9497 11728946595272970718#64)) := by
  unfold input9656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9656_def : output9656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9656_skip : Flapjack.WordAlloc.isSkip output9656 = true := by
  rw [output9656_def]
  conv => lhs; cbv
  try rfl
theorem node9656_eq : Flapjack.WordAlloc.removeDeadStructural input9656 value4832 value1 value2 = (output9656, value4832, value1) := by
  rw [input9656_def, output9656_def]
  try (conv => lhs; cbv)
  try rfl

def value4833 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9493 9485 (Flapjack.WordRegImm.reg 9489))))).val
theorem input9657_def : input9657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9493 9485 (Flapjack.WordRegImm.reg 9489)))) := by
  unfold input9657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9493 9485 (Flapjack.WordRegImm.reg 9489))))).val
theorem output9657_def : output9657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9493 9485 (Flapjack.WordRegImm.reg 9489)))) := by
  unfold output9657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9657_skip : Flapjack.WordAlloc.isSkip output9657 = false := by
  rw [output9657_def]
  conv => lhs; cbv
  try rfl
theorem node9657_eq : Flapjack.WordAlloc.removeDeadStructural input9657 value4832 value1 value2 = (output9657, value4833, value1) := by
  rw [input9657_def, output9657_def]
  try (conv => lhs; cbv)
  try rfl

def value4834 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9489 2304#64))).val
theorem input9658_def : input9658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9489 2304#64)) := by
  unfold input9658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9489 2304#64))).val
theorem output9658_def : output9658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9489 2304#64)) := by
  unfold output9658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9658_skip : Flapjack.WordAlloc.isSkip output9658 = false := by
  rw [output9658_def]
  conv => lhs; cbv
  try rfl
theorem node9658_eq : Flapjack.WordAlloc.removeDeadStructural input9658 value4833 value1 value2 = (output9658, value4834, value1) := by
  rw [input9658_def, output9658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9658 input9657)).val
theorem input9659_def : input9659 = (.seq input9658 input9657) := by
  unfold input9659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9658 output9657)).val
theorem output9659_def : output9659 = (.seq output9658 output9657) := by
  unfold output9659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9659_skip : Flapjack.WordAlloc.isSkip output9659 = false := by
  rw [output9659_def]
  conv => lhs; cbv
  try rfl
theorem node9659_eq : Flapjack.WordAlloc.removeDeadStructural input9659 value4832 value1 value2 = (output9659, value4834, value1) := by
  rw [input9659_def, output9659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9657_eq]
  dsimp only
  rw [node9658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4835 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9485 (Flapjack.WordLangAddr.addr 9481 18446744073709551104#64)))).val
theorem input9660_def : input9660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9485 (Flapjack.WordLangAddr.addr 9481 18446744073709551104#64))) := by
  unfold input9660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9485 (Flapjack.WordLangAddr.addr 9481 18446744073709551104#64)))).val
theorem output9660_def : output9660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9485 (Flapjack.WordLangAddr.addr 9481 18446744073709551104#64))) := by
  unfold output9660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9660_skip : Flapjack.WordAlloc.isSkip output9660 = false := by
  rw [output9660_def]
  conv => lhs; cbv
  try rfl
theorem node9660_eq : Flapjack.WordAlloc.removeDeadStructural input9660 value4834 value1 value2 = (output9660, value4835, value1) := by
  rw [input9660_def, output9660_def]
  try (conv => lhs; cbv)
  try rfl

def value4836 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9481 9477)).val
theorem input9661_def : input9661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9481 9477) := by
  unfold input9661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9481 9477)).val
theorem output9661_def : output9661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9481 9477) := by
  unfold output9661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9661_skip : Flapjack.WordAlloc.isSkip output9661 = false := by
  rw [output9661_def]
  conv => lhs; cbv
  try rfl
theorem node9661_eq : Flapjack.WordAlloc.removeDeadStructural input9661 value4835 value1 value2 = (output9661, value4836, value1) := by
  rw [input9661_def, output9661_def]
  try (conv => lhs; cbv)
  try rfl

def value4837 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9477 9473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9662_def : input9662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9477 9473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9477 9473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9662_def : output9662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9477 9473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9662_skip : Flapjack.WordAlloc.isSkip output9662 = false := by
  rw [output9662_def]
  conv => lhs; cbv
  try rfl
theorem node9662_eq : Flapjack.WordAlloc.removeDeadStructural input9662 value4836 value1 value2 = (output9662, value4837, value1) := by
  rw [input9662_def, output9662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9473 Flapjack.WordStore.heapLength)).val
theorem input9663_def : input9663 = (Flapjack.WordLangProgHOL.get 9473 Flapjack.WordStore.heapLength) := by
  unfold input9663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9473 Flapjack.WordStore.heapLength)).val
theorem output9663_def : output9663 = (Flapjack.WordLangProgHOL.get 9473 Flapjack.WordStore.heapLength) := by
  unfold output9663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9663_skip : Flapjack.WordAlloc.isSkip output9663 = false := by
  rw [output9663_def]
  conv => lhs; cbv
  try rfl
theorem node9663_eq : Flapjack.WordAlloc.removeDeadStructural input9663 value4837 value1 value2 = (output9663, value5, value1) := by
  rw [input9663_def, output9663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9663 input9662)).val
theorem input9664_def : input9664 = (.seq input9663 input9662) := by
  unfold input9664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9663 output9662)).val
theorem output9664_def : output9664 = (.seq output9663 output9662) := by
  unfold output9664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9664_skip : Flapjack.WordAlloc.isSkip output9664 = false := by
  rw [output9664_def]
  conv => lhs; cbv
  try rfl
theorem node9664_eq : Flapjack.WordAlloc.removeDeadStructural input9664 value4836 value1 value2 = (output9664, value5, value1) := by
  rw [input9664_def, output9664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9662_eq]
  dsimp only
  rw [node9663_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9664 input9661)).val
theorem input9665_def : input9665 = (.seq input9664 input9661) := by
  unfold input9665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9664 output9661)).val
theorem output9665_def : output9665 = (.seq output9664 output9661) := by
  unfold output9665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9665_skip : Flapjack.WordAlloc.isSkip output9665 = false := by
  rw [output9665_def]
  conv => lhs; cbv
  try rfl
theorem node9665_eq : Flapjack.WordAlloc.removeDeadStructural input9665 value4835 value1 value2 = (output9665, value5, value1) := by
  rw [input9665_def, output9665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9661_eq]
  dsimp only
  rw [node9664_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9665 input9660)).val
theorem input9666_def : input9666 = (.seq input9665 input9660) := by
  unfold input9666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9665 output9660)).val
theorem output9666_def : output9666 = (.seq output9665 output9660) := by
  unfold output9666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9666_skip : Flapjack.WordAlloc.isSkip output9666 = false := by
  rw [output9666_def]
  conv => lhs; cbv
  try rfl
theorem node9666_eq : Flapjack.WordAlloc.removeDeadStructural input9666 value4834 value1 value2 = (output9666, value5, value1) := by
  rw [input9666_def, output9666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9660_eq]
  dsimp only
  rw [node9665_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9666 input9659)).val
theorem input9667_def : input9667 = (.seq input9666 input9659) := by
  unfold input9667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9666 output9659)).val
theorem output9667_def : output9667 = (.seq output9666 output9659) := by
  unfold output9667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9667_skip : Flapjack.WordAlloc.isSkip output9667 = false := by
  rw [output9667_def]
  conv => lhs; cbv
  try rfl
theorem node9667_eq : Flapjack.WordAlloc.removeDeadStructural input9667 value4832 value1 value2 = (output9667, value5, value1) := by
  rw [input9667_def, output9667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9659_eq]
  dsimp only
  rw [node9666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4838 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9465 (Flapjack.WordLangAddr.addr 9469 0#64)))).val
theorem input9668_def : input9668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9465 (Flapjack.WordLangAddr.addr 9469 0#64))) := by
  unfold input9668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9465 (Flapjack.WordLangAddr.addr 9469 0#64)))).val
theorem output9668_def : output9668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9465 (Flapjack.WordLangAddr.addr 9469 0#64))) := by
  unfold output9668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9668_skip : Flapjack.WordAlloc.isSkip output9668 = false := by
  rw [output9668_def]
  conv => lhs; cbv
  try rfl
theorem node9668_eq : Flapjack.WordAlloc.removeDeadStructural input9668 value5 value1 value2 = (output9668, value4838, value1) := by
  rw [input9668_def, output9668_def]
  try (conv => lhs; cbv)
  try rfl

def value4839 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9469, 9457)])).val
theorem input9669_def : input9669 = (Flapjack.WordLangProgHOL.move 0 [(9469, 9457)]) := by
  unfold input9669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9469, 9457)])).val
theorem output9669_def : output9669 = (Flapjack.WordLangProgHOL.move 0 [(9469, 9457)]) := by
  unfold output9669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9669_skip : Flapjack.WordAlloc.isSkip output9669 = false := by
  rw [output9669_def]
  conv => lhs; cbv
  try rfl
theorem node9669_eq : Flapjack.WordAlloc.removeDeadStructural input9669 value4838 value1 value2 = (output9669, value4839, value1) := by
  rw [input9669_def, output9669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9669 input9668)).val
theorem input9670_def : input9670 = (.seq input9669 input9668) := by
  unfold input9670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9669 output9668)).val
theorem output9670_def : output9670 = (.seq output9669 output9668) := by
  unfold output9670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9670_skip : Flapjack.WordAlloc.isSkip output9670 = false := by
  rw [output9670_def]
  conv => lhs; cbv
  try rfl
theorem node9670_eq : Flapjack.WordAlloc.removeDeadStructural input9670 value5 value1 value2 = (output9670, value4839, value1) := by
  rw [input9670_def, output9670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9668_eq]
  dsimp only
  rw [node9669_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4840 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9465 5738313744366653077#64))).val
theorem input9671_def : input9671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9465 5738313744366653077#64)) := by
  unfold input9671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9465 5738313744366653077#64))).val
theorem output9671_def : output9671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9465 5738313744366653077#64)) := by
  unfold output9671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9671_skip : Flapjack.WordAlloc.isSkip output9671 = false := by
  rw [output9671_def]
  conv => lhs; cbv
  try rfl
theorem node9671_eq : Flapjack.WordAlloc.removeDeadStructural input9671 value4839 value1 value2 = (output9671, value4840, value1) := by
  rw [input9671_def, output9671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9461 5738313744366653077#64))).val
theorem input9672_def : input9672 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9461 5738313744366653077#64)) := by
  unfold input9672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9672_def : output9672 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9672_skip : Flapjack.WordAlloc.isSkip output9672 = true := by
  rw [output9672_def]
  conv => lhs; cbv
  try rfl
theorem node9672_eq : Flapjack.WordAlloc.removeDeadStructural input9672 value4840 value1 value2 = (output9672, value4840, value1) := by
  rw [input9672_def, output9672_def]
  try (conv => lhs; cbv)
  try rfl

def value4841 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9457 9449 (Flapjack.WordRegImm.reg 9453))))).val
theorem input9673_def : input9673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9457 9449 (Flapjack.WordRegImm.reg 9453)))) := by
  unfold input9673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9457 9449 (Flapjack.WordRegImm.reg 9453))))).val
theorem output9673_def : output9673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9457 9449 (Flapjack.WordRegImm.reg 9453)))) := by
  unfold output9673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9673_skip : Flapjack.WordAlloc.isSkip output9673 = false := by
  rw [output9673_def]
  conv => lhs; cbv
  try rfl
theorem node9673_eq : Flapjack.WordAlloc.removeDeadStructural input9673 value4840 value1 value2 = (output9673, value4841, value1) := by
  rw [input9673_def, output9673_def]
  try (conv => lhs; cbv)
  try rfl

def value4842 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9453 2296#64))).val
theorem input9674_def : input9674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9453 2296#64)) := by
  unfold input9674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9453 2296#64))).val
theorem output9674_def : output9674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9453 2296#64)) := by
  unfold output9674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9674_skip : Flapjack.WordAlloc.isSkip output9674 = false := by
  rw [output9674_def]
  conv => lhs; cbv
  try rfl
theorem node9674_eq : Flapjack.WordAlloc.removeDeadStructural input9674 value4841 value1 value2 = (output9674, value4842, value1) := by
  rw [input9674_def, output9674_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9674 input9673)).val
theorem input9675_def : input9675 = (.seq input9674 input9673) := by
  unfold input9675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9674 output9673)).val
theorem output9675_def : output9675 = (.seq output9674 output9673) := by
  unfold output9675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9675_skip : Flapjack.WordAlloc.isSkip output9675 = false := by
  rw [output9675_def]
  conv => lhs; cbv
  try rfl
theorem node9675_eq : Flapjack.WordAlloc.removeDeadStructural input9675 value4840 value1 value2 = (output9675, value4842, value1) := by
  rw [input9675_def, output9675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9673_eq]
  dsimp only
  rw [node9674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4843 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9449 (Flapjack.WordLangAddr.addr 9445 18446744073709551104#64)))).val
theorem input9676_def : input9676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9449 (Flapjack.WordLangAddr.addr 9445 18446744073709551104#64))) := by
  unfold input9676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9449 (Flapjack.WordLangAddr.addr 9445 18446744073709551104#64)))).val
theorem output9676_def : output9676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9449 (Flapjack.WordLangAddr.addr 9445 18446744073709551104#64))) := by
  unfold output9676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9676_skip : Flapjack.WordAlloc.isSkip output9676 = false := by
  rw [output9676_def]
  conv => lhs; cbv
  try rfl
theorem node9676_eq : Flapjack.WordAlloc.removeDeadStructural input9676 value4842 value1 value2 = (output9676, value4843, value1) := by
  rw [input9676_def, output9676_def]
  try (conv => lhs; cbv)
  try rfl

def value4844 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9445 9441)).val
theorem input9677_def : input9677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9445 9441) := by
  unfold input9677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9445 9441)).val
theorem output9677_def : output9677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9445 9441) := by
  unfold output9677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9677_skip : Flapjack.WordAlloc.isSkip output9677 = false := by
  rw [output9677_def]
  conv => lhs; cbv
  try rfl
theorem node9677_eq : Flapjack.WordAlloc.removeDeadStructural input9677 value4843 value1 value2 = (output9677, value4844, value1) := by
  rw [input9677_def, output9677_def]
  try (conv => lhs; cbv)
  try rfl

def value4845 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9441 9437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9678_def : input9678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9441 9437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9441 9437 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9678_def : output9678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9441 9437 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9678_skip : Flapjack.WordAlloc.isSkip output9678 = false := by
  rw [output9678_def]
  conv => lhs; cbv
  try rfl
theorem node9678_eq : Flapjack.WordAlloc.removeDeadStructural input9678 value4844 value1 value2 = (output9678, value4845, value1) := by
  rw [input9678_def, output9678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9437 Flapjack.WordStore.heapLength)).val
theorem input9679_def : input9679 = (Flapjack.WordLangProgHOL.get 9437 Flapjack.WordStore.heapLength) := by
  unfold input9679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9437 Flapjack.WordStore.heapLength)).val
theorem output9679_def : output9679 = (Flapjack.WordLangProgHOL.get 9437 Flapjack.WordStore.heapLength) := by
  unfold output9679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9679_skip : Flapjack.WordAlloc.isSkip output9679 = false := by
  rw [output9679_def]
  conv => lhs; cbv
  try rfl
theorem node9679_eq : Flapjack.WordAlloc.removeDeadStructural input9679 value4845 value1 value2 = (output9679, value5, value1) := by
  rw [input9679_def, output9679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9679 input9678)).val
theorem input9680_def : input9680 = (.seq input9679 input9678) := by
  unfold input9680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9679 output9678)).val
theorem output9680_def : output9680 = (.seq output9679 output9678) := by
  unfold output9680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9680_skip : Flapjack.WordAlloc.isSkip output9680 = false := by
  rw [output9680_def]
  conv => lhs; cbv
  try rfl
theorem node9680_eq : Flapjack.WordAlloc.removeDeadStructural input9680 value4844 value1 value2 = (output9680, value5, value1) := by
  rw [input9680_def, output9680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9678_eq]
  dsimp only
  rw [node9679_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9680 input9677)).val
theorem input9681_def : input9681 = (.seq input9680 input9677) := by
  unfold input9681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9680 output9677)).val
theorem output9681_def : output9681 = (.seq output9680 output9677) := by
  unfold output9681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9681_skip : Flapjack.WordAlloc.isSkip output9681 = false := by
  rw [output9681_def]
  conv => lhs; cbv
  try rfl
theorem node9681_eq : Flapjack.WordAlloc.removeDeadStructural input9681 value4843 value1 value2 = (output9681, value5, value1) := by
  rw [input9681_def, output9681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9677_eq]
  dsimp only
  rw [node9680_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9681 input9676)).val
theorem input9682_def : input9682 = (.seq input9681 input9676) := by
  unfold input9682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9681 output9676)).val
theorem output9682_def : output9682 = (.seq output9681 output9676) := by
  unfold output9682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9682_skip : Flapjack.WordAlloc.isSkip output9682 = false := by
  rw [output9682_def]
  conv => lhs; cbv
  try rfl
theorem node9682_eq : Flapjack.WordAlloc.removeDeadStructural input9682 value4842 value1 value2 = (output9682, value5, value1) := by
  rw [input9682_def, output9682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9676_eq]
  dsimp only
  rw [node9681_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9682 input9675)).val
theorem input9683_def : input9683 = (.seq input9682 input9675) := by
  unfold input9683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9682 output9675)).val
theorem output9683_def : output9683 = (.seq output9682 output9675) := by
  unfold output9683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9683_skip : Flapjack.WordAlloc.isSkip output9683 = false := by
  rw [output9683_def]
  conv => lhs; cbv
  try rfl
theorem node9683_eq : Flapjack.WordAlloc.removeDeadStructural input9683 value4840 value1 value2 = (output9683, value5, value1) := by
  rw [input9683_def, output9683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9675_eq]
  dsimp only
  rw [node9682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4846 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9429 (Flapjack.WordLangAddr.addr 9433 0#64)))).val
theorem input9684_def : input9684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9429 (Flapjack.WordLangAddr.addr 9433 0#64))) := by
  unfold input9684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9429 (Flapjack.WordLangAddr.addr 9433 0#64)))).val
theorem output9684_def : output9684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9429 (Flapjack.WordLangAddr.addr 9433 0#64))) := by
  unfold output9684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9684_skip : Flapjack.WordAlloc.isSkip output9684 = false := by
  rw [output9684_def]
  conv => lhs; cbv
  try rfl
theorem node9684_eq : Flapjack.WordAlloc.removeDeadStructural input9684 value5 value1 value2 = (output9684, value4846, value1) := by
  rw [input9684_def, output9684_def]
  try (conv => lhs; cbv)
  try rfl

def value4847 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9433, 9421)])).val
theorem input9685_def : input9685 = (Flapjack.WordLangProgHOL.move 0 [(9433, 9421)]) := by
  unfold input9685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9433, 9421)])).val
theorem output9685_def : output9685 = (Flapjack.WordLangProgHOL.move 0 [(9433, 9421)]) := by
  unfold output9685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9685_skip : Flapjack.WordAlloc.isSkip output9685 = false := by
  rw [output9685_def]
  conv => lhs; cbv
  try rfl
theorem node9685_eq : Flapjack.WordAlloc.removeDeadStructural input9685 value4846 value1 value2 = (output9685, value4847, value1) := by
  rw [input9685_def, output9685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9685 input9684)).val
theorem input9686_def : input9686 = (.seq input9685 input9684) := by
  unfold input9686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9685 output9684)).val
theorem output9686_def : output9686 = (.seq output9685 output9684) := by
  unfold output9686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9686_skip : Flapjack.WordAlloc.isSkip output9686 = false := by
  rw [output9686_def]
  conv => lhs; cbv
  try rfl
theorem node9686_eq : Flapjack.WordAlloc.removeDeadStructural input9686 value5 value1 value2 = (output9686, value4847, value1) := by
  rw [input9686_def, output9686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9684_eq]
  dsimp only
  rw [node9685_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4848 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9429 7886252005760951063#64))).val
theorem input9687_def : input9687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9429 7886252005760951063#64)) := by
  unfold input9687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9429 7886252005760951063#64))).val
theorem output9687_def : output9687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9429 7886252005760951063#64)) := by
  unfold output9687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9687_skip : Flapjack.WordAlloc.isSkip output9687 = false := by
  rw [output9687_def]
  conv => lhs; cbv
  try rfl
theorem node9687_eq : Flapjack.WordAlloc.removeDeadStructural input9687 value4847 value1 value2 = (output9687, value4848, value1) := by
  rw [input9687_def, output9687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9425 7886252005760951063#64))).val
theorem input9688_def : input9688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9425 7886252005760951063#64)) := by
  unfold input9688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9688_def : output9688 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9688_skip : Flapjack.WordAlloc.isSkip output9688 = true := by
  rw [output9688_def]
  conv => lhs; cbv
  try rfl
theorem node9688_eq : Flapjack.WordAlloc.removeDeadStructural input9688 value4848 value1 value2 = (output9688, value4848, value1) := by
  rw [input9688_def, output9688_def]
  try (conv => lhs; cbv)
  try rfl

def value4849 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9421 9413 (Flapjack.WordRegImm.reg 9417))))).val
theorem input9689_def : input9689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9421 9413 (Flapjack.WordRegImm.reg 9417)))) := by
  unfold input9689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9421 9413 (Flapjack.WordRegImm.reg 9417))))).val
theorem output9689_def : output9689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9421 9413 (Flapjack.WordRegImm.reg 9417)))) := by
  unfold output9689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9689_skip : Flapjack.WordAlloc.isSkip output9689 = false := by
  rw [output9689_def]
  conv => lhs; cbv
  try rfl
theorem node9689_eq : Flapjack.WordAlloc.removeDeadStructural input9689 value4848 value1 value2 = (output9689, value4849, value1) := by
  rw [input9689_def, output9689_def]
  try (conv => lhs; cbv)
  try rfl

def value4850 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9417 2288#64))).val
theorem input9690_def : input9690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9417 2288#64)) := by
  unfold input9690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9417 2288#64))).val
theorem output9690_def : output9690 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9417 2288#64)) := by
  unfold output9690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9690_skip : Flapjack.WordAlloc.isSkip output9690 = false := by
  rw [output9690_def]
  conv => lhs; cbv
  try rfl
theorem node9690_eq : Flapjack.WordAlloc.removeDeadStructural input9690 value4849 value1 value2 = (output9690, value4850, value1) := by
  rw [input9690_def, output9690_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9690 input9689)).val
theorem input9691_def : input9691 = (.seq input9690 input9689) := by
  unfold input9691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9690 output9689)).val
theorem output9691_def : output9691 = (.seq output9690 output9689) := by
  unfold output9691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9691_skip : Flapjack.WordAlloc.isSkip output9691 = false := by
  rw [output9691_def]
  conv => lhs; cbv
  try rfl
theorem node9691_eq : Flapjack.WordAlloc.removeDeadStructural input9691 value4848 value1 value2 = (output9691, value4850, value1) := by
  rw [input9691_def, output9691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9689_eq]
  dsimp only
  rw [node9690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4851 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9413 (Flapjack.WordLangAddr.addr 9409 18446744073709551104#64)))).val
theorem input9692_def : input9692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9413 (Flapjack.WordLangAddr.addr 9409 18446744073709551104#64))) := by
  unfold input9692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9413 (Flapjack.WordLangAddr.addr 9409 18446744073709551104#64)))).val
theorem output9692_def : output9692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9413 (Flapjack.WordLangAddr.addr 9409 18446744073709551104#64))) := by
  unfold output9692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9692_skip : Flapjack.WordAlloc.isSkip output9692 = false := by
  rw [output9692_def]
  conv => lhs; cbv
  try rfl
theorem node9692_eq : Flapjack.WordAlloc.removeDeadStructural input9692 value4850 value1 value2 = (output9692, value4851, value1) := by
  rw [input9692_def, output9692_def]
  try (conv => lhs; cbv)
  try rfl

def value4852 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9409 9405)).val
theorem input9693_def : input9693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9409 9405) := by
  unfold input9693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9409 9405)).val
theorem output9693_def : output9693 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9409 9405) := by
  unfold output9693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9693_skip : Flapjack.WordAlloc.isSkip output9693 = false := by
  rw [output9693_def]
  conv => lhs; cbv
  try rfl
theorem node9693_eq : Flapjack.WordAlloc.removeDeadStructural input9693 value4851 value1 value2 = (output9693, value4852, value1) := by
  rw [input9693_def, output9693_def]
  try (conv => lhs; cbv)
  try rfl

def value4853 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9405 9401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9694_def : input9694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9405 9401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9405 9401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9694_def : output9694 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9405 9401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9694_skip : Flapjack.WordAlloc.isSkip output9694 = false := by
  rw [output9694_def]
  conv => lhs; cbv
  try rfl
theorem node9694_eq : Flapjack.WordAlloc.removeDeadStructural input9694 value4852 value1 value2 = (output9694, value4853, value1) := by
  rw [input9694_def, output9694_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9401 Flapjack.WordStore.heapLength)).val
theorem input9695_def : input9695 = (Flapjack.WordLangProgHOL.get 9401 Flapjack.WordStore.heapLength) := by
  unfold input9695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9401 Flapjack.WordStore.heapLength)).val
theorem output9695_def : output9695 = (Flapjack.WordLangProgHOL.get 9401 Flapjack.WordStore.heapLength) := by
  unfold output9695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9695_skip : Flapjack.WordAlloc.isSkip output9695 = false := by
  rw [output9695_def]
  conv => lhs; cbv
  try rfl
theorem node9695_eq : Flapjack.WordAlloc.removeDeadStructural input9695 value4853 value1 value2 = (output9695, value5, value1) := by
  rw [input9695_def, output9695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9695 input9694)).val
theorem input9696_def : input9696 = (.seq input9695 input9694) := by
  unfold input9696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9695 output9694)).val
theorem output9696_def : output9696 = (.seq output9695 output9694) := by
  unfold output9696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9696_skip : Flapjack.WordAlloc.isSkip output9696 = false := by
  rw [output9696_def]
  conv => lhs; cbv
  try rfl
theorem node9696_eq : Flapjack.WordAlloc.removeDeadStructural input9696 value4852 value1 value2 = (output9696, value5, value1) := by
  rw [input9696_def, output9696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9694_eq]
  dsimp only
  rw [node9695_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9696 input9693)).val
theorem input9697_def : input9697 = (.seq input9696 input9693) := by
  unfold input9697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9696 output9693)).val
theorem output9697_def : output9697 = (.seq output9696 output9693) := by
  unfold output9697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9697_skip : Flapjack.WordAlloc.isSkip output9697 = false := by
  rw [output9697_def]
  conv => lhs; cbv
  try rfl
theorem node9697_eq : Flapjack.WordAlloc.removeDeadStructural input9697 value4851 value1 value2 = (output9697, value5, value1) := by
  rw [input9697_def, output9697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9693_eq]
  dsimp only
  rw [node9696_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9697 input9692)).val
theorem input9698_def : input9698 = (.seq input9697 input9692) := by
  unfold input9698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9697 output9692)).val
theorem output9698_def : output9698 = (.seq output9697 output9692) := by
  unfold output9698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9698_skip : Flapjack.WordAlloc.isSkip output9698 = false := by
  rw [output9698_def]
  conv => lhs; cbv
  try rfl
theorem node9698_eq : Flapjack.WordAlloc.removeDeadStructural input9698 value4850 value1 value2 = (output9698, value5, value1) := by
  rw [input9698_def, output9698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9692_eq]
  dsimp only
  rw [node9697_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9698 input9691)).val
theorem input9699_def : input9699 = (.seq input9698 input9691) := by
  unfold input9699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9698 output9691)).val
theorem output9699_def : output9699 = (.seq output9698 output9691) := by
  unfold output9699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9699_skip : Flapjack.WordAlloc.isSkip output9699 = false := by
  rw [output9699_def]
  conv => lhs; cbv
  try rfl
theorem node9699_eq : Flapjack.WordAlloc.removeDeadStructural input9699 value4848 value1 value2 = (output9699, value5, value1) := by
  rw [input9699_def, output9699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9691_eq]
  dsimp only
  rw [node9698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4854 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9393 (Flapjack.WordLangAddr.addr 9397 0#64)))).val
theorem input9700_def : input9700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9393 (Flapjack.WordLangAddr.addr 9397 0#64))) := by
  unfold input9700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9393 (Flapjack.WordLangAddr.addr 9397 0#64)))).val
theorem output9700_def : output9700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9393 (Flapjack.WordLangAddr.addr 9397 0#64))) := by
  unfold output9700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9700_skip : Flapjack.WordAlloc.isSkip output9700 = false := by
  rw [output9700_def]
  conv => lhs; cbv
  try rfl
theorem node9700_eq : Flapjack.WordAlloc.removeDeadStructural input9700 value5 value1 value2 = (output9700, value4854, value1) := by
  rw [input9700_def, output9700_def]
  try (conv => lhs; cbv)
  try rfl

def value4855 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9397, 9385)])).val
theorem input9701_def : input9701 = (Flapjack.WordLangProgHOL.move 0 [(9397, 9385)]) := by
  unfold input9701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9397, 9385)])).val
theorem output9701_def : output9701 = (Flapjack.WordLangProgHOL.move 0 [(9397, 9385)]) := by
  unfold output9701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9701_skip : Flapjack.WordAlloc.isSkip output9701 = false := by
  rw [output9701_def]
  conv => lhs; cbv
  try rfl
theorem node9701_eq : Flapjack.WordAlloc.removeDeadStructural input9701 value4854 value1 value2 = (output9701, value4855, value1) := by
  rw [input9701_def, output9701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9701 input9700)).val
theorem input9702_def : input9702 = (.seq input9701 input9700) := by
  unfold input9702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9701 output9700)).val
theorem output9702_def : output9702 = (.seq output9701 output9700) := by
  unfold output9702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9702_skip : Flapjack.WordAlloc.isSkip output9702 = false := by
  rw [output9702_def]
  conv => lhs; cbv
  try rfl
theorem node9702_eq : Flapjack.WordAlloc.removeDeadStructural input9702 value5 value1 value2 = (output9702, value4855, value1) := by
  rw [input9702_def, output9702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9700_eq]
  dsimp only
  rw [node9701_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4856 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9393 1709149555065084898#64))).val
theorem input9703_def : input9703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9393 1709149555065084898#64)) := by
  unfold input9703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9393 1709149555065084898#64))).val
theorem output9703_def : output9703 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9393 1709149555065084898#64)) := by
  unfold output9703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9703_skip : Flapjack.WordAlloc.isSkip output9703 = false := by
  rw [output9703_def]
  conv => lhs; cbv
  try rfl
theorem node9703_eq : Flapjack.WordAlloc.removeDeadStructural input9703 value4855 value1 value2 = (output9703, value4856, value1) := by
  rw [input9703_def, output9703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9389 1709149555065084898#64))).val
theorem input9704_def : input9704 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9389 1709149555065084898#64)) := by
  unfold input9704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9704_def : output9704 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9704_skip : Flapjack.WordAlloc.isSkip output9704 = true := by
  rw [output9704_def]
  conv => lhs; cbv
  try rfl
theorem node9704_eq : Flapjack.WordAlloc.removeDeadStructural input9704 value4856 value1 value2 = (output9704, value4856, value1) := by
  rw [input9704_def, output9704_def]
  try (conv => lhs; cbv)
  try rfl

def value4857 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9385 9377 (Flapjack.WordRegImm.reg 9381))))).val
theorem input9705_def : input9705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9385 9377 (Flapjack.WordRegImm.reg 9381)))) := by
  unfold input9705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9385 9377 (Flapjack.WordRegImm.reg 9381))))).val
theorem output9705_def : output9705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9385 9377 (Flapjack.WordRegImm.reg 9381)))) := by
  unfold output9705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9705_skip : Flapjack.WordAlloc.isSkip output9705 = false := by
  rw [output9705_def]
  conv => lhs; cbv
  try rfl
theorem node9705_eq : Flapjack.WordAlloc.removeDeadStructural input9705 value4856 value1 value2 = (output9705, value4857, value1) := by
  rw [input9705_def, output9705_def]
  try (conv => lhs; cbv)
  try rfl

def value4858 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9381 2280#64))).val
theorem input9706_def : input9706 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9381 2280#64)) := by
  unfold input9706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9381 2280#64))).val
theorem output9706_def : output9706 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9381 2280#64)) := by
  unfold output9706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9706_skip : Flapjack.WordAlloc.isSkip output9706 = false := by
  rw [output9706_def]
  conv => lhs; cbv
  try rfl
theorem node9706_eq : Flapjack.WordAlloc.removeDeadStructural input9706 value4857 value1 value2 = (output9706, value4858, value1) := by
  rw [input9706_def, output9706_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9706 input9705)).val
theorem input9707_def : input9707 = (.seq input9706 input9705) := by
  unfold input9707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9706 output9705)).val
theorem output9707_def : output9707 = (.seq output9706 output9705) := by
  unfold output9707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9707_skip : Flapjack.WordAlloc.isSkip output9707 = false := by
  rw [output9707_def]
  conv => lhs; cbv
  try rfl
theorem node9707_eq : Flapjack.WordAlloc.removeDeadStructural input9707 value4856 value1 value2 = (output9707, value4858, value1) := by
  rw [input9707_def, output9707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9705_eq]
  dsimp only
  rw [node9706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4859 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9377 (Flapjack.WordLangAddr.addr 9373 18446744073709551104#64)))).val
theorem input9708_def : input9708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9377 (Flapjack.WordLangAddr.addr 9373 18446744073709551104#64))) := by
  unfold input9708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9377 (Flapjack.WordLangAddr.addr 9373 18446744073709551104#64)))).val
theorem output9708_def : output9708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9377 (Flapjack.WordLangAddr.addr 9373 18446744073709551104#64))) := by
  unfold output9708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9708_skip : Flapjack.WordAlloc.isSkip output9708 = false := by
  rw [output9708_def]
  conv => lhs; cbv
  try rfl
theorem node9708_eq : Flapjack.WordAlloc.removeDeadStructural input9708 value4858 value1 value2 = (output9708, value4859, value1) := by
  rw [input9708_def, output9708_def]
  try (conv => lhs; cbv)
  try rfl

def value4860 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9373 9369)).val
theorem input9709_def : input9709 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9373 9369) := by
  unfold input9709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9373 9369)).val
theorem output9709_def : output9709 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9373 9369) := by
  unfold output9709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9709_skip : Flapjack.WordAlloc.isSkip output9709 = false := by
  rw [output9709_def]
  conv => lhs; cbv
  try rfl
theorem node9709_eq : Flapjack.WordAlloc.removeDeadStructural input9709 value4859 value1 value2 = (output9709, value4860, value1) := by
  rw [input9709_def, output9709_def]
  try (conv => lhs; cbv)
  try rfl

def value4861 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9369 9365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9710_def : input9710 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9369 9365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9369 9365 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9710_def : output9710 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9369 9365 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9710_skip : Flapjack.WordAlloc.isSkip output9710 = false := by
  rw [output9710_def]
  conv => lhs; cbv
  try rfl
theorem node9710_eq : Flapjack.WordAlloc.removeDeadStructural input9710 value4860 value1 value2 = (output9710, value4861, value1) := by
  rw [input9710_def, output9710_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9365 Flapjack.WordStore.heapLength)).val
theorem input9711_def : input9711 = (Flapjack.WordLangProgHOL.get 9365 Flapjack.WordStore.heapLength) := by
  unfold input9711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9365 Flapjack.WordStore.heapLength)).val
theorem output9711_def : output9711 = (Flapjack.WordLangProgHOL.get 9365 Flapjack.WordStore.heapLength) := by
  unfold output9711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9711_skip : Flapjack.WordAlloc.isSkip output9711 = false := by
  rw [output9711_def]
  conv => lhs; cbv
  try rfl
theorem node9711_eq : Flapjack.WordAlloc.removeDeadStructural input9711 value4861 value1 value2 = (output9711, value5, value1) := by
  rw [input9711_def, output9711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9711 input9710)).val
theorem input9712_def : input9712 = (.seq input9711 input9710) := by
  unfold input9712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9711 output9710)).val
theorem output9712_def : output9712 = (.seq output9711 output9710) := by
  unfold output9712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9712_skip : Flapjack.WordAlloc.isSkip output9712 = false := by
  rw [output9712_def]
  conv => lhs; cbv
  try rfl
theorem node9712_eq : Flapjack.WordAlloc.removeDeadStructural input9712 value4860 value1 value2 = (output9712, value5, value1) := by
  rw [input9712_def, output9712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9710_eq]
  dsimp only
  rw [node9711_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9712 input9709)).val
theorem input9713_def : input9713 = (.seq input9712 input9709) := by
  unfold input9713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9712 output9709)).val
theorem output9713_def : output9713 = (.seq output9712 output9709) := by
  unfold output9713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9713_skip : Flapjack.WordAlloc.isSkip output9713 = false := by
  rw [output9713_def]
  conv => lhs; cbv
  try rfl
theorem node9713_eq : Flapjack.WordAlloc.removeDeadStructural input9713 value4859 value1 value2 = (output9713, value5, value1) := by
  rw [input9713_def, output9713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9709_eq]
  dsimp only
  rw [node9712_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9713 input9708)).val
theorem input9714_def : input9714 = (.seq input9713 input9708) := by
  unfold input9714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9713 output9708)).val
theorem output9714_def : output9714 = (.seq output9713 output9708) := by
  unfold output9714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9714_skip : Flapjack.WordAlloc.isSkip output9714 = false := by
  rw [output9714_def]
  conv => lhs; cbv
  try rfl
theorem node9714_eq : Flapjack.WordAlloc.removeDeadStructural input9714 value4858 value1 value2 = (output9714, value5, value1) := by
  rw [input9714_def, output9714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9708_eq]
  dsimp only
  rw [node9713_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9714 input9707)).val
theorem input9715_def : input9715 = (.seq input9714 input9707) := by
  unfold input9715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9714 output9707)).val
theorem output9715_def : output9715 = (.seq output9714 output9707) := by
  unfold output9715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9715_skip : Flapjack.WordAlloc.isSkip output9715 = false := by
  rw [output9715_def]
  conv => lhs; cbv
  try rfl
theorem node9715_eq : Flapjack.WordAlloc.removeDeadStructural input9715 value4856 value1 value2 = (output9715, value5, value1) := by
  rw [input9715_def, output9715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9707_eq]
  dsimp only
  rw [node9714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4862 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9357 (Flapjack.WordLangAddr.addr 9361 0#64)))).val
theorem input9716_def : input9716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9357 (Flapjack.WordLangAddr.addr 9361 0#64))) := by
  unfold input9716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9357 (Flapjack.WordLangAddr.addr 9361 0#64)))).val
theorem output9716_def : output9716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9357 (Flapjack.WordLangAddr.addr 9361 0#64))) := by
  unfold output9716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9716_skip : Flapjack.WordAlloc.isSkip output9716 = false := by
  rw [output9716_def]
  conv => lhs; cbv
  try rfl
theorem node9716_eq : Flapjack.WordAlloc.removeDeadStructural input9716 value5 value1 value2 = (output9716, value4862, value1) := by
  rw [input9716_def, output9716_def]
  try (conv => lhs; cbv)
  try rfl

def value4863 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9361, 9349)])).val
theorem input9717_def : input9717 = (Flapjack.WordLangProgHOL.move 0 [(9361, 9349)]) := by
  unfold input9717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9361, 9349)])).val
theorem output9717_def : output9717 = (Flapjack.WordLangProgHOL.move 0 [(9361, 9349)]) := by
  unfold output9717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9717_skip : Flapjack.WordAlloc.isSkip output9717 = false := by
  rw [output9717_def]
  conv => lhs; cbv
  try rfl
theorem node9717_eq : Flapjack.WordAlloc.removeDeadStructural input9717 value4862 value1 value2 = (output9717, value4863, value1) := by
  rw [input9717_def, output9717_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9717 input9716)).val
theorem input9718_def : input9718 = (.seq input9717 input9716) := by
  unfold input9718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9717 output9716)).val
theorem output9718_def : output9718 = (.seq output9717 output9716) := by
  unfold output9718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9718_skip : Flapjack.WordAlloc.isSkip output9718 = false := by
  rw [output9718_def]
  conv => lhs; cbv
  try rfl
theorem node9718_eq : Flapjack.WordAlloc.removeDeadStructural input9718 value5 value1 value2 = (output9718, value4863, value1) := by
  rw [input9718_def, output9718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9716_eq]
  dsimp only
  rw [node9717_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4864 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9357 16750075057192140371#64))).val
theorem input9719_def : input9719 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9357 16750075057192140371#64)) := by
  unfold input9719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9357 16750075057192140371#64))).val
theorem output9719_def : output9719 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9357 16750075057192140371#64)) := by
  unfold output9719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9719_skip : Flapjack.WordAlloc.isSkip output9719 = false := by
  rw [output9719_def]
  conv => lhs; cbv
  try rfl
theorem node9719_eq : Flapjack.WordAlloc.removeDeadStructural input9719 value4863 value1 value2 = (output9719, value4864, value1) := by
  rw [input9719_def, output9719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9353 16750075057192140371#64))).val
theorem input9720_def : input9720 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9353 16750075057192140371#64)) := by
  unfold input9720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9720_def : output9720 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9720_skip : Flapjack.WordAlloc.isSkip output9720 = true := by
  rw [output9720_def]
  conv => lhs; cbv
  try rfl
theorem node9720_eq : Flapjack.WordAlloc.removeDeadStructural input9720 value4864 value1 value2 = (output9720, value4864, value1) := by
  rw [input9720_def, output9720_def]
  try (conv => lhs; cbv)
  try rfl

def value4865 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9349 9341 (Flapjack.WordRegImm.reg 9345))))).val
theorem input9721_def : input9721 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9349 9341 (Flapjack.WordRegImm.reg 9345)))) := by
  unfold input9721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9349 9341 (Flapjack.WordRegImm.reg 9345))))).val
theorem output9721_def : output9721 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9349 9341 (Flapjack.WordRegImm.reg 9345)))) := by
  unfold output9721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9721_skip : Flapjack.WordAlloc.isSkip output9721 = false := by
  rw [output9721_def]
  conv => lhs; cbv
  try rfl
theorem node9721_eq : Flapjack.WordAlloc.removeDeadStructural input9721 value4864 value1 value2 = (output9721, value4865, value1) := by
  rw [input9721_def, output9721_def]
  try (conv => lhs; cbv)
  try rfl

def value4866 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9345 2272#64))).val
theorem input9722_def : input9722 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9345 2272#64)) := by
  unfold input9722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9345 2272#64))).val
theorem output9722_def : output9722 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9345 2272#64)) := by
  unfold output9722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9722_skip : Flapjack.WordAlloc.isSkip output9722 = false := by
  rw [output9722_def]
  conv => lhs; cbv
  try rfl
theorem node9722_eq : Flapjack.WordAlloc.removeDeadStructural input9722 value4865 value1 value2 = (output9722, value4866, value1) := by
  rw [input9722_def, output9722_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9722 input9721)).val
theorem input9723_def : input9723 = (.seq input9722 input9721) := by
  unfold input9723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9722 output9721)).val
theorem output9723_def : output9723 = (.seq output9722 output9721) := by
  unfold output9723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9723_skip : Flapjack.WordAlloc.isSkip output9723 = false := by
  rw [output9723_def]
  conv => lhs; cbv
  try rfl
theorem node9723_eq : Flapjack.WordAlloc.removeDeadStructural input9723 value4864 value1 value2 = (output9723, value4866, value1) := by
  rw [input9723_def, output9723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9721_eq]
  dsimp only
  rw [node9722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4867 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9341 (Flapjack.WordLangAddr.addr 9337 18446744073709551104#64)))).val
theorem input9724_def : input9724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9341 (Flapjack.WordLangAddr.addr 9337 18446744073709551104#64))) := by
  unfold input9724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9341 (Flapjack.WordLangAddr.addr 9337 18446744073709551104#64)))).val
theorem output9724_def : output9724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9341 (Flapjack.WordLangAddr.addr 9337 18446744073709551104#64))) := by
  unfold output9724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9724_skip : Flapjack.WordAlloc.isSkip output9724 = false := by
  rw [output9724_def]
  conv => lhs; cbv
  try rfl
theorem node9724_eq : Flapjack.WordAlloc.removeDeadStructural input9724 value4866 value1 value2 = (output9724, value4867, value1) := by
  rw [input9724_def, output9724_def]
  try (conv => lhs; cbv)
  try rfl

def value4868 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9337 9333)).val
theorem input9725_def : input9725 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9337 9333) := by
  unfold input9725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9337 9333)).val
theorem output9725_def : output9725 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9337 9333) := by
  unfold output9725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9725_skip : Flapjack.WordAlloc.isSkip output9725 = false := by
  rw [output9725_def]
  conv => lhs; cbv
  try rfl
theorem node9725_eq : Flapjack.WordAlloc.removeDeadStructural input9725 value4867 value1 value2 = (output9725, value4868, value1) := by
  rw [input9725_def, output9725_def]
  try (conv => lhs; cbv)
  try rfl

def value4869 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9333 9329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9726_def : input9726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9333 9329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9333 9329 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9726_def : output9726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9333 9329 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9726_skip : Flapjack.WordAlloc.isSkip output9726 = false := by
  rw [output9726_def]
  conv => lhs; cbv
  try rfl
theorem node9726_eq : Flapjack.WordAlloc.removeDeadStructural input9726 value4868 value1 value2 = (output9726, value4869, value1) := by
  rw [input9726_def, output9726_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9329 Flapjack.WordStore.heapLength)).val
theorem input9727_def : input9727 = (Flapjack.WordLangProgHOL.get 9329 Flapjack.WordStore.heapLength) := by
  unfold input9727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9329 Flapjack.WordStore.heapLength)).val
theorem output9727_def : output9727 = (Flapjack.WordLangProgHOL.get 9329 Flapjack.WordStore.heapLength) := by
  unfold output9727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9727_skip : Flapjack.WordAlloc.isSkip output9727 = false := by
  rw [output9727_def]
  conv => lhs; cbv
  try rfl
theorem node9727_eq : Flapjack.WordAlloc.removeDeadStructural input9727 value4869 value1 value2 = (output9727, value5, value1) := by
  rw [input9727_def, output9727_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node9727_eq
end InitECandidate.Proofs.DeadStages713
