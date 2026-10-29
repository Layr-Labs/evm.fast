import InitECandidate.Proofs.DeadStages713.Chunk012
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input3328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3327 input3326)).val
theorem input3328_def : input3328 = (.seq input3327 input3326) := by
  unfold input3328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3327 output3326)).val
theorem output3328_def : output3328 = (.seq output3327 output3326) := by
  unfold output3328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3328_skip : Flapjack.WordAlloc.isSkip output3328 = false := by
  rw [output3328_def]
  conv => lhs; cbv
  try rfl
theorem node3328_eq : Flapjack.WordAlloc.removeDeadStructural input3328 value1668 value1 value2 = (output3328, value5, value1) := by
  rw [input3328_def, output3328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3326_eq]
  dsimp only
  rw [node3327_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3328 input3325)).val
theorem input3329_def : input3329 = (.seq input3328 input3325) := by
  unfold input3329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3328 output3325)).val
theorem output3329_def : output3329 = (.seq output3328 output3325) := by
  unfold output3329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3329_skip : Flapjack.WordAlloc.isSkip output3329 = false := by
  rw [output3329_def]
  conv => lhs; cbv
  try rfl
theorem node3329_eq : Flapjack.WordAlloc.removeDeadStructural input3329 value1667 value1 value2 = (output3329, value5, value1) := by
  rw [input3329_def, output3329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3325_eq]
  dsimp only
  rw [node3328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3329 input3324)).val
theorem input3330_def : input3330 = (.seq input3329 input3324) := by
  unfold input3330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3329 output3324)).val
theorem output3330_def : output3330 = (.seq output3329 output3324) := by
  unfold output3330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3330_skip : Flapjack.WordAlloc.isSkip output3330 = false := by
  rw [output3330_def]
  conv => lhs; cbv
  try rfl
theorem node3330_eq : Flapjack.WordAlloc.removeDeadStructural input3330 value1666 value1 value2 = (output3330, value5, value1) := by
  rw [input3330_def, output3330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3324_eq]
  dsimp only
  rw [node3329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3330 input3323)).val
theorem input3331_def : input3331 = (.seq input3330 input3323) := by
  unfold input3331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3330 output3323)).val
theorem output3331_def : output3331 = (.seq output3330 output3323) := by
  unfold output3331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3331_skip : Flapjack.WordAlloc.isSkip output3331 = false := by
  rw [output3331_def]
  conv => lhs; cbv
  try rfl
theorem node3331_eq : Flapjack.WordAlloc.removeDeadStructural input3331 value1664 value1 value2 = (output3331, value5, value1) := by
  rw [input3331_def, output3331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3323_eq]
  dsimp only
  rw [node3330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1670 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23721 (Flapjack.WordLangAddr.addr 23725 0#64)))).val
theorem input3332_def : input3332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23721 (Flapjack.WordLangAddr.addr 23725 0#64))) := by
  unfold input3332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23721 (Flapjack.WordLangAddr.addr 23725 0#64)))).val
theorem output3332_def : output3332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23721 (Flapjack.WordLangAddr.addr 23725 0#64))) := by
  unfold output3332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3332_skip : Flapjack.WordAlloc.isSkip output3332 = false := by
  rw [output3332_def]
  conv => lhs; cbv
  try rfl
theorem node3332_eq : Flapjack.WordAlloc.removeDeadStructural input3332 value5 value1 value2 = (output3332, value1670, value1) := by
  rw [input3332_def, output3332_def]
  try (conv => lhs; cbv)
  try rfl

def value1671 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23725, 23713)])).val
theorem input3333_def : input3333 = (Flapjack.WordLangProgHOL.move 0 [(23725, 23713)]) := by
  unfold input3333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23725, 23713)])).val
theorem output3333_def : output3333 = (Flapjack.WordLangProgHOL.move 0 [(23725, 23713)]) := by
  unfold output3333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3333_skip : Flapjack.WordAlloc.isSkip output3333 = false := by
  rw [output3333_def]
  conv => lhs; cbv
  try rfl
theorem node3333_eq : Flapjack.WordAlloc.removeDeadStructural input3333 value1670 value1 value2 = (output3333, value1671, value1) := by
  rw [input3333_def, output3333_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3333 input3332)).val
theorem input3334_def : input3334 = (.seq input3333 input3332) := by
  unfold input3334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3333 output3332)).val
theorem output3334_def : output3334 = (.seq output3333 output3332) := by
  unfold output3334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3334_skip : Flapjack.WordAlloc.isSkip output3334 = false := by
  rw [output3334_def]
  conv => lhs; cbv
  try rfl
theorem node3334_eq : Flapjack.WordAlloc.removeDeadStructural input3334 value5 value1 value2 = (output3334, value1671, value1) := by
  rw [input3334_def, output3334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3332_eq]
  dsimp only
  rw [node3333_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1672 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23721 17178867732698629620#64))).val
theorem input3335_def : input3335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23721 17178867732698629620#64)) := by
  unfold input3335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23721 17178867732698629620#64))).val
theorem output3335_def : output3335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23721 17178867732698629620#64)) := by
  unfold output3335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3335_skip : Flapjack.WordAlloc.isSkip output3335 = false := by
  rw [output3335_def]
  conv => lhs; cbv
  try rfl
theorem node3335_eq : Flapjack.WordAlloc.removeDeadStructural input3335 value1671 value1 value2 = (output3335, value1672, value1) := by
  rw [input3335_def, output3335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23717 17178867732698629620#64))).val
theorem input3336_def : input3336 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23717 17178867732698629620#64)) := by
  unfold input3336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3336_def : output3336 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3336_skip : Flapjack.WordAlloc.isSkip output3336 = true := by
  rw [output3336_def]
  conv => lhs; cbv
  try rfl
theorem node3336_eq : Flapjack.WordAlloc.removeDeadStructural input3336 value1672 value1 value2 = (output3336, value1672, value1) := by
  rw [input3336_def, output3336_def]
  try (conv => lhs; cbv)
  try rfl

def value1673 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23713 23705 (Flapjack.WordRegImm.reg 23709))))).val
theorem input3337_def : input3337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23713 23705 (Flapjack.WordRegImm.reg 23709)))) := by
  unfold input3337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23713 23705 (Flapjack.WordRegImm.reg 23709))))).val
theorem output3337_def : output3337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23713 23705 (Flapjack.WordRegImm.reg 23709)))) := by
  unfold output3337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3337_skip : Flapjack.WordAlloc.isSkip output3337 = false := by
  rw [output3337_def]
  conv => lhs; cbv
  try rfl
theorem node3337_eq : Flapjack.WordAlloc.removeDeadStructural input3337 value1672 value1 value2 = (output3337, value1673, value1) := by
  rw [input3337_def, output3337_def]
  try (conv => lhs; cbv)
  try rfl

def value1674 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23709 5464#64))).val
theorem input3338_def : input3338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23709 5464#64)) := by
  unfold input3338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23709 5464#64))).val
theorem output3338_def : output3338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23709 5464#64)) := by
  unfold output3338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3338_skip : Flapjack.WordAlloc.isSkip output3338 = false := by
  rw [output3338_def]
  conv => lhs; cbv
  try rfl
theorem node3338_eq : Flapjack.WordAlloc.removeDeadStructural input3338 value1673 value1 value2 = (output3338, value1674, value1) := by
  rw [input3338_def, output3338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3338 input3337)).val
theorem input3339_def : input3339 = (.seq input3338 input3337) := by
  unfold input3339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3338 output3337)).val
theorem output3339_def : output3339 = (.seq output3338 output3337) := by
  unfold output3339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3339_skip : Flapjack.WordAlloc.isSkip output3339 = false := by
  rw [output3339_def]
  conv => lhs; cbv
  try rfl
theorem node3339_eq : Flapjack.WordAlloc.removeDeadStructural input3339 value1672 value1 value2 = (output3339, value1674, value1) := by
  rw [input3339_def, output3339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3337_eq]
  dsimp only
  rw [node3338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1675 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23705 (Flapjack.WordLangAddr.addr 23701 18446744073709551104#64)))).val
theorem input3340_def : input3340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23705 (Flapjack.WordLangAddr.addr 23701 18446744073709551104#64))) := by
  unfold input3340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23705 (Flapjack.WordLangAddr.addr 23701 18446744073709551104#64)))).val
theorem output3340_def : output3340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23705 (Flapjack.WordLangAddr.addr 23701 18446744073709551104#64))) := by
  unfold output3340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3340_skip : Flapjack.WordAlloc.isSkip output3340 = false := by
  rw [output3340_def]
  conv => lhs; cbv
  try rfl
theorem node3340_eq : Flapjack.WordAlloc.removeDeadStructural input3340 value1674 value1 value2 = (output3340, value1675, value1) := by
  rw [input3340_def, output3340_def]
  try (conv => lhs; cbv)
  try rfl

def value1676 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23701 23697)).val
theorem input3341_def : input3341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23701 23697) := by
  unfold input3341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23701 23697)).val
theorem output3341_def : output3341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23701 23697) := by
  unfold output3341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3341_skip : Flapjack.WordAlloc.isSkip output3341 = false := by
  rw [output3341_def]
  conv => lhs; cbv
  try rfl
theorem node3341_eq : Flapjack.WordAlloc.removeDeadStructural input3341 value1675 value1 value2 = (output3341, value1676, value1) := by
  rw [input3341_def, output3341_def]
  try (conv => lhs; cbv)
  try rfl

def value1677 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23697 23693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3342_def : input3342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23697 23693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23697 23693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3342_def : output3342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23697 23693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3342_skip : Flapjack.WordAlloc.isSkip output3342 = false := by
  rw [output3342_def]
  conv => lhs; cbv
  try rfl
theorem node3342_eq : Flapjack.WordAlloc.removeDeadStructural input3342 value1676 value1 value2 = (output3342, value1677, value1) := by
  rw [input3342_def, output3342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23693 Flapjack.WordStore.heapLength)).val
theorem input3343_def : input3343 = (Flapjack.WordLangProgHOL.get 23693 Flapjack.WordStore.heapLength) := by
  unfold input3343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23693 Flapjack.WordStore.heapLength)).val
theorem output3343_def : output3343 = (Flapjack.WordLangProgHOL.get 23693 Flapjack.WordStore.heapLength) := by
  unfold output3343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3343_skip : Flapjack.WordAlloc.isSkip output3343 = false := by
  rw [output3343_def]
  conv => lhs; cbv
  try rfl
theorem node3343_eq : Flapjack.WordAlloc.removeDeadStructural input3343 value1677 value1 value2 = (output3343, value5, value1) := by
  rw [input3343_def, output3343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3343 input3342)).val
theorem input3344_def : input3344 = (.seq input3343 input3342) := by
  unfold input3344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3343 output3342)).val
theorem output3344_def : output3344 = (.seq output3343 output3342) := by
  unfold output3344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3344_skip : Flapjack.WordAlloc.isSkip output3344 = false := by
  rw [output3344_def]
  conv => lhs; cbv
  try rfl
theorem node3344_eq : Flapjack.WordAlloc.removeDeadStructural input3344 value1676 value1 value2 = (output3344, value5, value1) := by
  rw [input3344_def, output3344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3342_eq]
  dsimp only
  rw [node3343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3344 input3341)).val
theorem input3345_def : input3345 = (.seq input3344 input3341) := by
  unfold input3345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3344 output3341)).val
theorem output3345_def : output3345 = (.seq output3344 output3341) := by
  unfold output3345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3345_skip : Flapjack.WordAlloc.isSkip output3345 = false := by
  rw [output3345_def]
  conv => lhs; cbv
  try rfl
theorem node3345_eq : Flapjack.WordAlloc.removeDeadStructural input3345 value1675 value1 value2 = (output3345, value5, value1) := by
  rw [input3345_def, output3345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3341_eq]
  dsimp only
  rw [node3344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3345 input3340)).val
theorem input3346_def : input3346 = (.seq input3345 input3340) := by
  unfold input3346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3345 output3340)).val
theorem output3346_def : output3346 = (.seq output3345 output3340) := by
  unfold output3346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3346_skip : Flapjack.WordAlloc.isSkip output3346 = false := by
  rw [output3346_def]
  conv => lhs; cbv
  try rfl
theorem node3346_eq : Flapjack.WordAlloc.removeDeadStructural input3346 value1674 value1 value2 = (output3346, value5, value1) := by
  rw [input3346_def, output3346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3340_eq]
  dsimp only
  rw [node3345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3346 input3339)).val
theorem input3347_def : input3347 = (.seq input3346 input3339) := by
  unfold input3347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3346 output3339)).val
theorem output3347_def : output3347 = (.seq output3346 output3339) := by
  unfold output3347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3347_skip : Flapjack.WordAlloc.isSkip output3347 = false := by
  rw [output3347_def]
  conv => lhs; cbv
  try rfl
theorem node3347_eq : Flapjack.WordAlloc.removeDeadStructural input3347 value1672 value1 value2 = (output3347, value5, value1) := by
  rw [input3347_def, output3347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3339_eq]
  dsimp only
  rw [node3346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1678 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23685 (Flapjack.WordLangAddr.addr 23689 0#64)))).val
theorem input3348_def : input3348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23685 (Flapjack.WordLangAddr.addr 23689 0#64))) := by
  unfold input3348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23685 (Flapjack.WordLangAddr.addr 23689 0#64)))).val
theorem output3348_def : output3348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23685 (Flapjack.WordLangAddr.addr 23689 0#64))) := by
  unfold output3348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3348_skip : Flapjack.WordAlloc.isSkip output3348 = false := by
  rw [output3348_def]
  conv => lhs; cbv
  try rfl
theorem node3348_eq : Flapjack.WordAlloc.removeDeadStructural input3348 value5 value1 value2 = (output3348, value1678, value1) := by
  rw [input3348_def, output3348_def]
  try (conv => lhs; cbv)
  try rfl

def value1679 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23689, 23677)])).val
theorem input3349_def : input3349 = (Flapjack.WordLangProgHOL.move 0 [(23689, 23677)]) := by
  unfold input3349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23689, 23677)])).val
theorem output3349_def : output3349 = (Flapjack.WordLangProgHOL.move 0 [(23689, 23677)]) := by
  unfold output3349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3349_skip : Flapjack.WordAlloc.isSkip output3349 = false := by
  rw [output3349_def]
  conv => lhs; cbv
  try rfl
theorem node3349_eq : Flapjack.WordAlloc.removeDeadStructural input3349 value1678 value1 value2 = (output3349, value1679, value1) := by
  rw [input3349_def, output3349_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3349 input3348)).val
theorem input3350_def : input3350 = (.seq input3349 input3348) := by
  unfold input3350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3349 output3348)).val
theorem output3350_def : output3350 = (.seq output3349 output3348) := by
  unfold output3350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3350_skip : Flapjack.WordAlloc.isSkip output3350 = false := by
  rw [output3350_def]
  conv => lhs; cbv
  try rfl
theorem node3350_eq : Flapjack.WordAlloc.removeDeadStructural input3350 value5 value1 value2 = (output3350, value1679, value1) := by
  rw [input3350_def, output3350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3348_eq]
  dsimp only
  rw [node3349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1680 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23685 14416168624775744521#64))).val
theorem input3351_def : input3351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23685 14416168624775744521#64)) := by
  unfold input3351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23685 14416168624775744521#64))).val
theorem output3351_def : output3351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23685 14416168624775744521#64)) := by
  unfold output3351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3351_skip : Flapjack.WordAlloc.isSkip output3351 = false := by
  rw [output3351_def]
  conv => lhs; cbv
  try rfl
theorem node3351_eq : Flapjack.WordAlloc.removeDeadStructural input3351 value1679 value1 value2 = (output3351, value1680, value1) := by
  rw [input3351_def, output3351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23681 14416168624775744521#64))).val
theorem input3352_def : input3352 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23681 14416168624775744521#64)) := by
  unfold input3352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3352_def : output3352 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3352_skip : Flapjack.WordAlloc.isSkip output3352 = true := by
  rw [output3352_def]
  conv => lhs; cbv
  try rfl
theorem node3352_eq : Flapjack.WordAlloc.removeDeadStructural input3352 value1680 value1 value2 = (output3352, value1680, value1) := by
  rw [input3352_def, output3352_def]
  try (conv => lhs; cbv)
  try rfl

def value1681 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23677 23669 (Flapjack.WordRegImm.reg 23673))))).val
theorem input3353_def : input3353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23677 23669 (Flapjack.WordRegImm.reg 23673)))) := by
  unfold input3353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23677 23669 (Flapjack.WordRegImm.reg 23673))))).val
theorem output3353_def : output3353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23677 23669 (Flapjack.WordRegImm.reg 23673)))) := by
  unfold output3353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3353_skip : Flapjack.WordAlloc.isSkip output3353 = false := by
  rw [output3353_def]
  conv => lhs; cbv
  try rfl
theorem node3353_eq : Flapjack.WordAlloc.removeDeadStructural input3353 value1680 value1 value2 = (output3353, value1681, value1) := by
  rw [input3353_def, output3353_def]
  try (conv => lhs; cbv)
  try rfl

def value1682 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23673 5456#64))).val
theorem input3354_def : input3354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23673 5456#64)) := by
  unfold input3354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23673 5456#64))).val
theorem output3354_def : output3354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23673 5456#64)) := by
  unfold output3354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3354_skip : Flapjack.WordAlloc.isSkip output3354 = false := by
  rw [output3354_def]
  conv => lhs; cbv
  try rfl
theorem node3354_eq : Flapjack.WordAlloc.removeDeadStructural input3354 value1681 value1 value2 = (output3354, value1682, value1) := by
  rw [input3354_def, output3354_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3354 input3353)).val
theorem input3355_def : input3355 = (.seq input3354 input3353) := by
  unfold input3355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3354 output3353)).val
theorem output3355_def : output3355 = (.seq output3354 output3353) := by
  unfold output3355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3355_skip : Flapjack.WordAlloc.isSkip output3355 = false := by
  rw [output3355_def]
  conv => lhs; cbv
  try rfl
theorem node3355_eq : Flapjack.WordAlloc.removeDeadStructural input3355 value1680 value1 value2 = (output3355, value1682, value1) := by
  rw [input3355_def, output3355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3353_eq]
  dsimp only
  rw [node3354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1683 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23669 (Flapjack.WordLangAddr.addr 23665 18446744073709551104#64)))).val
theorem input3356_def : input3356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23669 (Flapjack.WordLangAddr.addr 23665 18446744073709551104#64))) := by
  unfold input3356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23669 (Flapjack.WordLangAddr.addr 23665 18446744073709551104#64)))).val
theorem output3356_def : output3356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23669 (Flapjack.WordLangAddr.addr 23665 18446744073709551104#64))) := by
  unfold output3356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3356_skip : Flapjack.WordAlloc.isSkip output3356 = false := by
  rw [output3356_def]
  conv => lhs; cbv
  try rfl
theorem node3356_eq : Flapjack.WordAlloc.removeDeadStructural input3356 value1682 value1 value2 = (output3356, value1683, value1) := by
  rw [input3356_def, output3356_def]
  try (conv => lhs; cbv)
  try rfl

def value1684 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23665 23661)).val
theorem input3357_def : input3357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23665 23661) := by
  unfold input3357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23665 23661)).val
theorem output3357_def : output3357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23665 23661) := by
  unfold output3357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3357_skip : Flapjack.WordAlloc.isSkip output3357 = false := by
  rw [output3357_def]
  conv => lhs; cbv
  try rfl
theorem node3357_eq : Flapjack.WordAlloc.removeDeadStructural input3357 value1683 value1 value2 = (output3357, value1684, value1) := by
  rw [input3357_def, output3357_def]
  try (conv => lhs; cbv)
  try rfl

def value1685 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23661 23657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3358_def : input3358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23661 23657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23661 23657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3358_def : output3358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23661 23657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3358_skip : Flapjack.WordAlloc.isSkip output3358 = false := by
  rw [output3358_def]
  conv => lhs; cbv
  try rfl
theorem node3358_eq : Flapjack.WordAlloc.removeDeadStructural input3358 value1684 value1 value2 = (output3358, value1685, value1) := by
  rw [input3358_def, output3358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23657 Flapjack.WordStore.heapLength)).val
theorem input3359_def : input3359 = (Flapjack.WordLangProgHOL.get 23657 Flapjack.WordStore.heapLength) := by
  unfold input3359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23657 Flapjack.WordStore.heapLength)).val
theorem output3359_def : output3359 = (Flapjack.WordLangProgHOL.get 23657 Flapjack.WordStore.heapLength) := by
  unfold output3359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3359_skip : Flapjack.WordAlloc.isSkip output3359 = false := by
  rw [output3359_def]
  conv => lhs; cbv
  try rfl
