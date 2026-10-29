import InitECandidate.Proofs.DeadStages713.Chunk020
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input5376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5375 input5374)).val
theorem input5376_def : input5376 = (.seq input5375 input5374) := by
  unfold input5376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5375 output5374)).val
theorem output5376_def : output5376 = (.seq output5375 output5374) := by
  unfold output5376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5376_skip : Flapjack.WordAlloc.isSkip output5376 = false := by
  rw [output5376_def]
  conv => lhs; cbv
  try rfl
theorem node5376_eq : Flapjack.WordAlloc.removeDeadStructural input5376 value2692 value1 value2 = (output5376, value5, value1) := by
  rw [input5376_def, output5376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5374_eq]
  dsimp only
  rw [node5375_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5376 input5373)).val
theorem input5377_def : input5377 = (.seq input5376 input5373) := by
  unfold input5377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5376 output5373)).val
theorem output5377_def : output5377 = (.seq output5376 output5373) := by
  unfold output5377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5377_skip : Flapjack.WordAlloc.isSkip output5377 = false := by
  rw [output5377_def]
  conv => lhs; cbv
  try rfl
theorem node5377_eq : Flapjack.WordAlloc.removeDeadStructural input5377 value2691 value1 value2 = (output5377, value5, value1) := by
  rw [input5377_def, output5377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5373_eq]
  dsimp only
  rw [node5376_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5377 input5372)).val
theorem input5378_def : input5378 = (.seq input5377 input5372) := by
  unfold input5378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5377 output5372)).val
theorem output5378_def : output5378 = (.seq output5377 output5372) := by
  unfold output5378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5378_skip : Flapjack.WordAlloc.isSkip output5378 = false := by
  rw [output5378_def]
  conv => lhs; cbv
  try rfl
theorem node5378_eq : Flapjack.WordAlloc.removeDeadStructural input5378 value2690 value1 value2 = (output5378, value5, value1) := by
  rw [input5378_def, output5378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5372_eq]
  dsimp only
  rw [node5377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5378 input5371)).val
theorem input5379_def : input5379 = (.seq input5378 input5371) := by
  unfold input5379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5378 output5371)).val
theorem output5379_def : output5379 = (.seq output5378 output5371) := by
  unfold output5379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5379_skip : Flapjack.WordAlloc.isSkip output5379 = false := by
  rw [output5379_def]
  conv => lhs; cbv
  try rfl
theorem node5379_eq : Flapjack.WordAlloc.removeDeadStructural input5379 value2688 value1 value2 = (output5379, value5, value1) := by
  rw [input5379_def, output5379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5371_eq]
  dsimp only
  rw [node5378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2694 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19113 (Flapjack.WordLangAddr.addr 19117 0#64)))).val
theorem input5380_def : input5380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19113 (Flapjack.WordLangAddr.addr 19117 0#64))) := by
  unfold input5380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19113 (Flapjack.WordLangAddr.addr 19117 0#64)))).val
theorem output5380_def : output5380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19113 (Flapjack.WordLangAddr.addr 19117 0#64))) := by
  unfold output5380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5380_skip : Flapjack.WordAlloc.isSkip output5380 = false := by
  rw [output5380_def]
  conv => lhs; cbv
  try rfl
theorem node5380_eq : Flapjack.WordAlloc.removeDeadStructural input5380 value5 value1 value2 = (output5380, value2694, value1) := by
  rw [input5380_def, output5380_def]
  try (conv => lhs; cbv)
  try rfl

def value2695 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19117, 19105)])).val
theorem input5381_def : input5381 = (Flapjack.WordLangProgHOL.move 0 [(19117, 19105)]) := by
  unfold input5381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19117, 19105)])).val
theorem output5381_def : output5381 = (Flapjack.WordLangProgHOL.move 0 [(19117, 19105)]) := by
  unfold output5381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5381_skip : Flapjack.WordAlloc.isSkip output5381 = false := by
  rw [output5381_def]
  conv => lhs; cbv
  try rfl
theorem node5381_eq : Flapjack.WordAlloc.removeDeadStructural input5381 value2694 value1 value2 = (output5381, value2695, value1) := by
  rw [input5381_def, output5381_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5381 input5380)).val
theorem input5382_def : input5382 = (.seq input5381 input5380) := by
  unfold input5382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5381 output5380)).val
theorem output5382_def : output5382 = (.seq output5381 output5380) := by
  unfold output5382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5382_skip : Flapjack.WordAlloc.isSkip output5382 = false := by
  rw [output5382_def]
  conv => lhs; cbv
  try rfl
theorem node5382_eq : Flapjack.WordAlloc.removeDeadStructural input5382 value5 value1 value2 = (output5382, value2695, value1) := by
  rw [input5382_def, output5382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5380_eq]
  dsimp only
  rw [node5381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2696 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19113 172830037692534587#64))).val
theorem input5383_def : input5383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19113 172830037692534587#64)) := by
  unfold input5383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19113 172830037692534587#64))).val
theorem output5383_def : output5383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19113 172830037692534587#64)) := by
  unfold output5383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5383_skip : Flapjack.WordAlloc.isSkip output5383 = false := by
  rw [output5383_def]
  conv => lhs; cbv
  try rfl
theorem node5383_eq : Flapjack.WordAlloc.removeDeadStructural input5383 value2695 value1 value2 = (output5383, value2696, value1) := by
  rw [input5383_def, output5383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19109 172830037692534587#64))).val
theorem input5384_def : input5384 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19109 172830037692534587#64)) := by
  unfold input5384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5384_def : output5384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5384_skip : Flapjack.WordAlloc.isSkip output5384 = true := by
  rw [output5384_def]
  conv => lhs; cbv
  try rfl
theorem node5384_eq : Flapjack.WordAlloc.removeDeadStructural input5384 value2696 value1 value2 = (output5384, value2696, value1) := by
  rw [input5384_def, output5384_def]
  try (conv => lhs; cbv)
  try rfl

def value2697 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19105 19097 (Flapjack.WordRegImm.reg 19101))))).val
theorem input5385_def : input5385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19105 19097 (Flapjack.WordRegImm.reg 19101)))) := by
  unfold input5385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19105 19097 (Flapjack.WordRegImm.reg 19101))))).val
theorem output5385_def : output5385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19105 19097 (Flapjack.WordRegImm.reg 19101)))) := by
  unfold output5385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5385_skip : Flapjack.WordAlloc.isSkip output5385 = false := by
  rw [output5385_def]
  conv => lhs; cbv
  try rfl
theorem node5385_eq : Flapjack.WordAlloc.removeDeadStructural input5385 value2696 value1 value2 = (output5385, value2697, value1) := by
  rw [input5385_def, output5385_def]
  try (conv => lhs; cbv)
  try rfl

def value2698 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19101 4440#64))).val
theorem input5386_def : input5386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19101 4440#64)) := by
  unfold input5386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19101 4440#64))).val
theorem output5386_def : output5386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19101 4440#64)) := by
  unfold output5386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5386_skip : Flapjack.WordAlloc.isSkip output5386 = false := by
  rw [output5386_def]
  conv => lhs; cbv
  try rfl
theorem node5386_eq : Flapjack.WordAlloc.removeDeadStructural input5386 value2697 value1 value2 = (output5386, value2698, value1) := by
  rw [input5386_def, output5386_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5386 input5385)).val
theorem input5387_def : input5387 = (.seq input5386 input5385) := by
  unfold input5387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5386 output5385)).val
theorem output5387_def : output5387 = (.seq output5386 output5385) := by
  unfold output5387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5387_skip : Flapjack.WordAlloc.isSkip output5387 = false := by
  rw [output5387_def]
  conv => lhs; cbv
  try rfl
theorem node5387_eq : Flapjack.WordAlloc.removeDeadStructural input5387 value2696 value1 value2 = (output5387, value2698, value1) := by
  rw [input5387_def, output5387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5385_eq]
  dsimp only
  rw [node5386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2699 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19097 (Flapjack.WordLangAddr.addr 19093 18446744073709551104#64)))).val
theorem input5388_def : input5388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19097 (Flapjack.WordLangAddr.addr 19093 18446744073709551104#64))) := by
  unfold input5388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19097 (Flapjack.WordLangAddr.addr 19093 18446744073709551104#64)))).val
theorem output5388_def : output5388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19097 (Flapjack.WordLangAddr.addr 19093 18446744073709551104#64))) := by
  unfold output5388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5388_skip : Flapjack.WordAlloc.isSkip output5388 = false := by
  rw [output5388_def]
  conv => lhs; cbv
  try rfl
theorem node5388_eq : Flapjack.WordAlloc.removeDeadStructural input5388 value2698 value1 value2 = (output5388, value2699, value1) := by
  rw [input5388_def, output5388_def]
  try (conv => lhs; cbv)
  try rfl

def value2700 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19093 19089)).val
theorem input5389_def : input5389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19093 19089) := by
  unfold input5389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19093 19089)).val
theorem output5389_def : output5389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19093 19089) := by
  unfold output5389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5389_skip : Flapjack.WordAlloc.isSkip output5389 = false := by
  rw [output5389_def]
  conv => lhs; cbv
  try rfl
theorem node5389_eq : Flapjack.WordAlloc.removeDeadStructural input5389 value2699 value1 value2 = (output5389, value2700, value1) := by
  rw [input5389_def, output5389_def]
  try (conv => lhs; cbv)
  try rfl

def value2701 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19089 19085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5390_def : input5390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19089 19085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19089 19085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5390_def : output5390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19089 19085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5390_skip : Flapjack.WordAlloc.isSkip output5390 = false := by
  rw [output5390_def]
  conv => lhs; cbv
  try rfl
theorem node5390_eq : Flapjack.WordAlloc.removeDeadStructural input5390 value2700 value1 value2 = (output5390, value2701, value1) := by
  rw [input5390_def, output5390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19085 Flapjack.WordStore.heapLength)).val
theorem input5391_def : input5391 = (Flapjack.WordLangProgHOL.get 19085 Flapjack.WordStore.heapLength) := by
  unfold input5391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19085 Flapjack.WordStore.heapLength)).val
theorem output5391_def : output5391 = (Flapjack.WordLangProgHOL.get 19085 Flapjack.WordStore.heapLength) := by
  unfold output5391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5391_skip : Flapjack.WordAlloc.isSkip output5391 = false := by
  rw [output5391_def]
  conv => lhs; cbv
  try rfl
theorem node5391_eq : Flapjack.WordAlloc.removeDeadStructural input5391 value2701 value1 value2 = (output5391, value5, value1) := by
  rw [input5391_def, output5391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5391 input5390)).val
theorem input5392_def : input5392 = (.seq input5391 input5390) := by
  unfold input5392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5391 output5390)).val
theorem output5392_def : output5392 = (.seq output5391 output5390) := by
  unfold output5392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5392_skip : Flapjack.WordAlloc.isSkip output5392 = false := by
  rw [output5392_def]
  conv => lhs; cbv
  try rfl
theorem node5392_eq : Flapjack.WordAlloc.removeDeadStructural input5392 value2700 value1 value2 = (output5392, value5, value1) := by
  rw [input5392_def, output5392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5390_eq]
  dsimp only
  rw [node5391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5392 input5389)).val
theorem input5393_def : input5393 = (.seq input5392 input5389) := by
  unfold input5393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5392 output5389)).val
theorem output5393_def : output5393 = (.seq output5392 output5389) := by
  unfold output5393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5393_skip : Flapjack.WordAlloc.isSkip output5393 = false := by
  rw [output5393_def]
  conv => lhs; cbv
  try rfl
theorem node5393_eq : Flapjack.WordAlloc.removeDeadStructural input5393 value2699 value1 value2 = (output5393, value5, value1) := by
  rw [input5393_def, output5393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5389_eq]
  dsimp only
  rw [node5392_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5393 input5388)).val
theorem input5394_def : input5394 = (.seq input5393 input5388) := by
  unfold input5394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5393 output5388)).val
theorem output5394_def : output5394 = (.seq output5393 output5388) := by
  unfold output5394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5394_skip : Flapjack.WordAlloc.isSkip output5394 = false := by
  rw [output5394_def]
  conv => lhs; cbv
  try rfl
theorem node5394_eq : Flapjack.WordAlloc.removeDeadStructural input5394 value2698 value1 value2 = (output5394, value5, value1) := by
  rw [input5394_def, output5394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5388_eq]
  dsimp only
  rw [node5393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5394 input5387)).val
theorem input5395_def : input5395 = (.seq input5394 input5387) := by
  unfold input5395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5394 output5387)).val
theorem output5395_def : output5395 = (.seq output5394 output5387) := by
  unfold output5395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5395_skip : Flapjack.WordAlloc.isSkip output5395 = false := by
  rw [output5395_def]
  conv => lhs; cbv
  try rfl
theorem node5395_eq : Flapjack.WordAlloc.removeDeadStructural input5395 value2696 value1 value2 = (output5395, value5, value1) := by
  rw [input5395_def, output5395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5387_eq]
  dsimp only
  rw [node5394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2702 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19077 (Flapjack.WordLangAddr.addr 19081 0#64)))).val
theorem input5396_def : input5396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19077 (Flapjack.WordLangAddr.addr 19081 0#64))) := by
  unfold input5396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19077 (Flapjack.WordLangAddr.addr 19081 0#64)))).val
theorem output5396_def : output5396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19077 (Flapjack.WordLangAddr.addr 19081 0#64))) := by
  unfold output5396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5396_skip : Flapjack.WordAlloc.isSkip output5396 = false := by
  rw [output5396_def]
  conv => lhs; cbv
  try rfl
theorem node5396_eq : Flapjack.WordAlloc.removeDeadStructural input5396 value5 value1 value2 = (output5396, value2702, value1) := by
  rw [input5396_def, output5396_def]
  try (conv => lhs; cbv)
  try rfl

def value2703 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19081, 19069)])).val
theorem input5397_def : input5397 = (Flapjack.WordLangProgHOL.move 0 [(19081, 19069)]) := by
  unfold input5397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19081, 19069)])).val
theorem output5397_def : output5397 = (Flapjack.WordLangProgHOL.move 0 [(19081, 19069)]) := by
  unfold output5397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5397_skip : Flapjack.WordAlloc.isSkip output5397 = false := by
  rw [output5397_def]
  conv => lhs; cbv
  try rfl
theorem node5397_eq : Flapjack.WordAlloc.removeDeadStructural input5397 value2702 value1 value2 = (output5397, value2703, value1) := by
  rw [input5397_def, output5397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5397 input5396)).val
theorem input5398_def : input5398 = (.seq input5397 input5396) := by
  unfold input5398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5397 output5396)).val
theorem output5398_def : output5398 = (.seq output5397 output5396) := by
  unfold output5398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5398_skip : Flapjack.WordAlloc.isSkip output5398 = false := by
  rw [output5398_def]
  conv => lhs; cbv
  try rfl
theorem node5398_eq : Flapjack.WordAlloc.removeDeadStructural input5398 value5 value1 value2 = (output5398, value2703, value1) := by
  rw [input5398_def, output5398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5396_eq]
  dsimp only
  rw [node5397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2704 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19077 7101012286790006514#64))).val
theorem input5399_def : input5399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19077 7101012286790006514#64)) := by
  unfold input5399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19077 7101012286790006514#64))).val
theorem output5399_def : output5399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19077 7101012286790006514#64)) := by
  unfold output5399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5399_skip : Flapjack.WordAlloc.isSkip output5399 = false := by
  rw [output5399_def]
  conv => lhs; cbv
  try rfl
theorem node5399_eq : Flapjack.WordAlloc.removeDeadStructural input5399 value2703 value1 value2 = (output5399, value2704, value1) := by
  rw [input5399_def, output5399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19073 7101012286790006514#64))).val
theorem input5400_def : input5400 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19073 7101012286790006514#64)) := by
  unfold input5400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5400_def : output5400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5400_skip : Flapjack.WordAlloc.isSkip output5400 = true := by
  rw [output5400_def]
  conv => lhs; cbv
  try rfl
theorem node5400_eq : Flapjack.WordAlloc.removeDeadStructural input5400 value2704 value1 value2 = (output5400, value2704, value1) := by
  rw [input5400_def, output5400_def]
  try (conv => lhs; cbv)
  try rfl

def value2705 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19069 19061 (Flapjack.WordRegImm.reg 19065))))).val
theorem input5401_def : input5401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19069 19061 (Flapjack.WordRegImm.reg 19065)))) := by
  unfold input5401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19069 19061 (Flapjack.WordRegImm.reg 19065))))).val
theorem output5401_def : output5401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19069 19061 (Flapjack.WordRegImm.reg 19065)))) := by
  unfold output5401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5401_skip : Flapjack.WordAlloc.isSkip output5401 = false := by
  rw [output5401_def]
  conv => lhs; cbv
  try rfl
theorem node5401_eq : Flapjack.WordAlloc.removeDeadStructural input5401 value2704 value1 value2 = (output5401, value2705, value1) := by
  rw [input5401_def, output5401_def]
  try (conv => lhs; cbv)
  try rfl

def value2706 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19065 4432#64))).val
theorem input5402_def : input5402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19065 4432#64)) := by
  unfold input5402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19065 4432#64))).val
theorem output5402_def : output5402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19065 4432#64)) := by
  unfold output5402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5402_skip : Flapjack.WordAlloc.isSkip output5402 = false := by
  rw [output5402_def]
  conv => lhs; cbv
  try rfl
theorem node5402_eq : Flapjack.WordAlloc.removeDeadStructural input5402 value2705 value1 value2 = (output5402, value2706, value1) := by
  rw [input5402_def, output5402_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5402 input5401)).val
theorem input5403_def : input5403 = (.seq input5402 input5401) := by
  unfold input5403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5402 output5401)).val
theorem output5403_def : output5403 = (.seq output5402 output5401) := by
  unfold output5403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5403_skip : Flapjack.WordAlloc.isSkip output5403 = false := by
  rw [output5403_def]
  conv => lhs; cbv
  try rfl
theorem node5403_eq : Flapjack.WordAlloc.removeDeadStructural input5403 value2704 value1 value2 = (output5403, value2706, value1) := by
  rw [input5403_def, output5403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5401_eq]
  dsimp only
  rw [node5402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2707 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19061 (Flapjack.WordLangAddr.addr 19057 18446744073709551104#64)))).val
theorem input5404_def : input5404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19061 (Flapjack.WordLangAddr.addr 19057 18446744073709551104#64))) := by
  unfold input5404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19061 (Flapjack.WordLangAddr.addr 19057 18446744073709551104#64)))).val
theorem output5404_def : output5404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19061 (Flapjack.WordLangAddr.addr 19057 18446744073709551104#64))) := by
  unfold output5404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5404_skip : Flapjack.WordAlloc.isSkip output5404 = false := by
  rw [output5404_def]
  conv => lhs; cbv
  try rfl
theorem node5404_eq : Flapjack.WordAlloc.removeDeadStructural input5404 value2706 value1 value2 = (output5404, value2707, value1) := by
  rw [input5404_def, output5404_def]
  try (conv => lhs; cbv)
  try rfl

def value2708 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19057 19053)).val
theorem input5405_def : input5405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19057 19053) := by
  unfold input5405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19057 19053)).val
theorem output5405_def : output5405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19057 19053) := by
  unfold output5405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5405_skip : Flapjack.WordAlloc.isSkip output5405 = false := by
  rw [output5405_def]
  conv => lhs; cbv
  try rfl
theorem node5405_eq : Flapjack.WordAlloc.removeDeadStructural input5405 value2707 value1 value2 = (output5405, value2708, value1) := by
  rw [input5405_def, output5405_def]
  try (conv => lhs; cbv)
  try rfl

def value2709 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19053 19049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5406_def : input5406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19053 19049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19053 19049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5406_def : output5406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19053 19049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5406_skip : Flapjack.WordAlloc.isSkip output5406 = false := by
  rw [output5406_def]
  conv => lhs; cbv
  try rfl
theorem node5406_eq : Flapjack.WordAlloc.removeDeadStructural input5406 value2708 value1 value2 = (output5406, value2709, value1) := by
  rw [input5406_def, output5406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19049 Flapjack.WordStore.heapLength)).val
theorem input5407_def : input5407 = (Flapjack.WordLangProgHOL.get 19049 Flapjack.WordStore.heapLength) := by
  unfold input5407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19049 Flapjack.WordStore.heapLength)).val
theorem output5407_def : output5407 = (Flapjack.WordLangProgHOL.get 19049 Flapjack.WordStore.heapLength) := by
  unfold output5407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5407_skip : Flapjack.WordAlloc.isSkip output5407 = false := by
  rw [output5407_def]
  conv => lhs; cbv
  try rfl
theorem node5407_eq : Flapjack.WordAlloc.removeDeadStructural input5407 value2709 value1 value2 = (output5407, value5, value1) := by
  rw [input5407_def, output5407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5407 input5406)).val