theorem node3359_eq : Flapjack.WordAlloc.removeDeadStructural input3359 value1685 value1 value2 = (output3359, value5, value1) := by
  rw [input3359_def, output3359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3359 input3358)).val
theorem input3360_def : input3360 = (.seq input3359 input3358) := by
  unfold input3360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3359 output3358)).val
theorem output3360_def : output3360 = (.seq output3359 output3358) := by
  unfold output3360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3360_skip : Flapjack.WordAlloc.isSkip output3360 = false := by
  rw [output3360_def]
  conv => lhs; cbv
  try rfl
theorem node3360_eq : Flapjack.WordAlloc.removeDeadStructural input3360 value1684 value1 value2 = (output3360, value5, value1) := by
  rw [input3360_def, output3360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3358_eq]
  dsimp only
  rw [node3359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3360 input3357)).val
theorem input3361_def : input3361 = (.seq input3360 input3357) := by
  unfold input3361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3360 output3357)).val
theorem output3361_def : output3361 = (.seq output3360 output3357) := by
  unfold output3361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3361_skip : Flapjack.WordAlloc.isSkip output3361 = false := by
  rw [output3361_def]
  conv => lhs; cbv
  try rfl
theorem node3361_eq : Flapjack.WordAlloc.removeDeadStructural input3361 value1683 value1 value2 = (output3361, value5, value1) := by
  rw [input3361_def, output3361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3357_eq]
  dsimp only
  rw [node3360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3361 input3356)).val
theorem input3362_def : input3362 = (.seq input3361 input3356) := by
  unfold input3362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3361 output3356)).val
theorem output3362_def : output3362 = (.seq output3361 output3356) := by
  unfold output3362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3362_skip : Flapjack.WordAlloc.isSkip output3362 = false := by
  rw [output3362_def]
  conv => lhs; cbv
  try rfl
theorem node3362_eq : Flapjack.WordAlloc.removeDeadStructural input3362 value1682 value1 value2 = (output3362, value5, value1) := by
  rw [input3362_def, output3362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3356_eq]
  dsimp only
  rw [node3361_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3362 input3355)).val
theorem input3363_def : input3363 = (.seq input3362 input3355) := by
  unfold input3363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3362 output3355)).val
theorem output3363_def : output3363 = (.seq output3362 output3355) := by
  unfold output3363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3363_skip : Flapjack.WordAlloc.isSkip output3363 = false := by
  rw [output3363_def]
  conv => lhs; cbv
  try rfl
theorem node3363_eq : Flapjack.WordAlloc.removeDeadStructural input3363 value1680 value1 value2 = (output3363, value5, value1) := by
  rw [input3363_def, output3363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3355_eq]
  dsimp only
  rw [node3362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1686 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23649 (Flapjack.WordLangAddr.addr 23653 0#64)))).val
theorem input3364_def : input3364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23649 (Flapjack.WordLangAddr.addr 23653 0#64))) := by
  unfold input3364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23649 (Flapjack.WordLangAddr.addr 23653 0#64)))).val
theorem output3364_def : output3364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23649 (Flapjack.WordLangAddr.addr 23653 0#64))) := by
  unfold output3364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3364_skip : Flapjack.WordAlloc.isSkip output3364 = false := by
  rw [output3364_def]
  conv => lhs; cbv
  try rfl
theorem node3364_eq : Flapjack.WordAlloc.removeDeadStructural input3364 value5 value1 value2 = (output3364, value1686, value1) := by
  rw [input3364_def, output3364_def]
  try (conv => lhs; cbv)
  try rfl

def value1687 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23653, 23641)])).val
theorem input3365_def : input3365 = (Flapjack.WordLangProgHOL.move 0 [(23653, 23641)]) := by
  unfold input3365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23653, 23641)])).val
theorem output3365_def : output3365 = (Flapjack.WordLangProgHOL.move 0 [(23653, 23641)]) := by
  unfold output3365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3365_skip : Flapjack.WordAlloc.isSkip output3365 = false := by
  rw [output3365_def]
  conv => lhs; cbv
  try rfl
theorem node3365_eq : Flapjack.WordAlloc.removeDeadStructural input3365 value1686 value1 value2 = (output3365, value1687, value1) := by
  rw [input3365_def, output3365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3365 input3364)).val
theorem input3366_def : input3366 = (.seq input3365 input3364) := by
  unfold input3366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3365 output3364)).val
theorem output3366_def : output3366 = (.seq output3365 output3364) := by
  unfold output3366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3366_skip : Flapjack.WordAlloc.isSkip output3366 = false := by
  rw [output3366_def]
  conv => lhs; cbv
  try rfl
theorem node3366_eq : Flapjack.WordAlloc.removeDeadStructural input3366 value5 value1 value2 = (output3366, value1687, value1) := by
  rw [input3366_def, output3366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3364_eq]
  dsimp only
  rw [node3365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1688 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23649 481619096434065419#64))).val
theorem input3367_def : input3367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23649 481619096434065419#64)) := by
  unfold input3367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23649 481619096434065419#64))).val
theorem output3367_def : output3367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23649 481619096434065419#64)) := by
  unfold output3367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3367_skip : Flapjack.WordAlloc.isSkip output3367 = false := by
  rw [output3367_def]
  conv => lhs; cbv
  try rfl
theorem node3367_eq : Flapjack.WordAlloc.removeDeadStructural input3367 value1687 value1 value2 = (output3367, value1688, value1) := by
  rw [input3367_def, output3367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23645 481619096434065419#64))).val
theorem input3368_def : input3368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23645 481619096434065419#64)) := by
  unfold input3368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3368_def : output3368 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3368_skip : Flapjack.WordAlloc.isSkip output3368 = true := by
  rw [output3368_def]
  conv => lhs; cbv
  try rfl
theorem node3368_eq : Flapjack.WordAlloc.removeDeadStructural input3368 value1688 value1 value2 = (output3368, value1688, value1) := by
  rw [input3368_def, output3368_def]
  try (conv => lhs; cbv)
  try rfl

def value1689 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23641 23633 (Flapjack.WordRegImm.reg 23637))))).val
theorem input3369_def : input3369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23641 23633 (Flapjack.WordRegImm.reg 23637)))) := by
  unfold input3369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23641 23633 (Flapjack.WordRegImm.reg 23637))))).val
theorem output3369_def : output3369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23641 23633 (Flapjack.WordRegImm.reg 23637)))) := by
  unfold output3369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3369_skip : Flapjack.WordAlloc.isSkip output3369 = false := by
  rw [output3369_def]
  conv => lhs; cbv
  try rfl
theorem node3369_eq : Flapjack.WordAlloc.removeDeadStructural input3369 value1688 value1 value2 = (output3369, value1689, value1) := by
  rw [input3369_def, output3369_def]
  try (conv => lhs; cbv)
  try rfl

def value1690 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23637 5448#64))).val
theorem input3370_def : input3370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23637 5448#64)) := by
  unfold input3370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23637 5448#64))).val
theorem output3370_def : output3370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23637 5448#64)) := by
  unfold output3370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3370_skip : Flapjack.WordAlloc.isSkip output3370 = false := by
  rw [output3370_def]
  conv => lhs; cbv
  try rfl
theorem node3370_eq : Flapjack.WordAlloc.removeDeadStructural input3370 value1689 value1 value2 = (output3370, value1690, value1) := by
  rw [input3370_def, output3370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3370 input3369)).val
theorem input3371_def : input3371 = (.seq input3370 input3369) := by
  unfold input3371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3370 output3369)).val
theorem output3371_def : output3371 = (.seq output3370 output3369) := by
  unfold output3371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3371_skip : Flapjack.WordAlloc.isSkip output3371 = false := by
  rw [output3371_def]
  conv => lhs; cbv
  try rfl
theorem node3371_eq : Flapjack.WordAlloc.removeDeadStructural input3371 value1688 value1 value2 = (output3371, value1690, value1) := by
  rw [input3371_def, output3371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3369_eq]
  dsimp only
  rw [node3370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1691 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23633 (Flapjack.WordLangAddr.addr 23629 18446744073709551104#64)))).val
theorem input3372_def : input3372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23633 (Flapjack.WordLangAddr.addr 23629 18446744073709551104#64))) := by
  unfold input3372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23633 (Flapjack.WordLangAddr.addr 23629 18446744073709551104#64)))).val
theorem output3372_def : output3372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23633 (Flapjack.WordLangAddr.addr 23629 18446744073709551104#64))) := by
  unfold output3372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3372_skip : Flapjack.WordAlloc.isSkip output3372 = false := by
  rw [output3372_def]
  conv => lhs; cbv
  try rfl
theorem node3372_eq : Flapjack.WordAlloc.removeDeadStructural input3372 value1690 value1 value2 = (output3372, value1691, value1) := by
  rw [input3372_def, output3372_def]
  try (conv => lhs; cbv)
  try rfl

def value1692 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23629 23625)).val
theorem input3373_def : input3373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23629 23625) := by
  unfold input3373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23629 23625)).val
theorem output3373_def : output3373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23629 23625) := by
  unfold output3373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3373_skip : Flapjack.WordAlloc.isSkip output3373 = false := by
  rw [output3373_def]
  conv => lhs; cbv
  try rfl
theorem node3373_eq : Flapjack.WordAlloc.removeDeadStructural input3373 value1691 value1 value2 = (output3373, value1692, value1) := by
  rw [input3373_def, output3373_def]
  try (conv => lhs; cbv)
  try rfl

def value1693 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23625 23621 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3374_def : input3374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23625 23621 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23625 23621 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3374_def : output3374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23625 23621 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3374_skip : Flapjack.WordAlloc.isSkip output3374 = false := by
  rw [output3374_def]
  conv => lhs; cbv
  try rfl
theorem node3374_eq : Flapjack.WordAlloc.removeDeadStructural input3374 value1692 value1 value2 = (output3374, value1693, value1) := by
  rw [input3374_def, output3374_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23621 Flapjack.WordStore.heapLength)).val
theorem input3375_def : input3375 = (Flapjack.WordLangProgHOL.get 23621 Flapjack.WordStore.heapLength) := by
  unfold input3375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23621 Flapjack.WordStore.heapLength)).val
theorem output3375_def : output3375 = (Flapjack.WordLangProgHOL.get 23621 Flapjack.WordStore.heapLength) := by
  unfold output3375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3375_skip : Flapjack.WordAlloc.isSkip output3375 = false := by
  rw [output3375_def]
  conv => lhs; cbv
  try rfl
theorem node3375_eq : Flapjack.WordAlloc.removeDeadStructural input3375 value1693 value1 value2 = (output3375, value5, value1) := by
  rw [input3375_def, output3375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3375 input3374)).val
theorem input3376_def : input3376 = (.seq input3375 input3374) := by
  unfold input3376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3375 output3374)).val
theorem output3376_def : output3376 = (.seq output3375 output3374) := by
  unfold output3376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3376_skip : Flapjack.WordAlloc.isSkip output3376 = false := by
  rw [output3376_def]
  conv => lhs; cbv
  try rfl
theorem node3376_eq : Flapjack.WordAlloc.removeDeadStructural input3376 value1692 value1 value2 = (output3376, value5, value1) := by
  rw [input3376_def, output3376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3374_eq]
  dsimp only
  rw [node3375_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3376 input3373)).val
theorem input3377_def : input3377 = (.seq input3376 input3373) := by
  unfold input3377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3376 output3373)).val
theorem output3377_def : output3377 = (.seq output3376 output3373) := by
  unfold output3377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3377_skip : Flapjack.WordAlloc.isSkip output3377 = false := by
  rw [output3377_def]
  conv => lhs; cbv
  try rfl
theorem node3377_eq : Flapjack.WordAlloc.removeDeadStructural input3377 value1691 value1 value2 = (output3377, value5, value1) := by
  rw [input3377_def, output3377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3373_eq]
  dsimp only
  rw [node3376_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3377 input3372)).val
theorem input3378_def : input3378 = (.seq input3377 input3372) := by
  unfold input3378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3377 output3372)).val
theorem output3378_def : output3378 = (.seq output3377 output3372) := by
  unfold output3378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3378_skip : Flapjack.WordAlloc.isSkip output3378 = false := by
  rw [output3378_def]
  conv => lhs; cbv
  try rfl
theorem node3378_eq : Flapjack.WordAlloc.removeDeadStructural input3378 value1690 value1 value2 = (output3378, value5, value1) := by
  rw [input3378_def, output3378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3372_eq]
  dsimp only
  rw [node3377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3378 input3371)).val
theorem input3379_def : input3379 = (.seq input3378 input3371) := by
  unfold input3379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3378 output3371)).val
theorem output3379_def : output3379 = (.seq output3378 output3371) := by
  unfold output3379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3379_skip : Flapjack.WordAlloc.isSkip output3379 = false := by
  rw [output3379_def]
  conv => lhs; cbv
  try rfl
theorem node3379_eq : Flapjack.WordAlloc.removeDeadStructural input3379 value1688 value1 value2 = (output3379, value5, value1) := by
  rw [input3379_def, output3379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3371_eq]
  dsimp only
  rw [node3378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1694 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23613 (Flapjack.WordLangAddr.addr 23617 0#64)))).val
theorem input3380_def : input3380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23613 (Flapjack.WordLangAddr.addr 23617 0#64))) := by
  unfold input3380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23613 (Flapjack.WordLangAddr.addr 23617 0#64)))).val
theorem output3380_def : output3380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23613 (Flapjack.WordLangAddr.addr 23617 0#64))) := by
  unfold output3380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3380_skip : Flapjack.WordAlloc.isSkip output3380 = false := by
  rw [output3380_def]
  conv => lhs; cbv
  try rfl
theorem node3380_eq : Flapjack.WordAlloc.removeDeadStructural input3380 value5 value1 value2 = (output3380, value1694, value1) := by
  rw [input3380_def, output3380_def]
  try (conv => lhs; cbv)
  try rfl

def value1695 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23617, 23605)])).val
theorem input3381_def : input3381 = (Flapjack.WordLangProgHOL.move 0 [(23617, 23605)]) := by
  unfold input3381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23617, 23605)])).val
theorem output3381_def : output3381 = (Flapjack.WordLangProgHOL.move 0 [(23617, 23605)]) := by
  unfold output3381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3381_skip : Flapjack.WordAlloc.isSkip output3381 = false := by
  rw [output3381_def]
  conv => lhs; cbv
  try rfl
theorem node3381_eq : Flapjack.WordAlloc.removeDeadStructural input3381 value1694 value1 value2 = (output3381, value1695, value1) := by
  rw [input3381_def, output3381_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3381 input3380)).val
theorem input3382_def : input3382 = (.seq input3381 input3380) := by
  unfold input3382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3381 output3380)).val
theorem output3382_def : output3382 = (.seq output3381 output3380) := by
  unfold output3382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3382_skip : Flapjack.WordAlloc.isSkip output3382 = false := by
  rw [output3382_def]
  conv => lhs; cbv
  try rfl
theorem node3382_eq : Flapjack.WordAlloc.removeDeadStructural input3382 value5 value1 value2 = (output3382, value1695, value1) := by
  rw [input3382_def, output3382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3380_eq]
  dsimp only
  rw [node3381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1696 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23613 7508032112903159806#64))).val
theorem input3383_def : input3383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23613 7508032112903159806#64)) := by
  unfold input3383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23613 7508032112903159806#64))).val
theorem output3383_def : output3383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23613 7508032112903159806#64)) := by
  unfold output3383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3383_skip : Flapjack.WordAlloc.isSkip output3383 = false := by
  rw [output3383_def]
  conv => lhs; cbv
  try rfl
theorem node3383_eq : Flapjack.WordAlloc.removeDeadStructural input3383 value1695 value1 value2 = (output3383, value1696, value1) := by
  rw [input3383_def, output3383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23609 7508032112903159806#64))).val
theorem input3384_def : input3384 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23609 7508032112903159806#64)) := by
  unfold input3384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3384_def : output3384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3384_skip : Flapjack.WordAlloc.isSkip output3384 = true := by
  rw [output3384_def]
  conv => lhs; cbv
  try rfl
theorem node3384_eq : Flapjack.WordAlloc.removeDeadStructural input3384 value1696 value1 value2 = (output3384, value1696, value1) := by
  rw [input3384_def, output3384_def]
  try (conv => lhs; cbv)
  try rfl

def value1697 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23605 23597 (Flapjack.WordRegImm.reg 23601))))).val
theorem input3385_def : input3385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23605 23597 (Flapjack.WordRegImm.reg 23601)))) := by
  unfold input3385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23605 23597 (Flapjack.WordRegImm.reg 23601))))).val
theorem output3385_def : output3385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23605 23597 (Flapjack.WordRegImm.reg 23601)))) := by
  unfold output3385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3385_skip : Flapjack.WordAlloc.isSkip output3385 = false := by
  rw [output3385_def]
  conv => lhs; cbv
  try rfl
theorem node3385_eq : Flapjack.WordAlloc.removeDeadStructural input3385 value1696 value1 value2 = (output3385, value1697, value1) := by
  rw [input3385_def, output3385_def]
  try (conv => lhs; cbv)
  try rfl

def value1698 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23601 5440#64))).val
theorem input3386_def : input3386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23601 5440#64)) := by
  unfold input3386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23601 5440#64))).val
theorem output3386_def : output3386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23601 5440#64)) := by
  unfold output3386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3386_skip : Flapjack.WordAlloc.isSkip output3386 = false := by
  rw [output3386_def]
  conv => lhs; cbv
  try rfl
theorem node3386_eq : Flapjack.WordAlloc.removeDeadStructural input3386 value1697 value1 value2 = (output3386, value1698, value1) := by
  rw [input3386_def, output3386_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3386 input3385)).val
theorem input3387_def : input3387 = (.seq input3386 input3385) := by
  unfold input3387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3386 output3385)).val
theorem output3387_def : output3387 = (.seq output3386 output3385) := by
  unfold output3387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3387_skip : Flapjack.WordAlloc.isSkip output3387 = false := by
  rw [output3387_def]
  conv => lhs; cbv
  try rfl
theorem node3387_eq : Flapjack.WordAlloc.removeDeadStructural input3387 value1696 value1 value2 = (output3387, value1698, value1) := by
  rw [input3387_def, output3387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3385_eq]
  dsimp only
  rw [node3386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1699 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23597 (Flapjack.WordLangAddr.addr 23593 18446744073709551104#64)))).val
theorem input3388_def : input3388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23597 (Flapjack.WordLangAddr.addr 23593 18446744073709551104#64))) := by
  unfold input3388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23597 (Flapjack.WordLangAddr.addr 23593 18446744073709551104#64)))).val
theorem output3388_def : output3388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23597 (Flapjack.WordLangAddr.addr 23593 18446744073709551104#64))) := by
  unfold output3388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3388_skip : Flapjack.WordAlloc.isSkip output3388 = false := by
  rw [output3388_def]
  conv => lhs; cbv
  try rfl
theorem node3388_eq : Flapjack.WordAlloc.removeDeadStructural input3388 value1698 value1 value2 = (output3388, value1699, value1) := by
  rw [input3388_def, output3388_def]
  try (conv => lhs; cbv)
  try rfl

def value1700 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23593 23589)).val
theorem input3389_def : input3389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23593 23589) := by
  unfold input3389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23593 23589)).val
theorem output3389_def : output3389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23593 23589) := by
  unfold output3389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3389_skip : Flapjack.WordAlloc.isSkip output3389 = false := by
  rw [output3389_def]
  conv => lhs; cbv
  try rfl
theorem node3389_eq : Flapjack.WordAlloc.removeDeadStructural input3389 value1699 value1 value2 = (output3389, value1700, value1) := by
  rw [input3389_def, output3389_def]
  try (conv => lhs; cbv)
  try rfl

def value1701 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23589 23585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3390_def : input3390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23589 23585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23589 23585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3390_def : output3390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23589 23585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3390_skip : Flapjack.WordAlloc.isSkip output3390 = false := by
  rw [output3390_def]
  conv => lhs; cbv
  try rfl
theorem node3390_eq : Flapjack.WordAlloc.removeDeadStructural input3390 value1700 value1 value2 = (output3390, value1701, value1) := by
  rw [input3390_def, output3390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23585 Flapjack.WordStore.heapLength)).val
theorem input3391_def : input3391 = (Flapjack.WordLangProgHOL.get 23585 Flapjack.WordStore.heapLength) := by
  unfold input3391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23585 Flapjack.WordStore.heapLength)).val
theorem output3391_def : output3391 = (Flapjack.WordLangProgHOL.get 23585 Flapjack.WordStore.heapLength) := by
  unfold output3391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3391_skip : Flapjack.WordAlloc.isSkip output3391 = false := by
  rw [output3391_def]
  conv => lhs; cbv
  try rfl