theorem input5408_def : input5408 = (.seq input5407 input5406) := by
  unfold input5408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5407 output5406)).val
theorem output5408_def : output5408 = (.seq output5407 output5406) := by
  unfold output5408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5408_skip : Flapjack.WordAlloc.isSkip output5408 = false := by
  rw [output5408_def]
  conv => lhs; cbv
  try rfl
theorem node5408_eq : Flapjack.WordAlloc.removeDeadStructural input5408 value2708 value1 value2 = (output5408, value5, value1) := by
  rw [input5408_def, output5408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5406_eq]
  dsimp only
  rw [node5407_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5408 input5405)).val
theorem input5409_def : input5409 = (.seq input5408 input5405) := by
  unfold input5409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5408 output5405)).val
theorem output5409_def : output5409 = (.seq output5408 output5405) := by
  unfold output5409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5409_skip : Flapjack.WordAlloc.isSkip output5409 = false := by
  rw [output5409_def]
  conv => lhs; cbv
  try rfl
theorem node5409_eq : Flapjack.WordAlloc.removeDeadStructural input5409 value2707 value1 value2 = (output5409, value5, value1) := by
  rw [input5409_def, output5409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5405_eq]
  dsimp only
  rw [node5408_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5409 input5404)).val
theorem input5410_def : input5410 = (.seq input5409 input5404) := by
  unfold input5410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5409 output5404)).val
theorem output5410_def : output5410 = (.seq output5409 output5404) := by
  unfold output5410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5410_skip : Flapjack.WordAlloc.isSkip output5410 = false := by
  rw [output5410_def]
  conv => lhs; cbv
  try rfl
theorem node5410_eq : Flapjack.WordAlloc.removeDeadStructural input5410 value2706 value1 value2 = (output5410, value5, value1) := by
  rw [input5410_def, output5410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5404_eq]
  dsimp only
  rw [node5409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5410 input5403)).val
theorem input5411_def : input5411 = (.seq input5410 input5403) := by
  unfold input5411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5410 output5403)).val
theorem output5411_def : output5411 = (.seq output5410 output5403) := by
  unfold output5411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5411_skip : Flapjack.WordAlloc.isSkip output5411 = false := by
  rw [output5411_def]
  conv => lhs; cbv
  try rfl
theorem node5411_eq : Flapjack.WordAlloc.removeDeadStructural input5411 value2704 value1 value2 = (output5411, value5, value1) := by
  rw [input5411_def, output5411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5403_eq]
  dsimp only
  rw [node5410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2710 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19041 (Flapjack.WordLangAddr.addr 19045 0#64)))).val
theorem input5412_def : input5412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19041 (Flapjack.WordLangAddr.addr 19045 0#64))) := by
  unfold input5412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19041 (Flapjack.WordLangAddr.addr 19045 0#64)))).val
theorem output5412_def : output5412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19041 (Flapjack.WordLangAddr.addr 19045 0#64))) := by
  unfold output5412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5412_skip : Flapjack.WordAlloc.isSkip output5412 = false := by
  rw [output5412_def]
  conv => lhs; cbv
  try rfl
theorem node5412_eq : Flapjack.WordAlloc.removeDeadStructural input5412 value5 value1 value2 = (output5412, value2710, value1) := by
  rw [input5412_def, output5412_def]
  try (conv => lhs; cbv)
  try rfl

def value2711 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19045, 19033)])).val
theorem input5413_def : input5413 = (Flapjack.WordLangProgHOL.move 0 [(19045, 19033)]) := by
  unfold input5413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19045, 19033)])).val
theorem output5413_def : output5413 = (Flapjack.WordLangProgHOL.move 0 [(19045, 19033)]) := by
  unfold output5413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5413_skip : Flapjack.WordAlloc.isSkip output5413 = false := by
  rw [output5413_def]
  conv => lhs; cbv
  try rfl
theorem node5413_eq : Flapjack.WordAlloc.removeDeadStructural input5413 value2710 value1 value2 = (output5413, value2711, value1) := by
  rw [input5413_def, output5413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5413 input5412)).val
theorem input5414_def : input5414 = (.seq input5413 input5412) := by
  unfold input5414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5413 output5412)).val
theorem output5414_def : output5414 = (.seq output5413 output5412) := by
  unfold output5414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5414_skip : Flapjack.WordAlloc.isSkip output5414 = false := by
  rw [output5414_def]
  conv => lhs; cbv
  try rfl
theorem node5414_eq : Flapjack.WordAlloc.removeDeadStructural input5414 value5 value1 value2 = (output5414, value2711, value1) := by
  rw [input5414_def, output5414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5412_eq]
  dsimp only
  rw [node5413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2712 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19041 13787308004332873665#64))).val
theorem input5415_def : input5415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19041 13787308004332873665#64)) := by
  unfold input5415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19041 13787308004332873665#64))).val
theorem output5415_def : output5415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19041 13787308004332873665#64)) := by
  unfold output5415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5415_skip : Flapjack.WordAlloc.isSkip output5415 = false := by
  rw [output5415_def]
  conv => lhs; cbv
  try rfl
theorem node5415_eq : Flapjack.WordAlloc.removeDeadStructural input5415 value2711 value1 value2 = (output5415, value2712, value1) := by
  rw [input5415_def, output5415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19037 13787308004332873665#64))).val
theorem input5416_def : input5416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19037 13787308004332873665#64)) := by
  unfold input5416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5416_def : output5416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5416_skip : Flapjack.WordAlloc.isSkip output5416 = true := by
  rw [output5416_def]
  conv => lhs; cbv
  try rfl
theorem node5416_eq : Flapjack.WordAlloc.removeDeadStructural input5416 value2712 value1 value2 = (output5416, value2712, value1) := by
  rw [input5416_def, output5416_def]
  try (conv => lhs; cbv)
  try rfl

def value2713 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19033 19025 (Flapjack.WordRegImm.reg 19029))))).val
theorem input5417_def : input5417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19033 19025 (Flapjack.WordRegImm.reg 19029)))) := by
  unfold input5417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19033 19025 (Flapjack.WordRegImm.reg 19029))))).val
theorem output5417_def : output5417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19033 19025 (Flapjack.WordRegImm.reg 19029)))) := by
  unfold output5417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5417_skip : Flapjack.WordAlloc.isSkip output5417 = false := by
  rw [output5417_def]
  conv => lhs; cbv
  try rfl
theorem node5417_eq : Flapjack.WordAlloc.removeDeadStructural input5417 value2712 value1 value2 = (output5417, value2713, value1) := by
  rw [input5417_def, output5417_def]
  try (conv => lhs; cbv)
  try rfl

def value2714 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19029 4424#64))).val
theorem input5418_def : input5418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19029 4424#64)) := by
  unfold input5418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19029 4424#64))).val
theorem output5418_def : output5418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19029 4424#64)) := by
  unfold output5418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5418_skip : Flapjack.WordAlloc.isSkip output5418 = false := by
  rw [output5418_def]
  conv => lhs; cbv
  try rfl
theorem node5418_eq : Flapjack.WordAlloc.removeDeadStructural input5418 value2713 value1 value2 = (output5418, value2714, value1) := by
  rw [input5418_def, output5418_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5418 input5417)).val
theorem input5419_def : input5419 = (.seq input5418 input5417) := by
  unfold input5419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5418 output5417)).val
theorem output5419_def : output5419 = (.seq output5418 output5417) := by
  unfold output5419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5419_skip : Flapjack.WordAlloc.isSkip output5419 = false := by
  rw [output5419_def]
  conv => lhs; cbv
  try rfl
theorem node5419_eq : Flapjack.WordAlloc.removeDeadStructural input5419 value2712 value1 value2 = (output5419, value2714, value1) := by
  rw [input5419_def, output5419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5417_eq]
  dsimp only
  rw [node5418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2715 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19025 (Flapjack.WordLangAddr.addr 19021 18446744073709551104#64)))).val
theorem input5420_def : input5420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19025 (Flapjack.WordLangAddr.addr 19021 18446744073709551104#64))) := by
  unfold input5420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19025 (Flapjack.WordLangAddr.addr 19021 18446744073709551104#64)))).val
theorem output5420_def : output5420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19025 (Flapjack.WordLangAddr.addr 19021 18446744073709551104#64))) := by
  unfold output5420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5420_skip : Flapjack.WordAlloc.isSkip output5420 = false := by
  rw [output5420_def]
  conv => lhs; cbv
  try rfl
theorem node5420_eq : Flapjack.WordAlloc.removeDeadStructural input5420 value2714 value1 value2 = (output5420, value2715, value1) := by
  rw [input5420_def, output5420_def]
  try (conv => lhs; cbv)
  try rfl

def value2716 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19021 19017)).val
theorem input5421_def : input5421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19021 19017) := by
  unfold input5421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19021 19017)).val
theorem output5421_def : output5421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19021 19017) := by
  unfold output5421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5421_skip : Flapjack.WordAlloc.isSkip output5421 = false := by
  rw [output5421_def]
  conv => lhs; cbv
  try rfl
theorem node5421_eq : Flapjack.WordAlloc.removeDeadStructural input5421 value2715 value1 value2 = (output5421, value2716, value1) := by
  rw [input5421_def, output5421_def]
  try (conv => lhs; cbv)
  try rfl

def value2717 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19017 19013 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5422_def : input5422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19017 19013 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19017 19013 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5422_def : output5422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19017 19013 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5422_skip : Flapjack.WordAlloc.isSkip output5422 = false := by
  rw [output5422_def]
  conv => lhs; cbv
  try rfl
theorem node5422_eq : Flapjack.WordAlloc.removeDeadStructural input5422 value2716 value1 value2 = (output5422, value2717, value1) := by
  rw [input5422_def, output5422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19013 Flapjack.WordStore.heapLength)).val
theorem input5423_def : input5423 = (Flapjack.WordLangProgHOL.get 19013 Flapjack.WordStore.heapLength) := by
  unfold input5423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19013 Flapjack.WordStore.heapLength)).val
theorem output5423_def : output5423 = (Flapjack.WordLangProgHOL.get 19013 Flapjack.WordStore.heapLength) := by
  unfold output5423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5423_skip : Flapjack.WordAlloc.isSkip output5423 = false := by
  rw [output5423_def]
  conv => lhs; cbv
  try rfl
theorem node5423_eq : Flapjack.WordAlloc.removeDeadStructural input5423 value2717 value1 value2 = (output5423, value5, value1) := by
  rw [input5423_def, output5423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5423 input5422)).val
theorem input5424_def : input5424 = (.seq input5423 input5422) := by
  unfold input5424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5423 output5422)).val
theorem output5424_def : output5424 = (.seq output5423 output5422) := by
  unfold output5424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5424_skip : Flapjack.WordAlloc.isSkip output5424 = false := by
  rw [output5424_def]
  conv => lhs; cbv
  try rfl
theorem node5424_eq : Flapjack.WordAlloc.removeDeadStructural input5424 value2716 value1 value2 = (output5424, value5, value1) := by
  rw [input5424_def, output5424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5422_eq]
  dsimp only
  rw [node5423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5424 input5421)).val
theorem input5425_def : input5425 = (.seq input5424 input5421) := by
  unfold input5425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5424 output5421)).val
theorem output5425_def : output5425 = (.seq output5424 output5421) := by
  unfold output5425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5425_skip : Flapjack.WordAlloc.isSkip output5425 = false := by
  rw [output5425_def]
  conv => lhs; cbv
  try rfl
theorem node5425_eq : Flapjack.WordAlloc.removeDeadStructural input5425 value2715 value1 value2 = (output5425, value5, value1) := by
  rw [input5425_def, output5425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5421_eq]
  dsimp only
  rw [node5424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5425 input5420)).val
theorem input5426_def : input5426 = (.seq input5425 input5420) := by
  unfold input5426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5425 output5420)).val
theorem output5426_def : output5426 = (.seq output5425 output5420) := by
  unfold output5426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5426_skip : Flapjack.WordAlloc.isSkip output5426 = false := by
  rw [output5426_def]
  conv => lhs; cbv
  try rfl
theorem node5426_eq : Flapjack.WordAlloc.removeDeadStructural input5426 value2714 value1 value2 = (output5426, value5, value1) := by
  rw [input5426_def, output5426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5420_eq]
  dsimp only
  rw [node5425_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5426 input5419)).val
theorem input5427_def : input5427 = (.seq input5426 input5419) := by
  unfold input5427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5426 output5419)).val
theorem output5427_def : output5427 = (.seq output5426 output5419) := by
  unfold output5427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5427_skip : Flapjack.WordAlloc.isSkip output5427 = false := by
  rw [output5427_def]
  conv => lhs; cbv
  try rfl
theorem node5427_eq : Flapjack.WordAlloc.removeDeadStructural input5427 value2712 value1 value2 = (output5427, value5, value1) := by
  rw [input5427_def, output5427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5419_eq]
  dsimp only
  rw [node5426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2718 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19005 (Flapjack.WordLangAddr.addr 19009 0#64)))).val
theorem input5428_def : input5428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19005 (Flapjack.WordLangAddr.addr 19009 0#64))) := by
  unfold input5428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19005 (Flapjack.WordLangAddr.addr 19009 0#64)))).val
theorem output5428_def : output5428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19005 (Flapjack.WordLangAddr.addr 19009 0#64))) := by
  unfold output5428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5428_skip : Flapjack.WordAlloc.isSkip output5428 = false := by
  rw [output5428_def]
  conv => lhs; cbv
  try rfl
theorem node5428_eq : Flapjack.WordAlloc.removeDeadStructural input5428 value5 value1 value2 = (output5428, value2718, value1) := by
  rw [input5428_def, output5428_def]
  try (conv => lhs; cbv)
  try rfl

def value2719 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19009, 18997)])).val
theorem input5429_def : input5429 = (Flapjack.WordLangProgHOL.move 0 [(19009, 18997)]) := by
  unfold input5429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19009, 18997)])).val
theorem output5429_def : output5429 = (Flapjack.WordLangProgHOL.move 0 [(19009, 18997)]) := by
  unfold output5429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5429_skip : Flapjack.WordAlloc.isSkip output5429 = false := by
  rw [output5429_def]
  conv => lhs; cbv
  try rfl
theorem node5429_eq : Flapjack.WordAlloc.removeDeadStructural input5429 value2718 value1 value2 = (output5429, value2719, value1) := by
  rw [input5429_def, output5429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5429 input5428)).val
theorem input5430_def : input5430 = (.seq input5429 input5428) := by
  unfold input5430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5429 output5428)).val
theorem output5430_def : output5430 = (.seq output5429 output5428) := by
  unfold output5430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5430_skip : Flapjack.WordAlloc.isSkip output5430 = false := by
  rw [output5430_def]
  conv => lhs; cbv
  try rfl
theorem node5430_eq : Flapjack.WordAlloc.removeDeadStructural input5430 value5 value1 value2 = (output5430, value2719, value1) := by
  rw [input5430_def, output5430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5428_eq]
  dsimp only
  rw [node5429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2720 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19005 14660498759553796110#64))).val
theorem input5431_def : input5431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19005 14660498759553796110#64)) := by
  unfold input5431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19005 14660498759553796110#64))).val
theorem output5431_def : output5431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19005 14660498759553796110#64)) := by
  unfold output5431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5431_skip : Flapjack.WordAlloc.isSkip output5431 = false := by
  rw [output5431_def]
  conv => lhs; cbv
  try rfl
theorem node5431_eq : Flapjack.WordAlloc.removeDeadStructural input5431 value2719 value1 value2 = (output5431, value2720, value1) := by
  rw [input5431_def, output5431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19001 14660498759553796110#64))).val
theorem input5432_def : input5432 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19001 14660498759553796110#64)) := by
  unfold input5432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5432_def : output5432 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5432_skip : Flapjack.WordAlloc.isSkip output5432 = true := by
  rw [output5432_def]
  conv => lhs; cbv
  try rfl
theorem node5432_eq : Flapjack.WordAlloc.removeDeadStructural input5432 value2720 value1 value2 = (output5432, value2720, value1) := by
  rw [input5432_def, output5432_def]
  try (conv => lhs; cbv)
  try rfl

def value2721 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18997 18989 (Flapjack.WordRegImm.reg 18993))))).val
theorem input5433_def : input5433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18997 18989 (Flapjack.WordRegImm.reg 18993)))) := by
  unfold input5433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18997 18989 (Flapjack.WordRegImm.reg 18993))))).val
theorem output5433_def : output5433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18997 18989 (Flapjack.WordRegImm.reg 18993)))) := by
  unfold output5433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5433_skip : Flapjack.WordAlloc.isSkip output5433 = false := by
  rw [output5433_def]
  conv => lhs; cbv
  try rfl
theorem node5433_eq : Flapjack.WordAlloc.removeDeadStructural input5433 value2720 value1 value2 = (output5433, value2721, value1) := by
  rw [input5433_def, output5433_def]
  try (conv => lhs; cbv)
  try rfl

def value2722 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18993 4416#64))).val
theorem input5434_def : input5434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18993 4416#64)) := by
  unfold input5434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18993 4416#64))).val
theorem output5434_def : output5434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18993 4416#64)) := by
  unfold output5434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5434_skip : Flapjack.WordAlloc.isSkip output5434 = false := by
  rw [output5434_def]
  conv => lhs; cbv
  try rfl
theorem node5434_eq : Flapjack.WordAlloc.removeDeadStructural input5434 value2721 value1 value2 = (output5434, value2722, value1) := by
  rw [input5434_def, output5434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5434 input5433)).val
theorem input5435_def : input5435 = (.seq input5434 input5433) := by
  unfold input5435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5434 output5433)).val
theorem output5435_def : output5435 = (.seq output5434 output5433) := by
  unfold output5435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5435_skip : Flapjack.WordAlloc.isSkip output5435 = false := by
  rw [output5435_def]
  conv => lhs; cbv
  try rfl
theorem node5435_eq : Flapjack.WordAlloc.removeDeadStructural input5435 value2720 value1 value2 = (output5435, value2722, value1) := by
  rw [input5435_def, output5435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5433_eq]
  dsimp only
  rw [node5434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2723 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18989 (Flapjack.WordLangAddr.addr 18985 18446744073709551104#64)))).val
theorem input5436_def : input5436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18989 (Flapjack.WordLangAddr.addr 18985 18446744073709551104#64))) := by
  unfold input5436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18989 (Flapjack.WordLangAddr.addr 18985 18446744073709551104#64)))).val
theorem output5436_def : output5436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18989 (Flapjack.WordLangAddr.addr 18985 18446744073709551104#64))) := by
  unfold output5436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5436_skip : Flapjack.WordAlloc.isSkip output5436 = false := by
  rw [output5436_def]
  conv => lhs; cbv
  try rfl
theorem node5436_eq : Flapjack.WordAlloc.removeDeadStructural input5436 value2722 value1 value2 = (output5436, value2723, value1) := by
  rw [input5436_def, output5436_def]
  try (conv => lhs; cbv)
  try rfl

def value2724 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18985 18981)).val
theorem input5437_def : input5437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18985 18981) := by
  unfold input5437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18985 18981)).val
theorem output5437_def : output5437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18985 18981) := by
  unfold output5437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5437_skip : Flapjack.WordAlloc.isSkip output5437 = false := by
  rw [output5437_def]
  conv => lhs; cbv
  try rfl
theorem node5437_eq : Flapjack.WordAlloc.removeDeadStructural input5437 value2723 value1 value2 = (output5437, value2724, value1) := by
  rw [input5437_def, output5437_def]
  try (conv => lhs; cbv)
  try rfl

def value2725 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18981 18977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5438_def : input5438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18981 18977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18981 18977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5438_def : output5438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18981 18977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5438_skip : Flapjack.WordAlloc.isSkip output5438 = false := by
  rw [output5438_def]
  conv => lhs; cbv
  try rfl
theorem node5438_eq : Flapjack.WordAlloc.removeDeadStructural input5438 value2724 value1 value2 = (output5438, value2725, value1) := by
  rw [input5438_def, output5438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18977 Flapjack.WordStore.heapLength)).val
theorem input5439_def : input5439 = (Flapjack.WordLangProgHOL.get 18977 Flapjack.WordStore.heapLength) := by
  unfold input5439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18977 Flapjack.WordStore.heapLength)).val
theorem output5439_def : output5439 = (Flapjack.WordLangProgHOL.get 18977 Flapjack.WordStore.heapLength) := by
  unfold output5439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5439_skip : Flapjack.WordAlloc.isSkip output5439 = false := by
  rw [output5439_def]
  conv => lhs; cbv
  try rfl
theorem node5439_eq : Flapjack.WordAlloc.removeDeadStructural input5439 value2725 value1 value2 = (output5439, value5, value1) := by
  rw [input5439_def, output5439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5439 input5438)).val