theorem node3391_eq : Flapjack.WordAlloc.removeDeadStructural input3391 value1701 value1 value2 = (output3391, value5, value1) := by
  rw [input3391_def, output3391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3391 input3390)).val
theorem input3392_def : input3392 = (.seq input3391 input3390) := by
  unfold input3392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3391 output3390)).val
theorem output3392_def : output3392 = (.seq output3391 output3390) := by
  unfold output3392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3392_skip : Flapjack.WordAlloc.isSkip output3392 = false := by
  rw [output3392_def]
  conv => lhs; cbv
  try rfl
theorem node3392_eq : Flapjack.WordAlloc.removeDeadStructural input3392 value1700 value1 value2 = (output3392, value5, value1) := by
  rw [input3392_def, output3392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3390_eq]
  dsimp only
  rw [node3391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3392 input3389)).val
theorem input3393_def : input3393 = (.seq input3392 input3389) := by
  unfold input3393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3392 output3389)).val
theorem output3393_def : output3393 = (.seq output3392 output3389) := by
  unfold output3393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3393_skip : Flapjack.WordAlloc.isSkip output3393 = false := by
  rw [output3393_def]
  conv => lhs; cbv
  try rfl
theorem node3393_eq : Flapjack.WordAlloc.removeDeadStructural input3393 value1699 value1 value2 = (output3393, value5, value1) := by
  rw [input3393_def, output3393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3389_eq]
  dsimp only
  rw [node3392_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3393 input3388)).val
theorem input3394_def : input3394 = (.seq input3393 input3388) := by
  unfold input3394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3393 output3388)).val
theorem output3394_def : output3394 = (.seq output3393 output3388) := by
  unfold output3394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3394_skip : Flapjack.WordAlloc.isSkip output3394 = false := by
  rw [output3394_def]
  conv => lhs; cbv
  try rfl
theorem node3394_eq : Flapjack.WordAlloc.removeDeadStructural input3394 value1698 value1 value2 = (output3394, value5, value1) := by
  rw [input3394_def, output3394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3388_eq]
  dsimp only
  rw [node3393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3394 input3387)).val
theorem input3395_def : input3395 = (.seq input3394 input3387) := by
  unfold input3395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3394 output3387)).val
theorem output3395_def : output3395 = (.seq output3394 output3387) := by
  unfold output3395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3395_skip : Flapjack.WordAlloc.isSkip output3395 = false := by
  rw [output3395_def]
  conv => lhs; cbv
  try rfl
theorem node3395_eq : Flapjack.WordAlloc.removeDeadStructural input3395 value1696 value1 value2 = (output3395, value5, value1) := by
  rw [input3395_def, output3395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3387_eq]
  dsimp only
  rw [node3394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1702 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23577 (Flapjack.WordLangAddr.addr 23581 0#64)))).val
theorem input3396_def : input3396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23577 (Flapjack.WordLangAddr.addr 23581 0#64))) := by
  unfold input3396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23577 (Flapjack.WordLangAddr.addr 23581 0#64)))).val
theorem output3396_def : output3396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23577 (Flapjack.WordLangAddr.addr 23581 0#64))) := by
  unfold output3396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3396_skip : Flapjack.WordAlloc.isSkip output3396 = false := by
  rw [output3396_def]
  conv => lhs; cbv
  try rfl
theorem node3396_eq : Flapjack.WordAlloc.removeDeadStructural input3396 value5 value1 value2 = (output3396, value1702, value1) := by
  rw [input3396_def, output3396_def]
  try (conv => lhs; cbv)
  try rfl

def value1703 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23581, 23569)])).val
theorem input3397_def : input3397 = (Flapjack.WordLangProgHOL.move 0 [(23581, 23569)]) := by
  unfold input3397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23581, 23569)])).val
theorem output3397_def : output3397 = (Flapjack.WordLangProgHOL.move 0 [(23581, 23569)]) := by
  unfold output3397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3397_skip : Flapjack.WordAlloc.isSkip output3397 = false := by
  rw [output3397_def]
  conv => lhs; cbv
  try rfl
theorem node3397_eq : Flapjack.WordAlloc.removeDeadStructural input3397 value1702 value1 value2 = (output3397, value1703, value1) := by
  rw [input3397_def, output3397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3397 input3396)).val
theorem input3398_def : input3398 = (.seq input3397 input3396) := by
  unfold input3398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3397 output3396)).val
theorem output3398_def : output3398 = (.seq output3397 output3396) := by
  unfold output3398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3398_skip : Flapjack.WordAlloc.isSkip output3398 = false := by
  rw [output3398_def]
  conv => lhs; cbv
  try rfl
theorem node3398_eq : Flapjack.WordAlloc.removeDeadStructural input3398 value5 value1 value2 = (output3398, value1703, value1) := by
  rw [input3398_def, output3398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3396_eq]
  dsimp only
  rw [node3397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1704 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23577 5204293836692734814#64))).val
theorem input3399_def : input3399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23577 5204293836692734814#64)) := by
  unfold input3399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23577 5204293836692734814#64))).val
theorem output3399_def : output3399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23577 5204293836692734814#64)) := by
  unfold output3399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3399_skip : Flapjack.WordAlloc.isSkip output3399 = false := by
  rw [output3399_def]
  conv => lhs; cbv
  try rfl
theorem node3399_eq : Flapjack.WordAlloc.removeDeadStructural input3399 value1703 value1 value2 = (output3399, value1704, value1) := by
  rw [input3399_def, output3399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23573 5204293836692734814#64))).val
theorem input3400_def : input3400 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23573 5204293836692734814#64)) := by
  unfold input3400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3400_def : output3400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3400_skip : Flapjack.WordAlloc.isSkip output3400 = true := by
  rw [output3400_def]
  conv => lhs; cbv
  try rfl
theorem node3400_eq : Flapjack.WordAlloc.removeDeadStructural input3400 value1704 value1 value2 = (output3400, value1704, value1) := by
  rw [input3400_def, output3400_def]
  try (conv => lhs; cbv)
  try rfl

def value1705 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23569 23561 (Flapjack.WordRegImm.reg 23565))))).val
theorem input3401_def : input3401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23569 23561 (Flapjack.WordRegImm.reg 23565)))) := by
  unfold input3401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23569 23561 (Flapjack.WordRegImm.reg 23565))))).val
theorem output3401_def : output3401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23569 23561 (Flapjack.WordRegImm.reg 23565)))) := by
  unfold output3401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3401_skip : Flapjack.WordAlloc.isSkip output3401 = false := by
  rw [output3401_def]
  conv => lhs; cbv
  try rfl
theorem node3401_eq : Flapjack.WordAlloc.removeDeadStructural input3401 value1704 value1 value2 = (output3401, value1705, value1) := by
  rw [input3401_def, output3401_def]
  try (conv => lhs; cbv)
  try rfl

def value1706 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23565 5432#64))).val
theorem input3402_def : input3402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23565 5432#64)) := by
  unfold input3402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23565 5432#64))).val
theorem output3402_def : output3402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23565 5432#64)) := by
  unfold output3402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3402_skip : Flapjack.WordAlloc.isSkip output3402 = false := by
  rw [output3402_def]
  conv => lhs; cbv
  try rfl
theorem node3402_eq : Flapjack.WordAlloc.removeDeadStructural input3402 value1705 value1 value2 = (output3402, value1706, value1) := by
  rw [input3402_def, output3402_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3402 input3401)).val
theorem input3403_def : input3403 = (.seq input3402 input3401) := by
  unfold input3403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3402 output3401)).val
theorem output3403_def : output3403 = (.seq output3402 output3401) := by
  unfold output3403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3403_skip : Flapjack.WordAlloc.isSkip output3403 = false := by
  rw [output3403_def]
  conv => lhs; cbv
  try rfl
theorem node3403_eq : Flapjack.WordAlloc.removeDeadStructural input3403 value1704 value1 value2 = (output3403, value1706, value1) := by
  rw [input3403_def, output3403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3401_eq]
  dsimp only
  rw [node3402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1707 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23561 (Flapjack.WordLangAddr.addr 23557 18446744073709551104#64)))).val
theorem input3404_def : input3404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23561 (Flapjack.WordLangAddr.addr 23557 18446744073709551104#64))) := by
  unfold input3404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23561 (Flapjack.WordLangAddr.addr 23557 18446744073709551104#64)))).val
theorem output3404_def : output3404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23561 (Flapjack.WordLangAddr.addr 23557 18446744073709551104#64))) := by
  unfold output3404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3404_skip : Flapjack.WordAlloc.isSkip output3404 = false := by
  rw [output3404_def]
  conv => lhs; cbv
  try rfl
theorem node3404_eq : Flapjack.WordAlloc.removeDeadStructural input3404 value1706 value1 value2 = (output3404, value1707, value1) := by
  rw [input3404_def, output3404_def]
  try (conv => lhs; cbv)
  try rfl

def value1708 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23557 23553)).val
theorem input3405_def : input3405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23557 23553) := by
  unfold input3405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23557 23553)).val
theorem output3405_def : output3405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23557 23553) := by
  unfold output3405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3405_skip : Flapjack.WordAlloc.isSkip output3405 = false := by
  rw [output3405_def]
  conv => lhs; cbv
  try rfl
theorem node3405_eq : Flapjack.WordAlloc.removeDeadStructural input3405 value1707 value1 value2 = (output3405, value1708, value1) := by
  rw [input3405_def, output3405_def]
  try (conv => lhs; cbv)
  try rfl

def value1709 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23553 23549 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3406_def : input3406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23553 23549 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23553 23549 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3406_def : output3406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23553 23549 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3406_skip : Flapjack.WordAlloc.isSkip output3406 = false := by
  rw [output3406_def]
  conv => lhs; cbv
  try rfl
theorem node3406_eq : Flapjack.WordAlloc.removeDeadStructural input3406 value1708 value1 value2 = (output3406, value1709, value1) := by
  rw [input3406_def, output3406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23549 Flapjack.WordStore.heapLength)).val
theorem input3407_def : input3407 = (Flapjack.WordLangProgHOL.get 23549 Flapjack.WordStore.heapLength) := by
  unfold input3407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23549 Flapjack.WordStore.heapLength)).val
theorem output3407_def : output3407 = (Flapjack.WordLangProgHOL.get 23549 Flapjack.WordStore.heapLength) := by
  unfold output3407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3407_skip : Flapjack.WordAlloc.isSkip output3407 = false := by
  rw [output3407_def]
  conv => lhs; cbv
  try rfl
theorem node3407_eq : Flapjack.WordAlloc.removeDeadStructural input3407 value1709 value1 value2 = (output3407, value5, value1) := by
  rw [input3407_def, output3407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3407 input3406)).val
theorem input3408_def : input3408 = (.seq input3407 input3406) := by
  unfold input3408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3407 output3406)).val
theorem output3408_def : output3408 = (.seq output3407 output3406) := by
  unfold output3408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3408_skip : Flapjack.WordAlloc.isSkip output3408 = false := by
  rw [output3408_def]
  conv => lhs; cbv
  try rfl
theorem node3408_eq : Flapjack.WordAlloc.removeDeadStructural input3408 value1708 value1 value2 = (output3408, value5, value1) := by
  rw [input3408_def, output3408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3406_eq]
  dsimp only
  rw [node3407_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3408 input3405)).val
theorem input3409_def : input3409 = (.seq input3408 input3405) := by
  unfold input3409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3408 output3405)).val
theorem output3409_def : output3409 = (.seq output3408 output3405) := by
  unfold output3409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3409_skip : Flapjack.WordAlloc.isSkip output3409 = false := by
  rw [output3409_def]
  conv => lhs; cbv
  try rfl
theorem node3409_eq : Flapjack.WordAlloc.removeDeadStructural input3409 value1707 value1 value2 = (output3409, value5, value1) := by
  rw [input3409_def, output3409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3405_eq]
  dsimp only
  rw [node3408_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3409 input3404)).val
theorem input3410_def : input3410 = (.seq input3409 input3404) := by
  unfold input3410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3409 output3404)).val
theorem output3410_def : output3410 = (.seq output3409 output3404) := by
  unfold output3410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3410_skip : Flapjack.WordAlloc.isSkip output3410 = false := by
  rw [output3410_def]
  conv => lhs; cbv
  try rfl
theorem node3410_eq : Flapjack.WordAlloc.removeDeadStructural input3410 value1706 value1 value2 = (output3410, value5, value1) := by
  rw [input3410_def, output3410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3404_eq]
  dsimp only
  rw [node3409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3410 input3403)).val
theorem input3411_def : input3411 = (.seq input3410 input3403) := by
  unfold input3411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3410 output3403)).val
theorem output3411_def : output3411 = (.seq output3410 output3403) := by
  unfold output3411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3411_skip : Flapjack.WordAlloc.isSkip output3411 = false := by
  rw [output3411_def]
  conv => lhs; cbv
  try rfl
theorem node3411_eq : Flapjack.WordAlloc.removeDeadStructural input3411 value1704 value1 value2 = (output3411, value5, value1) := by
  rw [input3411_def, output3411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3403_eq]
  dsimp only
  rw [node3410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1710 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23541 (Flapjack.WordLangAddr.addr 23545 0#64)))).val
theorem input3412_def : input3412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23541 (Flapjack.WordLangAddr.addr 23545 0#64))) := by
  unfold input3412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23541 (Flapjack.WordLangAddr.addr 23545 0#64)))).val
theorem output3412_def : output3412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23541 (Flapjack.WordLangAddr.addr 23545 0#64))) := by
  unfold output3412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3412_skip : Flapjack.WordAlloc.isSkip output3412 = false := by
  rw [output3412_def]
  conv => lhs; cbv
  try rfl
theorem node3412_eq : Flapjack.WordAlloc.removeDeadStructural input3412 value5 value1 value2 = (output3412, value1710, value1) := by
  rw [input3412_def, output3412_def]
  try (conv => lhs; cbv)
  try rfl

def value1711 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23545, 23533)])).val
theorem input3413_def : input3413 = (Flapjack.WordLangProgHOL.move 0 [(23545, 23533)]) := by
  unfold input3413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23545, 23533)])).val
theorem output3413_def : output3413 = (Flapjack.WordLangProgHOL.move 0 [(23545, 23533)]) := by
  unfold output3413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3413_skip : Flapjack.WordAlloc.isSkip output3413 = false := by
  rw [output3413_def]
  conv => lhs; cbv
  try rfl
theorem node3413_eq : Flapjack.WordAlloc.removeDeadStructural input3413 value1710 value1 value2 = (output3413, value1711, value1) := by
  rw [input3413_def, output3413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3413 input3412)).val
theorem input3414_def : input3414 = (.seq input3413 input3412) := by
  unfold input3414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3413 output3412)).val
theorem output3414_def : output3414 = (.seq output3413 output3412) := by
  unfold output3414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3414_skip : Flapjack.WordAlloc.isSkip output3414 = false := by
  rw [output3414_def]
  conv => lhs; cbv
  try rfl
theorem node3414_eq : Flapjack.WordAlloc.removeDeadStructural input3414 value5 value1 value2 = (output3414, value1711, value1) := by
  rw [input3414_def, output3414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3412_eq]
  dsimp only
  rw [node3413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1712 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23541 8644499054833844677#64))).val
theorem input3415_def : input3415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23541 8644499054833844677#64)) := by
  unfold input3415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23541 8644499054833844677#64))).val
theorem output3415_def : output3415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23541 8644499054833844677#64)) := by
  unfold output3415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3415_skip : Flapjack.WordAlloc.isSkip output3415 = false := by
  rw [output3415_def]
  conv => lhs; cbv
  try rfl
theorem node3415_eq : Flapjack.WordAlloc.removeDeadStructural input3415 value1711 value1 value2 = (output3415, value1712, value1) := by
  rw [input3415_def, output3415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23537 8644499054833844677#64))).val
theorem input3416_def : input3416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23537 8644499054833844677#64)) := by
  unfold input3416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3416_def : output3416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3416_skip : Flapjack.WordAlloc.isSkip output3416 = true := by
  rw [output3416_def]
  conv => lhs; cbv
  try rfl
theorem node3416_eq : Flapjack.WordAlloc.removeDeadStructural input3416 value1712 value1 value2 = (output3416, value1712, value1) := by
  rw [input3416_def, output3416_def]
  try (conv => lhs; cbv)
  try rfl

def value1713 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23533 23525 (Flapjack.WordRegImm.reg 23529))))).val
theorem input3417_def : input3417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23533 23525 (Flapjack.WordRegImm.reg 23529)))) := by
  unfold input3417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23533 23525 (Flapjack.WordRegImm.reg 23529))))).val
theorem output3417_def : output3417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23533 23525 (Flapjack.WordRegImm.reg 23529)))) := by
  unfold output3417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3417_skip : Flapjack.WordAlloc.isSkip output3417 = false := by
  rw [output3417_def]
  conv => lhs; cbv
  try rfl
theorem node3417_eq : Flapjack.WordAlloc.removeDeadStructural input3417 value1712 value1 value2 = (output3417, value1713, value1) := by
  rw [input3417_def, output3417_def]
  try (conv => lhs; cbv)
  try rfl

def value1714 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23529 5424#64))).val
theorem input3418_def : input3418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23529 5424#64)) := by
  unfold input3418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23529 5424#64))).val
theorem output3418_def : output3418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23529 5424#64)) := by
  unfold output3418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3418_skip : Flapjack.WordAlloc.isSkip output3418 = false := by
  rw [output3418_def]
  conv => lhs; cbv
  try rfl
theorem node3418_eq : Flapjack.WordAlloc.removeDeadStructural input3418 value1713 value1 value2 = (output3418, value1714, value1) := by
  rw [input3418_def, output3418_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3418 input3417)).val
theorem input3419_def : input3419 = (.seq input3418 input3417) := by
  unfold input3419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3418 output3417)).val
theorem output3419_def : output3419 = (.seq output3418 output3417) := by
  unfold output3419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3419_skip : Flapjack.WordAlloc.isSkip output3419 = false := by
  rw [output3419_def]
  conv => lhs; cbv
  try rfl
theorem node3419_eq : Flapjack.WordAlloc.removeDeadStructural input3419 value1712 value1 value2 = (output3419, value1714, value1) := by
  rw [input3419_def, output3419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3417_eq]
  dsimp only
  rw [node3418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1715 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23525 (Flapjack.WordLangAddr.addr 23521 18446744073709551104#64)))).val
theorem input3420_def : input3420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23525 (Flapjack.WordLangAddr.addr 23521 18446744073709551104#64))) := by
  unfold input3420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23525 (Flapjack.WordLangAddr.addr 23521 18446744073709551104#64)))).val
theorem output3420_def : output3420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23525 (Flapjack.WordLangAddr.addr 23521 18446744073709551104#64))) := by
  unfold output3420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3420_skip : Flapjack.WordAlloc.isSkip output3420 = false := by
  rw [output3420_def]
  conv => lhs; cbv
  try rfl
theorem node3420_eq : Flapjack.WordAlloc.removeDeadStructural input3420 value1714 value1 value2 = (output3420, value1715, value1) := by
  rw [input3420_def, output3420_def]
  try (conv => lhs; cbv)
  try rfl

def value1716 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23521 23517)).val
theorem input3421_def : input3421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23521 23517) := by
  unfold input3421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23521 23517)).val
theorem output3421_def : output3421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23521 23517) := by
  unfold output3421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3421_skip : Flapjack.WordAlloc.isSkip output3421 = false := by
  rw [output3421_def]
  conv => lhs; cbv
  try rfl
theorem node3421_eq : Flapjack.WordAlloc.removeDeadStructural input3421 value1715 value1 value2 = (output3421, value1716, value1) := by
  rw [input3421_def, output3421_def]
  try (conv => lhs; cbv)
  try rfl

def value1717 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23517 23513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3422_def : input3422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23517 23513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23517 23513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3422_def : output3422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23517 23513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3422_skip : Flapjack.WordAlloc.isSkip output3422 = false := by
  rw [output3422_def]
  conv => lhs; cbv
  try rfl
theorem node3422_eq : Flapjack.WordAlloc.removeDeadStructural input3422 value1716 value1 value2 = (output3422, value1717, value1) := by
  rw [input3422_def, output3422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23513 Flapjack.WordStore.heapLength)).val
theorem input3423_def : input3423 = (Flapjack.WordLangProgHOL.get 23513 Flapjack.WordStore.heapLength) := by
  unfold input3423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23513 Flapjack.WordStore.heapLength)).val
theorem output3423_def : output3423 = (Flapjack.WordLangProgHOL.get 23513 Flapjack.WordStore.heapLength) := by
  unfold output3423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3423_skip : Flapjack.WordAlloc.isSkip output3423 = false := by
  rw [output3423_def]
  conv => lhs; cbv
  try rfl