theorem input5440_def : input5440 = (.seq input5439 input5438) := by
  unfold input5440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5439 output5438)).val
theorem output5440_def : output5440 = (.seq output5439 output5438) := by
  unfold output5440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5440_skip : Flapjack.WordAlloc.isSkip output5440 = false := by
  rw [output5440_def]
  conv => lhs; cbv
  try rfl
theorem node5440_eq : Flapjack.WordAlloc.removeDeadStructural input5440 value2724 value1 value2 = (output5440, value5, value1) := by
  rw [input5440_def, output5440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5438_eq]
  dsimp only
  rw [node5439_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5440 input5437)).val
theorem input5441_def : input5441 = (.seq input5440 input5437) := by
  unfold input5441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5440 output5437)).val
theorem output5441_def : output5441 = (.seq output5440 output5437) := by
  unfold output5441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5441_skip : Flapjack.WordAlloc.isSkip output5441 = false := by
  rw [output5441_def]
  conv => lhs; cbv
  try rfl
theorem node5441_eq : Flapjack.WordAlloc.removeDeadStructural input5441 value2723 value1 value2 = (output5441, value5, value1) := by
  rw [input5441_def, output5441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5437_eq]
  dsimp only
  rw [node5440_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5441 input5436)).val
theorem input5442_def : input5442 = (.seq input5441 input5436) := by
  unfold input5442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5441 output5436)).val
theorem output5442_def : output5442 = (.seq output5441 output5436) := by
  unfold output5442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5442_skip : Flapjack.WordAlloc.isSkip output5442 = false := by
  rw [output5442_def]
  conv => lhs; cbv
  try rfl
theorem node5442_eq : Flapjack.WordAlloc.removeDeadStructural input5442 value2722 value1 value2 = (output5442, value5, value1) := by
  rw [input5442_def, output5442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5436_eq]
  dsimp only
  rw [node5441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5442 input5435)).val
theorem input5443_def : input5443 = (.seq input5442 input5435) := by
  unfold input5443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5442 output5435)).val
theorem output5443_def : output5443 = (.seq output5442 output5435) := by
  unfold output5443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5443_skip : Flapjack.WordAlloc.isSkip output5443 = false := by
  rw [output5443_def]
  conv => lhs; cbv
  try rfl
theorem node5443_eq : Flapjack.WordAlloc.removeDeadStructural input5443 value2720 value1 value2 = (output5443, value5, value1) := by
  rw [input5443_def, output5443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5435_eq]
  dsimp only
  rw [node5442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2726 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18969 (Flapjack.WordLangAddr.addr 18973 0#64)))).val
theorem input5444_def : input5444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18969 (Flapjack.WordLangAddr.addr 18973 0#64))) := by
  unfold input5444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18969 (Flapjack.WordLangAddr.addr 18973 0#64)))).val
theorem output5444_def : output5444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18969 (Flapjack.WordLangAddr.addr 18973 0#64))) := by
  unfold output5444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5444_skip : Flapjack.WordAlloc.isSkip output5444 = false := by
  rw [output5444_def]
  conv => lhs; cbv
  try rfl
theorem node5444_eq : Flapjack.WordAlloc.removeDeadStructural input5444 value5 value1 value2 = (output5444, value2726, value1) := by
  rw [input5444_def, output5444_def]
  try (conv => lhs; cbv)
  try rfl

def value2727 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18973, 18961)])).val
theorem input5445_def : input5445 = (Flapjack.WordLangProgHOL.move 0 [(18973, 18961)]) := by
  unfold input5445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18973, 18961)])).val
theorem output5445_def : output5445 = (Flapjack.WordLangProgHOL.move 0 [(18973, 18961)]) := by
  unfold output5445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5445_skip : Flapjack.WordAlloc.isSkip output5445 = false := by
  rw [output5445_def]
  conv => lhs; cbv
  try rfl
theorem node5445_eq : Flapjack.WordAlloc.removeDeadStructural input5445 value2726 value1 value2 = (output5445, value2727, value1) := by
  rw [input5445_def, output5445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5445 input5444)).val
theorem input5446_def : input5446 = (.seq input5445 input5444) := by
  unfold input5446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5445 output5444)).val
theorem output5446_def : output5446 = (.seq output5445 output5444) := by
  unfold output5446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5446_skip : Flapjack.WordAlloc.isSkip output5446 = false := by
  rw [output5446_def]
  conv => lhs; cbv
  try rfl
theorem node5446_eq : Flapjack.WordAlloc.removeDeadStructural input5446 value5 value1 value2 = (output5446, value2727, value1) := by
  rw [input5446_def, output5446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5444_eq]
  dsimp only
  rw [node5445_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2728 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18969 4757234684169342080#64))).val
theorem input5447_def : input5447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18969 4757234684169342080#64)) := by
  unfold input5447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18969 4757234684169342080#64))).val
theorem output5447_def : output5447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18969 4757234684169342080#64)) := by
  unfold output5447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5447_skip : Flapjack.WordAlloc.isSkip output5447 = false := by
  rw [output5447_def]
  conv => lhs; cbv
  try rfl
theorem node5447_eq : Flapjack.WordAlloc.removeDeadStructural input5447 value2727 value1 value2 = (output5447, value2728, value1) := by
  rw [input5447_def, output5447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18965 4757234684169342080#64))).val
theorem input5448_def : input5448 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18965 4757234684169342080#64)) := by
  unfold input5448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5448_def : output5448 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5448_skip : Flapjack.WordAlloc.isSkip output5448 = true := by
  rw [output5448_def]
  conv => lhs; cbv
  try rfl
theorem node5448_eq : Flapjack.WordAlloc.removeDeadStructural input5448 value2728 value1 value2 = (output5448, value2728, value1) := by
  rw [input5448_def, output5448_def]
  try (conv => lhs; cbv)
  try rfl

def value2729 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18961 18953 (Flapjack.WordRegImm.reg 18957))))).val
theorem input5449_def : input5449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18961 18953 (Flapjack.WordRegImm.reg 18957)))) := by
  unfold input5449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18961 18953 (Flapjack.WordRegImm.reg 18957))))).val
theorem output5449_def : output5449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18961 18953 (Flapjack.WordRegImm.reg 18957)))) := by
  unfold output5449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5449_skip : Flapjack.WordAlloc.isSkip output5449 = false := by
  rw [output5449_def]
  conv => lhs; cbv
  try rfl
theorem node5449_eq : Flapjack.WordAlloc.removeDeadStructural input5449 value2728 value1 value2 = (output5449, value2729, value1) := by
  rw [input5449_def, output5449_def]
  try (conv => lhs; cbv)
  try rfl

def value2730 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18957 4408#64))).val
theorem input5450_def : input5450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18957 4408#64)) := by
  unfold input5450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18957 4408#64))).val
theorem output5450_def : output5450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18957 4408#64)) := by
  unfold output5450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5450_skip : Flapjack.WordAlloc.isSkip output5450 = false := by
  rw [output5450_def]
  conv => lhs; cbv
  try rfl
theorem node5450_eq : Flapjack.WordAlloc.removeDeadStructural input5450 value2729 value1 value2 = (output5450, value2730, value1) := by
  rw [input5450_def, output5450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5450 input5449)).val
theorem input5451_def : input5451 = (.seq input5450 input5449) := by
  unfold input5451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5450 output5449)).val
theorem output5451_def : output5451 = (.seq output5450 output5449) := by
  unfold output5451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5451_skip : Flapjack.WordAlloc.isSkip output5451 = false := by
  rw [output5451_def]
  conv => lhs; cbv
  try rfl
theorem node5451_eq : Flapjack.WordAlloc.removeDeadStructural input5451 value2728 value1 value2 = (output5451, value2730, value1) := by
  rw [input5451_def, output5451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5449_eq]
  dsimp only
  rw [node5450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2731 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18953 (Flapjack.WordLangAddr.addr 18949 18446744073709551104#64)))).val
theorem input5452_def : input5452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18953 (Flapjack.WordLangAddr.addr 18949 18446744073709551104#64))) := by
  unfold input5452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18953 (Flapjack.WordLangAddr.addr 18949 18446744073709551104#64)))).val
theorem output5452_def : output5452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18953 (Flapjack.WordLangAddr.addr 18949 18446744073709551104#64))) := by
  unfold output5452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5452_skip : Flapjack.WordAlloc.isSkip output5452 = false := by
  rw [output5452_def]
  conv => lhs; cbv
  try rfl
theorem node5452_eq : Flapjack.WordAlloc.removeDeadStructural input5452 value2730 value1 value2 = (output5452, value2731, value1) := by
  rw [input5452_def, output5452_def]
  try (conv => lhs; cbv)
  try rfl

def value2732 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18949 18945)).val
theorem input5453_def : input5453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18949 18945) := by
  unfold input5453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18949 18945)).val
theorem output5453_def : output5453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18949 18945) := by
  unfold output5453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5453_skip : Flapjack.WordAlloc.isSkip output5453 = false := by
  rw [output5453_def]
  conv => lhs; cbv
  try rfl
theorem node5453_eq : Flapjack.WordAlloc.removeDeadStructural input5453 value2731 value1 value2 = (output5453, value2732, value1) := by
  rw [input5453_def, output5453_def]
  try (conv => lhs; cbv)
  try rfl

def value2733 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18945 18941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5454_def : input5454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18945 18941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18945 18941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5454_def : output5454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18945 18941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5454_skip : Flapjack.WordAlloc.isSkip output5454 = false := by
  rw [output5454_def]
  conv => lhs; cbv
  try rfl
theorem node5454_eq : Flapjack.WordAlloc.removeDeadStructural input5454 value2732 value1 value2 = (output5454, value2733, value1) := by
  rw [input5454_def, output5454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18941 Flapjack.WordStore.heapLength)).val
theorem input5455_def : input5455 = (Flapjack.WordLangProgHOL.get 18941 Flapjack.WordStore.heapLength) := by
  unfold input5455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18941 Flapjack.WordStore.heapLength)).val
theorem output5455_def : output5455 = (Flapjack.WordLangProgHOL.get 18941 Flapjack.WordStore.heapLength) := by
  unfold output5455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5455_skip : Flapjack.WordAlloc.isSkip output5455 = false := by
  rw [output5455_def]
  conv => lhs; cbv
  try rfl
theorem node5455_eq : Flapjack.WordAlloc.removeDeadStructural input5455 value2733 value1 value2 = (output5455, value5, value1) := by
  rw [input5455_def, output5455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5455 input5454)).val
theorem input5456_def : input5456 = (.seq input5455 input5454) := by
  unfold input5456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5455 output5454)).val
theorem output5456_def : output5456 = (.seq output5455 output5454) := by
  unfold output5456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5456_skip : Flapjack.WordAlloc.isSkip output5456 = false := by
  rw [output5456_def]
  conv => lhs; cbv
  try rfl
theorem node5456_eq : Flapjack.WordAlloc.removeDeadStructural input5456 value2732 value1 value2 = (output5456, value5, value1) := by
  rw [input5456_def, output5456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5454_eq]
  dsimp only
  rw [node5455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5456 input5453)).val
theorem input5457_def : input5457 = (.seq input5456 input5453) := by
  unfold input5457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5456 output5453)).val
theorem output5457_def : output5457 = (.seq output5456 output5453) := by
  unfold output5457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5457_skip : Flapjack.WordAlloc.isSkip output5457 = false := by
  rw [output5457_def]
  conv => lhs; cbv
  try rfl
theorem node5457_eq : Flapjack.WordAlloc.removeDeadStructural input5457 value2731 value1 value2 = (output5457, value5, value1) := by
  rw [input5457_def, output5457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5453_eq]
  dsimp only
  rw [node5456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5457 input5452)).val
theorem input5458_def : input5458 = (.seq input5457 input5452) := by
  unfold input5458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5457 output5452)).val
theorem output5458_def : output5458 = (.seq output5457 output5452) := by
  unfold output5458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5458_skip : Flapjack.WordAlloc.isSkip output5458 = false := by
  rw [output5458_def]
  conv => lhs; cbv
  try rfl
theorem node5458_eq : Flapjack.WordAlloc.removeDeadStructural input5458 value2730 value1 value2 = (output5458, value5, value1) := by
  rw [input5458_def, output5458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5452_eq]
  dsimp only
  rw [node5457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5458 input5451)).val
theorem input5459_def : input5459 = (.seq input5458 input5451) := by
  unfold input5459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5458 output5451)).val
theorem output5459_def : output5459 = (.seq output5458 output5451) := by
  unfold output5459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5459_skip : Flapjack.WordAlloc.isSkip output5459 = false := by
  rw [output5459_def]
  conv => lhs; cbv
  try rfl
theorem node5459_eq : Flapjack.WordAlloc.removeDeadStructural input5459 value2728 value1 value2 = (output5459, value5, value1) := by
  rw [input5459_def, output5459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5451_eq]
  dsimp only
  rw [node5458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2734 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18933 (Flapjack.WordLangAddr.addr 18937 0#64)))).val
theorem input5460_def : input5460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18933 (Flapjack.WordLangAddr.addr 18937 0#64))) := by
  unfold input5460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18933 (Flapjack.WordLangAddr.addr 18937 0#64)))).val
theorem output5460_def : output5460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18933 (Flapjack.WordLangAddr.addr 18937 0#64))) := by
  unfold output5460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5460_skip : Flapjack.WordAlloc.isSkip output5460 = false := by
  rw [output5460_def]
  conv => lhs; cbv
  try rfl
theorem node5460_eq : Flapjack.WordAlloc.removeDeadStructural input5460 value5 value1 value2 = (output5460, value2734, value1) := by
  rw [input5460_def, output5460_def]
  try (conv => lhs; cbv)
  try rfl

def value2735 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18937, 18925)])).val
theorem input5461_def : input5461 = (Flapjack.WordLangProgHOL.move 0 [(18937, 18925)]) := by
  unfold input5461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18937, 18925)])).val
theorem output5461_def : output5461 = (Flapjack.WordLangProgHOL.move 0 [(18937, 18925)]) := by
  unfold output5461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5461_skip : Flapjack.WordAlloc.isSkip output5461 = false := by
  rw [output5461_def]
  conv => lhs; cbv
  try rfl
theorem node5461_eq : Flapjack.WordAlloc.removeDeadStructural input5461 value2734 value1 value2 = (output5461, value2735, value1) := by
  rw [input5461_def, output5461_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5461 input5460)).val
theorem input5462_def : input5462 = (.seq input5461 input5460) := by
  unfold input5462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5461 output5460)).val
theorem output5462_def : output5462 = (.seq output5461 output5460) := by
  unfold output5462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5462_skip : Flapjack.WordAlloc.isSkip output5462 = false := by
  rw [output5462_def]
  conv => lhs; cbv
  try rfl
theorem node5462_eq : Flapjack.WordAlloc.removeDeadStructural input5462 value5 value1 value2 = (output5462, value2735, value1) := by
  rw [input5462_def, output5462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5460_eq]
  dsimp only
  rw [node5461_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2736 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18933 15130647872920159991#64))).val
theorem input5463_def : input5463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18933 15130647872920159991#64)) := by
  unfold input5463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18933 15130647872920159991#64))).val
theorem output5463_def : output5463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18933 15130647872920159991#64)) := by
  unfold output5463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5463_skip : Flapjack.WordAlloc.isSkip output5463 = false := by
  rw [output5463_def]
  conv => lhs; cbv
  try rfl
theorem node5463_eq : Flapjack.WordAlloc.removeDeadStructural input5463 value2735 value1 value2 = (output5463, value2736, value1) := by
  rw [input5463_def, output5463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18929 15130647872920159991#64))).val
theorem input5464_def : input5464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18929 15130647872920159991#64)) := by
  unfold input5464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5464_def : output5464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5464_skip : Flapjack.WordAlloc.isSkip output5464 = true := by
  rw [output5464_def]
  conv => lhs; cbv
  try rfl
theorem node5464_eq : Flapjack.WordAlloc.removeDeadStructural input5464 value2736 value1 value2 = (output5464, value2736, value1) := by
  rw [input5464_def, output5464_def]
  try (conv => lhs; cbv)
  try rfl

def value2737 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18925 18917 (Flapjack.WordRegImm.reg 18921))))).val
theorem input5465_def : input5465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18925 18917 (Flapjack.WordRegImm.reg 18921)))) := by
  unfold input5465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18925 18917 (Flapjack.WordRegImm.reg 18921))))).val
theorem output5465_def : output5465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18925 18917 (Flapjack.WordRegImm.reg 18921)))) := by
  unfold output5465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5465_skip : Flapjack.WordAlloc.isSkip output5465 = false := by
  rw [output5465_def]
  conv => lhs; cbv
  try rfl
theorem node5465_eq : Flapjack.WordAlloc.removeDeadStructural input5465 value2736 value1 value2 = (output5465, value2737, value1) := by
  rw [input5465_def, output5465_def]
  try (conv => lhs; cbv)
  try rfl

def value2738 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18921 4400#64))).val
theorem input5466_def : input5466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18921 4400#64)) := by
  unfold input5466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18921 4400#64))).val
theorem output5466_def : output5466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18921 4400#64)) := by
  unfold output5466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5466_skip : Flapjack.WordAlloc.isSkip output5466 = false := by
  rw [output5466_def]
  conv => lhs; cbv
  try rfl
theorem node5466_eq : Flapjack.WordAlloc.removeDeadStructural input5466 value2737 value1 value2 = (output5466, value2738, value1) := by
  rw [input5466_def, output5466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5466 input5465)).val
theorem input5467_def : input5467 = (.seq input5466 input5465) := by
  unfold input5467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5466 output5465)).val
theorem output5467_def : output5467 = (.seq output5466 output5465) := by
  unfold output5467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5467_skip : Flapjack.WordAlloc.isSkip output5467 = false := by
  rw [output5467_def]
  conv => lhs; cbv
  try rfl
theorem node5467_eq : Flapjack.WordAlloc.removeDeadStructural input5467 value2736 value1 value2 = (output5467, value2738, value1) := by
  rw [input5467_def, output5467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5465_eq]
  dsimp only
  rw [node5466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2739 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18917 (Flapjack.WordLangAddr.addr 18913 18446744073709551104#64)))).val
theorem input5468_def : input5468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18917 (Flapjack.WordLangAddr.addr 18913 18446744073709551104#64))) := by
  unfold input5468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18917 (Flapjack.WordLangAddr.addr 18913 18446744073709551104#64)))).val
theorem output5468_def : output5468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18917 (Flapjack.WordLangAddr.addr 18913 18446744073709551104#64))) := by
  unfold output5468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5468_skip : Flapjack.WordAlloc.isSkip output5468 = false := by
  rw [output5468_def]
  conv => lhs; cbv
  try rfl
theorem node5468_eq : Flapjack.WordAlloc.removeDeadStructural input5468 value2738 value1 value2 = (output5468, value2739, value1) := by
  rw [input5468_def, output5468_def]
  try (conv => lhs; cbv)
  try rfl

def value2740 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18913 18909)).val
theorem input5469_def : input5469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18913 18909) := by
  unfold input5469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18913 18909)).val
theorem output5469_def : output5469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18913 18909) := by
  unfold output5469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5469_skip : Flapjack.WordAlloc.isSkip output5469 = false := by
  rw [output5469_def]
  conv => lhs; cbv
  try rfl
theorem node5469_eq : Flapjack.WordAlloc.removeDeadStructural input5469 value2739 value1 value2 = (output5469, value2740, value1) := by
  rw [input5469_def, output5469_def]
  try (conv => lhs; cbv)
  try rfl

def value2741 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18909 18905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5470_def : input5470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18909 18905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18909 18905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5470_def : output5470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18909 18905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5470_skip : Flapjack.WordAlloc.isSkip output5470 = false := by
  rw [output5470_def]
  conv => lhs; cbv
  try rfl
theorem node5470_eq : Flapjack.WordAlloc.removeDeadStructural input5470 value2740 value1 value2 = (output5470, value2741, value1) := by
  rw [input5470_def, output5470_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18905 Flapjack.WordStore.heapLength)).val
theorem input5471_def : input5471 = (Flapjack.WordLangProgHOL.get 18905 Flapjack.WordStore.heapLength) := by
  unfold input5471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18905 Flapjack.WordStore.heapLength)).val
theorem output5471_def : output5471 = (Flapjack.WordLangProgHOL.get 18905 Flapjack.WordStore.heapLength) := by
  unfold output5471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5471_skip : Flapjack.WordAlloc.isSkip output5471 = false := by
  rw [output5471_def]
  conv => lhs; cbv
  try rfl
theorem node5471_eq : Flapjack.WordAlloc.removeDeadStructural input5471 value2741 value1 value2 = (output5471, value5, value1) := by
  rw [input5471_def, output5471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5471 input5470)).val