theorem node3423_eq : Flapjack.WordAlloc.removeDeadStructural input3423 value1717 value1 value2 = (output3423, value5, value1) := by
  rw [input3423_def, output3423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3423 input3422)).val
theorem input3424_def : input3424 = (.seq input3423 input3422) := by
  unfold input3424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3423 output3422)).val
theorem output3424_def : output3424 = (.seq output3423 output3422) := by
  unfold output3424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3424_skip : Flapjack.WordAlloc.isSkip output3424 = false := by
  rw [output3424_def]
  conv => lhs; cbv
  try rfl
theorem node3424_eq : Flapjack.WordAlloc.removeDeadStructural input3424 value1716 value1 value2 = (output3424, value5, value1) := by
  rw [input3424_def, output3424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3422_eq]
  dsimp only
  rw [node3423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3424 input3421)).val
theorem input3425_def : input3425 = (.seq input3424 input3421) := by
  unfold input3425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3424 output3421)).val
theorem output3425_def : output3425 = (.seq output3424 output3421) := by
  unfold output3425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3425_skip : Flapjack.WordAlloc.isSkip output3425 = false := by
  rw [output3425_def]
  conv => lhs; cbv
  try rfl
theorem node3425_eq : Flapjack.WordAlloc.removeDeadStructural input3425 value1715 value1 value2 = (output3425, value5, value1) := by
  rw [input3425_def, output3425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3421_eq]
  dsimp only
  rw [node3424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3425 input3420)).val
theorem input3426_def : input3426 = (.seq input3425 input3420) := by
  unfold input3426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3425 output3420)).val
theorem output3426_def : output3426 = (.seq output3425 output3420) := by
  unfold output3426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3426_skip : Flapjack.WordAlloc.isSkip output3426 = false := by
  rw [output3426_def]
  conv => lhs; cbv
  try rfl
theorem node3426_eq : Flapjack.WordAlloc.removeDeadStructural input3426 value1714 value1 value2 = (output3426, value5, value1) := by
  rw [input3426_def, output3426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3420_eq]
  dsimp only
  rw [node3425_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3426 input3419)).val
theorem input3427_def : input3427 = (.seq input3426 input3419) := by
  unfold input3427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3426 output3419)).val
theorem output3427_def : output3427 = (.seq output3426 output3419) := by
  unfold output3427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3427_skip : Flapjack.WordAlloc.isSkip output3427 = false := by
  rw [output3427_def]
  conv => lhs; cbv
  try rfl
theorem node3427_eq : Flapjack.WordAlloc.removeDeadStructural input3427 value1712 value1 value2 = (output3427, value5, value1) := by
  rw [input3427_def, output3427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3419_eq]
  dsimp only
  rw [node3426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1718 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23505 (Flapjack.WordLangAddr.addr 23509 0#64)))).val
theorem input3428_def : input3428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23505 (Flapjack.WordLangAddr.addr 23509 0#64))) := by
  unfold input3428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23505 (Flapjack.WordLangAddr.addr 23509 0#64)))).val
theorem output3428_def : output3428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23505 (Flapjack.WordLangAddr.addr 23509 0#64))) := by
  unfold output3428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3428_skip : Flapjack.WordAlloc.isSkip output3428 = false := by
  rw [output3428_def]
  conv => lhs; cbv
  try rfl
theorem node3428_eq : Flapjack.WordAlloc.removeDeadStructural input3428 value5 value1 value2 = (output3428, value1718, value1) := by
  rw [input3428_def, output3428_def]
  try (conv => lhs; cbv)
  try rfl

def value1719 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23509, 23497)])).val
theorem input3429_def : input3429 = (Flapjack.WordLangProgHOL.move 0 [(23509, 23497)]) := by
  unfold input3429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23509, 23497)])).val
theorem output3429_def : output3429 = (Flapjack.WordLangProgHOL.move 0 [(23509, 23497)]) := by
  unfold output3429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3429_skip : Flapjack.WordAlloc.isSkip output3429 = false := by
  rw [output3429_def]
  conv => lhs; cbv
  try rfl
theorem node3429_eq : Flapjack.WordAlloc.removeDeadStructural input3429 value1718 value1 value2 = (output3429, value1719, value1) := by
  rw [input3429_def, output3429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3429 input3428)).val
theorem input3430_def : input3430 = (.seq input3429 input3428) := by
  unfold input3430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3429 output3428)).val
theorem output3430_def : output3430 = (.seq output3429 output3428) := by
  unfold output3430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3430_skip : Flapjack.WordAlloc.isSkip output3430 = false := by
  rw [output3430_def]
  conv => lhs; cbv
  try rfl
theorem node3430_eq : Flapjack.WordAlloc.removeDeadStructural input3430 value5 value1 value2 = (output3430, value1719, value1) := by
  rw [input3430_def, output3430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3428_eq]
  dsimp only
  rw [node3429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1720 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23505 17178867732698629620#64))).val
theorem input3431_def : input3431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23505 17178867732698629620#64)) := by
  unfold input3431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23505 17178867732698629620#64))).val
theorem output3431_def : output3431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23505 17178867732698629620#64)) := by
  unfold output3431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3431_skip : Flapjack.WordAlloc.isSkip output3431 = false := by
  rw [output3431_def]
  conv => lhs; cbv
  try rfl
theorem node3431_eq : Flapjack.WordAlloc.removeDeadStructural input3431 value1719 value1 value2 = (output3431, value1720, value1) := by
  rw [input3431_def, output3431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23501 17178867732698629620#64))).val
theorem input3432_def : input3432 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23501 17178867732698629620#64)) := by
  unfold input3432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3432_def : output3432 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3432_skip : Flapjack.WordAlloc.isSkip output3432 = true := by
  rw [output3432_def]
  conv => lhs; cbv
  try rfl
theorem node3432_eq : Flapjack.WordAlloc.removeDeadStructural input3432 value1720 value1 value2 = (output3432, value1720, value1) := by
  rw [input3432_def, output3432_def]
  try (conv => lhs; cbv)
  try rfl

def value1721 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23497 23489 (Flapjack.WordRegImm.reg 23493))))).val
theorem input3433_def : input3433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23497 23489 (Flapjack.WordRegImm.reg 23493)))) := by
  unfold input3433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23497 23489 (Flapjack.WordRegImm.reg 23493))))).val
theorem output3433_def : output3433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23497 23489 (Flapjack.WordRegImm.reg 23493)))) := by
  unfold output3433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3433_skip : Flapjack.WordAlloc.isSkip output3433 = false := by
  rw [output3433_def]
  conv => lhs; cbv
  try rfl
theorem node3433_eq : Flapjack.WordAlloc.removeDeadStructural input3433 value1720 value1 value2 = (output3433, value1721, value1) := by
  rw [input3433_def, output3433_def]
  try (conv => lhs; cbv)
  try rfl

def value1722 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23493 5416#64))).val
theorem input3434_def : input3434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23493 5416#64)) := by
  unfold input3434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23493 5416#64))).val
theorem output3434_def : output3434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23493 5416#64)) := by
  unfold output3434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3434_skip : Flapjack.WordAlloc.isSkip output3434 = false := by
  rw [output3434_def]
  conv => lhs; cbv
  try rfl
theorem node3434_eq : Flapjack.WordAlloc.removeDeadStructural input3434 value1721 value1 value2 = (output3434, value1722, value1) := by
  rw [input3434_def, output3434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3434 input3433)).val
theorem input3435_def : input3435 = (.seq input3434 input3433) := by
  unfold input3435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3434 output3433)).val
theorem output3435_def : output3435 = (.seq output3434 output3433) := by
  unfold output3435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3435_skip : Flapjack.WordAlloc.isSkip output3435 = false := by
  rw [output3435_def]
  conv => lhs; cbv
  try rfl
theorem node3435_eq : Flapjack.WordAlloc.removeDeadStructural input3435 value1720 value1 value2 = (output3435, value1722, value1) := by
  rw [input3435_def, output3435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3433_eq]
  dsimp only
  rw [node3434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1723 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23489 (Flapjack.WordLangAddr.addr 23485 18446744073709551104#64)))).val
theorem input3436_def : input3436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23489 (Flapjack.WordLangAddr.addr 23485 18446744073709551104#64))) := by
  unfold input3436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23489 (Flapjack.WordLangAddr.addr 23485 18446744073709551104#64)))).val
theorem output3436_def : output3436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23489 (Flapjack.WordLangAddr.addr 23485 18446744073709551104#64))) := by
  unfold output3436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3436_skip : Flapjack.WordAlloc.isSkip output3436 = false := by
  rw [output3436_def]
  conv => lhs; cbv
  try rfl
theorem node3436_eq : Flapjack.WordAlloc.removeDeadStructural input3436 value1722 value1 value2 = (output3436, value1723, value1) := by
  rw [input3436_def, output3436_def]
  try (conv => lhs; cbv)
  try rfl

def value1724 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23485 23481)).val
theorem input3437_def : input3437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23485 23481) := by
  unfold input3437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23485 23481)).val
theorem output3437_def : output3437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23485 23481) := by
  unfold output3437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3437_skip : Flapjack.WordAlloc.isSkip output3437 = false := by
  rw [output3437_def]
  conv => lhs; cbv
  try rfl
theorem node3437_eq : Flapjack.WordAlloc.removeDeadStructural input3437 value1723 value1 value2 = (output3437, value1724, value1) := by
  rw [input3437_def, output3437_def]
  try (conv => lhs; cbv)
  try rfl

def value1725 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23481 23477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3438_def : input3438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23481 23477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23481 23477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3438_def : output3438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23481 23477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3438_skip : Flapjack.WordAlloc.isSkip output3438 = false := by
  rw [output3438_def]
  conv => lhs; cbv
  try rfl
theorem node3438_eq : Flapjack.WordAlloc.removeDeadStructural input3438 value1724 value1 value2 = (output3438, value1725, value1) := by
  rw [input3438_def, output3438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23477 Flapjack.WordStore.heapLength)).val
theorem input3439_def : input3439 = (Flapjack.WordLangProgHOL.get 23477 Flapjack.WordStore.heapLength) := by
  unfold input3439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23477 Flapjack.WordStore.heapLength)).val
theorem output3439_def : output3439 = (Flapjack.WordLangProgHOL.get 23477 Flapjack.WordStore.heapLength) := by
  unfold output3439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3439_skip : Flapjack.WordAlloc.isSkip output3439 = false := by
  rw [output3439_def]
  conv => lhs; cbv
  try rfl
theorem node3439_eq : Flapjack.WordAlloc.removeDeadStructural input3439 value1725 value1 value2 = (output3439, value5, value1) := by
  rw [input3439_def, output3439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3439 input3438)).val
theorem input3440_def : input3440 = (.seq input3439 input3438) := by
  unfold input3440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3439 output3438)).val
theorem output3440_def : output3440 = (.seq output3439 output3438) := by
  unfold output3440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3440_skip : Flapjack.WordAlloc.isSkip output3440 = false := by
  rw [output3440_def]
  conv => lhs; cbv
  try rfl
theorem node3440_eq : Flapjack.WordAlloc.removeDeadStructural input3440 value1724 value1 value2 = (output3440, value5, value1) := by
  rw [input3440_def, output3440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3438_eq]
  dsimp only
  rw [node3439_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3440 input3437)).val
theorem input3441_def : input3441 = (.seq input3440 input3437) := by
  unfold input3441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3440 output3437)).val
theorem output3441_def : output3441 = (.seq output3440 output3437) := by
  unfold output3441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3441_skip : Flapjack.WordAlloc.isSkip output3441 = false := by
  rw [output3441_def]
  conv => lhs; cbv
  try rfl
theorem node3441_eq : Flapjack.WordAlloc.removeDeadStructural input3441 value1723 value1 value2 = (output3441, value5, value1) := by
  rw [input3441_def, output3441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3437_eq]
  dsimp only
  rw [node3440_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3441 input3436)).val
theorem input3442_def : input3442 = (.seq input3441 input3436) := by
  unfold input3442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3441 output3436)).val
theorem output3442_def : output3442 = (.seq output3441 output3436) := by
  unfold output3442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3442_skip : Flapjack.WordAlloc.isSkip output3442 = false := by
  rw [output3442_def]
  conv => lhs; cbv
  try rfl
theorem node3442_eq : Flapjack.WordAlloc.removeDeadStructural input3442 value1722 value1 value2 = (output3442, value5, value1) := by
  rw [input3442_def, output3442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3436_eq]
  dsimp only
  rw [node3441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3442 input3435)).val
theorem input3443_def : input3443 = (.seq input3442 input3435) := by
  unfold input3443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3442 output3435)).val
theorem output3443_def : output3443 = (.seq output3442 output3435) := by
  unfold output3443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3443_skip : Flapjack.WordAlloc.isSkip output3443 = false := by
  rw [output3443_def]
  conv => lhs; cbv
  try rfl
theorem node3443_eq : Flapjack.WordAlloc.removeDeadStructural input3443 value1720 value1 value2 = (output3443, value5, value1) := by
  rw [input3443_def, output3443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3435_eq]
  dsimp only
  rw [node3442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1726 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23469 (Flapjack.WordLangAddr.addr 23473 0#64)))).val
theorem input3444_def : input3444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23469 (Flapjack.WordLangAddr.addr 23473 0#64))) := by
  unfold input3444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23469 (Flapjack.WordLangAddr.addr 23473 0#64)))).val
theorem output3444_def : output3444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23469 (Flapjack.WordLangAddr.addr 23473 0#64))) := by
  unfold output3444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3444_skip : Flapjack.WordAlloc.isSkip output3444 = false := by
  rw [output3444_def]
  conv => lhs; cbv
  try rfl
theorem node3444_eq : Flapjack.WordAlloc.removeDeadStructural input3444 value5 value1 value2 = (output3444, value1726, value1) := by
  rw [input3444_def, output3444_def]
  try (conv => lhs; cbv)
  try rfl

def value1727 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23473, 23461)])).val
theorem input3445_def : input3445 = (Flapjack.WordLangProgHOL.move 0 [(23473, 23461)]) := by
  unfold input3445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23473, 23461)])).val
theorem output3445_def : output3445 = (Flapjack.WordLangProgHOL.move 0 [(23473, 23461)]) := by
  unfold output3445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3445_skip : Flapjack.WordAlloc.isSkip output3445 = false := by
  rw [output3445_def]
  conv => lhs; cbv
  try rfl
theorem node3445_eq : Flapjack.WordAlloc.removeDeadStructural input3445 value1726 value1 value2 = (output3445, value1727, value1) := by
  rw [input3445_def, output3445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3445 input3444)).val
theorem input3446_def : input3446 = (.seq input3445 input3444) := by
  unfold input3446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3445 output3444)).val
theorem output3446_def : output3446 = (.seq output3445 output3444) := by
  unfold output3446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3446_skip : Flapjack.WordAlloc.isSkip output3446 = false := by
  rw [output3446_def]
  conv => lhs; cbv
  try rfl
theorem node3446_eq : Flapjack.WordAlloc.removeDeadStructural input3446 value5 value1 value2 = (output3446, value1727, value1) := by
  rw [input3446_def, output3446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3444_eq]
  dsimp only
  rw [node3445_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1728 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23469 14416168624775744521#64))).val
theorem input3447_def : input3447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23469 14416168624775744521#64)) := by
  unfold input3447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23469 14416168624775744521#64))).val
theorem output3447_def : output3447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23469 14416168624775744521#64)) := by
  unfold output3447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3447_skip : Flapjack.WordAlloc.isSkip output3447 = false := by
  rw [output3447_def]
  conv => lhs; cbv
  try rfl
theorem node3447_eq : Flapjack.WordAlloc.removeDeadStructural input3447 value1727 value1 value2 = (output3447, value1728, value1) := by
  rw [input3447_def, output3447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23465 14416168624775744521#64))).val
theorem input3448_def : input3448 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23465 14416168624775744521#64)) := by
  unfold input3448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3448_def : output3448 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3448_skip : Flapjack.WordAlloc.isSkip output3448 = true := by
  rw [output3448_def]
  conv => lhs; cbv
  try rfl
theorem node3448_eq : Flapjack.WordAlloc.removeDeadStructural input3448 value1728 value1 value2 = (output3448, value1728, value1) := by
  rw [input3448_def, output3448_def]
  try (conv => lhs; cbv)
  try rfl

def value1729 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23461 23453 (Flapjack.WordRegImm.reg 23457))))).val
theorem input3449_def : input3449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23461 23453 (Flapjack.WordRegImm.reg 23457)))) := by
  unfold input3449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23461 23453 (Flapjack.WordRegImm.reg 23457))))).val
theorem output3449_def : output3449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23461 23453 (Flapjack.WordRegImm.reg 23457)))) := by
  unfold output3449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3449_skip : Flapjack.WordAlloc.isSkip output3449 = false := by
  rw [output3449_def]
  conv => lhs; cbv
  try rfl
theorem node3449_eq : Flapjack.WordAlloc.removeDeadStructural input3449 value1728 value1 value2 = (output3449, value1729, value1) := by
  rw [input3449_def, output3449_def]
  try (conv => lhs; cbv)
  try rfl

def value1730 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23457 5408#64))).val
theorem input3450_def : input3450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23457 5408#64)) := by
  unfold input3450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23457 5408#64))).val
theorem output3450_def : output3450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23457 5408#64)) := by
  unfold output3450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3450_skip : Flapjack.WordAlloc.isSkip output3450 = false := by
  rw [output3450_def]
  conv => lhs; cbv
  try rfl
theorem node3450_eq : Flapjack.WordAlloc.removeDeadStructural input3450 value1729 value1 value2 = (output3450, value1730, value1) := by
  rw [input3450_def, output3450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3450 input3449)).val
theorem input3451_def : input3451 = (.seq input3450 input3449) := by
  unfold input3451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3450 output3449)).val
theorem output3451_def : output3451 = (.seq output3450 output3449) := by
  unfold output3451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3451_skip : Flapjack.WordAlloc.isSkip output3451 = false := by
  rw [output3451_def]
  conv => lhs; cbv
  try rfl
theorem node3451_eq : Flapjack.WordAlloc.removeDeadStructural input3451 value1728 value1 value2 = (output3451, value1730, value1) := by
  rw [input3451_def, output3451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3449_eq]
  dsimp only
  rw [node3450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1731 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23453 (Flapjack.WordLangAddr.addr 23449 18446744073709551104#64)))).val
theorem input3452_def : input3452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23453 (Flapjack.WordLangAddr.addr 23449 18446744073709551104#64))) := by
  unfold input3452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23453 (Flapjack.WordLangAddr.addr 23449 18446744073709551104#64)))).val
theorem output3452_def : output3452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23453 (Flapjack.WordLangAddr.addr 23449 18446744073709551104#64))) := by
  unfold output3452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3452_skip : Flapjack.WordAlloc.isSkip output3452 = false := by
  rw [output3452_def]
  conv => lhs; cbv
  try rfl
theorem node3452_eq : Flapjack.WordAlloc.removeDeadStructural input3452 value1730 value1 value2 = (output3452, value1731, value1) := by
  rw [input3452_def, output3452_def]
  try (conv => lhs; cbv)
  try rfl

def value1732 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23449 23445)).val
theorem input3453_def : input3453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23449 23445) := by
  unfold input3453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23449 23445)).val
theorem output3453_def : output3453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23449 23445) := by
  unfold output3453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3453_skip : Flapjack.WordAlloc.isSkip output3453 = false := by
  rw [output3453_def]
  conv => lhs; cbv
  try rfl
theorem node3453_eq : Flapjack.WordAlloc.removeDeadStructural input3453 value1731 value1 value2 = (output3453, value1732, value1) := by
  rw [input3453_def, output3453_def]
  try (conv => lhs; cbv)
  try rfl

def value1733 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23445 23441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3454_def : input3454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23445 23441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23445 23441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3454_def : output3454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23445 23441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3454_skip : Flapjack.WordAlloc.isSkip output3454 = false := by
  rw [output3454_def]
  conv => lhs; cbv
  try rfl
theorem node3454_eq : Flapjack.WordAlloc.removeDeadStructural input3454 value1732 value1 value2 = (output3454, value1733, value1) := by
  rw [input3454_def, output3454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23441 Flapjack.WordStore.heapLength)).val
theorem input3455_def : input3455 = (Flapjack.WordLangProgHOL.get 23441 Flapjack.WordStore.heapLength) := by
  unfold input3455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23441 Flapjack.WordStore.heapLength)).val
theorem output3455_def : output3455 = (Flapjack.WordLangProgHOL.get 23441 Flapjack.WordStore.heapLength) := by
  unfold output3455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3455_skip : Flapjack.WordAlloc.isSkip output3455 = false := by
  rw [output3455_def]
  conv => lhs; cbv
  try rfl
theorem node3455_eq : Flapjack.WordAlloc.removeDeadStructural input3455 value1733 value1 value2 = (output3455, value5, value1) := by
  rw [input3455_def, output3455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3455 input3454)).val
theorem input3456_def : input3456 = (.seq input3455 input3454) := by
  unfold input3456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3455 output3454)).val
theorem output3456_def : output3456 = (.seq output3455 output3454) := by
  unfold output3456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3456_skip : Flapjack.WordAlloc.isSkip output3456 = false := by
  rw [output3456_def]
  conv => lhs; cbv
  try rfl
theorem node3456_eq : Flapjack.WordAlloc.removeDeadStructural input3456 value1732 value1 value2 = (output3456, value5, value1) := by
  rw [input3456_def, output3456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3454_eq]
  dsimp only
  rw [node3455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3456 input3453)).val
theorem input3457_def : input3457 = (.seq input3456 input3453) := by
  unfold input3457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3456 output3453)).val
theorem output3457_def : output3457 = (.seq output3456 output3453) := by
  unfold output3457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3457_skip : Flapjack.WordAlloc.isSkip output3457 = false := by
  rw [output3457_def]
  conv => lhs; cbv
  try rfl
theorem node3457_eq : Flapjack.WordAlloc.removeDeadStructural input3457 value1731 value1 value2 = (output3457, value5, value1) := by
  rw [input3457_def, output3457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3453_eq]
  dsimp only
  rw [node3456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3457 input3452)).val
theorem input3458_def : input3458 = (.seq input3457 input3452) := by
  unfold input3458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3457 output3452)).val
theorem output3458_def : output3458 = (.seq output3457 output3452) := by
  unfold output3458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3458_skip : Flapjack.WordAlloc.isSkip output3458 = false := by
  rw [output3458_def]
  conv => lhs; cbv
  try rfl
theorem node3458_eq : Flapjack.WordAlloc.removeDeadStructural input3458 value1730 value1 value2 = (output3458, value5, value1) := by
  rw [input3458_def, output3458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3452_eq]
  dsimp only
  rw [node3457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3458 input3451)).val
theorem input3459_def : input3459 = (.seq input3458 input3451) := by
  unfold input3459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3458 output3451)).val
theorem output3459_def : output3459 = (.seq output3458 output3451) := by
  unfold output3459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3459_skip : Flapjack.WordAlloc.isSkip output3459 = false := by
  rw [output3459_def]
  conv => lhs; cbv
  try rfl
theorem node3459_eq : Flapjack.WordAlloc.removeDeadStructural input3459 value1728 value1 value2 = (output3459, value5, value1) := by
  rw [input3459_def, output3459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3451_eq]
  dsimp only
  rw [node3458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1734 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23433 (Flapjack.WordLangAddr.addr 23437 0#64)))).val
theorem input3460_def : input3460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23433 (Flapjack.WordLangAddr.addr 23437 0#64))) := by
  unfold input3460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23433 (Flapjack.WordLangAddr.addr 23437 0#64)))).val
theorem output3460_def : output3460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23433 (Flapjack.WordLangAddr.addr 23437 0#64))) := by
  unfold output3460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3460_skip : Flapjack.WordAlloc.isSkip output3460 = false := by
  rw [output3460_def]
  conv => lhs; cbv
  try rfl
theorem node3460_eq : Flapjack.WordAlloc.removeDeadStructural input3460 value5 value1 value2 = (output3460, value1734, value1) := by
  rw [input3460_def, output3460_def]
  try (conv => lhs; cbv)
  try rfl

def value1735 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23437, 23425)])).val
theorem input3461_def : input3461 = (Flapjack.WordLangProgHOL.move 0 [(23437, 23425)]) := by
  unfold input3461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23437, 23425)])).val
theorem output3461_def : output3461 = (Flapjack.WordLangProgHOL.move 0 [(23437, 23425)]) := by
  unfold output3461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3461_skip : Flapjack.WordAlloc.isSkip output3461 = false := by
  rw [output3461_def]
  conv => lhs; cbv
  try rfl
theorem node3461_eq : Flapjack.WordAlloc.removeDeadStructural input3461 value1734 value1 value2 = (output3461, value1735, value1) := by
  rw [input3461_def, output3461_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3461 input3460)).val
theorem input3462_def : input3462 = (.seq input3461 input3460) := by
  unfold input3462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3461 output3460)).val
theorem output3462_def : output3462 = (.seq output3461 output3460) := by
  unfold output3462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3462_skip : Flapjack.WordAlloc.isSkip output3462 = false := by
  rw [output3462_def]
  conv => lhs; cbv
  try rfl
theorem node3462_eq : Flapjack.WordAlloc.removeDeadStructural input3462 value5 value1 value2 = (output3462, value1735, value1) := by
  rw [input3462_def, output3462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3460_eq]
  dsimp only
  rw [node3461_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1736 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23433 0#64))).val
theorem input3463_def : input3463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23433 0#64)) := by
  unfold input3463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23433 0#64))).val
theorem output3463_def : output3463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23433 0#64)) := by
  unfold output3463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3463_skip : Flapjack.WordAlloc.isSkip output3463 = false := by
  rw [output3463_def]
  conv => lhs; cbv
  try rfl
theorem node3463_eq : Flapjack.WordAlloc.removeDeadStructural input3463 value1735 value1 value2 = (output3463, value1736, value1) := by
  rw [input3463_def, output3463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23429 0#64))).val
theorem input3464_def : input3464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23429 0#64)) := by
  unfold input3464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3464_def : output3464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3464_skip : Flapjack.WordAlloc.isSkip output3464 = true := by
  rw [output3464_def]
  conv => lhs; cbv
  try rfl
theorem node3464_eq : Flapjack.WordAlloc.removeDeadStructural input3464 value1736 value1 value2 = (output3464, value1736, value1) := by
  rw [input3464_def, output3464_def]
  try (conv => lhs; cbv)
  try rfl

def value1737 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23425 23417 (Flapjack.WordRegImm.reg 23421))))).val
theorem input3465_def : input3465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23425 23417 (Flapjack.WordRegImm.reg 23421)))) := by
  unfold input3465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23425 23417 (Flapjack.WordRegImm.reg 23421))))).val
theorem output3465_def : output3465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23425 23417 (Flapjack.WordRegImm.reg 23421)))) := by
  unfold output3465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3465_skip : Flapjack.WordAlloc.isSkip output3465 = false := by
  rw [output3465_def]
  conv => lhs; cbv
  try rfl
theorem node3465_eq : Flapjack.WordAlloc.removeDeadStructural input3465 value1736 value1 value2 = (output3465, value1737, value1) := by
  rw [input3465_def, output3465_def]
  try (conv => lhs; cbv)
  try rfl

def value1738 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23421 5400#64))).val
theorem input3466_def : input3466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23421 5400#64)) := by
  unfold input3466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23421 5400#64))).val
theorem output3466_def : output3466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23421 5400#64)) := by
  unfold output3466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3466_skip : Flapjack.WordAlloc.isSkip output3466 = false := by
  rw [output3466_def]
  conv => lhs; cbv
  try rfl
theorem node3466_eq : Flapjack.WordAlloc.removeDeadStructural input3466 value1737 value1 value2 = (output3466, value1738, value1) := by
  rw [input3466_def, output3466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3466 input3465)).val
theorem input3467_def : input3467 = (.seq input3466 input3465) := by
  unfold input3467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3466 output3465)).val
theorem output3467_def : output3467 = (.seq output3466 output3465) := by
  unfold output3467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3467_skip : Flapjack.WordAlloc.isSkip output3467 = false := by
  rw [output3467_def]
  conv => lhs; cbv
  try rfl
theorem node3467_eq : Flapjack.WordAlloc.removeDeadStructural input3467 value1736 value1 value2 = (output3467, value1738, value1) := by
  rw [input3467_def, output3467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3465_eq]
  dsimp only
  rw [node3466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1739 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23417 (Flapjack.WordLangAddr.addr 23413 18446744073709551104#64)))).val
theorem input3468_def : input3468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23417 (Flapjack.WordLangAddr.addr 23413 18446744073709551104#64))) := by
  unfold input3468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23417 (Flapjack.WordLangAddr.addr 23413 18446744073709551104#64)))).val
theorem output3468_def : output3468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23417 (Flapjack.WordLangAddr.addr 23413 18446744073709551104#64))) := by
  unfold output3468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3468_skip : Flapjack.WordAlloc.isSkip output3468 = false := by
  rw [output3468_def]
  conv => lhs; cbv
  try rfl
theorem node3468_eq : Flapjack.WordAlloc.removeDeadStructural input3468 value1738 value1 value2 = (output3468, value1739, value1) := by
  rw [input3468_def, output3468_def]
  try (conv => lhs; cbv)
  try rfl

def value1740 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23413 23409)).val
theorem input3469_def : input3469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23413 23409) := by
  unfold input3469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23413 23409)).val
theorem output3469_def : output3469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23413 23409) := by
  unfold output3469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3469_skip : Flapjack.WordAlloc.isSkip output3469 = false := by
  rw [output3469_def]
  conv => lhs; cbv
  try rfl
theorem node3469_eq : Flapjack.WordAlloc.removeDeadStructural input3469 value1739 value1 value2 = (output3469, value1740, value1) := by
  rw [input3469_def, output3469_def]
  try (conv => lhs; cbv)
  try rfl

def value1741 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23409 23405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3470_def : input3470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23409 23405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23409 23405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3470_def : output3470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23409 23405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3470_skip : Flapjack.WordAlloc.isSkip output3470 = false := by
  rw [output3470_def]
  conv => lhs; cbv
  try rfl
theorem node3470_eq : Flapjack.WordAlloc.removeDeadStructural input3470 value1740 value1 value2 = (output3470, value1741, value1) := by
  rw [input3470_def, output3470_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23405 Flapjack.WordStore.heapLength)).val
theorem input3471_def : input3471 = (Flapjack.WordLangProgHOL.get 23405 Flapjack.WordStore.heapLength) := by
  unfold input3471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23405 Flapjack.WordStore.heapLength)).val
theorem output3471_def : output3471 = (Flapjack.WordLangProgHOL.get 23405 Flapjack.WordStore.heapLength) := by
  unfold output3471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3471_skip : Flapjack.WordAlloc.isSkip output3471 = false := by
  rw [output3471_def]
  conv => lhs; cbv
  try rfl
theorem node3471_eq : Flapjack.WordAlloc.removeDeadStructural input3471 value1741 value1 value2 = (output3471, value5, value1) := by
  rw [input3471_def, output3471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3471 input3470)).val
theorem input3472_def : input3472 = (.seq input3471 input3470) := by
  unfold input3472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3471 output3470)).val
theorem output3472_def : output3472 = (.seq output3471 output3470) := by
  unfold output3472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3472_skip : Flapjack.WordAlloc.isSkip output3472 = false := by
  rw [output3472_def]
  conv => lhs; cbv
  try rfl
theorem node3472_eq : Flapjack.WordAlloc.removeDeadStructural input3472 value1740 value1 value2 = (output3472, value5, value1) := by
  rw [input3472_def, output3472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3470_eq]
  dsimp only
  rw [node3471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3472 input3469)).val
theorem input3473_def : input3473 = (.seq input3472 input3469) := by
  unfold input3473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3472 output3469)).val
theorem output3473_def : output3473 = (.seq output3472 output3469) := by
  unfold output3473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3473_skip : Flapjack.WordAlloc.isSkip output3473 = false := by
  rw [output3473_def]
  conv => lhs; cbv
  try rfl
theorem node3473_eq : Flapjack.WordAlloc.removeDeadStructural input3473 value1739 value1 value2 = (output3473, value5, value1) := by
  rw [input3473_def, output3473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3469_eq]
  dsimp only
  rw [node3472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3473 input3468)).val
theorem input3474_def : input3474 = (.seq input3473 input3468) := by
  unfold input3474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3473 output3468)).val
theorem output3474_def : output3474 = (.seq output3473 output3468) := by
  unfold output3474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3474_skip : Flapjack.WordAlloc.isSkip output3474 = false := by
  rw [output3474_def]
  conv => lhs; cbv
  try rfl
theorem node3474_eq : Flapjack.WordAlloc.removeDeadStructural input3474 value1738 value1 value2 = (output3474, value5, value1) := by
  rw [input3474_def, output3474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3468_eq]
  dsimp only
  rw [node3473_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3474 input3467)).val
theorem input3475_def : input3475 = (.seq input3474 input3467) := by
  unfold input3475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3474 output3467)).val
theorem output3475_def : output3475 = (.seq output3474 output3467) := by
  unfold output3475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3475_skip : Flapjack.WordAlloc.isSkip output3475 = false := by
  rw [output3475_def]
  conv => lhs; cbv
  try rfl
theorem node3475_eq : Flapjack.WordAlloc.removeDeadStructural input3475 value1736 value1 value2 = (output3475, value5, value1) := by
  rw [input3475_def, output3475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3467_eq]
  dsimp only
  rw [node3474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1742 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23397 (Flapjack.WordLangAddr.addr 23401 0#64)))).val
theorem input3476_def : input3476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23397 (Flapjack.WordLangAddr.addr 23401 0#64))) := by
  unfold input3476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23397 (Flapjack.WordLangAddr.addr 23401 0#64)))).val
theorem output3476_def : output3476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23397 (Flapjack.WordLangAddr.addr 23401 0#64))) := by
  unfold output3476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3476_skip : Flapjack.WordAlloc.isSkip output3476 = false := by
  rw [output3476_def]
  conv => lhs; cbv
  try rfl
theorem node3476_eq : Flapjack.WordAlloc.removeDeadStructural input3476 value5 value1 value2 = (output3476, value1742, value1) := by
  rw [input3476_def, output3476_def]
  try (conv => lhs; cbv)
  try rfl

def value1743 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23401, 23389)])).val
theorem input3477_def : input3477 = (Flapjack.WordLangProgHOL.move 0 [(23401, 23389)]) := by
  unfold input3477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23401, 23389)])).val
theorem output3477_def : output3477 = (Flapjack.WordLangProgHOL.move 0 [(23401, 23389)]) := by
  unfold output3477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3477_skip : Flapjack.WordAlloc.isSkip output3477 = false := by
  rw [output3477_def]
  conv => lhs; cbv
  try rfl
theorem node3477_eq : Flapjack.WordAlloc.removeDeadStructural input3477 value1742 value1 value2 = (output3477, value1743, value1) := by
  rw [input3477_def, output3477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3477 input3476)).val
theorem input3478_def : input3478 = (.seq input3477 input3476) := by
  unfold input3478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3477 output3476)).val
theorem output3478_def : output3478 = (.seq output3477 output3476) := by
  unfold output3478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3478_skip : Flapjack.WordAlloc.isSkip output3478 = false := by
  rw [output3478_def]
  conv => lhs; cbv
  try rfl
theorem node3478_eq : Flapjack.WordAlloc.removeDeadStructural input3478 value5 value1 value2 = (output3478, value1743, value1) := by
  rw [input3478_def, output3478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3476_eq]
  dsimp only
  rw [node3477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1744 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23397 0#64))).val
theorem input3479_def : input3479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23397 0#64)) := by
  unfold input3479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23397 0#64))).val
theorem output3479_def : output3479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23397 0#64)) := by
  unfold output3479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3479_skip : Flapjack.WordAlloc.isSkip output3479 = false := by
  rw [output3479_def]
  conv => lhs; cbv
  try rfl
theorem node3479_eq : Flapjack.WordAlloc.removeDeadStructural input3479 value1743 value1 value2 = (output3479, value1744, value1) := by
  rw [input3479_def, output3479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23393 0#64))).val
theorem input3480_def : input3480 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23393 0#64)) := by
  unfold input3480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3480_def : output3480 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3480_skip : Flapjack.WordAlloc.isSkip output3480 = true := by
  rw [output3480_def]
  conv => lhs; cbv
  try rfl
theorem node3480_eq : Flapjack.WordAlloc.removeDeadStructural input3480 value1744 value1 value2 = (output3480, value1744, value1) := by
  rw [input3480_def, output3480_def]
  try (conv => lhs; cbv)
  try rfl

def value1745 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23389 23381 (Flapjack.WordRegImm.reg 23385))))).val
theorem input3481_def : input3481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23389 23381 (Flapjack.WordRegImm.reg 23385)))) := by
  unfold input3481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23389 23381 (Flapjack.WordRegImm.reg 23385))))).val
theorem output3481_def : output3481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23389 23381 (Flapjack.WordRegImm.reg 23385)))) := by
  unfold output3481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3481_skip : Flapjack.WordAlloc.isSkip output3481 = false := by
  rw [output3481_def]
  conv => lhs; cbv
  try rfl
theorem node3481_eq : Flapjack.WordAlloc.removeDeadStructural input3481 value1744 value1 value2 = (output3481, value1745, value1) := by
  rw [input3481_def, output3481_def]
  try (conv => lhs; cbv)
  try rfl

def value1746 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23385 5392#64))).val
theorem input3482_def : input3482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23385 5392#64)) := by
  unfold input3482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23385 5392#64))).val
theorem output3482_def : output3482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23385 5392#64)) := by
  unfold output3482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3482_skip : Flapjack.WordAlloc.isSkip output3482 = false := by
  rw [output3482_def]
  conv => lhs; cbv
  try rfl
theorem node3482_eq : Flapjack.WordAlloc.removeDeadStructural input3482 value1745 value1 value2 = (output3482, value1746, value1) := by
  rw [input3482_def, output3482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3482 input3481)).val
theorem input3483_def : input3483 = (.seq input3482 input3481) := by
  unfold input3483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3482 output3481)).val
theorem output3483_def : output3483 = (.seq output3482 output3481) := by
  unfold output3483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3483_skip : Flapjack.WordAlloc.isSkip output3483 = false := by
  rw [output3483_def]
  conv => lhs; cbv
  try rfl
theorem node3483_eq : Flapjack.WordAlloc.removeDeadStructural input3483 value1744 value1 value2 = (output3483, value1746, value1) := by
  rw [input3483_def, output3483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3481_eq]
  dsimp only
  rw [node3482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1747 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23381 (Flapjack.WordLangAddr.addr 23377 18446744073709551104#64)))).val
theorem input3484_def : input3484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23381 (Flapjack.WordLangAddr.addr 23377 18446744073709551104#64))) := by
  unfold input3484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23381 (Flapjack.WordLangAddr.addr 23377 18446744073709551104#64)))).val
theorem output3484_def : output3484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23381 (Flapjack.WordLangAddr.addr 23377 18446744073709551104#64))) := by
  unfold output3484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3484_skip : Flapjack.WordAlloc.isSkip output3484 = false := by
  rw [output3484_def]
  conv => lhs; cbv
  try rfl
theorem node3484_eq : Flapjack.WordAlloc.removeDeadStructural input3484 value1746 value1 value2 = (output3484, value1747, value1) := by
  rw [input3484_def, output3484_def]
  try (conv => lhs; cbv)
  try rfl

def value1748 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23377 23373)).val
theorem input3485_def : input3485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23377 23373) := by
  unfold input3485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23377 23373)).val
theorem output3485_def : output3485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23377 23373) := by
  unfold output3485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3485_skip : Flapjack.WordAlloc.isSkip output3485 = false := by
  rw [output3485_def]
  conv => lhs; cbv
  try rfl
theorem node3485_eq : Flapjack.WordAlloc.removeDeadStructural input3485 value1747 value1 value2 = (output3485, value1748, value1) := by
  rw [input3485_def, output3485_def]
  try (conv => lhs; cbv)
  try rfl

def value1749 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23373 23369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3486_def : input3486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23373 23369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23373 23369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3486_def : output3486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23373 23369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3486_skip : Flapjack.WordAlloc.isSkip output3486 = false := by
  rw [output3486_def]
  conv => lhs; cbv
  try rfl
theorem node3486_eq : Flapjack.WordAlloc.removeDeadStructural input3486 value1748 value1 value2 = (output3486, value1749, value1) := by
  rw [input3486_def, output3486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23369 Flapjack.WordStore.heapLength)).val
theorem input3487_def : input3487 = (Flapjack.WordLangProgHOL.get 23369 Flapjack.WordStore.heapLength) := by
  unfold input3487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23369 Flapjack.WordStore.heapLength)).val
theorem output3487_def : output3487 = (Flapjack.WordLangProgHOL.get 23369 Flapjack.WordStore.heapLength) := by
  unfold output3487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3487_skip : Flapjack.WordAlloc.isSkip output3487 = false := by
  rw [output3487_def]
  conv => lhs; cbv
  try rfl