theorem input5472_def : input5472 = (.seq input5471 input5470) := by
  unfold input5472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5471 output5470)).val
theorem output5472_def : output5472 = (.seq output5471 output5470) := by
  unfold output5472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5472_skip : Flapjack.WordAlloc.isSkip output5472 = false := by
  rw [output5472_def]
  conv => lhs; cbv
  try rfl
theorem node5472_eq : Flapjack.WordAlloc.removeDeadStructural input5472 value2740 value1 value2 = (output5472, value5, value1) := by
  rw [input5472_def, output5472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5470_eq]
  dsimp only
  rw [node5471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5472 input5469)).val
theorem input5473_def : input5473 = (.seq input5472 input5469) := by
  unfold input5473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5472 output5469)).val
theorem output5473_def : output5473 = (.seq output5472 output5469) := by
  unfold output5473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5473_skip : Flapjack.WordAlloc.isSkip output5473 = false := by
  rw [output5473_def]
  conv => lhs; cbv
  try rfl
theorem node5473_eq : Flapjack.WordAlloc.removeDeadStructural input5473 value2739 value1 value2 = (output5473, value5, value1) := by
  rw [input5473_def, output5473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5469_eq]
  dsimp only
  rw [node5472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5473 input5468)).val
theorem input5474_def : input5474 = (.seq input5473 input5468) := by
  unfold input5474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5473 output5468)).val
theorem output5474_def : output5474 = (.seq output5473 output5468) := by
  unfold output5474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5474_skip : Flapjack.WordAlloc.isSkip output5474 = false := by
  rw [output5474_def]
  conv => lhs; cbv
  try rfl
theorem node5474_eq : Flapjack.WordAlloc.removeDeadStructural input5474 value2738 value1 value2 = (output5474, value5, value1) := by
  rw [input5474_def, output5474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5468_eq]
  dsimp only
  rw [node5473_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5474 input5467)).val
theorem input5475_def : input5475 = (.seq input5474 input5467) := by
  unfold input5475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5474 output5467)).val
theorem output5475_def : output5475 = (.seq output5474 output5467) := by
  unfold output5475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5475_skip : Flapjack.WordAlloc.isSkip output5475 = false := by
  rw [output5475_def]
  conv => lhs; cbv
  try rfl
theorem node5475_eq : Flapjack.WordAlloc.removeDeadStructural input5475 value2736 value1 value2 = (output5475, value5, value1) := by
  rw [input5475_def, output5475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5467_eq]
  dsimp only
  rw [node5474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2742 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18897 (Flapjack.WordLangAddr.addr 18901 0#64)))).val
theorem input5476_def : input5476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18897 (Flapjack.WordLangAddr.addr 18901 0#64))) := by
  unfold input5476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18897 (Flapjack.WordLangAddr.addr 18901 0#64)))).val
theorem output5476_def : output5476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18897 (Flapjack.WordLangAddr.addr 18901 0#64))) := by
  unfold output5476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5476_skip : Flapjack.WordAlloc.isSkip output5476 = false := by
  rw [output5476_def]
  conv => lhs; cbv
  try rfl
theorem node5476_eq : Flapjack.WordAlloc.removeDeadStructural input5476 value5 value1 value2 = (output5476, value2742, value1) := by
  rw [input5476_def, output5476_def]
  try (conv => lhs; cbv)
  try rfl

def value2743 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18901, 18889)])).val
theorem input5477_def : input5477 = (Flapjack.WordLangProgHOL.move 0 [(18901, 18889)]) := by
  unfold input5477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18901, 18889)])).val
theorem output5477_def : output5477 = (Flapjack.WordLangProgHOL.move 0 [(18901, 18889)]) := by
  unfold output5477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5477_skip : Flapjack.WordAlloc.isSkip output5477 = false := by
  rw [output5477_def]
  conv => lhs; cbv
  try rfl
theorem node5477_eq : Flapjack.WordAlloc.removeDeadStructural input5477 value2742 value1 value2 = (output5477, value2743, value1) := by
  rw [input5477_def, output5477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5477 input5476)).val
theorem input5478_def : input5478 = (.seq input5477 input5476) := by
  unfold input5478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5477 output5476)).val
theorem output5478_def : output5478 = (.seq output5477 output5476) := by
  unfold output5478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5478_skip : Flapjack.WordAlloc.isSkip output5478 = false := by
  rw [output5478_def]
  conv => lhs; cbv
  try rfl
theorem node5478_eq : Flapjack.WordAlloc.removeDeadStructural input5478 value5 value1 value2 = (output5478, value2743, value1) := by
  rw [input5478_def, output5478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5476_eq]
  dsimp only
  rw [node5477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2744 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18897 781015344221683683#64))).val
theorem input5479_def : input5479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18897 781015344221683683#64)) := by
  unfold input5479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18897 781015344221683683#64))).val
theorem output5479_def : output5479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18897 781015344221683683#64)) := by
  unfold output5479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5479_skip : Flapjack.WordAlloc.isSkip output5479 = false := by
  rw [output5479_def]
  conv => lhs; cbv
  try rfl
theorem node5479_eq : Flapjack.WordAlloc.removeDeadStructural input5479 value2743 value1 value2 = (output5479, value2744, value1) := by
  rw [input5479_def, output5479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18893 781015344221683683#64))).val
theorem input5480_def : input5480 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18893 781015344221683683#64)) := by
  unfold input5480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5480_def : output5480 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5480_skip : Flapjack.WordAlloc.isSkip output5480 = true := by
  rw [output5480_def]
  conv => lhs; cbv
  try rfl
theorem node5480_eq : Flapjack.WordAlloc.removeDeadStructural input5480 value2744 value1 value2 = (output5480, value2744, value1) := by
  rw [input5480_def, output5480_def]
  try (conv => lhs; cbv)
  try rfl

def value2745 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18889 18881 (Flapjack.WordRegImm.reg 18885))))).val
theorem input5481_def : input5481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18889 18881 (Flapjack.WordRegImm.reg 18885)))) := by
  unfold input5481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18889 18881 (Flapjack.WordRegImm.reg 18885))))).val
theorem output5481_def : output5481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18889 18881 (Flapjack.WordRegImm.reg 18885)))) := by
  unfold output5481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5481_skip : Flapjack.WordAlloc.isSkip output5481 = false := by
  rw [output5481_def]
  conv => lhs; cbv
  try rfl
theorem node5481_eq : Flapjack.WordAlloc.removeDeadStructural input5481 value2744 value1 value2 = (output5481, value2745, value1) := by
  rw [input5481_def, output5481_def]
  try (conv => lhs; cbv)
  try rfl

def value2746 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18885 4392#64))).val
theorem input5482_def : input5482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18885 4392#64)) := by
  unfold input5482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18885 4392#64))).val
theorem output5482_def : output5482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18885 4392#64)) := by
  unfold output5482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5482_skip : Flapjack.WordAlloc.isSkip output5482 = false := by
  rw [output5482_def]
  conv => lhs; cbv
  try rfl
theorem node5482_eq : Flapjack.WordAlloc.removeDeadStructural input5482 value2745 value1 value2 = (output5482, value2746, value1) := by
  rw [input5482_def, output5482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5482 input5481)).val
theorem input5483_def : input5483 = (.seq input5482 input5481) := by
  unfold input5483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5482 output5481)).val
theorem output5483_def : output5483 = (.seq output5482 output5481) := by
  unfold output5483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5483_skip : Flapjack.WordAlloc.isSkip output5483 = false := by
  rw [output5483_def]
  conv => lhs; cbv
  try rfl
theorem node5483_eq : Flapjack.WordAlloc.removeDeadStructural input5483 value2744 value1 value2 = (output5483, value2746, value1) := by
  rw [input5483_def, output5483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5481_eq]
  dsimp only
  rw [node5482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2747 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18881 (Flapjack.WordLangAddr.addr 18877 18446744073709551104#64)))).val
theorem input5484_def : input5484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18881 (Flapjack.WordLangAddr.addr 18877 18446744073709551104#64))) := by
  unfold input5484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18881 (Flapjack.WordLangAddr.addr 18877 18446744073709551104#64)))).val
theorem output5484_def : output5484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18881 (Flapjack.WordLangAddr.addr 18877 18446744073709551104#64))) := by
  unfold output5484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5484_skip : Flapjack.WordAlloc.isSkip output5484 = false := by
  rw [output5484_def]
  conv => lhs; cbv
  try rfl
theorem node5484_eq : Flapjack.WordAlloc.removeDeadStructural input5484 value2746 value1 value2 = (output5484, value2747, value1) := by
  rw [input5484_def, output5484_def]
  try (conv => lhs; cbv)
  try rfl

def value2748 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18877 18873)).val
theorem input5485_def : input5485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18877 18873) := by
  unfold input5485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18877 18873)).val
theorem output5485_def : output5485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18877 18873) := by
  unfold output5485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5485_skip : Flapjack.WordAlloc.isSkip output5485 = false := by
  rw [output5485_def]
  conv => lhs; cbv
  try rfl
theorem node5485_eq : Flapjack.WordAlloc.removeDeadStructural input5485 value2747 value1 value2 = (output5485, value2748, value1) := by
  rw [input5485_def, output5485_def]
  try (conv => lhs; cbv)
  try rfl

def value2749 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18873 18869 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5486_def : input5486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18873 18869 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18873 18869 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5486_def : output5486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18873 18869 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5486_skip : Flapjack.WordAlloc.isSkip output5486 = false := by
  rw [output5486_def]
  conv => lhs; cbv
  try rfl
theorem node5486_eq : Flapjack.WordAlloc.removeDeadStructural input5486 value2748 value1 value2 = (output5486, value2749, value1) := by
  rw [input5486_def, output5486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18869 Flapjack.WordStore.heapLength)).val
theorem input5487_def : input5487 = (Flapjack.WordLangProgHOL.get 18869 Flapjack.WordStore.heapLength) := by
  unfold input5487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18869 Flapjack.WordStore.heapLength)).val
theorem output5487_def : output5487 = (Flapjack.WordLangProgHOL.get 18869 Flapjack.WordStore.heapLength) := by
  unfold output5487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5487_skip : Flapjack.WordAlloc.isSkip output5487 = false := by
  rw [output5487_def]
  conv => lhs; cbv
  try rfl
theorem node5487_eq : Flapjack.WordAlloc.removeDeadStructural input5487 value2749 value1 value2 = (output5487, value5, value1) := by
  rw [input5487_def, output5487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5487 input5486)).val
theorem input5488_def : input5488 = (.seq input5487 input5486) := by
  unfold input5488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5487 output5486)).val
theorem output5488_def : output5488 = (.seq output5487 output5486) := by
  unfold output5488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5488_skip : Flapjack.WordAlloc.isSkip output5488 = false := by
  rw [output5488_def]
  conv => lhs; cbv
  try rfl
theorem node5488_eq : Flapjack.WordAlloc.removeDeadStructural input5488 value2748 value1 value2 = (output5488, value5, value1) := by
  rw [input5488_def, output5488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5486_eq]
  dsimp only
  rw [node5487_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5488 input5485)).val
theorem input5489_def : input5489 = (.seq input5488 input5485) := by
  unfold input5489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5488 output5485)).val
theorem output5489_def : output5489 = (.seq output5488 output5485) := by
  unfold output5489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5489_skip : Flapjack.WordAlloc.isSkip output5489 = false := by
  rw [output5489_def]
  conv => lhs; cbv
  try rfl
theorem node5489_eq : Flapjack.WordAlloc.removeDeadStructural input5489 value2747 value1 value2 = (output5489, value5, value1) := by
  rw [input5489_def, output5489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5485_eq]
  dsimp only
  rw [node5488_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5489 input5484)).val
theorem input5490_def : input5490 = (.seq input5489 input5484) := by
  unfold input5490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5489 output5484)).val
theorem output5490_def : output5490 = (.seq output5489 output5484) := by
  unfold output5490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5490_skip : Flapjack.WordAlloc.isSkip output5490 = false := by
  rw [output5490_def]
  conv => lhs; cbv
  try rfl
theorem node5490_eq : Flapjack.WordAlloc.removeDeadStructural input5490 value2746 value1 value2 = (output5490, value5, value1) := by
  rw [input5490_def, output5490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5484_eq]
  dsimp only
  rw [node5489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5490 input5483)).val
theorem input5491_def : input5491 = (.seq input5490 input5483) := by
  unfold input5491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5490 output5483)).val
theorem output5491_def : output5491 = (.seq output5490 output5483) := by
  unfold output5491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5491_skip : Flapjack.WordAlloc.isSkip output5491 = false := by
  rw [output5491_def]
  conv => lhs; cbv
  try rfl
theorem node5491_eq : Flapjack.WordAlloc.removeDeadStructural input5491 value2744 value1 value2 = (output5491, value5, value1) := by
  rw [input5491_def, output5491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5483_eq]
  dsimp only
  rw [node5490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2750 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18861 (Flapjack.WordLangAddr.addr 18865 0#64)))).val
theorem input5492_def : input5492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18861 (Flapjack.WordLangAddr.addr 18865 0#64))) := by
  unfold input5492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18861 (Flapjack.WordLangAddr.addr 18865 0#64)))).val
theorem output5492_def : output5492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18861 (Flapjack.WordLangAddr.addr 18865 0#64))) := by
  unfold output5492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5492_skip : Flapjack.WordAlloc.isSkip output5492 = false := by
  rw [output5492_def]
  conv => lhs; cbv
  try rfl
theorem node5492_eq : Flapjack.WordAlloc.removeDeadStructural input5492 value5 value1 value2 = (output5492, value2750, value1) := by
  rw [input5492_def, output5492_def]
  try (conv => lhs; cbv)
  try rfl

def value2751 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18865, 18853)])).val
theorem input5493_def : input5493 = (Flapjack.WordLangProgHOL.move 0 [(18865, 18853)]) := by
  unfold input5493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18865, 18853)])).val
theorem output5493_def : output5493 = (Flapjack.WordLangProgHOL.move 0 [(18865, 18853)]) := by
  unfold output5493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5493_skip : Flapjack.WordAlloc.isSkip output5493 = false := by
  rw [output5493_def]
  conv => lhs; cbv
  try rfl
theorem node5493_eq : Flapjack.WordAlloc.removeDeadStructural input5493 value2750 value1 value2 = (output5493, value2751, value1) := by
  rw [input5493_def, output5493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5493 input5492)).val
theorem input5494_def : input5494 = (.seq input5493 input5492) := by
  unfold input5494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5493 output5492)).val
theorem output5494_def : output5494 = (.seq output5493 output5492) := by
  unfold output5494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5494_skip : Flapjack.WordAlloc.isSkip output5494 = false := by
  rw [output5494_def]
  conv => lhs; cbv
  try rfl
theorem node5494_eq : Flapjack.WordAlloc.removeDeadStructural input5494 value5 value1 value2 = (output5494, value2751, value1) := by
  rw [input5494_def, output5494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5492_eq]
  dsimp only
  rw [node5493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2752 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18861 14078588081290548374#64))).val
theorem input5495_def : input5495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18861 14078588081290548374#64)) := by
  unfold input5495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18861 14078588081290548374#64))).val
theorem output5495_def : output5495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18861 14078588081290548374#64)) := by
  unfold output5495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5495_skip : Flapjack.WordAlloc.isSkip output5495 = false := by
  rw [output5495_def]
  conv => lhs; cbv
  try rfl
theorem node5495_eq : Flapjack.WordAlloc.removeDeadStructural input5495 value2751 value1 value2 = (output5495, value2752, value1) := by
  rw [input5495_def, output5495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18857 14078588081290548374#64))).val
theorem input5496_def : input5496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18857 14078588081290548374#64)) := by
  unfold input5496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5496_def : output5496 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5496_skip : Flapjack.WordAlloc.isSkip output5496 = true := by
  rw [output5496_def]
  conv => lhs; cbv
  try rfl
theorem node5496_eq : Flapjack.WordAlloc.removeDeadStructural input5496 value2752 value1 value2 = (output5496, value2752, value1) := by
  rw [input5496_def, output5496_def]
  try (conv => lhs; cbv)
  try rfl

def value2753 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18853 18845 (Flapjack.WordRegImm.reg 18849))))).val
theorem input5497_def : input5497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18853 18845 (Flapjack.WordRegImm.reg 18849)))) := by
  unfold input5497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18853 18845 (Flapjack.WordRegImm.reg 18849))))).val
theorem output5497_def : output5497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18853 18845 (Flapjack.WordRegImm.reg 18849)))) := by
  unfold output5497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5497_skip : Flapjack.WordAlloc.isSkip output5497 = false := by
  rw [output5497_def]
  conv => lhs; cbv
  try rfl
theorem node5497_eq : Flapjack.WordAlloc.removeDeadStructural input5497 value2752 value1 value2 = (output5497, value2753, value1) := by
  rw [input5497_def, output5497_def]
  try (conv => lhs; cbv)
  try rfl

def value2754 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18849 4384#64))).val
theorem input5498_def : input5498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18849 4384#64)) := by
  unfold input5498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18849 4384#64))).val
theorem output5498_def : output5498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18849 4384#64)) := by
  unfold output5498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5498_skip : Flapjack.WordAlloc.isSkip output5498 = false := by
  rw [output5498_def]
  conv => lhs; cbv
  try rfl
theorem node5498_eq : Flapjack.WordAlloc.removeDeadStructural input5498 value2753 value1 value2 = (output5498, value2754, value1) := by
  rw [input5498_def, output5498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5498 input5497)).val
theorem input5499_def : input5499 = (.seq input5498 input5497) := by
  unfold input5499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5498 output5497)).val
theorem output5499_def : output5499 = (.seq output5498 output5497) := by
  unfold output5499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5499_skip : Flapjack.WordAlloc.isSkip output5499 = false := by
  rw [output5499_def]
  conv => lhs; cbv
  try rfl
theorem node5499_eq : Flapjack.WordAlloc.removeDeadStructural input5499 value2752 value1 value2 = (output5499, value2754, value1) := by
  rw [input5499_def, output5499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5497_eq]
  dsimp only
  rw [node5498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2755 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18845 (Flapjack.WordLangAddr.addr 18841 18446744073709551104#64)))).val
theorem input5500_def : input5500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18845 (Flapjack.WordLangAddr.addr 18841 18446744073709551104#64))) := by
  unfold input5500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18845 (Flapjack.WordLangAddr.addr 18841 18446744073709551104#64)))).val
theorem output5500_def : output5500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18845 (Flapjack.WordLangAddr.addr 18841 18446744073709551104#64))) := by
  unfold output5500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5500_skip : Flapjack.WordAlloc.isSkip output5500 = false := by
  rw [output5500_def]
  conv => lhs; cbv
  try rfl
theorem node5500_eq : Flapjack.WordAlloc.removeDeadStructural input5500 value2754 value1 value2 = (output5500, value2755, value1) := by
  rw [input5500_def, output5500_def]
  try (conv => lhs; cbv)
  try rfl

def value2756 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18841 18837)).val
theorem input5501_def : input5501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18841 18837) := by
  unfold input5501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18841 18837)).val
theorem output5501_def : output5501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18841 18837) := by
  unfold output5501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5501_skip : Flapjack.WordAlloc.isSkip output5501 = false := by
  rw [output5501_def]
  conv => lhs; cbv
  try rfl
theorem node5501_eq : Flapjack.WordAlloc.removeDeadStructural input5501 value2755 value1 value2 = (output5501, value2756, value1) := by
  rw [input5501_def, output5501_def]
  try (conv => lhs; cbv)
  try rfl

def value2757 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18837 18833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5502_def : input5502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18837 18833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18837 18833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5502_def : output5502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18837 18833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5502_skip : Flapjack.WordAlloc.isSkip output5502 = false := by
  rw [output5502_def]
  conv => lhs; cbv
  try rfl
theorem node5502_eq : Flapjack.WordAlloc.removeDeadStructural input5502 value2756 value1 value2 = (output5502, value2757, value1) := by
  rw [input5502_def, output5502_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18833 Flapjack.WordStore.heapLength)).val
theorem input5503_def : input5503 = (Flapjack.WordLangProgHOL.get 18833 Flapjack.WordStore.heapLength) := by
  unfold input5503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18833 Flapjack.WordStore.heapLength)).val
theorem output5503_def : output5503 = (Flapjack.WordLangProgHOL.get 18833 Flapjack.WordStore.heapLength) := by
  unfold output5503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5503_skip : Flapjack.WordAlloc.isSkip output5503 = false := by
  rw [output5503_def]
  conv => lhs; cbv
  try rfl
theorem node5503_eq : Flapjack.WordAlloc.removeDeadStructural input5503 value2757 value1 value2 = (output5503, value5, value1) := by
  rw [input5503_def, output5503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5503 input5502)).val