theorem node3487_eq : Flapjack.WordAlloc.removeDeadStructural input3487 value1749 value1 value2 = (output3487, value5, value1) := by
  rw [input3487_def, output3487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3487 input3486)).val
theorem input3488_def : input3488 = (.seq input3487 input3486) := by
  unfold input3488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3487 output3486)).val
theorem output3488_def : output3488 = (.seq output3487 output3486) := by
  unfold output3488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3488_skip : Flapjack.WordAlloc.isSkip output3488 = false := by
  rw [output3488_def]
  conv => lhs; cbv
  try rfl
theorem node3488_eq : Flapjack.WordAlloc.removeDeadStructural input3488 value1748 value1 value2 = (output3488, value5, value1) := by
  rw [input3488_def, output3488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3486_eq]
  dsimp only
  rw [node3487_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3488 input3485)).val
theorem input3489_def : input3489 = (.seq input3488 input3485) := by
  unfold input3489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3488 output3485)).val
theorem output3489_def : output3489 = (.seq output3488 output3485) := by
  unfold output3489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3489_skip : Flapjack.WordAlloc.isSkip output3489 = false := by
  rw [output3489_def]
  conv => lhs; cbv
  try rfl
theorem node3489_eq : Flapjack.WordAlloc.removeDeadStructural input3489 value1747 value1 value2 = (output3489, value5, value1) := by
  rw [input3489_def, output3489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3485_eq]
  dsimp only
  rw [node3488_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3489 input3484)).val
theorem input3490_def : input3490 = (.seq input3489 input3484) := by
  unfold input3490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3489 output3484)).val
theorem output3490_def : output3490 = (.seq output3489 output3484) := by
  unfold output3490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3490_skip : Flapjack.WordAlloc.isSkip output3490 = false := by
  rw [output3490_def]
  conv => lhs; cbv
  try rfl
theorem node3490_eq : Flapjack.WordAlloc.removeDeadStructural input3490 value1746 value1 value2 = (output3490, value5, value1) := by
  rw [input3490_def, output3490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3484_eq]
  dsimp only
  rw [node3489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3490 input3483)).val
theorem input3491_def : input3491 = (.seq input3490 input3483) := by
  unfold input3491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3490 output3483)).val
theorem output3491_def : output3491 = (.seq output3490 output3483) := by
  unfold output3491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3491_skip : Flapjack.WordAlloc.isSkip output3491 = false := by
  rw [output3491_def]
  conv => lhs; cbv
  try rfl
theorem node3491_eq : Flapjack.WordAlloc.removeDeadStructural input3491 value1744 value1 value2 = (output3491, value5, value1) := by
  rw [input3491_def, output3491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3483_eq]
  dsimp only
  rw [node3490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1750 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23361 (Flapjack.WordLangAddr.addr 23365 0#64)))).val
theorem input3492_def : input3492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23361 (Flapjack.WordLangAddr.addr 23365 0#64))) := by
  unfold input3492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23361 (Flapjack.WordLangAddr.addr 23365 0#64)))).val
theorem output3492_def : output3492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23361 (Flapjack.WordLangAddr.addr 23365 0#64))) := by
  unfold output3492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3492_skip : Flapjack.WordAlloc.isSkip output3492 = false := by
  rw [output3492_def]
  conv => lhs; cbv
  try rfl
theorem node3492_eq : Flapjack.WordAlloc.removeDeadStructural input3492 value5 value1 value2 = (output3492, value1750, value1) := by
  rw [input3492_def, output3492_def]
  try (conv => lhs; cbv)
  try rfl

def value1751 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23365, 23353)])).val
theorem input3493_def : input3493 = (Flapjack.WordLangProgHOL.move 0 [(23365, 23353)]) := by
  unfold input3493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23365, 23353)])).val
theorem output3493_def : output3493 = (Flapjack.WordLangProgHOL.move 0 [(23365, 23353)]) := by
  unfold output3493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3493_skip : Flapjack.WordAlloc.isSkip output3493 = false := by
  rw [output3493_def]
  conv => lhs; cbv
  try rfl
theorem node3493_eq : Flapjack.WordAlloc.removeDeadStructural input3493 value1750 value1 value2 = (output3493, value1751, value1) := by
  rw [input3493_def, output3493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3493 input3492)).val
theorem input3494_def : input3494 = (.seq input3493 input3492) := by
  unfold input3494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3493 output3492)).val
theorem output3494_def : output3494 = (.seq output3493 output3492) := by
  unfold output3494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3494_skip : Flapjack.WordAlloc.isSkip output3494 = false := by
  rw [output3494_def]
  conv => lhs; cbv
  try rfl
theorem node3494_eq : Flapjack.WordAlloc.removeDeadStructural input3494 value5 value1 value2 = (output3494, value1751, value1) := by
  rw [input3494_def, output3494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3492_eq]
  dsimp only
  rw [node3493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1752 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23361 0#64))).val
theorem input3495_def : input3495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23361 0#64)) := by
  unfold input3495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23361 0#64))).val
theorem output3495_def : output3495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23361 0#64)) := by
  unfold output3495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3495_skip : Flapjack.WordAlloc.isSkip output3495 = false := by
  rw [output3495_def]
  conv => lhs; cbv
  try rfl
theorem node3495_eq : Flapjack.WordAlloc.removeDeadStructural input3495 value1751 value1 value2 = (output3495, value1752, value1) := by
  rw [input3495_def, output3495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23357 0#64))).val
theorem input3496_def : input3496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23357 0#64)) := by
  unfold input3496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3496_def : output3496 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3496_skip : Flapjack.WordAlloc.isSkip output3496 = true := by
  rw [output3496_def]
  conv => lhs; cbv
  try rfl
theorem node3496_eq : Flapjack.WordAlloc.removeDeadStructural input3496 value1752 value1 value2 = (output3496, value1752, value1) := by
  rw [input3496_def, output3496_def]
  try (conv => lhs; cbv)
  try rfl

def value1753 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23353 23345 (Flapjack.WordRegImm.reg 23349))))).val
theorem input3497_def : input3497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23353 23345 (Flapjack.WordRegImm.reg 23349)))) := by
  unfold input3497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23353 23345 (Flapjack.WordRegImm.reg 23349))))).val
theorem output3497_def : output3497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23353 23345 (Flapjack.WordRegImm.reg 23349)))) := by
  unfold output3497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3497_skip : Flapjack.WordAlloc.isSkip output3497 = false := by
  rw [output3497_def]
  conv => lhs; cbv
  try rfl
theorem node3497_eq : Flapjack.WordAlloc.removeDeadStructural input3497 value1752 value1 value2 = (output3497, value1753, value1) := by
  rw [input3497_def, output3497_def]
  try (conv => lhs; cbv)
  try rfl

def value1754 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23349 5384#64))).val
theorem input3498_def : input3498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23349 5384#64)) := by
  unfold input3498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23349 5384#64))).val
theorem output3498_def : output3498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23349 5384#64)) := by
  unfold output3498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3498_skip : Flapjack.WordAlloc.isSkip output3498 = false := by
  rw [output3498_def]
  conv => lhs; cbv
  try rfl
theorem node3498_eq : Flapjack.WordAlloc.removeDeadStructural input3498 value1753 value1 value2 = (output3498, value1754, value1) := by
  rw [input3498_def, output3498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3498 input3497)).val
theorem input3499_def : input3499 = (.seq input3498 input3497) := by
  unfold input3499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3498 output3497)).val
theorem output3499_def : output3499 = (.seq output3498 output3497) := by
  unfold output3499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3499_skip : Flapjack.WordAlloc.isSkip output3499 = false := by
  rw [output3499_def]
  conv => lhs; cbv
  try rfl
theorem node3499_eq : Flapjack.WordAlloc.removeDeadStructural input3499 value1752 value1 value2 = (output3499, value1754, value1) := by
  rw [input3499_def, output3499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3497_eq]
  dsimp only
  rw [node3498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1755 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23345 (Flapjack.WordLangAddr.addr 23341 18446744073709551104#64)))).val
theorem input3500_def : input3500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23345 (Flapjack.WordLangAddr.addr 23341 18446744073709551104#64))) := by
  unfold input3500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23345 (Flapjack.WordLangAddr.addr 23341 18446744073709551104#64)))).val
theorem output3500_def : output3500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23345 (Flapjack.WordLangAddr.addr 23341 18446744073709551104#64))) := by
  unfold output3500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3500_skip : Flapjack.WordAlloc.isSkip output3500 = false := by
  rw [output3500_def]
  conv => lhs; cbv
  try rfl
theorem node3500_eq : Flapjack.WordAlloc.removeDeadStructural input3500 value1754 value1 value2 = (output3500, value1755, value1) := by
  rw [input3500_def, output3500_def]
  try (conv => lhs; cbv)
  try rfl

def value1756 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23341 23337)).val
theorem input3501_def : input3501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23341 23337) := by
  unfold input3501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23341 23337)).val
theorem output3501_def : output3501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23341 23337) := by
  unfold output3501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3501_skip : Flapjack.WordAlloc.isSkip output3501 = false := by
  rw [output3501_def]
  conv => lhs; cbv
  try rfl
theorem node3501_eq : Flapjack.WordAlloc.removeDeadStructural input3501 value1755 value1 value2 = (output3501, value1756, value1) := by
  rw [input3501_def, output3501_def]
  try (conv => lhs; cbv)
  try rfl

def value1757 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23337 23333 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3502_def : input3502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23337 23333 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23337 23333 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3502_def : output3502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23337 23333 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3502_skip : Flapjack.WordAlloc.isSkip output3502 = false := by
  rw [output3502_def]
  conv => lhs; cbv
  try rfl
theorem node3502_eq : Flapjack.WordAlloc.removeDeadStructural input3502 value1756 value1 value2 = (output3502, value1757, value1) := by
  rw [input3502_def, output3502_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23333 Flapjack.WordStore.heapLength)).val
theorem input3503_def : input3503 = (Flapjack.WordLangProgHOL.get 23333 Flapjack.WordStore.heapLength) := by
  unfold input3503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23333 Flapjack.WordStore.heapLength)).val
theorem output3503_def : output3503 = (Flapjack.WordLangProgHOL.get 23333 Flapjack.WordStore.heapLength) := by
  unfold output3503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3503_skip : Flapjack.WordAlloc.isSkip output3503 = false := by
  rw [output3503_def]
  conv => lhs; cbv
  try rfl
theorem node3503_eq : Flapjack.WordAlloc.removeDeadStructural input3503 value1757 value1 value2 = (output3503, value5, value1) := by
  rw [input3503_def, output3503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3503 input3502)).val
theorem input3504_def : input3504 = (.seq input3503 input3502) := by
  unfold input3504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3503 output3502)).val
theorem output3504_def : output3504 = (.seq output3503 output3502) := by
  unfold output3504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3504_skip : Flapjack.WordAlloc.isSkip output3504 = false := by
  rw [output3504_def]
  conv => lhs; cbv
  try rfl
theorem node3504_eq : Flapjack.WordAlloc.removeDeadStructural input3504 value1756 value1 value2 = (output3504, value5, value1) := by
  rw [input3504_def, output3504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3502_eq]
  dsimp only
  rw [node3503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3504 input3501)).val
theorem input3505_def : input3505 = (.seq input3504 input3501) := by
  unfold input3505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3504 output3501)).val
theorem output3505_def : output3505 = (.seq output3504 output3501) := by
  unfold output3505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3505_skip : Flapjack.WordAlloc.isSkip output3505 = false := by
  rw [output3505_def]
  conv => lhs; cbv
  try rfl
theorem node3505_eq : Flapjack.WordAlloc.removeDeadStructural input3505 value1755 value1 value2 = (output3505, value5, value1) := by
  rw [input3505_def, output3505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3501_eq]
  dsimp only
  rw [node3504_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3505 input3500)).val
theorem input3506_def : input3506 = (.seq input3505 input3500) := by
  unfold input3506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3505 output3500)).val
theorem output3506_def : output3506 = (.seq output3505 output3500) := by
  unfold output3506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3506_skip : Flapjack.WordAlloc.isSkip output3506 = false := by
  rw [output3506_def]
  conv => lhs; cbv
  try rfl
theorem node3506_eq : Flapjack.WordAlloc.removeDeadStructural input3506 value1754 value1 value2 = (output3506, value5, value1) := by
  rw [input3506_def, output3506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3500_eq]
  dsimp only
  rw [node3505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3506 input3499)).val
theorem input3507_def : input3507 = (.seq input3506 input3499) := by
  unfold input3507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3506 output3499)).val
theorem output3507_def : output3507 = (.seq output3506 output3499) := by
  unfold output3507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3507_skip : Flapjack.WordAlloc.isSkip output3507 = false := by
  rw [output3507_def]
  conv => lhs; cbv
  try rfl
theorem node3507_eq : Flapjack.WordAlloc.removeDeadStructural input3507 value1752 value1 value2 = (output3507, value5, value1) := by
  rw [input3507_def, output3507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3499_eq]
  dsimp only
  rw [node3506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1758 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23325 (Flapjack.WordLangAddr.addr 23329 0#64)))).val
theorem input3508_def : input3508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23325 (Flapjack.WordLangAddr.addr 23329 0#64))) := by
  unfold input3508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23325 (Flapjack.WordLangAddr.addr 23329 0#64)))).val
theorem output3508_def : output3508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23325 (Flapjack.WordLangAddr.addr 23329 0#64))) := by
  unfold output3508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3508_skip : Flapjack.WordAlloc.isSkip output3508 = false := by
  rw [output3508_def]
  conv => lhs; cbv
  try rfl
theorem node3508_eq : Flapjack.WordAlloc.removeDeadStructural input3508 value5 value1 value2 = (output3508, value1758, value1) := by
  rw [input3508_def, output3508_def]
  try (conv => lhs; cbv)
  try rfl

def value1759 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23329, 23317)])).val
theorem input3509_def : input3509 = (Flapjack.WordLangProgHOL.move 0 [(23329, 23317)]) := by
  unfold input3509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23329, 23317)])).val
theorem output3509_def : output3509 = (Flapjack.WordLangProgHOL.move 0 [(23329, 23317)]) := by
  unfold output3509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3509_skip : Flapjack.WordAlloc.isSkip output3509 = false := by
  rw [output3509_def]
  conv => lhs; cbv
  try rfl
theorem node3509_eq : Flapjack.WordAlloc.removeDeadStructural input3509 value1758 value1 value2 = (output3509, value1759, value1) := by
  rw [input3509_def, output3509_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3509 input3508)).val
theorem input3510_def : input3510 = (.seq input3509 input3508) := by
  unfold input3510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3509 output3508)).val
theorem output3510_def : output3510 = (.seq output3509 output3508) := by
  unfold output3510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3510_skip : Flapjack.WordAlloc.isSkip output3510 = false := by
  rw [output3510_def]
  conv => lhs; cbv
  try rfl
theorem node3510_eq : Flapjack.WordAlloc.removeDeadStructural input3510 value5 value1 value2 = (output3510, value1759, value1) := by
  rw [input3510_def, output3510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3508_eq]
  dsimp only
  rw [node3509_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1760 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23325 0#64))).val
theorem input3511_def : input3511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23325 0#64)) := by
  unfold input3511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23325 0#64))).val
theorem output3511_def : output3511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23325 0#64)) := by
  unfold output3511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3511_skip : Flapjack.WordAlloc.isSkip output3511 = false := by
  rw [output3511_def]
  conv => lhs; cbv
  try rfl
theorem node3511_eq : Flapjack.WordAlloc.removeDeadStructural input3511 value1759 value1 value2 = (output3511, value1760, value1) := by
  rw [input3511_def, output3511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23321 0#64))).val
theorem input3512_def : input3512 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23321 0#64)) := by
  unfold input3512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3512_def : output3512 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3512_skip : Flapjack.WordAlloc.isSkip output3512 = true := by
  rw [output3512_def]
  conv => lhs; cbv
  try rfl
theorem node3512_eq : Flapjack.WordAlloc.removeDeadStructural input3512 value1760 value1 value2 = (output3512, value1760, value1) := by
  rw [input3512_def, output3512_def]
  try (conv => lhs; cbv)
  try rfl

def value1761 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23317 23309 (Flapjack.WordRegImm.reg 23313))))).val
theorem input3513_def : input3513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23317 23309 (Flapjack.WordRegImm.reg 23313)))) := by
  unfold input3513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23317 23309 (Flapjack.WordRegImm.reg 23313))))).val
theorem output3513_def : output3513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23317 23309 (Flapjack.WordRegImm.reg 23313)))) := by
  unfold output3513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3513_skip : Flapjack.WordAlloc.isSkip output3513 = false := by
  rw [output3513_def]
  conv => lhs; cbv
  try rfl
theorem node3513_eq : Flapjack.WordAlloc.removeDeadStructural input3513 value1760 value1 value2 = (output3513, value1761, value1) := by
  rw [input3513_def, output3513_def]
  try (conv => lhs; cbv)
  try rfl

def value1762 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23313 5376#64))).val
theorem input3514_def : input3514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23313 5376#64)) := by
  unfold input3514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23313 5376#64))).val
theorem output3514_def : output3514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23313 5376#64)) := by
  unfold output3514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3514_skip : Flapjack.WordAlloc.isSkip output3514 = false := by
  rw [output3514_def]
  conv => lhs; cbv
  try rfl
theorem node3514_eq : Flapjack.WordAlloc.removeDeadStructural input3514 value1761 value1 value2 = (output3514, value1762, value1) := by
  rw [input3514_def, output3514_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3514 input3513)).val
theorem input3515_def : input3515 = (.seq input3514 input3513) := by
  unfold input3515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3514 output3513)).val
theorem output3515_def : output3515 = (.seq output3514 output3513) := by
  unfold output3515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3515_skip : Flapjack.WordAlloc.isSkip output3515 = false := by
  rw [output3515_def]
  conv => lhs; cbv
  try rfl
theorem node3515_eq : Flapjack.WordAlloc.removeDeadStructural input3515 value1760 value1 value2 = (output3515, value1762, value1) := by
  rw [input3515_def, output3515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3513_eq]
  dsimp only
  rw [node3514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1763 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23309 (Flapjack.WordLangAddr.addr 23305 18446744073709551104#64)))).val
theorem input3516_def : input3516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23309 (Flapjack.WordLangAddr.addr 23305 18446744073709551104#64))) := by
  unfold input3516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23309 (Flapjack.WordLangAddr.addr 23305 18446744073709551104#64)))).val
theorem output3516_def : output3516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23309 (Flapjack.WordLangAddr.addr 23305 18446744073709551104#64))) := by
  unfold output3516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3516_skip : Flapjack.WordAlloc.isSkip output3516 = false := by
  rw [output3516_def]
  conv => lhs; cbv
  try rfl
theorem node3516_eq : Flapjack.WordAlloc.removeDeadStructural input3516 value1762 value1 value2 = (output3516, value1763, value1) := by
  rw [input3516_def, output3516_def]
  try (conv => lhs; cbv)
  try rfl

def value1764 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23305 23301)).val
theorem input3517_def : input3517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23305 23301) := by
  unfold input3517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23305 23301)).val
theorem output3517_def : output3517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23305 23301) := by
  unfold output3517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3517_skip : Flapjack.WordAlloc.isSkip output3517 = false := by
  rw [output3517_def]
  conv => lhs; cbv
  try rfl
theorem node3517_eq : Flapjack.WordAlloc.removeDeadStructural input3517 value1763 value1 value2 = (output3517, value1764, value1) := by
  rw [input3517_def, output3517_def]
  try (conv => lhs; cbv)
  try rfl

def value1765 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23301 23297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3518_def : input3518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23301 23297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23301 23297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3518_def : output3518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23301 23297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3518_skip : Flapjack.WordAlloc.isSkip output3518 = false := by
  rw [output3518_def]
  conv => lhs; cbv
  try rfl
theorem node3518_eq : Flapjack.WordAlloc.removeDeadStructural input3518 value1764 value1 value2 = (output3518, value1765, value1) := by
  rw [input3518_def, output3518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23297 Flapjack.WordStore.heapLength)).val
theorem input3519_def : input3519 = (Flapjack.WordLangProgHOL.get 23297 Flapjack.WordStore.heapLength) := by
  unfold input3519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23297 Flapjack.WordStore.heapLength)).val
theorem output3519_def : output3519 = (Flapjack.WordLangProgHOL.get 23297 Flapjack.WordStore.heapLength) := by
  unfold output3519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3519_skip : Flapjack.WordAlloc.isSkip output3519 = false := by
  rw [output3519_def]
  conv => lhs; cbv
  try rfl
theorem node3519_eq : Flapjack.WordAlloc.removeDeadStructural input3519 value1765 value1 value2 = (output3519, value5, value1) := by
  rw [input3519_def, output3519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3519 input3518)).val
theorem input3520_def : input3520 = (.seq input3519 input3518) := by
  unfold input3520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3519 output3518)).val
theorem output3520_def : output3520 = (.seq output3519 output3518) := by
  unfold output3520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3520_skip : Flapjack.WordAlloc.isSkip output3520 = false := by
  rw [output3520_def]
  conv => lhs; cbv
  try rfl
theorem node3520_eq : Flapjack.WordAlloc.removeDeadStructural input3520 value1764 value1 value2 = (output3520, value5, value1) := by
  rw [input3520_def, output3520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3518_eq]
  dsimp only
  rw [node3519_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3520 input3517)).val
theorem input3521_def : input3521 = (.seq input3520 input3517) := by
  unfold input3521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3520 output3517)).val
theorem output3521_def : output3521 = (.seq output3520 output3517) := by
  unfold output3521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3521_skip : Flapjack.WordAlloc.isSkip output3521 = false := by
  rw [output3521_def]
  conv => lhs; cbv
  try rfl
theorem node3521_eq : Flapjack.WordAlloc.removeDeadStructural input3521 value1763 value1 value2 = (output3521, value5, value1) := by
  rw [input3521_def, output3521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3517_eq]
  dsimp only
  rw [node3520_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3521 input3516)).val
theorem input3522_def : input3522 = (.seq input3521 input3516) := by
  unfold input3522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3521 output3516)).val
theorem output3522_def : output3522 = (.seq output3521 output3516) := by
  unfold output3522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3522_skip : Flapjack.WordAlloc.isSkip output3522 = false := by
  rw [output3522_def]
  conv => lhs; cbv
  try rfl
theorem node3522_eq : Flapjack.WordAlloc.removeDeadStructural input3522 value1762 value1 value2 = (output3522, value5, value1) := by
  rw [input3522_def, output3522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3516_eq]
  dsimp only
  rw [node3521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3522 input3515)).val
theorem input3523_def : input3523 = (.seq input3522 input3515) := by
  unfold input3523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3522 output3515)).val
theorem output3523_def : output3523 = (.seq output3522 output3515) := by
  unfold output3523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3523_skip : Flapjack.WordAlloc.isSkip output3523 = false := by
  rw [output3523_def]
  conv => lhs; cbv
  try rfl
theorem node3523_eq : Flapjack.WordAlloc.removeDeadStructural input3523 value1760 value1 value2 = (output3523, value5, value1) := by
  rw [input3523_def, output3523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3515_eq]
  dsimp only
  rw [node3522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1766 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23289 (Flapjack.WordLangAddr.addr 23293 0#64)))).val
theorem input3524_def : input3524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23289 (Flapjack.WordLangAddr.addr 23293 0#64))) := by
  unfold input3524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23289 (Flapjack.WordLangAddr.addr 23293 0#64)))).val
theorem output3524_def : output3524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23289 (Flapjack.WordLangAddr.addr 23293 0#64))) := by
  unfold output3524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3524_skip : Flapjack.WordAlloc.isSkip output3524 = false := by
  rw [output3524_def]
  conv => lhs; cbv
  try rfl
theorem node3524_eq : Flapjack.WordAlloc.removeDeadStructural input3524 value5 value1 value2 = (output3524, value1766, value1) := by
  rw [input3524_def, output3524_def]
  try (conv => lhs; cbv)
  try rfl

def value1767 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23293, 23281)])).val
theorem input3525_def : input3525 = (Flapjack.WordLangProgHOL.move 0 [(23293, 23281)]) := by
  unfold input3525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23293, 23281)])).val
theorem output3525_def : output3525 = (Flapjack.WordLangProgHOL.move 0 [(23293, 23281)]) := by
  unfold output3525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3525_skip : Flapjack.WordAlloc.isSkip output3525 = false := by
  rw [output3525_def]
  conv => lhs; cbv
  try rfl
theorem node3525_eq : Flapjack.WordAlloc.removeDeadStructural input3525 value1766 value1 value2 = (output3525, value1767, value1) := by
  rw [input3525_def, output3525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3525 input3524)).val
theorem input3526_def : input3526 = (.seq input3525 input3524) := by
  unfold input3526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3525 output3524)).val
theorem output3526_def : output3526 = (.seq output3525 output3524) := by
  unfold output3526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3526_skip : Flapjack.WordAlloc.isSkip output3526 = false := by
  rw [output3526_def]
  conv => lhs; cbv
  try rfl
theorem node3526_eq : Flapjack.WordAlloc.removeDeadStructural input3526 value5 value1 value2 = (output3526, value1767, value1) := by
  rw [input3526_def, output3526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3524_eq]
  dsimp only
  rw [node3525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1768 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23289 0#64))).val
theorem input3527_def : input3527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23289 0#64)) := by
  unfold input3527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23289 0#64))).val
theorem output3527_def : output3527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23289 0#64)) := by
  unfold output3527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3527_skip : Flapjack.WordAlloc.isSkip output3527 = false := by
  rw [output3527_def]
  conv => lhs; cbv
  try rfl
theorem node3527_eq : Flapjack.WordAlloc.removeDeadStructural input3527 value1767 value1 value2 = (output3527, value1768, value1) := by
  rw [input3527_def, output3527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23285 0#64))).val
theorem input3528_def : input3528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23285 0#64)) := by
  unfold input3528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3528_def : output3528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3528_skip : Flapjack.WordAlloc.isSkip output3528 = true := by
  rw [output3528_def]
  conv => lhs; cbv
  try rfl
theorem node3528_eq : Flapjack.WordAlloc.removeDeadStructural input3528 value1768 value1 value2 = (output3528, value1768, value1) := by
  rw [input3528_def, output3528_def]
  try (conv => lhs; cbv)
  try rfl

def value1769 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23281 23273 (Flapjack.WordRegImm.reg 23277))))).val
theorem input3529_def : input3529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23281 23273 (Flapjack.WordRegImm.reg 23277)))) := by
  unfold input3529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23281 23273 (Flapjack.WordRegImm.reg 23277))))).val
theorem output3529_def : output3529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23281 23273 (Flapjack.WordRegImm.reg 23277)))) := by
  unfold output3529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3529_skip : Flapjack.WordAlloc.isSkip output3529 = false := by
  rw [output3529_def]
  conv => lhs; cbv
  try rfl
theorem node3529_eq : Flapjack.WordAlloc.removeDeadStructural input3529 value1768 value1 value2 = (output3529, value1769, value1) := by
  rw [input3529_def, output3529_def]
  try (conv => lhs; cbv)
  try rfl

def value1770 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23277 5368#64))).val
theorem input3530_def : input3530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23277 5368#64)) := by
  unfold input3530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23277 5368#64))).val
theorem output3530_def : output3530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23277 5368#64)) := by
  unfold output3530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3530_skip : Flapjack.WordAlloc.isSkip output3530 = false := by
  rw [output3530_def]
  conv => lhs; cbv
  try rfl
theorem node3530_eq : Flapjack.WordAlloc.removeDeadStructural input3530 value1769 value1 value2 = (output3530, value1770, value1) := by
  rw [input3530_def, output3530_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3530 input3529)).val
theorem input3531_def : input3531 = (.seq input3530 input3529) := by
  unfold input3531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3530 output3529)).val
theorem output3531_def : output3531 = (.seq output3530 output3529) := by
  unfold output3531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3531_skip : Flapjack.WordAlloc.isSkip output3531 = false := by
  rw [output3531_def]
  conv => lhs; cbv
  try rfl
theorem node3531_eq : Flapjack.WordAlloc.removeDeadStructural input3531 value1768 value1 value2 = (output3531, value1770, value1) := by
  rw [input3531_def, output3531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3529_eq]
  dsimp only
  rw [node3530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1771 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23273 (Flapjack.WordLangAddr.addr 23269 18446744073709551104#64)))).val
theorem input3532_def : input3532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23273 (Flapjack.WordLangAddr.addr 23269 18446744073709551104#64))) := by
  unfold input3532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23273 (Flapjack.WordLangAddr.addr 23269 18446744073709551104#64)))).val
theorem output3532_def : output3532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23273 (Flapjack.WordLangAddr.addr 23269 18446744073709551104#64))) := by
  unfold output3532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3532_skip : Flapjack.WordAlloc.isSkip output3532 = false := by
  rw [output3532_def]
  conv => lhs; cbv
  try rfl
theorem node3532_eq : Flapjack.WordAlloc.removeDeadStructural input3532 value1770 value1 value2 = (output3532, value1771, value1) := by
  rw [input3532_def, output3532_def]
  try (conv => lhs; cbv)
  try rfl

def value1772 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23269 23265)).val
theorem input3533_def : input3533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23269 23265) := by
  unfold input3533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23269 23265)).val
theorem output3533_def : output3533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23269 23265) := by
  unfold output3533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3533_skip : Flapjack.WordAlloc.isSkip output3533 = false := by
  rw [output3533_def]
  conv => lhs; cbv
  try rfl
theorem node3533_eq : Flapjack.WordAlloc.removeDeadStructural input3533 value1771 value1 value2 = (output3533, value1772, value1) := by
  rw [input3533_def, output3533_def]
  try (conv => lhs; cbv)
  try rfl

def value1773 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23265 23261 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3534_def : input3534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23265 23261 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23265 23261 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3534_def : output3534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23265 23261 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3534_skip : Flapjack.WordAlloc.isSkip output3534 = false := by
  rw [output3534_def]
  conv => lhs; cbv
  try rfl
theorem node3534_eq : Flapjack.WordAlloc.removeDeadStructural input3534 value1772 value1 value2 = (output3534, value1773, value1) := by
  rw [input3534_def, output3534_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23261 Flapjack.WordStore.heapLength)).val
theorem input3535_def : input3535 = (Flapjack.WordLangProgHOL.get 23261 Flapjack.WordStore.heapLength) := by
  unfold input3535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23261 Flapjack.WordStore.heapLength)).val
theorem output3535_def : output3535 = (Flapjack.WordLangProgHOL.get 23261 Flapjack.WordStore.heapLength) := by
  unfold output3535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3535_skip : Flapjack.WordAlloc.isSkip output3535 = false := by
  rw [output3535_def]
  conv => lhs; cbv
  try rfl
theorem node3535_eq : Flapjack.WordAlloc.removeDeadStructural input3535 value1773 value1 value2 = (output3535, value5, value1) := by
  rw [input3535_def, output3535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3535 input3534)).val
theorem input3536_def : input3536 = (.seq input3535 input3534) := by
  unfold input3536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3535 output3534)).val
theorem output3536_def : output3536 = (.seq output3535 output3534) := by
  unfold output3536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3536_skip : Flapjack.WordAlloc.isSkip output3536 = false := by
  rw [output3536_def]
  conv => lhs; cbv
  try rfl
theorem node3536_eq : Flapjack.WordAlloc.removeDeadStructural input3536 value1772 value1 value2 = (output3536, value5, value1) := by
  rw [input3536_def, output3536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3534_eq]
  dsimp only
  rw [node3535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3536 input3533)).val
theorem input3537_def : input3537 = (.seq input3536 input3533) := by
  unfold input3537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3536 output3533)).val
theorem output3537_def : output3537 = (.seq output3536 output3533) := by
  unfold output3537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3537_skip : Flapjack.WordAlloc.isSkip output3537 = false := by
  rw [output3537_def]
  conv => lhs; cbv
  try rfl
theorem node3537_eq : Flapjack.WordAlloc.removeDeadStructural input3537 value1771 value1 value2 = (output3537, value5, value1) := by
  rw [input3537_def, output3537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3533_eq]
  dsimp only
  rw [node3536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3537 input3532)).val
theorem input3538_def : input3538 = (.seq input3537 input3532) := by
  unfold input3538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3537 output3532)).val
theorem output3538_def : output3538 = (.seq output3537 output3532) := by
  unfold output3538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3538_skip : Flapjack.WordAlloc.isSkip output3538 = false := by
  rw [output3538_def]
  conv => lhs; cbv
  try rfl
theorem node3538_eq : Flapjack.WordAlloc.removeDeadStructural input3538 value1770 value1 value2 = (output3538, value5, value1) := by
  rw [input3538_def, output3538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3532_eq]
  dsimp only
  rw [node3537_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3538 input3531)).val
theorem input3539_def : input3539 = (.seq input3538 input3531) := by
  unfold input3539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3538 output3531)).val
theorem output3539_def : output3539 = (.seq output3538 output3531) := by
  unfold output3539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3539_skip : Flapjack.WordAlloc.isSkip output3539 = false := by
  rw [output3539_def]
  conv => lhs; cbv
  try rfl
theorem node3539_eq : Flapjack.WordAlloc.removeDeadStructural input3539 value1768 value1 value2 = (output3539, value5, value1) := by
  rw [input3539_def, output3539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3531_eq]
  dsimp only
  rw [node3538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1774 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23253 (Flapjack.WordLangAddr.addr 23257 0#64)))).val
theorem input3540_def : input3540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23253 (Flapjack.WordLangAddr.addr 23257 0#64))) := by
  unfold input3540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23253 (Flapjack.WordLangAddr.addr 23257 0#64)))).val
theorem output3540_def : output3540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23253 (Flapjack.WordLangAddr.addr 23257 0#64))) := by
  unfold output3540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3540_skip : Flapjack.WordAlloc.isSkip output3540 = false := by
  rw [output3540_def]
  conv => lhs; cbv
  try rfl
theorem node3540_eq : Flapjack.WordAlloc.removeDeadStructural input3540 value5 value1 value2 = (output3540, value1774, value1) := by
  rw [input3540_def, output3540_def]
  try (conv => lhs; cbv)
  try rfl

def value1775 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23257, 23245)])).val
theorem input3541_def : input3541 = (Flapjack.WordLangProgHOL.move 0 [(23257, 23245)]) := by
  unfold input3541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23257, 23245)])).val
theorem output3541_def : output3541 = (Flapjack.WordLangProgHOL.move 0 [(23257, 23245)]) := by
  unfold output3541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3541_skip : Flapjack.WordAlloc.isSkip output3541 = false := by
  rw [output3541_def]
  conv => lhs; cbv
  try rfl
theorem node3541_eq : Flapjack.WordAlloc.removeDeadStructural input3541 value1774 value1 value2 = (output3541, value1775, value1) := by
  rw [input3541_def, output3541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3541 input3540)).val
theorem input3542_def : input3542 = (.seq input3541 input3540) := by
  unfold input3542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3541 output3540)).val
theorem output3542_def : output3542 = (.seq output3541 output3540) := by
  unfold output3542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3542_skip : Flapjack.WordAlloc.isSkip output3542 = false := by
  rw [output3542_def]
  conv => lhs; cbv
  try rfl
theorem node3542_eq : Flapjack.WordAlloc.removeDeadStructural input3542 value5 value1 value2 = (output3542, value1775, value1) := by
  rw [input3542_def, output3542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3540_eq]
  dsimp only
  rw [node3541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1776 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23253 1#64))).val
theorem input3543_def : input3543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23253 1#64)) := by
  unfold input3543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23253 1#64))).val
theorem output3543_def : output3543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23253 1#64)) := by
  unfold output3543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3543_skip : Flapjack.WordAlloc.isSkip output3543 = false := by
  rw [output3543_def]
  conv => lhs; cbv
  try rfl
theorem node3543_eq : Flapjack.WordAlloc.removeDeadStructural input3543 value1775 value1 value2 = (output3543, value1776, value1) := by
  rw [input3543_def, output3543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23249 1#64))).val
theorem input3544_def : input3544 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23249 1#64)) := by
  unfold input3544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3544_def : output3544 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3544_skip : Flapjack.WordAlloc.isSkip output3544 = true := by
  rw [output3544_def]
  conv => lhs; cbv
  try rfl
theorem node3544_eq : Flapjack.WordAlloc.removeDeadStructural input3544 value1776 value1 value2 = (output3544, value1776, value1) := by
  rw [input3544_def, output3544_def]
  try (conv => lhs; cbv)
  try rfl

def value1777 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23245 23237 (Flapjack.WordRegImm.reg 23241))))).val
theorem input3545_def : input3545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23245 23237 (Flapjack.WordRegImm.reg 23241)))) := by
  unfold input3545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23245 23237 (Flapjack.WordRegImm.reg 23241))))).val
theorem output3545_def : output3545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23245 23237 (Flapjack.WordRegImm.reg 23241)))) := by
  unfold output3545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3545_skip : Flapjack.WordAlloc.isSkip output3545 = false := by
  rw [output3545_def]
  conv => lhs; cbv
  try rfl
theorem node3545_eq : Flapjack.WordAlloc.removeDeadStructural input3545 value1776 value1 value2 = (output3545, value1777, value1) := by
  rw [input3545_def, output3545_def]
  try (conv => lhs; cbv)
  try rfl

def value1778 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23241 5360#64))).val
theorem input3546_def : input3546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23241 5360#64)) := by
  unfold input3546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23241 5360#64))).val
theorem output3546_def : output3546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23241 5360#64)) := by
  unfold output3546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3546_skip : Flapjack.WordAlloc.isSkip output3546 = false := by
  rw [output3546_def]
  conv => lhs; cbv
  try rfl
theorem node3546_eq : Flapjack.WordAlloc.removeDeadStructural input3546 value1777 value1 value2 = (output3546, value1778, value1) := by
  rw [input3546_def, output3546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3546 input3545)).val
theorem input3547_def : input3547 = (.seq input3546 input3545) := by
  unfold input3547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3546 output3545)).val
theorem output3547_def : output3547 = (.seq output3546 output3545) := by
  unfold output3547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3547_skip : Flapjack.WordAlloc.isSkip output3547 = false := by
  rw [output3547_def]
  conv => lhs; cbv
  try rfl
theorem node3547_eq : Flapjack.WordAlloc.removeDeadStructural input3547 value1776 value1 value2 = (output3547, value1778, value1) := by
  rw [input3547_def, output3547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3545_eq]
  dsimp only
  rw [node3546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1779 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23237 (Flapjack.WordLangAddr.addr 23233 18446744073709551104#64)))).val
theorem input3548_def : input3548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23237 (Flapjack.WordLangAddr.addr 23233 18446744073709551104#64))) := by
  unfold input3548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23237 (Flapjack.WordLangAddr.addr 23233 18446744073709551104#64)))).val
theorem output3548_def : output3548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23237 (Flapjack.WordLangAddr.addr 23233 18446744073709551104#64))) := by
  unfold output3548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3548_skip : Flapjack.WordAlloc.isSkip output3548 = false := by
  rw [output3548_def]
  conv => lhs; cbv
  try rfl
theorem node3548_eq : Flapjack.WordAlloc.removeDeadStructural input3548 value1778 value1 value2 = (output3548, value1779, value1) := by
  rw [input3548_def, output3548_def]
  try (conv => lhs; cbv)
  try rfl

def value1780 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23233 23229)).val
theorem input3549_def : input3549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23233 23229) := by
  unfold input3549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23233 23229)).val
theorem output3549_def : output3549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23233 23229) := by
  unfold output3549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3549_skip : Flapjack.WordAlloc.isSkip output3549 = false := by
  rw [output3549_def]
  conv => lhs; cbv
  try rfl
theorem node3549_eq : Flapjack.WordAlloc.removeDeadStructural input3549 value1779 value1 value2 = (output3549, value1780, value1) := by
  rw [input3549_def, output3549_def]
  try (conv => lhs; cbv)
  try rfl

def value1781 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23229 23225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3550_def : input3550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23229 23225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23229 23225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3550_def : output3550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23229 23225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3550_skip : Flapjack.WordAlloc.isSkip output3550 = false := by
  rw [output3550_def]
  conv => lhs; cbv
  try rfl
theorem node3550_eq : Flapjack.WordAlloc.removeDeadStructural input3550 value1780 value1 value2 = (output3550, value1781, value1) := by
  rw [input3550_def, output3550_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23225 Flapjack.WordStore.heapLength)).val
theorem input3551_def : input3551 = (Flapjack.WordLangProgHOL.get 23225 Flapjack.WordStore.heapLength) := by
  unfold input3551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23225 Flapjack.WordStore.heapLength)).val
theorem output3551_def : output3551 = (Flapjack.WordLangProgHOL.get 23225 Flapjack.WordStore.heapLength) := by
  unfold output3551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3551_skip : Flapjack.WordAlloc.isSkip output3551 = false := by
  rw [output3551_def]
  conv => lhs; cbv
  try rfl
theorem node3551_eq : Flapjack.WordAlloc.removeDeadStructural input3551 value1781 value1 value2 = (output3551, value5, value1) := by
  rw [input3551_def, output3551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3551 input3550)).val