theorem input5504_def : input5504 = (.seq input5503 input5502) := by
  unfold input5504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5503 output5502)).val
theorem output5504_def : output5504 = (.seq output5503 output5502) := by
  unfold output5504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5504_skip : Flapjack.WordAlloc.isSkip output5504 = false := by
  rw [output5504_def]
  conv => lhs; cbv
  try rfl
theorem node5504_eq : Flapjack.WordAlloc.removeDeadStructural input5504 value2756 value1 value2 = (output5504, value5, value1) := by
  rw [input5504_def, output5504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5502_eq]
  dsimp only
  rw [node5503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5504 input5501)).val
theorem input5505_def : input5505 = (.seq input5504 input5501) := by
  unfold input5505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5504 output5501)).val
theorem output5505_def : output5505 = (.seq output5504 output5501) := by
  unfold output5505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5505_skip : Flapjack.WordAlloc.isSkip output5505 = false := by
  rw [output5505_def]
  conv => lhs; cbv
  try rfl
theorem node5505_eq : Flapjack.WordAlloc.removeDeadStructural input5505 value2755 value1 value2 = (output5505, value5, value1) := by
  rw [input5505_def, output5505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5501_eq]
  dsimp only
  rw [node5504_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5505 input5500)).val
theorem input5506_def : input5506 = (.seq input5505 input5500) := by
  unfold input5506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5505 output5500)).val
theorem output5506_def : output5506 = (.seq output5505 output5500) := by
  unfold output5506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5506_skip : Flapjack.WordAlloc.isSkip output5506 = false := by
  rw [output5506_def]
  conv => lhs; cbv
  try rfl
theorem node5506_eq : Flapjack.WordAlloc.removeDeadStructural input5506 value2754 value1 value2 = (output5506, value5, value1) := by
  rw [input5506_def, output5506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5500_eq]
  dsimp only
  rw [node5505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5506 input5499)).val
theorem input5507_def : input5507 = (.seq input5506 input5499) := by
  unfold input5507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5506 output5499)).val
theorem output5507_def : output5507 = (.seq output5506 output5499) := by
  unfold output5507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5507_skip : Flapjack.WordAlloc.isSkip output5507 = false := by
  rw [output5507_def]
  conv => lhs; cbv
  try rfl
theorem node5507_eq : Flapjack.WordAlloc.removeDeadStructural input5507 value2752 value1 value2 = (output5507, value5, value1) := by
  rw [input5507_def, output5507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5499_eq]
  dsimp only
  rw [node5506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2758 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18825 (Flapjack.WordLangAddr.addr 18829 0#64)))).val
theorem input5508_def : input5508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18825 (Flapjack.WordLangAddr.addr 18829 0#64))) := by
  unfold input5508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18825 (Flapjack.WordLangAddr.addr 18829 0#64)))).val
theorem output5508_def : output5508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18825 (Flapjack.WordLangAddr.addr 18829 0#64))) := by
  unfold output5508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5508_skip : Flapjack.WordAlloc.isSkip output5508 = false := by
  rw [output5508_def]
  conv => lhs; cbv
  try rfl
theorem node5508_eq : Flapjack.WordAlloc.removeDeadStructural input5508 value5 value1 value2 = (output5508, value2758, value1) := by
  rw [input5508_def, output5508_def]
  try (conv => lhs; cbv)
  try rfl

def value2759 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
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
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18829, 18817)])).val
theorem input5509_def : input5509 = (Flapjack.WordLangProgHOL.move 0 [(18829, 18817)]) := by
  unfold input5509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18829, 18817)])).val
theorem output5509_def : output5509 = (Flapjack.WordLangProgHOL.move 0 [(18829, 18817)]) := by
  unfold output5509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5509_skip : Flapjack.WordAlloc.isSkip output5509 = false := by
  rw [output5509_def]
  conv => lhs; cbv
  try rfl
theorem node5509_eq : Flapjack.WordAlloc.removeDeadStructural input5509 value2758 value1 value2 = (output5509, value2759, value1) := by
  rw [input5509_def, output5509_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5509 input5508)).val
theorem input5510_def : input5510 = (.seq input5509 input5508) := by
  unfold input5510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5509 output5508)).val
theorem output5510_def : output5510 = (.seq output5509 output5508) := by
  unfold output5510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5510_skip : Flapjack.WordAlloc.isSkip output5510 = false := by
  rw [output5510_def]
  conv => lhs; cbv
  try rfl
theorem node5510_eq : Flapjack.WordAlloc.removeDeadStructural input5510 value5 value1 value2 = (output5510, value2759, value1) := by
  rw [input5510_def, output5510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5508_eq]
  dsimp only
  rw [node5509_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2760 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18825 6067271023149908518#64))).val
theorem input5511_def : input5511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18825 6067271023149908518#64)) := by
  unfold input5511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18825 6067271023149908518#64))).val
theorem output5511_def : output5511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18825 6067271023149908518#64)) := by
  unfold output5511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5511_skip : Flapjack.WordAlloc.isSkip output5511 = false := by
  rw [output5511_def]
  conv => lhs; cbv
  try rfl
theorem node5511_eq : Flapjack.WordAlloc.removeDeadStructural input5511 value2759 value1 value2 = (output5511, value2760, value1) := by
  rw [input5511_def, output5511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18821 6067271023149908518#64))).val
theorem input5512_def : input5512 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18821 6067271023149908518#64)) := by
  unfold input5512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5512_def : output5512 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5512_skip : Flapjack.WordAlloc.isSkip output5512 = true := by
  rw [output5512_def]
  conv => lhs; cbv
  try rfl
theorem node5512_eq : Flapjack.WordAlloc.removeDeadStructural input5512 value2760 value1 value2 = (output5512, value2760, value1) := by
  rw [input5512_def, output5512_def]
  try (conv => lhs; cbv)
  try rfl

def value2761 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18817 18809 (Flapjack.WordRegImm.reg 18813))))).val
theorem input5513_def : input5513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18817 18809 (Flapjack.WordRegImm.reg 18813)))) := by
  unfold input5513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18817 18809 (Flapjack.WordRegImm.reg 18813))))).val
theorem output5513_def : output5513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18817 18809 (Flapjack.WordRegImm.reg 18813)))) := by
  unfold output5513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5513_skip : Flapjack.WordAlloc.isSkip output5513 = false := by
  rw [output5513_def]
  conv => lhs; cbv
  try rfl
theorem node5513_eq : Flapjack.WordAlloc.removeDeadStructural input5513 value2760 value1 value2 = (output5513, value2761, value1) := by
  rw [input5513_def, output5513_def]
  try (conv => lhs; cbv)
  try rfl

def value2762 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18813 4376#64))).val
theorem input5514_def : input5514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18813 4376#64)) := by
  unfold input5514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18813 4376#64))).val
theorem output5514_def : output5514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18813 4376#64)) := by
  unfold output5514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5514_skip : Flapjack.WordAlloc.isSkip output5514 = false := by
  rw [output5514_def]
  conv => lhs; cbv
  try rfl
theorem node5514_eq : Flapjack.WordAlloc.removeDeadStructural input5514 value2761 value1 value2 = (output5514, value2762, value1) := by
  rw [input5514_def, output5514_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5514 input5513)).val
theorem input5515_def : input5515 = (.seq input5514 input5513) := by
  unfold input5515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5514 output5513)).val
theorem output5515_def : output5515 = (.seq output5514 output5513) := by
  unfold output5515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5515_skip : Flapjack.WordAlloc.isSkip output5515 = false := by
  rw [output5515_def]
  conv => lhs; cbv
  try rfl
theorem node5515_eq : Flapjack.WordAlloc.removeDeadStructural input5515 value2760 value1 value2 = (output5515, value2762, value1) := by
  rw [input5515_def, output5515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5513_eq]
  dsimp only
  rw [node5514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2763 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18809 (Flapjack.WordLangAddr.addr 18805 18446744073709551104#64)))).val
theorem input5516_def : input5516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18809 (Flapjack.WordLangAddr.addr 18805 18446744073709551104#64))) := by
  unfold input5516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18809 (Flapjack.WordLangAddr.addr 18805 18446744073709551104#64)))).val
theorem output5516_def : output5516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18809 (Flapjack.WordLangAddr.addr 18805 18446744073709551104#64))) := by
  unfold output5516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5516_skip : Flapjack.WordAlloc.isSkip output5516 = false := by
  rw [output5516_def]
  conv => lhs; cbv
  try rfl
theorem node5516_eq : Flapjack.WordAlloc.removeDeadStructural input5516 value2762 value1 value2 = (output5516, value2763, value1) := by
  rw [input5516_def, output5516_def]
  try (conv => lhs; cbv)
  try rfl

def value2764 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18805 18801)).val
theorem input5517_def : input5517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18805 18801) := by
  unfold input5517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18805 18801)).val
theorem output5517_def : output5517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18805 18801) := by
  unfold output5517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5517_skip : Flapjack.WordAlloc.isSkip output5517 = false := by
  rw [output5517_def]
  conv => lhs; cbv
  try rfl
theorem node5517_eq : Flapjack.WordAlloc.removeDeadStructural input5517 value2763 value1 value2 = (output5517, value2764, value1) := by
  rw [input5517_def, output5517_def]
  try (conv => lhs; cbv)
  try rfl

def value2765 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18801 18797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5518_def : input5518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18801 18797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18801 18797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5518_def : output5518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18801 18797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5518_skip : Flapjack.WordAlloc.isSkip output5518 = false := by
  rw [output5518_def]
  conv => lhs; cbv
  try rfl
theorem node5518_eq : Flapjack.WordAlloc.removeDeadStructural input5518 value2764 value1 value2 = (output5518, value2765, value1) := by
  rw [input5518_def, output5518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18797 Flapjack.WordStore.heapLength)).val
theorem input5519_def : input5519 = (Flapjack.WordLangProgHOL.get 18797 Flapjack.WordStore.heapLength) := by
  unfold input5519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18797 Flapjack.WordStore.heapLength)).val
theorem output5519_def : output5519 = (Flapjack.WordLangProgHOL.get 18797 Flapjack.WordStore.heapLength) := by
  unfold output5519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5519_skip : Flapjack.WordAlloc.isSkip output5519 = false := by
  rw [output5519_def]
  conv => lhs; cbv
  try rfl
theorem node5519_eq : Flapjack.WordAlloc.removeDeadStructural input5519 value2765 value1 value2 = (output5519, value5, value1) := by
  rw [input5519_def, output5519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5519 input5518)).val
theorem input5520_def : input5520 = (.seq input5519 input5518) := by
  unfold input5520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5519 output5518)).val
theorem output5520_def : output5520 = (.seq output5519 output5518) := by
  unfold output5520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5520_skip : Flapjack.WordAlloc.isSkip output5520 = false := by
  rw [output5520_def]
  conv => lhs; cbv
  try rfl
theorem node5520_eq : Flapjack.WordAlloc.removeDeadStructural input5520 value2764 value1 value2 = (output5520, value5, value1) := by
  rw [input5520_def, output5520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5518_eq]
  dsimp only
  rw [node5519_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5520 input5517)).val
theorem input5521_def : input5521 = (.seq input5520 input5517) := by
  unfold input5521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5520 output5517)).val
theorem output5521_def : output5521 = (.seq output5520 output5517) := by
  unfold output5521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5521_skip : Flapjack.WordAlloc.isSkip output5521 = false := by
  rw [output5521_def]
  conv => lhs; cbv
  try rfl
theorem node5521_eq : Flapjack.WordAlloc.removeDeadStructural input5521 value2763 value1 value2 = (output5521, value5, value1) := by
  rw [input5521_def, output5521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5517_eq]
  dsimp only
  rw [node5520_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5521 input5516)).val
theorem input5522_def : input5522 = (.seq input5521 input5516) := by
  unfold input5522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5521 output5516)).val
theorem output5522_def : output5522 = (.seq output5521 output5516) := by
  unfold output5522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5522_skip : Flapjack.WordAlloc.isSkip output5522 = false := by
  rw [output5522_def]
  conv => lhs; cbv
  try rfl
theorem node5522_eq : Flapjack.WordAlloc.removeDeadStructural input5522 value2762 value1 value2 = (output5522, value5, value1) := by
  rw [input5522_def, output5522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5516_eq]
  dsimp only
  rw [node5521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5522 input5515)).val
theorem input5523_def : input5523 = (.seq input5522 input5515) := by
  unfold input5523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5522 output5515)).val
theorem output5523_def : output5523 = (.seq output5522 output5515) := by
  unfold output5523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5523_skip : Flapjack.WordAlloc.isSkip output5523 = false := by
  rw [output5523_def]
  conv => lhs; cbv
  try rfl
theorem node5523_eq : Flapjack.WordAlloc.removeDeadStructural input5523 value2760 value1 value2 = (output5523, value5, value1) := by
  rw [input5523_def, output5523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5515_eq]
  dsimp only
  rw [node5522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2766 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18789 (Flapjack.WordLangAddr.addr 18793 0#64)))).val
theorem input5524_def : input5524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18789 (Flapjack.WordLangAddr.addr 18793 0#64))) := by
  unfold input5524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18789 (Flapjack.WordLangAddr.addr 18793 0#64)))).val
theorem output5524_def : output5524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18789 (Flapjack.WordLangAddr.addr 18793 0#64))) := by
  unfold output5524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5524_skip : Flapjack.WordAlloc.isSkip output5524 = false := by
  rw [output5524_def]
  conv => lhs; cbv
  try rfl
theorem node5524_eq : Flapjack.WordAlloc.removeDeadStructural input5524 value5 value1 value2 = (output5524, value2766, value1) := by
  rw [input5524_def, output5524_def]
  try (conv => lhs; cbv)
  try rfl

def value2767 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18793, 18781)])).val
theorem input5525_def : input5525 = (Flapjack.WordLangProgHOL.move 0 [(18793, 18781)]) := by
  unfold input5525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18793, 18781)])).val
theorem output5525_def : output5525 = (Flapjack.WordLangProgHOL.move 0 [(18793, 18781)]) := by
  unfold output5525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5525_skip : Flapjack.WordAlloc.isSkip output5525 = false := by
  rw [output5525_def]
  conv => lhs; cbv
  try rfl
theorem node5525_eq : Flapjack.WordAlloc.removeDeadStructural input5525 value2766 value1 value2 = (output5525, value2767, value1) := by
  rw [input5525_def, output5525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5525 input5524)).val
theorem input5526_def : input5526 = (.seq input5525 input5524) := by
  unfold input5526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5525 output5524)).val
theorem output5526_def : output5526 = (.seq output5525 output5524) := by
  unfold output5526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5526_skip : Flapjack.WordAlloc.isSkip output5526 = false := by
  rw [output5526_def]
  conv => lhs; cbv
  try rfl
theorem node5526_eq : Flapjack.WordAlloc.removeDeadStructural input5526 value5 value1 value2 = (output5526, value2767, value1) := by
  rw [input5526_def, output5526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5524_eq]
  dsimp only
  rw [node5525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2768 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18789 9033357708497886086#64))).val
theorem input5527_def : input5527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18789 9033357708497886086#64)) := by
  unfold input5527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18789 9033357708497886086#64))).val
theorem output5527_def : output5527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18789 9033357708497886086#64)) := by
  unfold output5527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5527_skip : Flapjack.WordAlloc.isSkip output5527 = false := by
  rw [output5527_def]
  conv => lhs; cbv
  try rfl
theorem node5527_eq : Flapjack.WordAlloc.removeDeadStructural input5527 value2767 value1 value2 = (output5527, value2768, value1) := by
  rw [input5527_def, output5527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18785 9033357708497886086#64))).val
theorem input5528_def : input5528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18785 9033357708497886086#64)) := by
  unfold input5528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5528_def : output5528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5528_skip : Flapjack.WordAlloc.isSkip output5528 = true := by
  rw [output5528_def]
  conv => lhs; cbv
  try rfl
theorem node5528_eq : Flapjack.WordAlloc.removeDeadStructural input5528 value2768 value1 value2 = (output5528, value2768, value1) := by
  rw [input5528_def, output5528_def]
  try (conv => lhs; cbv)
  try rfl

def value2769 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18781 18773 (Flapjack.WordRegImm.reg 18777))))).val
theorem input5529_def : input5529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18781 18773 (Flapjack.WordRegImm.reg 18777)))) := by
  unfold input5529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18781 18773 (Flapjack.WordRegImm.reg 18777))))).val
theorem output5529_def : output5529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18781 18773 (Flapjack.WordRegImm.reg 18777)))) := by
  unfold output5529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5529_skip : Flapjack.WordAlloc.isSkip output5529 = false := by
  rw [output5529_def]
  conv => lhs; cbv
  try rfl
theorem node5529_eq : Flapjack.WordAlloc.removeDeadStructural input5529 value2768 value1 value2 = (output5529, value2769, value1) := by
  rw [input5529_def, output5529_def]
  try (conv => lhs; cbv)
  try rfl

def value2770 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18777 4368#64))).val
theorem input5530_def : input5530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18777 4368#64)) := by
  unfold input5530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18777 4368#64))).val
theorem output5530_def : output5530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18777 4368#64)) := by
  unfold output5530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5530_skip : Flapjack.WordAlloc.isSkip output5530 = false := by
  rw [output5530_def]
  conv => lhs; cbv
  try rfl
theorem node5530_eq : Flapjack.WordAlloc.removeDeadStructural input5530 value2769 value1 value2 = (output5530, value2770, value1) := by
  rw [input5530_def, output5530_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5530 input5529)).val
theorem input5531_def : input5531 = (.seq input5530 input5529) := by
  unfold input5531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5530 output5529)).val
theorem output5531_def : output5531 = (.seq output5530 output5529) := by
  unfold output5531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5531_skip : Flapjack.WordAlloc.isSkip output5531 = false := by
  rw [output5531_def]
  conv => lhs; cbv
  try rfl
theorem node5531_eq : Flapjack.WordAlloc.removeDeadStructural input5531 value2768 value1 value2 = (output5531, value2770, value1) := by
  rw [input5531_def, output5531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5529_eq]
  dsimp only
  rw [node5530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2771 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18773 (Flapjack.WordLangAddr.addr 18769 18446744073709551104#64)))).val
theorem input5532_def : input5532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18773 (Flapjack.WordLangAddr.addr 18769 18446744073709551104#64))) := by
  unfold input5532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18773 (Flapjack.WordLangAddr.addr 18769 18446744073709551104#64)))).val
theorem output5532_def : output5532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18773 (Flapjack.WordLangAddr.addr 18769 18446744073709551104#64))) := by
  unfold output5532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5532_skip : Flapjack.WordAlloc.isSkip output5532 = false := by
  rw [output5532_def]
  conv => lhs; cbv
  try rfl
theorem node5532_eq : Flapjack.WordAlloc.removeDeadStructural input5532 value2770 value1 value2 = (output5532, value2771, value1) := by
  rw [input5532_def, output5532_def]
  try (conv => lhs; cbv)
  try rfl

def value2772 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18769 18765)).val
theorem input5533_def : input5533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18769 18765) := by
  unfold input5533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18769 18765)).val
theorem output5533_def : output5533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18769 18765) := by
  unfold output5533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5533_skip : Flapjack.WordAlloc.isSkip output5533 = false := by
  rw [output5533_def]
  conv => lhs; cbv
  try rfl
theorem node5533_eq : Flapjack.WordAlloc.removeDeadStructural input5533 value2771 value1 value2 = (output5533, value2772, value1) := by
  rw [input5533_def, output5533_def]
  try (conv => lhs; cbv)
  try rfl

def value2773 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18765 18761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5534_def : input5534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18765 18761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18765 18761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5534_def : output5534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18765 18761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5534_skip : Flapjack.WordAlloc.isSkip output5534 = false := by
  rw [output5534_def]
  conv => lhs; cbv
  try rfl
theorem node5534_eq : Flapjack.WordAlloc.removeDeadStructural input5534 value2772 value1 value2 = (output5534, value2773, value1) := by
  rw [input5534_def, output5534_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18761 Flapjack.WordStore.heapLength)).val
theorem input5535_def : input5535 = (Flapjack.WordLangProgHOL.get 18761 Flapjack.WordStore.heapLength) := by
  unfold input5535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18761 Flapjack.WordStore.heapLength)).val
theorem output5535_def : output5535 = (Flapjack.WordLangProgHOL.get 18761 Flapjack.WordStore.heapLength) := by
  unfold output5535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5535_skip : Flapjack.WordAlloc.isSkip output5535 = false := by
  rw [output5535_def]
  conv => lhs; cbv
  try rfl
theorem node5535_eq : Flapjack.WordAlloc.removeDeadStructural input5535 value2773 value1 value2 = (output5535, value5, value1) := by
  rw [input5535_def, output5535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5535 input5534)).val
theorem input5536_def : input5536 = (.seq input5535 input5534) := by
  unfold input5536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5535 output5534)).val
theorem output5536_def : output5536 = (.seq output5535 output5534) := by
  unfold output5536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5536_skip : Flapjack.WordAlloc.isSkip output5536 = false := by
  rw [output5536_def]
  conv => lhs; cbv
  try rfl
theorem node5536_eq : Flapjack.WordAlloc.removeDeadStructural input5536 value2772 value1 value2 = (output5536, value5, value1) := by
  rw [input5536_def, output5536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5534_eq]
  dsimp only
  rw [node5535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5536 input5533)).val
theorem input5537_def : input5537 = (.seq input5536 input5533) := by
  unfold input5537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5536 output5533)).val
theorem output5537_def : output5537 = (.seq output5536 output5533) := by
  unfold output5537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5537_skip : Flapjack.WordAlloc.isSkip output5537 = false := by
  rw [output5537_def]
  conv => lhs; cbv
  try rfl
theorem node5537_eq : Flapjack.WordAlloc.removeDeadStructural input5537 value2771 value1 value2 = (output5537, value5, value1) := by
  rw [input5537_def, output5537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5533_eq]
  dsimp only
  rw [node5536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5537 input5532)).val
theorem input5538_def : input5538 = (.seq input5537 input5532) := by
  unfold input5538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5537 output5532)).val
theorem output5538_def : output5538 = (.seq output5537 output5532) := by
  unfold output5538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5538_skip : Flapjack.WordAlloc.isSkip output5538 = false := by
  rw [output5538_def]
  conv => lhs; cbv
  try rfl
theorem node5538_eq : Flapjack.WordAlloc.removeDeadStructural input5538 value2770 value1 value2 = (output5538, value5, value1) := by
  rw [input5538_def, output5538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5532_eq]
  dsimp only
  rw [node5537_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5538 input5531)).val
theorem input5539_def : input5539 = (.seq input5538 input5531) := by
  unfold input5539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5538 output5531)).val
theorem output5539_def : output5539 = (.seq output5538 output5531) := by
  unfold output5539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5539_skip : Flapjack.WordAlloc.isSkip output5539 = false := by
  rw [output5539_def]
  conv => lhs; cbv
  try rfl
theorem node5539_eq : Flapjack.WordAlloc.removeDeadStructural input5539 value2768 value1 value2 = (output5539, value5, value1) := by
  rw [input5539_def, output5539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5531_eq]
  dsimp only
  rw [node5538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2774 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18753 (Flapjack.WordLangAddr.addr 18757 0#64)))).val
theorem input5540_def : input5540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18753 (Flapjack.WordLangAddr.addr 18757 0#64))) := by
  unfold input5540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18753 (Flapjack.WordLangAddr.addr 18757 0#64)))).val
theorem output5540_def : output5540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18753 (Flapjack.WordLangAddr.addr 18757 0#64))) := by
  unfold output5540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5540_skip : Flapjack.WordAlloc.isSkip output5540 = false := by
  rw [output5540_def]
  conv => lhs; cbv
  try rfl
theorem node5540_eq : Flapjack.WordAlloc.removeDeadStructural input5540 value5 value1 value2 = (output5540, value2774, value1) := by
  rw [input5540_def, output5540_def]
  try (conv => lhs; cbv)
  try rfl

def value2775 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18757, 18745)])).val
theorem input5541_def : input5541 = (Flapjack.WordLangProgHOL.move 0 [(18757, 18745)]) := by
  unfold input5541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18757, 18745)])).val
theorem output5541_def : output5541 = (Flapjack.WordLangProgHOL.move 0 [(18757, 18745)]) := by
  unfold output5541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5541_skip : Flapjack.WordAlloc.isSkip output5541 = false := by
  rw [output5541_def]
  conv => lhs; cbv
  try rfl
theorem node5541_eq : Flapjack.WordAlloc.removeDeadStructural input5541 value2774 value1 value2 = (output5541, value2775, value1) := by
  rw [input5541_def, output5541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5541 input5540)).val
theorem input5542_def : input5542 = (.seq input5541 input5540) := by
  unfold input5542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5541 output5540)).val
theorem output5542_def : output5542 = (.seq output5541 output5540) := by
  unfold output5542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5542_skip : Flapjack.WordAlloc.isSkip output5542 = false := by
  rw [output5542_def]
  conv => lhs; cbv
  try rfl
theorem node5542_eq : Flapjack.WordAlloc.removeDeadStructural input5542 value5 value1 value2 = (output5542, value2775, value1) := by
  rw [input5542_def, output5542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5540_eq]
  dsimp only
  rw [node5541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2776 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18753 10592474449179118273#64))).val
theorem input5543_def : input5543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18753 10592474449179118273#64)) := by
  unfold input5543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18753 10592474449179118273#64))).val
theorem output5543_def : output5543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18753 10592474449179118273#64)) := by
  unfold output5543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5543_skip : Flapjack.WordAlloc.isSkip output5543 = false := by
  rw [output5543_def]
  conv => lhs; cbv
  try rfl
theorem node5543_eq : Flapjack.WordAlloc.removeDeadStructural input5543 value2775 value1 value2 = (output5543, value2776, value1) := by
  rw [input5543_def, output5543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18749 10592474449179118273#64))).val
theorem input5544_def : input5544 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18749 10592474449179118273#64)) := by
  unfold input5544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5544_def : output5544 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5544_skip : Flapjack.WordAlloc.isSkip output5544 = true := by
  rw [output5544_def]
  conv => lhs; cbv
  try rfl
theorem node5544_eq : Flapjack.WordAlloc.removeDeadStructural input5544 value2776 value1 value2 = (output5544, value2776, value1) := by
  rw [input5544_def, output5544_def]
  try (conv => lhs; cbv)
  try rfl

def value2777 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18745 18737 (Flapjack.WordRegImm.reg 18741))))).val
theorem input5545_def : input5545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18745 18737 (Flapjack.WordRegImm.reg 18741)))) := by
  unfold input5545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18745 18737 (Flapjack.WordRegImm.reg 18741))))).val
theorem output5545_def : output5545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18745 18737 (Flapjack.WordRegImm.reg 18741)))) := by
  unfold output5545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5545_skip : Flapjack.WordAlloc.isSkip output5545 = false := by
  rw [output5545_def]
  conv => lhs; cbv
  try rfl
theorem node5545_eq : Flapjack.WordAlloc.removeDeadStructural input5545 value2776 value1 value2 = (output5545, value2777, value1) := by
  rw [input5545_def, output5545_def]
  try (conv => lhs; cbv)
  try rfl

def value2778 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18741 4360#64))).val
theorem input5546_def : input5546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18741 4360#64)) := by
  unfold input5546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18741 4360#64))).val
theorem output5546_def : output5546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18741 4360#64)) := by
  unfold output5546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5546_skip : Flapjack.WordAlloc.isSkip output5546 = false := by
  rw [output5546_def]
  conv => lhs; cbv
  try rfl
theorem node5546_eq : Flapjack.WordAlloc.removeDeadStructural input5546 value2777 value1 value2 = (output5546, value2778, value1) := by
  rw [input5546_def, output5546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5546 input5545)).val
theorem input5547_def : input5547 = (.seq input5546 input5545) := by
  unfold input5547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5546 output5545)).val
theorem output5547_def : output5547 = (.seq output5546 output5545) := by
  unfold output5547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5547_skip : Flapjack.WordAlloc.isSkip output5547 = false := by
  rw [output5547_def]
  conv => lhs; cbv
  try rfl
theorem node5547_eq : Flapjack.WordAlloc.removeDeadStructural input5547 value2776 value1 value2 = (output5547, value2778, value1) := by
  rw [input5547_def, output5547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5545_eq]
  dsimp only
  rw [node5546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2779 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18737 (Flapjack.WordLangAddr.addr 18733 18446744073709551104#64)))).val
theorem input5548_def : input5548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18737 (Flapjack.WordLangAddr.addr 18733 18446744073709551104#64))) := by
  unfold input5548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18737 (Flapjack.WordLangAddr.addr 18733 18446744073709551104#64)))).val
theorem output5548_def : output5548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18737 (Flapjack.WordLangAddr.addr 18733 18446744073709551104#64))) := by
  unfold output5548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5548_skip : Flapjack.WordAlloc.isSkip output5548 = false := by
  rw [output5548_def]
  conv => lhs; cbv
  try rfl
theorem node5548_eq : Flapjack.WordAlloc.removeDeadStructural input5548 value2778 value1 value2 = (output5548, value2779, value1) := by
  rw [input5548_def, output5548_def]
  try (conv => lhs; cbv)
  try rfl

def value2780 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18733 18729)).val
theorem input5549_def : input5549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18733 18729) := by
  unfold input5549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18733 18729)).val
theorem output5549_def : output5549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18733 18729) := by
  unfold output5549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5549_skip : Flapjack.WordAlloc.isSkip output5549 = false := by
  rw [output5549_def]
  conv => lhs; cbv
  try rfl
theorem node5549_eq : Flapjack.WordAlloc.removeDeadStructural input5549 value2779 value1 value2 = (output5549, value2780, value1) := by
  rw [input5549_def, output5549_def]
  try (conv => lhs; cbv)
  try rfl

def value2781 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18729 18725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5550_def : input5550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18729 18725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18729 18725 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5550_def : output5550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18729 18725 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5550_skip : Flapjack.WordAlloc.isSkip output5550 = false := by
  rw [output5550_def]
  conv => lhs; cbv
  try rfl
theorem node5550_eq : Flapjack.WordAlloc.removeDeadStructural input5550 value2780 value1 value2 = (output5550, value2781, value1) := by
  rw [input5550_def, output5550_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18725 Flapjack.WordStore.heapLength)).val
theorem input5551_def : input5551 = (Flapjack.WordLangProgHOL.get 18725 Flapjack.WordStore.heapLength) := by
  unfold input5551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18725 Flapjack.WordStore.heapLength)).val
theorem output5551_def : output5551 = (Flapjack.WordLangProgHOL.get 18725 Flapjack.WordStore.heapLength) := by
  unfold output5551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5551_skip : Flapjack.WordAlloc.isSkip output5551 = false := by
  rw [output5551_def]
  conv => lhs; cbv
  try rfl
theorem node5551_eq : Flapjack.WordAlloc.removeDeadStructural input5551 value2781 value1 value2 = (output5551, value5, value1) := by
  rw [input5551_def, output5551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5551 input5550)).val
theorem input5552_def : input5552 = (.seq input5551 input5550) := by
  unfold input5552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5551 output5550)).val
theorem output5552_def : output5552 = (.seq output5551 output5550) := by
  unfold output5552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5552_skip : Flapjack.WordAlloc.isSkip output5552 = false := by
  rw [output5552_def]
  conv => lhs; cbv
  try rfl
theorem node5552_eq : Flapjack.WordAlloc.removeDeadStructural input5552 value2780 value1 value2 = (output5552, value5, value1) := by
  rw [input5552_def, output5552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5550_eq]
  dsimp only
  rw [node5551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5552 input5549)).val
theorem input5553_def : input5553 = (.seq input5552 input5549) := by
  unfold input5553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5552 output5549)).val
theorem output5553_def : output5553 = (.seq output5552 output5549) := by
  unfold output5553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5553_skip : Flapjack.WordAlloc.isSkip output5553 = false := by
  rw [output5553_def]
  conv => lhs; cbv
  try rfl
theorem node5553_eq : Flapjack.WordAlloc.removeDeadStructural input5553 value2779 value1 value2 = (output5553, value5, value1) := by
  rw [input5553_def, output5553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5549_eq]
  dsimp only
  rw [node5552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5553 input5548)).val
theorem input5554_def : input5554 = (.seq input5553 input5548) := by
  unfold input5554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5553 output5548)).val
theorem output5554_def : output5554 = (.seq output5553 output5548) := by
  unfold output5554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5554_skip : Flapjack.WordAlloc.isSkip output5554 = false := by
  rw [output5554_def]
  conv => lhs; cbv
  try rfl
theorem node5554_eq : Flapjack.WordAlloc.removeDeadStructural input5554 value2778 value1 value2 = (output5554, value5, value1) := by
  rw [input5554_def, output5554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5548_eq]
  dsimp only
  rw [node5553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5554 input5547)).val
theorem input5555_def : input5555 = (.seq input5554 input5547) := by
  unfold input5555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5554 output5547)).val
theorem output5555_def : output5555 = (.seq output5554 output5547) := by
  unfold output5555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5555_skip : Flapjack.WordAlloc.isSkip output5555 = false := by
  rw [output5555_def]
  conv => lhs; cbv
  try rfl
theorem node5555_eq : Flapjack.WordAlloc.removeDeadStructural input5555 value2776 value1 value2 = (output5555, value5, value1) := by
  rw [input5555_def, output5555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5547_eq]
  dsimp only
  rw [node5554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2782 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18717 (Flapjack.WordLangAddr.addr 18721 0#64)))).val
theorem input5556_def : input5556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18717 (Flapjack.WordLangAddr.addr 18721 0#64))) := by
  unfold input5556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18717 (Flapjack.WordLangAddr.addr 18721 0#64)))).val
theorem output5556_def : output5556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18717 (Flapjack.WordLangAddr.addr 18721 0#64))) := by
  unfold output5556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5556_skip : Flapjack.WordAlloc.isSkip output5556 = false := by
  rw [output5556_def]
  conv => lhs; cbv
  try rfl
theorem node5556_eq : Flapjack.WordAlloc.removeDeadStructural input5556 value5 value1 value2 = (output5556, value2782, value1) := by
  rw [input5556_def, output5556_def]
  try (conv => lhs; cbv)
  try rfl

def value2783 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18721, 18709)])).val
theorem input5557_def : input5557 = (Flapjack.WordLangProgHOL.move 0 [(18721, 18709)]) := by
  unfold input5557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18721, 18709)])).val
theorem output5557_def : output5557 = (Flapjack.WordLangProgHOL.move 0 [(18721, 18709)]) := by
  unfold output5557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5557_skip : Flapjack.WordAlloc.isSkip output5557 = false := by
  rw [output5557_def]
  conv => lhs; cbv
  try rfl
theorem node5557_eq : Flapjack.WordAlloc.removeDeadStructural input5557 value2782 value1 value2 = (output5557, value2783, value1) := by
  rw [input5557_def, output5557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5557 input5556)).val
theorem input5558_def : input5558 = (.seq input5557 input5556) := by
  unfold input5558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5557 output5556)).val
theorem output5558_def : output5558 = (.seq output5557 output5556) := by
  unfold output5558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5558_skip : Flapjack.WordAlloc.isSkip output5558 = false := by
  rw [output5558_def]
  conv => lhs; cbv
  try rfl
theorem node5558_eq : Flapjack.WordAlloc.removeDeadStructural input5558 value5 value1 value2 = (output5558, value2783, value1) := by
  rw [input5558_def, output5558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5556_eq]
  dsimp only
  rw [node5557_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2784 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18717 2204988348113831372#64))).val
theorem input5559_def : input5559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18717 2204988348113831372#64)) := by
  unfold input5559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18717 2204988348113831372#64))).val
theorem output5559_def : output5559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18717 2204988348113831372#64)) := by
  unfold output5559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5559_skip : Flapjack.WordAlloc.isSkip output5559 = false := by
  rw [output5559_def]
  conv => lhs; cbv
  try rfl
theorem node5559_eq : Flapjack.WordAlloc.removeDeadStructural input5559 value2783 value1 value2 = (output5559, value2784, value1) := by
  rw [input5559_def, output5559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18713 2204988348113831372#64))).val
theorem input5560_def : input5560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18713 2204988348113831372#64)) := by
  unfold input5560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5560_def : output5560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5560_skip : Flapjack.WordAlloc.isSkip output5560 = true := by
  rw [output5560_def]
  conv => lhs; cbv
  try rfl
theorem node5560_eq : Flapjack.WordAlloc.removeDeadStructural input5560 value2784 value1 value2 = (output5560, value2784, value1) := by
  rw [input5560_def, output5560_def]
  try (conv => lhs; cbv)
  try rfl

def value2785 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18709 18701 (Flapjack.WordRegImm.reg 18705))))).val
theorem input5561_def : input5561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18709 18701 (Flapjack.WordRegImm.reg 18705)))) := by
  unfold input5561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18709 18701 (Flapjack.WordRegImm.reg 18705))))).val
theorem output5561_def : output5561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18709 18701 (Flapjack.WordRegImm.reg 18705)))) := by
  unfold output5561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5561_skip : Flapjack.WordAlloc.isSkip output5561 = false := by
  rw [output5561_def]
  conv => lhs; cbv
  try rfl
theorem node5561_eq : Flapjack.WordAlloc.removeDeadStructural input5561 value2784 value1 value2 = (output5561, value2785, value1) := by
  rw [input5561_def, output5561_def]
  try (conv => lhs; cbv)
  try rfl

def value2786 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18705 4352#64))).val
theorem input5562_def : input5562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18705 4352#64)) := by
  unfold input5562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18705 4352#64))).val
theorem output5562_def : output5562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18705 4352#64)) := by
  unfold output5562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5562_skip : Flapjack.WordAlloc.isSkip output5562 = false := by
  rw [output5562_def]
  conv => lhs; cbv
  try rfl
theorem node5562_eq : Flapjack.WordAlloc.removeDeadStructural input5562 value2785 value1 value2 = (output5562, value2786, value1) := by
  rw [input5562_def, output5562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5562 input5561)).val
theorem input5563_def : input5563 = (.seq input5562 input5561) := by
  unfold input5563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5562 output5561)).val
theorem output5563_def : output5563 = (.seq output5562 output5561) := by
  unfold output5563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5563_skip : Flapjack.WordAlloc.isSkip output5563 = false := by
  rw [output5563_def]
  conv => lhs; cbv
  try rfl
theorem node5563_eq : Flapjack.WordAlloc.removeDeadStructural input5563 value2784 value1 value2 = (output5563, value2786, value1) := by
  rw [input5563_def, output5563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5561_eq]
  dsimp only
  rw [node5562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2787 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18701 (Flapjack.WordLangAddr.addr 18697 18446744073709551104#64)))).val
theorem input5564_def : input5564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18701 (Flapjack.WordLangAddr.addr 18697 18446744073709551104#64))) := by
  unfold input5564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18701 (Flapjack.WordLangAddr.addr 18697 18446744073709551104#64)))).val
theorem output5564_def : output5564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18701 (Flapjack.WordLangAddr.addr 18697 18446744073709551104#64))) := by
  unfold output5564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5564_skip : Flapjack.WordAlloc.isSkip output5564 = false := by
  rw [output5564_def]
  conv => lhs; cbv
  try rfl
theorem node5564_eq : Flapjack.WordAlloc.removeDeadStructural input5564 value2786 value1 value2 = (output5564, value2787, value1) := by
  rw [input5564_def, output5564_def]
  try (conv => lhs; cbv)
  try rfl

def value2788 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18697 18693)).val
theorem input5565_def : input5565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18697 18693) := by
  unfold input5565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18697 18693)).val
theorem output5565_def : output5565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18697 18693) := by
  unfold output5565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5565_skip : Flapjack.WordAlloc.isSkip output5565 = false := by
  rw [output5565_def]
  conv => lhs; cbv
  try rfl
theorem node5565_eq : Flapjack.WordAlloc.removeDeadStructural input5565 value2787 value1 value2 = (output5565, value2788, value1) := by
  rw [input5565_def, output5565_def]
  try (conv => lhs; cbv)
  try rfl

def value2789 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18693 18689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5566_def : input5566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18693 18689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18693 18689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5566_def : output5566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18693 18689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5566_skip : Flapjack.WordAlloc.isSkip output5566 = false := by
  rw [output5566_def]
  conv => lhs; cbv
  try rfl
theorem node5566_eq : Flapjack.WordAlloc.removeDeadStructural input5566 value2788 value1 value2 = (output5566, value2789, value1) := by
  rw [input5566_def, output5566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18689 Flapjack.WordStore.heapLength)).val
theorem input5567_def : input5567 = (Flapjack.WordLangProgHOL.get 18689 Flapjack.WordStore.heapLength) := by
  unfold input5567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18689 Flapjack.WordStore.heapLength)).val
theorem output5567_def : output5567 = (Flapjack.WordLangProgHOL.get 18689 Flapjack.WordStore.heapLength) := by
  unfold output5567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5567_skip : Flapjack.WordAlloc.isSkip output5567 = false := by
  rw [output5567_def]
  conv => lhs; cbv
  try rfl
theorem node5567_eq : Flapjack.WordAlloc.removeDeadStructural input5567 value2789 value1 value2 = (output5567, value5, value1) := by
  rw [input5567_def, output5567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5567 input5566)).val