theorem input3552_def : input3552 = (.seq input3551 input3550) := by
  unfold input3552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3551 output3550)).val
theorem output3552_def : output3552 = (.seq output3551 output3550) := by
  unfold output3552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3552_skip : Flapjack.WordAlloc.isSkip output3552 = false := by
  rw [output3552_def]
  conv => lhs; cbv
  try rfl
theorem node3552_eq : Flapjack.WordAlloc.removeDeadStructural input3552 value1780 value1 value2 = (output3552, value5, value1) := by
  rw [input3552_def, output3552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3550_eq]
  dsimp only
  rw [node3551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3552 input3549)).val
theorem input3553_def : input3553 = (.seq input3552 input3549) := by
  unfold input3553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3552 output3549)).val
theorem output3553_def : output3553 = (.seq output3552 output3549) := by
  unfold output3553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3553_skip : Flapjack.WordAlloc.isSkip output3553 = false := by
  rw [output3553_def]
  conv => lhs; cbv
  try rfl
theorem node3553_eq : Flapjack.WordAlloc.removeDeadStructural input3553 value1779 value1 value2 = (output3553, value5, value1) := by
  rw [input3553_def, output3553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3549_eq]
  dsimp only
  rw [node3552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3553 input3548)).val
theorem input3554_def : input3554 = (.seq input3553 input3548) := by
  unfold input3554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3553 output3548)).val
theorem output3554_def : output3554 = (.seq output3553 output3548) := by
  unfold output3554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3554_skip : Flapjack.WordAlloc.isSkip output3554 = false := by
  rw [output3554_def]
  conv => lhs; cbv
  try rfl
theorem node3554_eq : Flapjack.WordAlloc.removeDeadStructural input3554 value1778 value1 value2 = (output3554, value5, value1) := by
  rw [input3554_def, output3554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3548_eq]
  dsimp only
  rw [node3553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3554 input3547)).val
theorem input3555_def : input3555 = (.seq input3554 input3547) := by
  unfold input3555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3554 output3547)).val
theorem output3555_def : output3555 = (.seq output3554 output3547) := by
  unfold output3555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3555_skip : Flapjack.WordAlloc.isSkip output3555 = false := by
  rw [output3555_def]
  conv => lhs; cbv
  try rfl
theorem node3555_eq : Flapjack.WordAlloc.removeDeadStructural input3555 value1776 value1 value2 = (output3555, value5, value1) := by
  rw [input3555_def, output3555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3547_eq]
  dsimp only
  rw [node3554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1782 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23217 (Flapjack.WordLangAddr.addr 23221 0#64)))).val
theorem input3556_def : input3556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23217 (Flapjack.WordLangAddr.addr 23221 0#64))) := by
  unfold input3556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23217 (Flapjack.WordLangAddr.addr 23221 0#64)))).val
theorem output3556_def : output3556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23217 (Flapjack.WordLangAddr.addr 23221 0#64))) := by
  unfold output3556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3556_skip : Flapjack.WordAlloc.isSkip output3556 = false := by
  rw [output3556_def]
  conv => lhs; cbv
  try rfl
theorem node3556_eq : Flapjack.WordAlloc.removeDeadStructural input3556 value5 value1 value2 = (output3556, value1782, value1) := by
  rw [input3556_def, output3556_def]
  try (conv => lhs; cbv)
  try rfl

def value1783 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23221, 23209)])).val
theorem input3557_def : input3557 = (Flapjack.WordLangProgHOL.move 0 [(23221, 23209)]) := by
  unfold input3557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23221, 23209)])).val
theorem output3557_def : output3557 = (Flapjack.WordLangProgHOL.move 0 [(23221, 23209)]) := by
  unfold output3557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3557_skip : Flapjack.WordAlloc.isSkip output3557 = false := by
  rw [output3557_def]
  conv => lhs; cbv
  try rfl
theorem node3557_eq : Flapjack.WordAlloc.removeDeadStructural input3557 value1782 value1 value2 = (output3557, value1783, value1) := by
  rw [input3557_def, output3557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3557 input3556)).val
theorem input3558_def : input3558 = (.seq input3557 input3556) := by
  unfold input3558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3557 output3556)).val
theorem output3558_def : output3558 = (.seq output3557 output3556) := by
  unfold output3558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3558_skip : Flapjack.WordAlloc.isSkip output3558 = false := by
  rw [output3558_def]
  conv => lhs; cbv
  try rfl
theorem node3558_eq : Flapjack.WordAlloc.removeDeadStructural input3558 value5 value1 value2 = (output3558, value1783, value1) := by
  rw [input3558_def, output3558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3556_eq]
  dsimp only
  rw [node3557_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1784 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23217 0#64))).val
theorem input3559_def : input3559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23217 0#64)) := by
  unfold input3559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23217 0#64))).val
theorem output3559_def : output3559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23217 0#64)) := by
  unfold output3559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3559_skip : Flapjack.WordAlloc.isSkip output3559 = false := by
  rw [output3559_def]
  conv => lhs; cbv
  try rfl
theorem node3559_eq : Flapjack.WordAlloc.removeDeadStructural input3559 value1783 value1 value2 = (output3559, value1784, value1) := by
  rw [input3559_def, output3559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23213 0#64))).val
theorem input3560_def : input3560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23213 0#64)) := by
  unfold input3560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3560_def : output3560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3560_skip : Flapjack.WordAlloc.isSkip output3560 = true := by
  rw [output3560_def]
  conv => lhs; cbv
  try rfl
theorem node3560_eq : Flapjack.WordAlloc.removeDeadStructural input3560 value1784 value1 value2 = (output3560, value1784, value1) := by
  rw [input3560_def, output3560_def]
  try (conv => lhs; cbv)
  try rfl

def value1785 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23209 23201 (Flapjack.WordRegImm.reg 23205))))).val
theorem input3561_def : input3561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23209 23201 (Flapjack.WordRegImm.reg 23205)))) := by
  unfold input3561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23209 23201 (Flapjack.WordRegImm.reg 23205))))).val
theorem output3561_def : output3561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23209 23201 (Flapjack.WordRegImm.reg 23205)))) := by
  unfold output3561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3561_skip : Flapjack.WordAlloc.isSkip output3561 = false := by
  rw [output3561_def]
  conv => lhs; cbv
  try rfl
theorem node3561_eq : Flapjack.WordAlloc.removeDeadStructural input3561 value1784 value1 value2 = (output3561, value1785, value1) := by
  rw [input3561_def, output3561_def]
  try (conv => lhs; cbv)
  try rfl

def value1786 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23205 5352#64))).val
theorem input3562_def : input3562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23205 5352#64)) := by
  unfold input3562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23205 5352#64))).val
theorem output3562_def : output3562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23205 5352#64)) := by
  unfold output3562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3562_skip : Flapjack.WordAlloc.isSkip output3562 = false := by
  rw [output3562_def]
  conv => lhs; cbv
  try rfl
theorem node3562_eq : Flapjack.WordAlloc.removeDeadStructural input3562 value1785 value1 value2 = (output3562, value1786, value1) := by
  rw [input3562_def, output3562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3562 input3561)).val
theorem input3563_def : input3563 = (.seq input3562 input3561) := by
  unfold input3563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3562 output3561)).val
theorem output3563_def : output3563 = (.seq output3562 output3561) := by
  unfold output3563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3563_skip : Flapjack.WordAlloc.isSkip output3563 = false := by
  rw [output3563_def]
  conv => lhs; cbv
  try rfl
theorem node3563_eq : Flapjack.WordAlloc.removeDeadStructural input3563 value1784 value1 value2 = (output3563, value1786, value1) := by
  rw [input3563_def, output3563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3561_eq]
  dsimp only
  rw [node3562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1787 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23201 (Flapjack.WordLangAddr.addr 23197 18446744073709551104#64)))).val
theorem input3564_def : input3564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23201 (Flapjack.WordLangAddr.addr 23197 18446744073709551104#64))) := by
  unfold input3564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23201 (Flapjack.WordLangAddr.addr 23197 18446744073709551104#64)))).val
theorem output3564_def : output3564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23201 (Flapjack.WordLangAddr.addr 23197 18446744073709551104#64))) := by
  unfold output3564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3564_skip : Flapjack.WordAlloc.isSkip output3564 = false := by
  rw [output3564_def]
  conv => lhs; cbv
  try rfl
theorem node3564_eq : Flapjack.WordAlloc.removeDeadStructural input3564 value1786 value1 value2 = (output3564, value1787, value1) := by
  rw [input3564_def, output3564_def]
  try (conv => lhs; cbv)
  try rfl

def value1788 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23197 23193)).val
theorem input3565_def : input3565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23197 23193) := by
  unfold input3565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23197 23193)).val
theorem output3565_def : output3565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23197 23193) := by
  unfold output3565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3565_skip : Flapjack.WordAlloc.isSkip output3565 = false := by
  rw [output3565_def]
  conv => lhs; cbv
  try rfl
theorem node3565_eq : Flapjack.WordAlloc.removeDeadStructural input3565 value1787 value1 value2 = (output3565, value1788, value1) := by
  rw [input3565_def, output3565_def]
  try (conv => lhs; cbv)
  try rfl

def value1789 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23193 23189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3566_def : input3566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23193 23189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23193 23189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3566_def : output3566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23193 23189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3566_skip : Flapjack.WordAlloc.isSkip output3566 = false := by
  rw [output3566_def]
  conv => lhs; cbv
  try rfl
theorem node3566_eq : Flapjack.WordAlloc.removeDeadStructural input3566 value1788 value1 value2 = (output3566, value1789, value1) := by
  rw [input3566_def, output3566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23189 Flapjack.WordStore.heapLength)).val
theorem input3567_def : input3567 = (Flapjack.WordLangProgHOL.get 23189 Flapjack.WordStore.heapLength) := by
  unfold input3567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23189 Flapjack.WordStore.heapLength)).val
theorem output3567_def : output3567 = (Flapjack.WordLangProgHOL.get 23189 Flapjack.WordStore.heapLength) := by
  unfold output3567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3567_skip : Flapjack.WordAlloc.isSkip output3567 = false := by
  rw [output3567_def]
  conv => lhs; cbv
  try rfl
theorem node3567_eq : Flapjack.WordAlloc.removeDeadStructural input3567 value1789 value1 value2 = (output3567, value5, value1) := by
  rw [input3567_def, output3567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3567 input3566)).val
theorem input3568_def : input3568 = (.seq input3567 input3566) := by
  unfold input3568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3567 output3566)).val
theorem output3568_def : output3568 = (.seq output3567 output3566) := by
  unfold output3568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3568_skip : Flapjack.WordAlloc.isSkip output3568 = false := by
  rw [output3568_def]
  conv => lhs; cbv
  try rfl
theorem node3568_eq : Flapjack.WordAlloc.removeDeadStructural input3568 value1788 value1 value2 = (output3568, value5, value1) := by
  rw [input3568_def, output3568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3566_eq]
  dsimp only
  rw [node3567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3568 input3565)).val
theorem input3569_def : input3569 = (.seq input3568 input3565) := by
  unfold input3569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3568 output3565)).val
theorem output3569_def : output3569 = (.seq output3568 output3565) := by
  unfold output3569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3569_skip : Flapjack.WordAlloc.isSkip output3569 = false := by
  rw [output3569_def]
  conv => lhs; cbv
  try rfl
theorem node3569_eq : Flapjack.WordAlloc.removeDeadStructural input3569 value1787 value1 value2 = (output3569, value5, value1) := by
  rw [input3569_def, output3569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3565_eq]
  dsimp only
  rw [node3568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3569 input3564)).val
theorem input3570_def : input3570 = (.seq input3569 input3564) := by
  unfold input3570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3569 output3564)).val
theorem output3570_def : output3570 = (.seq output3569 output3564) := by
  unfold output3570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3570_skip : Flapjack.WordAlloc.isSkip output3570 = false := by
  rw [output3570_def]
  conv => lhs; cbv
  try rfl
theorem node3570_eq : Flapjack.WordAlloc.removeDeadStructural input3570 value1786 value1 value2 = (output3570, value5, value1) := by
  rw [input3570_def, output3570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3564_eq]
  dsimp only
  rw [node3569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3570 input3563)).val
theorem input3571_def : input3571 = (.seq input3570 input3563) := by
  unfold input3571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3570 output3563)).val
theorem output3571_def : output3571 = (.seq output3570 output3563) := by
  unfold output3571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3571_skip : Flapjack.WordAlloc.isSkip output3571 = false := by
  rw [output3571_def]
  conv => lhs; cbv
  try rfl
theorem node3571_eq : Flapjack.WordAlloc.removeDeadStructural input3571 value1784 value1 value2 = (output3571, value5, value1) := by
  rw [input3571_def, output3571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3563_eq]
  dsimp only
  rw [node3570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1790 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23181 (Flapjack.WordLangAddr.addr 23185 0#64)))).val
theorem input3572_def : input3572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23181 (Flapjack.WordLangAddr.addr 23185 0#64))) := by
  unfold input3572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23181 (Flapjack.WordLangAddr.addr 23185 0#64)))).val
theorem output3572_def : output3572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 23181 (Flapjack.WordLangAddr.addr 23185 0#64))) := by
  unfold output3572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3572_skip : Flapjack.WordAlloc.isSkip output3572 = false := by
  rw [output3572_def]
  conv => lhs; cbv
  try rfl
theorem node3572_eq : Flapjack.WordAlloc.removeDeadStructural input3572 value5 value1 value2 = (output3572, value1790, value1) := by
  rw [input3572_def, output3572_def]
  try (conv => lhs; cbv)
  try rfl

def value1791 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23185, 23173)])).val
theorem input3573_def : input3573 = (Flapjack.WordLangProgHOL.move 0 [(23185, 23173)]) := by
  unfold input3573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(23185, 23173)])).val
theorem output3573_def : output3573 = (Flapjack.WordLangProgHOL.move 0 [(23185, 23173)]) := by
  unfold output3573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3573_skip : Flapjack.WordAlloc.isSkip output3573 = false := by
  rw [output3573_def]
  conv => lhs; cbv
  try rfl
theorem node3573_eq : Flapjack.WordAlloc.removeDeadStructural input3573 value1790 value1 value2 = (output3573, value1791, value1) := by
  rw [input3573_def, output3573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3573 input3572)).val
theorem input3574_def : input3574 = (.seq input3573 input3572) := by
  unfold input3574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3573 output3572)).val
theorem output3574_def : output3574 = (.seq output3573 output3572) := by
  unfold output3574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3574_skip : Flapjack.WordAlloc.isSkip output3574 = false := by
  rw [output3574_def]
  conv => lhs; cbv
  try rfl
theorem node3574_eq : Flapjack.WordAlloc.removeDeadStructural input3574 value5 value1 value2 = (output3574, value1791, value1) := by
  rw [input3574_def, output3574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3572_eq]
  dsimp only
  rw [node3573_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1792 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23181 0#64))).val
theorem input3575_def : input3575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23181 0#64)) := by
  unfold input3575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23181 0#64))).val
theorem output3575_def : output3575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23181 0#64)) := by
  unfold output3575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3575_skip : Flapjack.WordAlloc.isSkip output3575 = false := by
  rw [output3575_def]
  conv => lhs; cbv
  try rfl
theorem node3575_eq : Flapjack.WordAlloc.removeDeadStructural input3575 value1791 value1 value2 = (output3575, value1792, value1) := by
  rw [input3575_def, output3575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23177 0#64))).val
theorem input3576_def : input3576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23177 0#64)) := by
  unfold input3576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3576_def : output3576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3576_skip : Flapjack.WordAlloc.isSkip output3576 = true := by
  rw [output3576_def]
  conv => lhs; cbv
  try rfl
theorem node3576_eq : Flapjack.WordAlloc.removeDeadStructural input3576 value1792 value1 value2 = (output3576, value1792, value1) := by
  rw [input3576_def, output3576_def]
  try (conv => lhs; cbv)
  try rfl

def value1793 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23173 23165 (Flapjack.WordRegImm.reg 23169))))).val
theorem input3577_def : input3577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23173 23165 (Flapjack.WordRegImm.reg 23169)))) := by
  unfold input3577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23173 23165 (Flapjack.WordRegImm.reg 23169))))).val
theorem output3577_def : output3577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 23173 23165 (Flapjack.WordRegImm.reg 23169)))) := by
  unfold output3577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3577_skip : Flapjack.WordAlloc.isSkip output3577 = false := by
  rw [output3577_def]
  conv => lhs; cbv
  try rfl
theorem node3577_eq : Flapjack.WordAlloc.removeDeadStructural input3577 value1792 value1 value2 = (output3577, value1793, value1) := by
  rw [input3577_def, output3577_def]
  try (conv => lhs; cbv)
  try rfl

def value1794 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23169 5344#64))).val
theorem input3578_def : input3578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23169 5344#64)) := by
  unfold input3578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23169 5344#64))).val
theorem output3578_def : output3578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 23169 5344#64)) := by
  unfold output3578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3578_skip : Flapjack.WordAlloc.isSkip output3578 = false := by
  rw [output3578_def]
  conv => lhs; cbv
  try rfl
theorem node3578_eq : Flapjack.WordAlloc.removeDeadStructural input3578 value1793 value1 value2 = (output3578, value1794, value1) := by
  rw [input3578_def, output3578_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3578 input3577)).val
theorem input3579_def : input3579 = (.seq input3578 input3577) := by
  unfold input3579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3578 output3577)).val
theorem output3579_def : output3579 = (.seq output3578 output3577) := by
  unfold output3579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3579_skip : Flapjack.WordAlloc.isSkip output3579 = false := by
  rw [output3579_def]
  conv => lhs; cbv
  try rfl
theorem node3579_eq : Flapjack.WordAlloc.removeDeadStructural input3579 value1792 value1 value2 = (output3579, value1794, value1) := by
  rw [input3579_def, output3579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3577_eq]
  dsimp only
  rw [node3578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1795 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23165 (Flapjack.WordLangAddr.addr 23161 18446744073709551104#64)))).val
theorem input3580_def : input3580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23165 (Flapjack.WordLangAddr.addr 23161 18446744073709551104#64))) := by
  unfold input3580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23165 (Flapjack.WordLangAddr.addr 23161 18446744073709551104#64)))).val
theorem output3580_def : output3580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 23165 (Flapjack.WordLangAddr.addr 23161 18446744073709551104#64))) := by
  unfold output3580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3580_skip : Flapjack.WordAlloc.isSkip output3580 = false := by
  rw [output3580_def]
  conv => lhs; cbv
  try rfl
theorem node3580_eq : Flapjack.WordAlloc.removeDeadStructural input3580 value1794 value1 value2 = (output3580, value1795, value1) := by
  rw [input3580_def, output3580_def]
  try (conv => lhs; cbv)
  try rfl

def value1796 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23161 23157)).val
theorem input3581_def : input3581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23161 23157) := by
  unfold input3581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23161 23157)).val
theorem output3581_def : output3581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 23161 23157) := by
  unfold output3581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3581_skip : Flapjack.WordAlloc.isSkip output3581 = false := by
  rw [output3581_def]
  conv => lhs; cbv
  try rfl
theorem node3581_eq : Flapjack.WordAlloc.removeDeadStructural input3581 value1795 value1 value2 = (output3581, value1796, value1) := by
  rw [input3581_def, output3581_def]
  try (conv => lhs; cbv)
  try rfl

def value1797 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23157 23153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3582_def : input3582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23157 23153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23157 23153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3582_def : output3582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 23157 23153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3582_skip : Flapjack.WordAlloc.isSkip output3582 = false := by
  rw [output3582_def]
  conv => lhs; cbv
  try rfl
theorem node3582_eq : Flapjack.WordAlloc.removeDeadStructural input3582 value1796 value1 value2 = (output3582, value1797, value1) := by
  rw [input3582_def, output3582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23153 Flapjack.WordStore.heapLength)).val
theorem input3583_def : input3583 = (Flapjack.WordLangProgHOL.get 23153 Flapjack.WordStore.heapLength) := by
  unfold input3583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 23153 Flapjack.WordStore.heapLength)).val
theorem output3583_def : output3583 = (Flapjack.WordLangProgHOL.get 23153 Flapjack.WordStore.heapLength) := by
  unfold output3583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3583_skip : Flapjack.WordAlloc.isSkip output3583 = false := by
  rw [output3583_def]
  conv => lhs; cbv
  try rfl
theorem node3583_eq : Flapjack.WordAlloc.removeDeadStructural input3583 value1797 value1 value2 = (output3583, value5, value1) := by
  rw [input3583_def, output3583_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node3583_eq
end InitECandidate.Proofs.DeadStages713