theorem input5568_def : input5568 = (.seq input5567 input5566) := by
  unfold input5568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5567 output5566)).val
theorem output5568_def : output5568 = (.seq output5567 output5566) := by
  unfold output5568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5568_skip : Flapjack.WordAlloc.isSkip output5568 = false := by
  rw [output5568_def]
  conv => lhs; cbv
  try rfl
theorem node5568_eq : Flapjack.WordAlloc.removeDeadStructural input5568 value2788 value1 value2 = (output5568, value5, value1) := by
  rw [input5568_def, output5568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5566_eq]
  dsimp only
  rw [node5567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5568 input5565)).val
theorem input5569_def : input5569 = (.seq input5568 input5565) := by
  unfold input5569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5568 output5565)).val
theorem output5569_def : output5569 = (.seq output5568 output5565) := by
  unfold output5569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5569_skip : Flapjack.WordAlloc.isSkip output5569 = false := by
  rw [output5569_def]
  conv => lhs; cbv
  try rfl
theorem node5569_eq : Flapjack.WordAlloc.removeDeadStructural input5569 value2787 value1 value2 = (output5569, value5, value1) := by
  rw [input5569_def, output5569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5565_eq]
  dsimp only
  rw [node5568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5569 input5564)).val
theorem input5570_def : input5570 = (.seq input5569 input5564) := by
  unfold input5570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5569 output5564)).val
theorem output5570_def : output5570 = (.seq output5569 output5564) := by
  unfold output5570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5570_skip : Flapjack.WordAlloc.isSkip output5570 = false := by
  rw [output5570_def]
  conv => lhs; cbv
  try rfl
theorem node5570_eq : Flapjack.WordAlloc.removeDeadStructural input5570 value2786 value1 value2 = (output5570, value5, value1) := by
  rw [input5570_def, output5570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5564_eq]
  dsimp only
  rw [node5569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5570 input5563)).val
theorem input5571_def : input5571 = (.seq input5570 input5563) := by
  unfold input5571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5570 output5563)).val
theorem output5571_def : output5571 = (.seq output5570 output5563) := by
  unfold output5571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5571_skip : Flapjack.WordAlloc.isSkip output5571 = false := by
  rw [output5571_def]
  conv => lhs; cbv
  try rfl
theorem node5571_eq : Flapjack.WordAlloc.removeDeadStructural input5571 value2784 value1 value2 = (output5571, value5, value1) := by
  rw [input5571_def, output5571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5563_eq]
  dsimp only
  rw [node5570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2790 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18681 (Flapjack.WordLangAddr.addr 18685 0#64)))).val
theorem input5572_def : input5572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18681 (Flapjack.WordLangAddr.addr 18685 0#64))) := by
  unfold input5572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18681 (Flapjack.WordLangAddr.addr 18685 0#64)))).val
theorem output5572_def : output5572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18681 (Flapjack.WordLangAddr.addr 18685 0#64))) := by
  unfold output5572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5572_skip : Flapjack.WordAlloc.isSkip output5572 = false := by
  rw [output5572_def]
  conv => lhs; cbv
  try rfl
theorem node5572_eq : Flapjack.WordAlloc.removeDeadStructural input5572 value5 value1 value2 = (output5572, value2790, value1) := by
  rw [input5572_def, output5572_def]
  try (conv => lhs; cbv)
  try rfl

def value2791 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18685, 18673)])).val
theorem input5573_def : input5573 = (Flapjack.WordLangProgHOL.move 0 [(18685, 18673)]) := by
  unfold input5573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18685, 18673)])).val
theorem output5573_def : output5573 = (Flapjack.WordLangProgHOL.move 0 [(18685, 18673)]) := by
  unfold output5573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5573_skip : Flapjack.WordAlloc.isSkip output5573 = false := by
  rw [output5573_def]
  conv => lhs; cbv
  try rfl
theorem node5573_eq : Flapjack.WordAlloc.removeDeadStructural input5573 value2790 value1 value2 = (output5573, value2791, value1) := by
  rw [input5573_def, output5573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5573 input5572)).val
theorem input5574_def : input5574 = (.seq input5573 input5572) := by
  unfold input5574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5573 output5572)).val
theorem output5574_def : output5574 = (.seq output5573 output5572) := by
  unfold output5574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5574_skip : Flapjack.WordAlloc.isSkip output5574 = false := by
  rw [output5574_def]
  conv => lhs; cbv
  try rfl
theorem node5574_eq : Flapjack.WordAlloc.removeDeadStructural input5574 value5 value1 value2 = (output5574, value2791, value1) := by
  rw [input5574_def, output5574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5572_eq]
  dsimp only
  rw [node5573_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2792 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18681 778202887894139711#64))).val
theorem input5575_def : input5575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18681 778202887894139711#64)) := by
  unfold input5575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18681 778202887894139711#64))).val
theorem output5575_def : output5575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18681 778202887894139711#64)) := by
  unfold output5575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5575_skip : Flapjack.WordAlloc.isSkip output5575 = false := by
  rw [output5575_def]
  conv => lhs; cbv
  try rfl
theorem node5575_eq : Flapjack.WordAlloc.removeDeadStructural input5575 value2791 value1 value2 = (output5575, value2792, value1) := by
  rw [input5575_def, output5575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18677 778202887894139711#64))).val
theorem input5576_def : input5576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18677 778202887894139711#64)) := by
  unfold input5576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5576_def : output5576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5576_skip : Flapjack.WordAlloc.isSkip output5576 = true := by
  rw [output5576_def]
  conv => lhs; cbv
  try rfl
theorem node5576_eq : Flapjack.WordAlloc.removeDeadStructural input5576 value2792 value1 value2 = (output5576, value2792, value1) := by
  rw [input5576_def, output5576_def]
  try (conv => lhs; cbv)
  try rfl

def value2793 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18673 18665 (Flapjack.WordRegImm.reg 18669))))).val
theorem input5577_def : input5577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18673 18665 (Flapjack.WordRegImm.reg 18669)))) := by
  unfold input5577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18673 18665 (Flapjack.WordRegImm.reg 18669))))).val
theorem output5577_def : output5577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18673 18665 (Flapjack.WordRegImm.reg 18669)))) := by
  unfold output5577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5577_skip : Flapjack.WordAlloc.isSkip output5577 = false := by
  rw [output5577_def]
  conv => lhs; cbv
  try rfl
theorem node5577_eq : Flapjack.WordAlloc.removeDeadStructural input5577 value2792 value1 value2 = (output5577, value2793, value1) := by
  rw [input5577_def, output5577_def]
  try (conv => lhs; cbv)
  try rfl

def value2794 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18669 4344#64))).val
theorem input5578_def : input5578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18669 4344#64)) := by
  unfold input5578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18669 4344#64))).val
theorem output5578_def : output5578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18669 4344#64)) := by
  unfold output5578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5578_skip : Flapjack.WordAlloc.isSkip output5578 = false := by
  rw [output5578_def]
  conv => lhs; cbv
  try rfl
theorem node5578_eq : Flapjack.WordAlloc.removeDeadStructural input5578 value2793 value1 value2 = (output5578, value2794, value1) := by
  rw [input5578_def, output5578_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5578 input5577)).val
theorem input5579_def : input5579 = (.seq input5578 input5577) := by
  unfold input5579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5578 output5577)).val
theorem output5579_def : output5579 = (.seq output5578 output5577) := by
  unfold output5579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5579_skip : Flapjack.WordAlloc.isSkip output5579 = false := by
  rw [output5579_def]
  conv => lhs; cbv
  try rfl
theorem node5579_eq : Flapjack.WordAlloc.removeDeadStructural input5579 value2792 value1 value2 = (output5579, value2794, value1) := by
  rw [input5579_def, output5579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5577_eq]
  dsimp only
  rw [node5578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2795 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18665 (Flapjack.WordLangAddr.addr 18661 18446744073709551104#64)))).val
theorem input5580_def : input5580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18665 (Flapjack.WordLangAddr.addr 18661 18446744073709551104#64))) := by
  unfold input5580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18665 (Flapjack.WordLangAddr.addr 18661 18446744073709551104#64)))).val
theorem output5580_def : output5580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18665 (Flapjack.WordLangAddr.addr 18661 18446744073709551104#64))) := by
  unfold output5580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5580_skip : Flapjack.WordAlloc.isSkip output5580 = false := by
  rw [output5580_def]
  conv => lhs; cbv
  try rfl
theorem node5580_eq : Flapjack.WordAlloc.removeDeadStructural input5580 value2794 value1 value2 = (output5580, value2795, value1) := by
  rw [input5580_def, output5580_def]
  try (conv => lhs; cbv)
  try rfl

def value2796 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18661 18657)).val
theorem input5581_def : input5581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18661 18657) := by
  unfold input5581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18661 18657)).val
theorem output5581_def : output5581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18661 18657) := by
  unfold output5581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5581_skip : Flapjack.WordAlloc.isSkip output5581 = false := by
  rw [output5581_def]
  conv => lhs; cbv
  try rfl
theorem node5581_eq : Flapjack.WordAlloc.removeDeadStructural input5581 value2795 value1 value2 = (output5581, value2796, value1) := by
  rw [input5581_def, output5581_def]
  try (conv => lhs; cbv)
  try rfl

def value2797 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18657 18653 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5582_def : input5582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18657 18653 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18657 18653 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5582_def : output5582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18657 18653 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5582_skip : Flapjack.WordAlloc.isSkip output5582 = false := by
  rw [output5582_def]
  conv => lhs; cbv
  try rfl
theorem node5582_eq : Flapjack.WordAlloc.removeDeadStructural input5582 value2796 value1 value2 = (output5582, value2797, value1) := by
  rw [input5582_def, output5582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18653 Flapjack.WordStore.heapLength)).val
theorem input5583_def : input5583 = (Flapjack.WordLangProgHOL.get 18653 Flapjack.WordStore.heapLength) := by
  unfold input5583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18653 Flapjack.WordStore.heapLength)).val
theorem output5583_def : output5583 = (Flapjack.WordLangProgHOL.get 18653 Flapjack.WordStore.heapLength) := by
  unfold output5583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5583_skip : Flapjack.WordAlloc.isSkip output5583 = false := by
  rw [output5583_def]
  conv => lhs; cbv
  try rfl
theorem node5583_eq : Flapjack.WordAlloc.removeDeadStructural input5583 value2797 value1 value2 = (output5583, value5, value1) := by
  rw [input5583_def, output5583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5583 input5582)).val
theorem input5584_def : input5584 = (.seq input5583 input5582) := by
  unfold input5584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5583 output5582)).val
theorem output5584_def : output5584 = (.seq output5583 output5582) := by
  unfold output5584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5584_skip : Flapjack.WordAlloc.isSkip output5584 = false := by
  rw [output5584_def]
  conv => lhs; cbv
  try rfl
theorem node5584_eq : Flapjack.WordAlloc.removeDeadStructural input5584 value2796 value1 value2 = (output5584, value5, value1) := by
  rw [input5584_def, output5584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5582_eq]
  dsimp only
  rw [node5583_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5584 input5581)).val
theorem input5585_def : input5585 = (.seq input5584 input5581) := by
  unfold input5585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5584 output5581)).val
theorem output5585_def : output5585 = (.seq output5584 output5581) := by
  unfold output5585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5585_skip : Flapjack.WordAlloc.isSkip output5585 = false := by
  rw [output5585_def]
  conv => lhs; cbv
  try rfl
theorem node5585_eq : Flapjack.WordAlloc.removeDeadStructural input5585 value2795 value1 value2 = (output5585, value5, value1) := by
  rw [input5585_def, output5585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5581_eq]
  dsimp only
  rw [node5584_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5585 input5580)).val
theorem input5586_def : input5586 = (.seq input5585 input5580) := by
  unfold input5586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5585 output5580)).val
theorem output5586_def : output5586 = (.seq output5585 output5580) := by
  unfold output5586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5586_skip : Flapjack.WordAlloc.isSkip output5586 = false := by
  rw [output5586_def]
  conv => lhs; cbv
  try rfl
theorem node5586_eq : Flapjack.WordAlloc.removeDeadStructural input5586 value2794 value1 value2 = (output5586, value5, value1) := by
  rw [input5586_def, output5586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5580_eq]
  dsimp only
  rw [node5585_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5586 input5579)).val
theorem input5587_def : input5587 = (.seq input5586 input5579) := by
  unfold input5587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5586 output5579)).val
theorem output5587_def : output5587 = (.seq output5586 output5579) := by
  unfold output5587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5587_skip : Flapjack.WordAlloc.isSkip output5587 = false := by
  rw [output5587_def]
  conv => lhs; cbv
  try rfl
theorem node5587_eq : Flapjack.WordAlloc.removeDeadStructural input5587 value2792 value1 value2 = (output5587, value5, value1) := by
  rw [input5587_def, output5587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5579_eq]
  dsimp only
  rw [node5586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2798 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18645 (Flapjack.WordLangAddr.addr 18649 0#64)))).val
theorem input5588_def : input5588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18645 (Flapjack.WordLangAddr.addr 18649 0#64))) := by
  unfold input5588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18645 (Flapjack.WordLangAddr.addr 18649 0#64)))).val
theorem output5588_def : output5588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18645 (Flapjack.WordLangAddr.addr 18649 0#64))) := by
  unfold output5588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5588_skip : Flapjack.WordAlloc.isSkip output5588 = false := by
  rw [output5588_def]
  conv => lhs; cbv
  try rfl
theorem node5588_eq : Flapjack.WordAlloc.removeDeadStructural input5588 value5 value1 value2 = (output5588, value2798, value1) := by
  rw [input5588_def, output5588_def]
  try (conv => lhs; cbv)
  try rfl

def value2799 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18649, 18637)])).val
theorem input5589_def : input5589 = (Flapjack.WordLangProgHOL.move 0 [(18649, 18637)]) := by
  unfold input5589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18649, 18637)])).val
theorem output5589_def : output5589 = (Flapjack.WordLangProgHOL.move 0 [(18649, 18637)]) := by
  unfold output5589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5589_skip : Flapjack.WordAlloc.isSkip output5589 = false := by
  rw [output5589_def]
  conv => lhs; cbv
  try rfl
theorem node5589_eq : Flapjack.WordAlloc.removeDeadStructural input5589 value2798 value1 value2 = (output5589, value2799, value1) := by
  rw [input5589_def, output5589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5589 input5588)).val
theorem input5590_def : input5590 = (.seq input5589 input5588) := by
  unfold input5590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5589 output5588)).val
theorem output5590_def : output5590 = (.seq output5589 output5588) := by
  unfold output5590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5590_skip : Flapjack.WordAlloc.isSkip output5590 = false := by
  rw [output5590_def]
  conv => lhs; cbv
  try rfl
theorem node5590_eq : Flapjack.WordAlloc.removeDeadStructural input5590 value5 value1 value2 = (output5590, value2799, value1) := by
  rw [input5590_def, output5590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5588_eq]
  dsimp only
  rw [node5589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2800 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18645 17691595219776375879#64))).val
theorem input5591_def : input5591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18645 17691595219776375879#64)) := by
  unfold input5591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18645 17691595219776375879#64))).val
theorem output5591_def : output5591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18645 17691595219776375879#64)) := by
  unfold output5591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5591_skip : Flapjack.WordAlloc.isSkip output5591 = false := by
  rw [output5591_def]
  conv => lhs; cbv
  try rfl
theorem node5591_eq : Flapjack.WordAlloc.removeDeadStructural input5591 value2799 value1 value2 = (output5591, value2800, value1) := by
  rw [input5591_def, output5591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18641 17691595219776375879#64))).val
theorem input5592_def : input5592 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18641 17691595219776375879#64)) := by
  unfold input5592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5592_def : output5592 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5592_skip : Flapjack.WordAlloc.isSkip output5592 = true := by
  rw [output5592_def]
  conv => lhs; cbv
  try rfl
theorem node5592_eq : Flapjack.WordAlloc.removeDeadStructural input5592 value2800 value1 value2 = (output5592, value2800, value1) := by
  rw [input5592_def, output5592_def]
  try (conv => lhs; cbv)
  try rfl

def value2801 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18637 18629 (Flapjack.WordRegImm.reg 18633))))).val
theorem input5593_def : input5593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18637 18629 (Flapjack.WordRegImm.reg 18633)))) := by
  unfold input5593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18637 18629 (Flapjack.WordRegImm.reg 18633))))).val
theorem output5593_def : output5593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18637 18629 (Flapjack.WordRegImm.reg 18633)))) := by
  unfold output5593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5593_skip : Flapjack.WordAlloc.isSkip output5593 = false := by
  rw [output5593_def]
  conv => lhs; cbv
  try rfl
theorem node5593_eq : Flapjack.WordAlloc.removeDeadStructural input5593 value2800 value1 value2 = (output5593, value2801, value1) := by
  rw [input5593_def, output5593_def]
  try (conv => lhs; cbv)
  try rfl

def value2802 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18633 4336#64))).val
theorem input5594_def : input5594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18633 4336#64)) := by
  unfold input5594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18633 4336#64))).val
theorem output5594_def : output5594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18633 4336#64)) := by
  unfold output5594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5594_skip : Flapjack.WordAlloc.isSkip output5594 = false := by
  rw [output5594_def]
  conv => lhs; cbv
  try rfl
theorem node5594_eq : Flapjack.WordAlloc.removeDeadStructural input5594 value2801 value1 value2 = (output5594, value2802, value1) := by
  rw [input5594_def, output5594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5594 input5593)).val
theorem input5595_def : input5595 = (.seq input5594 input5593) := by
  unfold input5595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5594 output5593)).val
theorem output5595_def : output5595 = (.seq output5594 output5593) := by
  unfold output5595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5595_skip : Flapjack.WordAlloc.isSkip output5595 = false := by
  rw [output5595_def]
  conv => lhs; cbv
  try rfl
theorem node5595_eq : Flapjack.WordAlloc.removeDeadStructural input5595 value2800 value1 value2 = (output5595, value2802, value1) := by
  rw [input5595_def, output5595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5593_eq]
  dsimp only
  rw [node5594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2803 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18629 (Flapjack.WordLangAddr.addr 18625 18446744073709551104#64)))).val
theorem input5596_def : input5596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18629 (Flapjack.WordLangAddr.addr 18625 18446744073709551104#64))) := by
  unfold input5596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18629 (Flapjack.WordLangAddr.addr 18625 18446744073709551104#64)))).val
theorem output5596_def : output5596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18629 (Flapjack.WordLangAddr.addr 18625 18446744073709551104#64))) := by
  unfold output5596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5596_skip : Flapjack.WordAlloc.isSkip output5596 = false := by
  rw [output5596_def]
  conv => lhs; cbv
  try rfl
theorem node5596_eq : Flapjack.WordAlloc.removeDeadStructural input5596 value2802 value1 value2 = (output5596, value2803, value1) := by
  rw [input5596_def, output5596_def]
  try (conv => lhs; cbv)
  try rfl

def value2804 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18625 18621)).val
theorem input5597_def : input5597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18625 18621) := by
  unfold input5597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18625 18621)).val
theorem output5597_def : output5597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18625 18621) := by
  unfold output5597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5597_skip : Flapjack.WordAlloc.isSkip output5597 = false := by
  rw [output5597_def]
  conv => lhs; cbv
  try rfl
theorem node5597_eq : Flapjack.WordAlloc.removeDeadStructural input5597 value2803 value1 value2 = (output5597, value2804, value1) := by
  rw [input5597_def, output5597_def]
  try (conv => lhs; cbv)
  try rfl

def value2805 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18621 18617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5598_def : input5598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18621 18617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18621 18617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5598_def : output5598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18621 18617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5598_skip : Flapjack.WordAlloc.isSkip output5598 = false := by
  rw [output5598_def]
  conv => lhs; cbv
  try rfl
theorem node5598_eq : Flapjack.WordAlloc.removeDeadStructural input5598 value2804 value1 value2 = (output5598, value2805, value1) := by
  rw [input5598_def, output5598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18617 Flapjack.WordStore.heapLength)).val
theorem input5599_def : input5599 = (Flapjack.WordLangProgHOL.get 18617 Flapjack.WordStore.heapLength) := by
  unfold input5599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18617 Flapjack.WordStore.heapLength)).val
theorem output5599_def : output5599 = (Flapjack.WordLangProgHOL.get 18617 Flapjack.WordStore.heapLength) := by
  unfold output5599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5599_skip : Flapjack.WordAlloc.isSkip output5599 = false := by
  rw [output5599_def]
  conv => lhs; cbv
  try rfl
theorem node5599_eq : Flapjack.WordAlloc.removeDeadStructural input5599 value2805 value1 value2 = (output5599, value5, value1) := by
  rw [input5599_def, output5599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5599 input5598)).val
theorem input5600_def : input5600 = (.seq input5599 input5598) := by
  unfold input5600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5599 output5598)).val
theorem output5600_def : output5600 = (.seq output5599 output5598) := by
  unfold output5600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5600_skip : Flapjack.WordAlloc.isSkip output5600 = false := by
  rw [output5600_def]
  conv => lhs; cbv
  try rfl
theorem node5600_eq : Flapjack.WordAlloc.removeDeadStructural input5600 value2804 value1 value2 = (output5600, value5, value1) := by
  rw [input5600_def, output5600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5598_eq]
  dsimp only
  rw [node5599_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5600 input5597)).val
theorem input5601_def : input5601 = (.seq input5600 input5597) := by
  unfold input5601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5600 output5597)).val
theorem output5601_def : output5601 = (.seq output5600 output5597) := by
  unfold output5601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5601_skip : Flapjack.WordAlloc.isSkip output5601 = false := by
  rw [output5601_def]
  conv => lhs; cbv
  try rfl
theorem node5601_eq : Flapjack.WordAlloc.removeDeadStructural input5601 value2803 value1 value2 = (output5601, value5, value1) := by
  rw [input5601_def, output5601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5597_eq]
  dsimp only
  rw [node5600_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5601 input5596)).val
theorem input5602_def : input5602 = (.seq input5601 input5596) := by
  unfold input5602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5601 output5596)).val
theorem output5602_def : output5602 = (.seq output5601 output5596) := by
  unfold output5602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5602_skip : Flapjack.WordAlloc.isSkip output5602 = false := by
  rw [output5602_def]
  conv => lhs; cbv
  try rfl
theorem node5602_eq : Flapjack.WordAlloc.removeDeadStructural input5602 value2802 value1 value2 = (output5602, value5, value1) := by
  rw [input5602_def, output5602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5596_eq]
  dsimp only
  rw [node5601_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5602 input5595)).val
theorem input5603_def : input5603 = (.seq input5602 input5595) := by
  unfold input5603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5602 output5595)).val
theorem output5603_def : output5603 = (.seq output5602 output5595) := by
  unfold output5603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5603_skip : Flapjack.WordAlloc.isSkip output5603 = false := by
  rw [output5603_def]
  conv => lhs; cbv
  try rfl
theorem node5603_eq : Flapjack.WordAlloc.removeDeadStructural input5603 value2800 value1 value2 = (output5603, value5, value1) := by
  rw [input5603_def, output5603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5595_eq]
  dsimp only
  rw [node5602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2806 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18609 (Flapjack.WordLangAddr.addr 18613 0#64)))).val
theorem input5604_def : input5604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18609 (Flapjack.WordLangAddr.addr 18613 0#64))) := by
  unfold input5604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18609 (Flapjack.WordLangAddr.addr 18613 0#64)))).val
theorem output5604_def : output5604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18609 (Flapjack.WordLangAddr.addr 18613 0#64))) := by
  unfold output5604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5604_skip : Flapjack.WordAlloc.isSkip output5604 = false := by
  rw [output5604_def]
  conv => lhs; cbv
  try rfl
theorem node5604_eq : Flapjack.WordAlloc.removeDeadStructural input5604 value5 value1 value2 = (output5604, value2806, value1) := by
  rw [input5604_def, output5604_def]
  try (conv => lhs; cbv)
  try rfl

def value2807 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18613, 18601)])).val
theorem input5605_def : input5605 = (Flapjack.WordLangProgHOL.move 0 [(18613, 18601)]) := by
  unfold input5605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18613, 18601)])).val
theorem output5605_def : output5605 = (Flapjack.WordLangProgHOL.move 0 [(18613, 18601)]) := by
  unfold output5605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5605_skip : Flapjack.WordAlloc.isSkip output5605 = false := by
  rw [output5605_def]
  conv => lhs; cbv
  try rfl
theorem node5605_eq : Flapjack.WordAlloc.removeDeadStructural input5605 value2806 value1 value2 = (output5605, value2807, value1) := by
  rw [input5605_def, output5605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5605 input5604)).val
theorem input5606_def : input5606 = (.seq input5605 input5604) := by
  unfold input5606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5605 output5604)).val
theorem output5606_def : output5606 = (.seq output5605 output5604) := by
  unfold output5606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5606_skip : Flapjack.WordAlloc.isSkip output5606 = false := by
  rw [output5606_def]
  conv => lhs; cbv
  try rfl
theorem node5606_eq : Flapjack.WordAlloc.removeDeadStructural input5606 value5 value1 value2 = (output5606, value2807, value1) := by
  rw [input5606_def, output5606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5604_eq]
  dsimp only
  rw [node5605_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2808 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18609 9193253711563866834#64))).val
theorem input5607_def : input5607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18609 9193253711563866834#64)) := by
  unfold input5607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18609 9193253711563866834#64))).val
theorem output5607_def : output5607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18609 9193253711563866834#64)) := by
  unfold output5607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5607_skip : Flapjack.WordAlloc.isSkip output5607 = false := by
  rw [output5607_def]
  conv => lhs; cbv
  try rfl
theorem node5607_eq : Flapjack.WordAlloc.removeDeadStructural input5607 value2807 value1 value2 = (output5607, value2808, value1) := by
  rw [input5607_def, output5607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18605 9193253711563866834#64))).val
theorem input5608_def : input5608 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18605 9193253711563866834#64)) := by
  unfold input5608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5608_def : output5608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5608_skip : Flapjack.WordAlloc.isSkip output5608 = true := by
  rw [output5608_def]
  conv => lhs; cbv
  try rfl
theorem node5608_eq : Flapjack.WordAlloc.removeDeadStructural input5608 value2808 value1 value2 = (output5608, value2808, value1) := by
  rw [input5608_def, output5608_def]
  try (conv => lhs; cbv)
  try rfl

def value2809 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18601 18593 (Flapjack.WordRegImm.reg 18597))))).val
theorem input5609_def : input5609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18601 18593 (Flapjack.WordRegImm.reg 18597)))) := by
  unfold input5609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18601 18593 (Flapjack.WordRegImm.reg 18597))))).val
theorem output5609_def : output5609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18601 18593 (Flapjack.WordRegImm.reg 18597)))) := by
  unfold output5609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5609_skip : Flapjack.WordAlloc.isSkip output5609 = false := by
  rw [output5609_def]
  conv => lhs; cbv
  try rfl
theorem node5609_eq : Flapjack.WordAlloc.removeDeadStructural input5609 value2808 value1 value2 = (output5609, value2809, value1) := by
  rw [input5609_def, output5609_def]
  try (conv => lhs; cbv)
  try rfl

def value2810 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18597 4328#64))).val
theorem input5610_def : input5610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18597 4328#64)) := by
  unfold input5610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18597 4328#64))).val
theorem output5610_def : output5610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18597 4328#64)) := by
  unfold output5610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5610_skip : Flapjack.WordAlloc.isSkip output5610 = false := by
  rw [output5610_def]
  conv => lhs; cbv
  try rfl
theorem node5610_eq : Flapjack.WordAlloc.removeDeadStructural input5610 value2809 value1 value2 = (output5610, value2810, value1) := by
  rw [input5610_def, output5610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5610 input5609)).val
theorem input5611_def : input5611 = (.seq input5610 input5609) := by
  unfold input5611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5610 output5609)).val
theorem output5611_def : output5611 = (.seq output5610 output5609) := by
  unfold output5611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5611_skip : Flapjack.WordAlloc.isSkip output5611 = false := by
  rw [output5611_def]
  conv => lhs; cbv
  try rfl
theorem node5611_eq : Flapjack.WordAlloc.removeDeadStructural input5611 value2808 value1 value2 = (output5611, value2810, value1) := by
  rw [input5611_def, output5611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5609_eq]
  dsimp only
  rw [node5610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2811 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18593 (Flapjack.WordLangAddr.addr 18589 18446744073709551104#64)))).val
theorem input5612_def : input5612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18593 (Flapjack.WordLangAddr.addr 18589 18446744073709551104#64))) := by
  unfold input5612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18593 (Flapjack.WordLangAddr.addr 18589 18446744073709551104#64)))).val
theorem output5612_def : output5612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18593 (Flapjack.WordLangAddr.addr 18589 18446744073709551104#64))) := by
  unfold output5612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5612_skip : Flapjack.WordAlloc.isSkip output5612 = false := by
  rw [output5612_def]
  conv => lhs; cbv
  try rfl
theorem node5612_eq : Flapjack.WordAlloc.removeDeadStructural input5612 value2810 value1 value2 = (output5612, value2811, value1) := by
  rw [input5612_def, output5612_def]
  try (conv => lhs; cbv)
  try rfl

def value2812 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18589 18585)).val
theorem input5613_def : input5613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18589 18585) := by
  unfold input5613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18589 18585)).val
theorem output5613_def : output5613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18589 18585) := by
  unfold output5613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5613_skip : Flapjack.WordAlloc.isSkip output5613 = false := by
  rw [output5613_def]
  conv => lhs; cbv
  try rfl
theorem node5613_eq : Flapjack.WordAlloc.removeDeadStructural input5613 value2811 value1 value2 = (output5613, value2812, value1) := by
  rw [input5613_def, output5613_def]
  try (conv => lhs; cbv)
  try rfl

def value2813 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18585 18581 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5614_def : input5614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18585 18581 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18585 18581 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5614_def : output5614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18585 18581 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5614_skip : Flapjack.WordAlloc.isSkip output5614 = false := by
  rw [output5614_def]
  conv => lhs; cbv
  try rfl
theorem node5614_eq : Flapjack.WordAlloc.removeDeadStructural input5614 value2812 value1 value2 = (output5614, value2813, value1) := by
  rw [input5614_def, output5614_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18581 Flapjack.WordStore.heapLength)).val
theorem input5615_def : input5615 = (Flapjack.WordLangProgHOL.get 18581 Flapjack.WordStore.heapLength) := by
  unfold input5615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18581 Flapjack.WordStore.heapLength)).val
theorem output5615_def : output5615 = (Flapjack.WordLangProgHOL.get 18581 Flapjack.WordStore.heapLength) := by
  unfold output5615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5615_skip : Flapjack.WordAlloc.isSkip output5615 = false := by
  rw [output5615_def]
  conv => lhs; cbv
  try rfl
theorem node5615_eq : Flapjack.WordAlloc.removeDeadStructural input5615 value2813 value1 value2 = (output5615, value5, value1) := by
  rw [input5615_def, output5615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5615 input5614)).val
theorem input5616_def : input5616 = (.seq input5615 input5614) := by
  unfold input5616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5615 output5614)).val
theorem output5616_def : output5616 = (.seq output5615 output5614) := by
  unfold output5616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5616_skip : Flapjack.WordAlloc.isSkip output5616 = false := by
  rw [output5616_def]
  conv => lhs; cbv
  try rfl
theorem node5616_eq : Flapjack.WordAlloc.removeDeadStructural input5616 value2812 value1 value2 = (output5616, value5, value1) := by
  rw [input5616_def, output5616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5614_eq]
  dsimp only
  rw [node5615_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5616 input5613)).val
theorem input5617_def : input5617 = (.seq input5616 input5613) := by
  unfold input5617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5616 output5613)).val
theorem output5617_def : output5617 = (.seq output5616 output5613) := by
  unfold output5617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5617_skip : Flapjack.WordAlloc.isSkip output5617 = false := by
  rw [output5617_def]
  conv => lhs; cbv
  try rfl
theorem node5617_eq : Flapjack.WordAlloc.removeDeadStructural input5617 value2811 value1 value2 = (output5617, value5, value1) := by
  rw [input5617_def, output5617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5613_eq]
  dsimp only
  rw [node5616_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5617 input5612)).val
theorem input5618_def : input5618 = (.seq input5617 input5612) := by
  unfold input5618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5617 output5612)).val
theorem output5618_def : output5618 = (.seq output5617 output5612) := by
  unfold output5618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5618_skip : Flapjack.WordAlloc.isSkip output5618 = false := by
  rw [output5618_def]
  conv => lhs; cbv
  try rfl
theorem node5618_eq : Flapjack.WordAlloc.removeDeadStructural input5618 value2810 value1 value2 = (output5618, value5, value1) := by
  rw [input5618_def, output5618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5612_eq]
  dsimp only
  rw [node5617_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5618 input5611)).val
theorem input5619_def : input5619 = (.seq input5618 input5611) := by
  unfold input5619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5618 output5611)).val
theorem output5619_def : output5619 = (.seq output5618 output5611) := by
  unfold output5619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5619_skip : Flapjack.WordAlloc.isSkip output5619 = false := by
  rw [output5619_def]
  conv => lhs; cbv
  try rfl
theorem node5619_eq : Flapjack.WordAlloc.removeDeadStructural input5619 value2808 value1 value2 = (output5619, value5, value1) := by
  rw [input5619_def, output5619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5611_eq]
  dsimp only
  rw [node5618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2814 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18573 (Flapjack.WordLangAddr.addr 18577 0#64)))).val
theorem input5620_def : input5620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18573 (Flapjack.WordLangAddr.addr 18577 0#64))) := by
  unfold input5620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18573 (Flapjack.WordLangAddr.addr 18577 0#64)))).val
theorem output5620_def : output5620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18573 (Flapjack.WordLangAddr.addr 18577 0#64))) := by
  unfold output5620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5620_skip : Flapjack.WordAlloc.isSkip output5620 = false := by
  rw [output5620_def]
  conv => lhs; cbv
  try rfl
theorem node5620_eq : Flapjack.WordAlloc.removeDeadStructural input5620 value5 value1 value2 = (output5620, value2814, value1) := by
  rw [input5620_def, output5620_def]
  try (conv => lhs; cbv)
  try rfl

def value2815 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18577, 18565)])).val
theorem input5621_def : input5621 = (Flapjack.WordLangProgHOL.move 0 [(18577, 18565)]) := by
  unfold input5621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(18577, 18565)])).val
theorem output5621_def : output5621 = (Flapjack.WordLangProgHOL.move 0 [(18577, 18565)]) := by
  unfold output5621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5621_skip : Flapjack.WordAlloc.isSkip output5621 = false := by
  rw [output5621_def]
  conv => lhs; cbv
  try rfl
theorem node5621_eq : Flapjack.WordAlloc.removeDeadStructural input5621 value2814 value1 value2 = (output5621, value2815, value1) := by
  rw [input5621_def, output5621_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5621 input5620)).val
theorem input5622_def : input5622 = (.seq input5621 input5620) := by
  unfold input5622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5621 output5620)).val
theorem output5622_def : output5622 = (.seq output5621 output5620) := by
  unfold output5622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5622_skip : Flapjack.WordAlloc.isSkip output5622 = false := by
  rw [output5622_def]
  conv => lhs; cbv
  try rfl
theorem node5622_eq : Flapjack.WordAlloc.removeDeadStructural input5622 value5 value1 value2 = (output5622, value2815, value1) := by
  rw [input5622_def, output5622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5620_eq]
  dsimp only
  rw [node5621_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2816 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18573 10092455202333888821#64))).val
theorem input5623_def : input5623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18573 10092455202333888821#64)) := by
  unfold input5623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18573 10092455202333888821#64))).val
theorem output5623_def : output5623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18573 10092455202333888821#64)) := by
  unfold output5623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5623_skip : Flapjack.WordAlloc.isSkip output5623 = false := by
  rw [output5623_def]
  conv => lhs; cbv
  try rfl
theorem node5623_eq : Flapjack.WordAlloc.removeDeadStructural input5623 value2815 value1 value2 = (output5623, value2816, value1) := by
  rw [input5623_def, output5623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18569 10092455202333888821#64))).val
theorem input5624_def : input5624 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18569 10092455202333888821#64)) := by
  unfold input5624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5624_def : output5624 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5624_skip : Flapjack.WordAlloc.isSkip output5624 = true := by
  rw [output5624_def]
  conv => lhs; cbv
  try rfl
theorem node5624_eq : Flapjack.WordAlloc.removeDeadStructural input5624 value2816 value1 value2 = (output5624, value2816, value1) := by
  rw [input5624_def, output5624_def]
  try (conv => lhs; cbv)
  try rfl

def value2817 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18565 18557 (Flapjack.WordRegImm.reg 18561))))).val
theorem input5625_def : input5625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18565 18557 (Flapjack.WordRegImm.reg 18561)))) := by
  unfold input5625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18565 18557 (Flapjack.WordRegImm.reg 18561))))).val
theorem output5625_def : output5625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18565 18557 (Flapjack.WordRegImm.reg 18561)))) := by
  unfold output5625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5625_skip : Flapjack.WordAlloc.isSkip output5625 = false := by
  rw [output5625_def]
  conv => lhs; cbv
  try rfl
theorem node5625_eq : Flapjack.WordAlloc.removeDeadStructural input5625 value2816 value1 value2 = (output5625, value2817, value1) := by
  rw [input5625_def, output5625_def]
  try (conv => lhs; cbv)
  try rfl

def value2818 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18561 4320#64))).val
theorem input5626_def : input5626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18561 4320#64)) := by
  unfold input5626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18561 4320#64))).val
theorem output5626_def : output5626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18561 4320#64)) := by
  unfold output5626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5626_skip : Flapjack.WordAlloc.isSkip output5626 = false := by
  rw [output5626_def]
  conv => lhs; cbv
  try rfl
theorem node5626_eq : Flapjack.WordAlloc.removeDeadStructural input5626 value2817 value1 value2 = (output5626, value2818, value1) := by
  rw [input5626_def, output5626_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5626 input5625)).val
theorem input5627_def : input5627 = (.seq input5626 input5625) := by
  unfold input5627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5626 output5625)).val
theorem output5627_def : output5627 = (.seq output5626 output5625) := by
  unfold output5627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5627_skip : Flapjack.WordAlloc.isSkip output5627 = false := by
  rw [output5627_def]
  conv => lhs; cbv
  try rfl
theorem node5627_eq : Flapjack.WordAlloc.removeDeadStructural input5627 value2816 value1 value2 = (output5627, value2818, value1) := by
  rw [input5627_def, output5627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5625_eq]
  dsimp only
  rw [node5626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2819 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18557 (Flapjack.WordLangAddr.addr 18553 18446744073709551104#64)))).val
theorem input5628_def : input5628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18557 (Flapjack.WordLangAddr.addr 18553 18446744073709551104#64))) := by
  unfold input5628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18557 (Flapjack.WordLangAddr.addr 18553 18446744073709551104#64)))).val
theorem output5628_def : output5628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18557 (Flapjack.WordLangAddr.addr 18553 18446744073709551104#64))) := by
  unfold output5628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5628_skip : Flapjack.WordAlloc.isSkip output5628 = false := by
  rw [output5628_def]
  conv => lhs; cbv
  try rfl
theorem node5628_eq : Flapjack.WordAlloc.removeDeadStructural input5628 value2818 value1 value2 = (output5628, value2819, value1) := by
  rw [input5628_def, output5628_def]
  try (conv => lhs; cbv)
  try rfl

def value2820 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18553 18549)).val
theorem input5629_def : input5629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18553 18549) := by
  unfold input5629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18553 18549)).val
theorem output5629_def : output5629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18553 18549) := by
  unfold output5629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5629_skip : Flapjack.WordAlloc.isSkip output5629 = false := by
  rw [output5629_def]
  conv => lhs; cbv
  try rfl
theorem node5629_eq : Flapjack.WordAlloc.removeDeadStructural input5629 value2819 value1 value2 = (output5629, value2820, value1) := by
  rw [input5629_def, output5629_def]
  try (conv => lhs; cbv)
  try rfl

def value2821 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18549 18545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5630_def : input5630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18549 18545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18549 18545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5630_def : output5630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18549 18545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5630_skip : Flapjack.WordAlloc.isSkip output5630 = false := by
  rw [output5630_def]
  conv => lhs; cbv
  try rfl
theorem node5630_eq : Flapjack.WordAlloc.removeDeadStructural input5630 value2820 value1 value2 = (output5630, value2821, value1) := by
  rw [input5630_def, output5630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18545 Flapjack.WordStore.heapLength)).val
theorem input5631_def : input5631 = (Flapjack.WordLangProgHOL.get 18545 Flapjack.WordStore.heapLength) := by
  unfold input5631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 18545 Flapjack.WordStore.heapLength)).val
theorem output5631_def : output5631 = (Flapjack.WordLangProgHOL.get 18545 Flapjack.WordStore.heapLength) := by
  unfold output5631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5631_skip : Flapjack.WordAlloc.isSkip output5631 = false := by
  rw [output5631_def]
  conv => lhs; cbv
  try rfl
theorem node5631_eq : Flapjack.WordAlloc.removeDeadStructural input5631 value2821 value1 value2 = (output5631, value5, value1) := by
  rw [input5631_def, output5631_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node5631_eq
end InitECandidate.Proofs.DeadStages713
