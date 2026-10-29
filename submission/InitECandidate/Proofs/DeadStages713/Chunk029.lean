import InitECandidate.Proofs.DeadStages713.Chunk028
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input7424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7423 input7422)).val
theorem input7424_def : input7424 = (.seq input7423 input7422) := by
  unfold input7424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7423 output7422)).val
theorem output7424_def : output7424 = (.seq output7423 output7422) := by
  unfold output7424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7424_skip : Flapjack.WordAlloc.isSkip output7424 = false := by
  rw [output7424_def]
  conv => lhs; cbv
  try rfl
theorem node7424_eq : Flapjack.WordAlloc.removeDeadStructural input7424 value3716 value1 value2 = (output7424, value5, value1) := by
  rw [input7424_def, output7424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7422_eq]
  dsimp only
  rw [node7423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7424 input7421)).val
theorem input7425_def : input7425 = (.seq input7424 input7421) := by
  unfold input7425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7424 output7421)).val
theorem output7425_def : output7425 = (.seq output7424 output7421) := by
  unfold output7425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7425_skip : Flapjack.WordAlloc.isSkip output7425 = false := by
  rw [output7425_def]
  conv => lhs; cbv
  try rfl
theorem node7425_eq : Flapjack.WordAlloc.removeDeadStructural input7425 value3715 value1 value2 = (output7425, value5, value1) := by
  rw [input7425_def, output7425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7421_eq]
  dsimp only
  rw [node7424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7425 input7420)).val
theorem input7426_def : input7426 = (.seq input7425 input7420) := by
  unfold input7426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7425 output7420)).val
theorem output7426_def : output7426 = (.seq output7425 output7420) := by
  unfold output7426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7426_skip : Flapjack.WordAlloc.isSkip output7426 = false := by
  rw [output7426_def]
  conv => lhs; cbv
  try rfl
theorem node7426_eq : Flapjack.WordAlloc.removeDeadStructural input7426 value3714 value1 value2 = (output7426, value5, value1) := by
  rw [input7426_def, output7426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7420_eq]
  dsimp only
  rw [node7425_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7426 input7419)).val
theorem input7427_def : input7427 = (.seq input7426 input7419) := by
  unfold input7427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7426 output7419)).val
theorem output7427_def : output7427 = (.seq output7426 output7419) := by
  unfold output7427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7427_skip : Flapjack.WordAlloc.isSkip output7427 = false := by
  rw [output7427_def]
  conv => lhs; cbv
  try rfl
theorem node7427_eq : Flapjack.WordAlloc.removeDeadStructural input7427 value3712 value1 value2 = (output7427, value5, value1) := by
  rw [input7427_def, output7427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7419_eq]
  dsimp only
  rw [node7426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3718 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14505 (Flapjack.WordLangAddr.addr 14509 0#64)))).val
theorem input7428_def : input7428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14505 (Flapjack.WordLangAddr.addr 14509 0#64))) := by
  unfold input7428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14505 (Flapjack.WordLangAddr.addr 14509 0#64)))).val
theorem output7428_def : output7428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14505 (Flapjack.WordLangAddr.addr 14509 0#64))) := by
  unfold output7428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7428_skip : Flapjack.WordAlloc.isSkip output7428 = false := by
  rw [output7428_def]
  conv => lhs; cbv
  try rfl
theorem node7428_eq : Flapjack.WordAlloc.removeDeadStructural input7428 value5 value1 value2 = (output7428, value3718, value1) := by
  rw [input7428_def, output7428_def]
  try (conv => lhs; cbv)
  try rfl

def value3719 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14509, 14497)])).val
theorem input7429_def : input7429 = (Flapjack.WordLangProgHOL.move 0 [(14509, 14497)]) := by
  unfold input7429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14509, 14497)])).val
theorem output7429_def : output7429 = (Flapjack.WordLangProgHOL.move 0 [(14509, 14497)]) := by
  unfold output7429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7429_skip : Flapjack.WordAlloc.isSkip output7429 = false := by
  rw [output7429_def]
  conv => lhs; cbv
  try rfl
theorem node7429_eq : Flapjack.WordAlloc.removeDeadStructural input7429 value3718 value1 value2 = (output7429, value3719, value1) := by
  rw [input7429_def, output7429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7429 input7428)).val
theorem input7430_def : input7430 = (.seq input7429 input7428) := by
  unfold input7430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7429 output7428)).val
theorem output7430_def : output7430 = (.seq output7429 output7428) := by
  unfold output7430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7430_skip : Flapjack.WordAlloc.isSkip output7430 = false := by
  rw [output7430_def]
  conv => lhs; cbv
  try rfl
theorem node7430_eq : Flapjack.WordAlloc.removeDeadStructural input7430 value5 value1 value2 = (output7430, value3719, value1) := by
  rw [input7430_def, output7430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7428_eq]
  dsimp only
  rw [node7429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3720 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14505 10320769399998235244#64))).val
theorem input7431_def : input7431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14505 10320769399998235244#64)) := by
  unfold input7431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14505 10320769399998235244#64))).val
theorem output7431_def : output7431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14505 10320769399998235244#64)) := by
  unfold output7431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7431_skip : Flapjack.WordAlloc.isSkip output7431 = false := by
  rw [output7431_def]
  conv => lhs; cbv
  try rfl
theorem node7431_eq : Flapjack.WordAlloc.removeDeadStructural input7431 value3719 value1 value2 = (output7431, value3720, value1) := by
  rw [input7431_def, output7431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14501 10320769399998235244#64))).val
theorem input7432_def : input7432 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14501 10320769399998235244#64)) := by
  unfold input7432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7432_def : output7432 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7432_skip : Flapjack.WordAlloc.isSkip output7432 = true := by
  rw [output7432_def]
  conv => lhs; cbv
  try rfl
theorem node7432_eq : Flapjack.WordAlloc.removeDeadStructural input7432 value3720 value1 value2 = (output7432, value3720, value1) := by
  rw [input7432_def, output7432_def]
  try (conv => lhs; cbv)
  try rfl

def value3721 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14497 14489 (Flapjack.WordRegImm.reg 14493))))).val
theorem input7433_def : input7433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14497 14489 (Flapjack.WordRegImm.reg 14493)))) := by
  unfold input7433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14497 14489 (Flapjack.WordRegImm.reg 14493))))).val
theorem output7433_def : output7433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14497 14489 (Flapjack.WordRegImm.reg 14493)))) := by
  unfold output7433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7433_skip : Flapjack.WordAlloc.isSkip output7433 = false := by
  rw [output7433_def]
  conv => lhs; cbv
  try rfl
theorem node7433_eq : Flapjack.WordAlloc.removeDeadStructural input7433 value3720 value1 value2 = (output7433, value3721, value1) := by
  rw [input7433_def, output7433_def]
  try (conv => lhs; cbv)
  try rfl

def value3722 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14493 3416#64))).val
theorem input7434_def : input7434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14493 3416#64)) := by
  unfold input7434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14493 3416#64))).val
theorem output7434_def : output7434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14493 3416#64)) := by
  unfold output7434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7434_skip : Flapjack.WordAlloc.isSkip output7434 = false := by
  rw [output7434_def]
  conv => lhs; cbv
  try rfl
theorem node7434_eq : Flapjack.WordAlloc.removeDeadStructural input7434 value3721 value1 value2 = (output7434, value3722, value1) := by
  rw [input7434_def, output7434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7434 input7433)).val
theorem input7435_def : input7435 = (.seq input7434 input7433) := by
  unfold input7435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7434 output7433)).val
theorem output7435_def : output7435 = (.seq output7434 output7433) := by
  unfold output7435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7435_skip : Flapjack.WordAlloc.isSkip output7435 = false := by
  rw [output7435_def]
  conv => lhs; cbv
  try rfl
theorem node7435_eq : Flapjack.WordAlloc.removeDeadStructural input7435 value3720 value1 value2 = (output7435, value3722, value1) := by
  rw [input7435_def, output7435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7433_eq]
  dsimp only
  rw [node7434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3723 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14489 (Flapjack.WordLangAddr.addr 14485 18446744073709551104#64)))).val
theorem input7436_def : input7436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14489 (Flapjack.WordLangAddr.addr 14485 18446744073709551104#64))) := by
  unfold input7436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14489 (Flapjack.WordLangAddr.addr 14485 18446744073709551104#64)))).val
theorem output7436_def : output7436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14489 (Flapjack.WordLangAddr.addr 14485 18446744073709551104#64))) := by
  unfold output7436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7436_skip : Flapjack.WordAlloc.isSkip output7436 = false := by
  rw [output7436_def]
  conv => lhs; cbv
  try rfl
theorem node7436_eq : Flapjack.WordAlloc.removeDeadStructural input7436 value3722 value1 value2 = (output7436, value3723, value1) := by
  rw [input7436_def, output7436_def]
  try (conv => lhs; cbv)
  try rfl

def value3724 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14485 14481)).val
theorem input7437_def : input7437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14485 14481) := by
  unfold input7437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14485 14481)).val
theorem output7437_def : output7437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14485 14481) := by
  unfold output7437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7437_skip : Flapjack.WordAlloc.isSkip output7437 = false := by
  rw [output7437_def]
  conv => lhs; cbv
  try rfl
theorem node7437_eq : Flapjack.WordAlloc.removeDeadStructural input7437 value3723 value1 value2 = (output7437, value3724, value1) := by
  rw [input7437_def, output7437_def]
  try (conv => lhs; cbv)
  try rfl

def value3725 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14481 14477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7438_def : input7438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14481 14477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14481 14477 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7438_def : output7438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14481 14477 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7438_skip : Flapjack.WordAlloc.isSkip output7438 = false := by
  rw [output7438_def]
  conv => lhs; cbv
  try rfl
theorem node7438_eq : Flapjack.WordAlloc.removeDeadStructural input7438 value3724 value1 value2 = (output7438, value3725, value1) := by
  rw [input7438_def, output7438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14477 Flapjack.WordStore.heapLength)).val
theorem input7439_def : input7439 = (Flapjack.WordLangProgHOL.get 14477 Flapjack.WordStore.heapLength) := by
  unfold input7439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14477 Flapjack.WordStore.heapLength)).val
theorem output7439_def : output7439 = (Flapjack.WordLangProgHOL.get 14477 Flapjack.WordStore.heapLength) := by
  unfold output7439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7439_skip : Flapjack.WordAlloc.isSkip output7439 = false := by
  rw [output7439_def]
  conv => lhs; cbv
  try rfl
theorem node7439_eq : Flapjack.WordAlloc.removeDeadStructural input7439 value3725 value1 value2 = (output7439, value5, value1) := by
  rw [input7439_def, output7439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7439 input7438)).val
theorem input7440_def : input7440 = (.seq input7439 input7438) := by
  unfold input7440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7439 output7438)).val
theorem output7440_def : output7440 = (.seq output7439 output7438) := by
  unfold output7440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7440_skip : Flapjack.WordAlloc.isSkip output7440 = false := by
  rw [output7440_def]
  conv => lhs; cbv
  try rfl
theorem node7440_eq : Flapjack.WordAlloc.removeDeadStructural input7440 value3724 value1 value2 = (output7440, value5, value1) := by
  rw [input7440_def, output7440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7438_eq]
  dsimp only
  rw [node7439_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7440 input7437)).val
theorem input7441_def : input7441 = (.seq input7440 input7437) := by
  unfold input7441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7440 output7437)).val
theorem output7441_def : output7441 = (.seq output7440 output7437) := by
  unfold output7441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7441_skip : Flapjack.WordAlloc.isSkip output7441 = false := by
  rw [output7441_def]
  conv => lhs; cbv
  try rfl
theorem node7441_eq : Flapjack.WordAlloc.removeDeadStructural input7441 value3723 value1 value2 = (output7441, value5, value1) := by
  rw [input7441_def, output7441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7437_eq]
  dsimp only
  rw [node7440_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7441 input7436)).val
theorem input7442_def : input7442 = (.seq input7441 input7436) := by
  unfold input7442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7441 output7436)).val
theorem output7442_def : output7442 = (.seq output7441 output7436) := by
  unfold output7442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7442_skip : Flapjack.WordAlloc.isSkip output7442 = false := by
  rw [output7442_def]
  conv => lhs; cbv
  try rfl
theorem node7442_eq : Flapjack.WordAlloc.removeDeadStructural input7442 value3722 value1 value2 = (output7442, value5, value1) := by
  rw [input7442_def, output7442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7436_eq]
  dsimp only
  rw [node7441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7442 input7435)).val
theorem input7443_def : input7443 = (.seq input7442 input7435) := by
  unfold input7443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7442 output7435)).val
theorem output7443_def : output7443 = (.seq output7442 output7435) := by
  unfold output7443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7443_skip : Flapjack.WordAlloc.isSkip output7443 = false := by
  rw [output7443_def]
  conv => lhs; cbv
  try rfl
theorem node7443_eq : Flapjack.WordAlloc.removeDeadStructural input7443 value3720 value1 value2 = (output7443, value5, value1) := by
  rw [input7443_def, output7443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7435_eq]
  dsimp only
  rw [node7442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3726 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14469 (Flapjack.WordLangAddr.addr 14473 0#64)))).val
theorem input7444_def : input7444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14469 (Flapjack.WordLangAddr.addr 14473 0#64))) := by
  unfold input7444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14469 (Flapjack.WordLangAddr.addr 14473 0#64)))).val
theorem output7444_def : output7444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14469 (Flapjack.WordLangAddr.addr 14473 0#64))) := by
  unfold output7444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7444_skip : Flapjack.WordAlloc.isSkip output7444 = false := by
  rw [output7444_def]
  conv => lhs; cbv
  try rfl
theorem node7444_eq : Flapjack.WordAlloc.removeDeadStructural input7444 value5 value1 value2 = (output7444, value3726, value1) := by
  rw [input7444_def, output7444_def]
  try (conv => lhs; cbv)
  try rfl

def value3727 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14473, 14461)])).val
theorem input7445_def : input7445 = (Flapjack.WordLangProgHOL.move 0 [(14473, 14461)]) := by
  unfold input7445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14473, 14461)])).val
theorem output7445_def : output7445 = (Flapjack.WordLangProgHOL.move 0 [(14473, 14461)]) := by
  unfold output7445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7445_skip : Flapjack.WordAlloc.isSkip output7445 = false := by
  rw [output7445_def]
  conv => lhs; cbv
  try rfl
theorem node7445_eq : Flapjack.WordAlloc.removeDeadStructural input7445 value3726 value1 value2 = (output7445, value3727, value1) := by
  rw [input7445_def, output7445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7445 input7444)).val
theorem input7446_def : input7446 = (.seq input7445 input7444) := by
  unfold input7446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7445 output7444)).val
theorem output7446_def : output7446 = (.seq output7445 output7444) := by
  unfold output7446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7446_skip : Flapjack.WordAlloc.isSkip output7446 = false := by
  rw [output7446_def]
  conv => lhs; cbv
  try rfl
theorem node7446_eq : Flapjack.WordAlloc.removeDeadStructural input7446 value5 value1 value2 = (output7446, value3727, value1) := by
  rw [input7446_def, output7446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7444_eq]
  dsimp only
  rw [node7445_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3728 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14469 2200974244968450750#64))).val
theorem input7447_def : input7447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14469 2200974244968450750#64)) := by
  unfold input7447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14469 2200974244968450750#64))).val
theorem output7447_def : output7447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14469 2200974244968450750#64)) := by
  unfold output7447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7447_skip : Flapjack.WordAlloc.isSkip output7447 = false := by
  rw [output7447_def]
  conv => lhs; cbv
  try rfl
theorem node7447_eq : Flapjack.WordAlloc.removeDeadStructural input7447 value3727 value1 value2 = (output7447, value3728, value1) := by
  rw [input7447_def, output7447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14465 2200974244968450750#64))).val
theorem input7448_def : input7448 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14465 2200974244968450750#64)) := by
  unfold input7448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7448_def : output7448 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7448_skip : Flapjack.WordAlloc.isSkip output7448 = true := by
  rw [output7448_def]
  conv => lhs; cbv
  try rfl
theorem node7448_eq : Flapjack.WordAlloc.removeDeadStructural input7448 value3728 value1 value2 = (output7448, value3728, value1) := by
  rw [input7448_def, output7448_def]
  try (conv => lhs; cbv)
  try rfl

def value3729 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14461 14453 (Flapjack.WordRegImm.reg 14457))))).val
theorem input7449_def : input7449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14461 14453 (Flapjack.WordRegImm.reg 14457)))) := by
  unfold input7449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14461 14453 (Flapjack.WordRegImm.reg 14457))))).val
theorem output7449_def : output7449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14461 14453 (Flapjack.WordRegImm.reg 14457)))) := by
  unfold output7449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7449_skip : Flapjack.WordAlloc.isSkip output7449 = false := by
  rw [output7449_def]
  conv => lhs; cbv
  try rfl
theorem node7449_eq : Flapjack.WordAlloc.removeDeadStructural input7449 value3728 value1 value2 = (output7449, value3729, value1) := by
  rw [input7449_def, output7449_def]
  try (conv => lhs; cbv)
  try rfl

def value3730 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14457 3408#64))).val
theorem input7450_def : input7450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14457 3408#64)) := by
  unfold input7450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14457 3408#64))).val
theorem output7450_def : output7450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14457 3408#64)) := by
  unfold output7450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7450_skip : Flapjack.WordAlloc.isSkip output7450 = false := by
  rw [output7450_def]
  conv => lhs; cbv
  try rfl
theorem node7450_eq : Flapjack.WordAlloc.removeDeadStructural input7450 value3729 value1 value2 = (output7450, value3730, value1) := by
  rw [input7450_def, output7450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7450 input7449)).val
theorem input7451_def : input7451 = (.seq input7450 input7449) := by
  unfold input7451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7450 output7449)).val
theorem output7451_def : output7451 = (.seq output7450 output7449) := by
  unfold output7451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7451_skip : Flapjack.WordAlloc.isSkip output7451 = false := by
  rw [output7451_def]
  conv => lhs; cbv
  try rfl
theorem node7451_eq : Flapjack.WordAlloc.removeDeadStructural input7451 value3728 value1 value2 = (output7451, value3730, value1) := by
  rw [input7451_def, output7451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7449_eq]
  dsimp only
  rw [node7450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3731 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14453 (Flapjack.WordLangAddr.addr 14449 18446744073709551104#64)))).val
theorem input7452_def : input7452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14453 (Flapjack.WordLangAddr.addr 14449 18446744073709551104#64))) := by
  unfold input7452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14453 (Flapjack.WordLangAddr.addr 14449 18446744073709551104#64)))).val
theorem output7452_def : output7452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14453 (Flapjack.WordLangAddr.addr 14449 18446744073709551104#64))) := by
  unfold output7452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7452_skip : Flapjack.WordAlloc.isSkip output7452 = false := by
  rw [output7452_def]
  conv => lhs; cbv
  try rfl
theorem node7452_eq : Flapjack.WordAlloc.removeDeadStructural input7452 value3730 value1 value2 = (output7452, value3731, value1) := by
  rw [input7452_def, output7452_def]
  try (conv => lhs; cbv)
  try rfl

def value3732 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14449 14445)).val
theorem input7453_def : input7453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14449 14445) := by
  unfold input7453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14449 14445)).val
theorem output7453_def : output7453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14449 14445) := by
  unfold output7453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7453_skip : Flapjack.WordAlloc.isSkip output7453 = false := by
  rw [output7453_def]
  conv => lhs; cbv
  try rfl
theorem node7453_eq : Flapjack.WordAlloc.removeDeadStructural input7453 value3731 value1 value2 = (output7453, value3732, value1) := by
  rw [input7453_def, output7453_def]
  try (conv => lhs; cbv)
  try rfl

def value3733 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14445 14441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7454_def : input7454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14445 14441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14445 14441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7454_def : output7454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14445 14441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7454_skip : Flapjack.WordAlloc.isSkip output7454 = false := by
  rw [output7454_def]
  conv => lhs; cbv
  try rfl
theorem node7454_eq : Flapjack.WordAlloc.removeDeadStructural input7454 value3732 value1 value2 = (output7454, value3733, value1) := by
  rw [input7454_def, output7454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14441 Flapjack.WordStore.heapLength)).val
theorem input7455_def : input7455 = (Flapjack.WordLangProgHOL.get 14441 Flapjack.WordStore.heapLength) := by
  unfold input7455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14441 Flapjack.WordStore.heapLength)).val
theorem output7455_def : output7455 = (Flapjack.WordLangProgHOL.get 14441 Flapjack.WordStore.heapLength) := by
  unfold output7455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7455_skip : Flapjack.WordAlloc.isSkip output7455 = false := by
  rw [output7455_def]
  conv => lhs; cbv
  try rfl
theorem node7455_eq : Flapjack.WordAlloc.removeDeadStructural input7455 value3733 value1 value2 = (output7455, value5, value1) := by
  rw [input7455_def, output7455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7455 input7454)).val
theorem input7456_def : input7456 = (.seq input7455 input7454) := by
  unfold input7456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7455 output7454)).val
theorem output7456_def : output7456 = (.seq output7455 output7454) := by
  unfold output7456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7456_skip : Flapjack.WordAlloc.isSkip output7456 = false := by
  rw [output7456_def]
  conv => lhs; cbv
  try rfl
theorem node7456_eq : Flapjack.WordAlloc.removeDeadStructural input7456 value3732 value1 value2 = (output7456, value5, value1) := by
  rw [input7456_def, output7456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7454_eq]
  dsimp only
  rw [node7455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7456 input7453)).val
theorem input7457_def : input7457 = (.seq input7456 input7453) := by
  unfold input7457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7456 output7453)).val
theorem output7457_def : output7457 = (.seq output7456 output7453) := by
  unfold output7457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7457_skip : Flapjack.WordAlloc.isSkip output7457 = false := by
  rw [output7457_def]
  conv => lhs; cbv
  try rfl
theorem node7457_eq : Flapjack.WordAlloc.removeDeadStructural input7457 value3731 value1 value2 = (output7457, value5, value1) := by
  rw [input7457_def, output7457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7453_eq]
  dsimp only
  rw [node7456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7457 input7452)).val
theorem input7458_def : input7458 = (.seq input7457 input7452) := by
  unfold input7458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7457 output7452)).val
theorem output7458_def : output7458 = (.seq output7457 output7452) := by
  unfold output7458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7458_skip : Flapjack.WordAlloc.isSkip output7458 = false := by
  rw [output7458_def]
  conv => lhs; cbv
  try rfl
theorem node7458_eq : Flapjack.WordAlloc.removeDeadStructural input7458 value3730 value1 value2 = (output7458, value5, value1) := by
  rw [input7458_def, output7458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7452_eq]
  dsimp only
  rw [node7457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7458 input7451)).val
theorem input7459_def : input7459 = (.seq input7458 input7451) := by
  unfold input7459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7458 output7451)).val
theorem output7459_def : output7459 = (.seq output7458 output7451) := by
  unfold output7459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7459_skip : Flapjack.WordAlloc.isSkip output7459 = false := by
  rw [output7459_def]
  conv => lhs; cbv
  try rfl
theorem node7459_eq : Flapjack.WordAlloc.removeDeadStructural input7459 value3728 value1 value2 = (output7459, value5, value1) := by
  rw [input7459_def, output7459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7451_eq]
  dsimp only
  rw [node7458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3734 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14433 (Flapjack.WordLangAddr.addr 14437 0#64)))).val
theorem input7460_def : input7460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14433 (Flapjack.WordLangAddr.addr 14437 0#64))) := by
  unfold input7460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14433 (Flapjack.WordLangAddr.addr 14437 0#64)))).val
theorem output7460_def : output7460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14433 (Flapjack.WordLangAddr.addr 14437 0#64))) := by
  unfold output7460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7460_skip : Flapjack.WordAlloc.isSkip output7460 = false := by
  rw [output7460_def]
  conv => lhs; cbv
  try rfl
theorem node7460_eq : Flapjack.WordAlloc.removeDeadStructural input7460 value5 value1 value2 = (output7460, value3734, value1) := by
  rw [input7460_def, output7460_def]
  try (conv => lhs; cbv)
  try rfl

def value3735 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14437, 14425)])).val
theorem input7461_def : input7461 = (Flapjack.WordLangProgHOL.move 0 [(14437, 14425)]) := by
  unfold input7461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14437, 14425)])).val
theorem output7461_def : output7461 = (Flapjack.WordLangProgHOL.move 0 [(14437, 14425)]) := by
  unfold output7461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7461_skip : Flapjack.WordAlloc.isSkip output7461 = false := by
  rw [output7461_def]
  conv => lhs; cbv
  try rfl
theorem node7461_eq : Flapjack.WordAlloc.removeDeadStructural input7461 value3734 value1 value2 = (output7461, value3735, value1) := by
  rw [input7461_def, output7461_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7461 input7460)).val
theorem input7462_def : input7462 = (.seq input7461 input7460) := by
  unfold input7462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7461 output7460)).val
theorem output7462_def : output7462 = (.seq output7461 output7460) := by
  unfold output7462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7462_skip : Flapjack.WordAlloc.isSkip output7462 = false := by
  rw [output7462_def]
  conv => lhs; cbv
  try rfl
theorem node7462_eq : Flapjack.WordAlloc.removeDeadStructural input7462 value5 value1 value2 = (output7462, value3735, value1) := by
  rw [input7462_def, output7462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7460_eq]
  dsimp only
  rw [node7461_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3736 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14433 7626373186594408355#64))).val
theorem input7463_def : input7463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14433 7626373186594408355#64)) := by
  unfold input7463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14433 7626373186594408355#64))).val
theorem output7463_def : output7463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14433 7626373186594408355#64)) := by
  unfold output7463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7463_skip : Flapjack.WordAlloc.isSkip output7463 = false := by
  rw [output7463_def]
  conv => lhs; cbv
  try rfl
theorem node7463_eq : Flapjack.WordAlloc.removeDeadStructural input7463 value3735 value1 value2 = (output7463, value3736, value1) := by
  rw [input7463_def, output7463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14429 7626373186594408355#64))).val
theorem input7464_def : input7464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14429 7626373186594408355#64)) := by
  unfold input7464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7464_def : output7464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7464_skip : Flapjack.WordAlloc.isSkip output7464 = true := by
  rw [output7464_def]
  conv => lhs; cbv
  try rfl
theorem node7464_eq : Flapjack.WordAlloc.removeDeadStructural input7464 value3736 value1 value2 = (output7464, value3736, value1) := by
  rw [input7464_def, output7464_def]
  try (conv => lhs; cbv)
  try rfl

def value3737 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14425 14417 (Flapjack.WordRegImm.reg 14421))))).val
theorem input7465_def : input7465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14425 14417 (Flapjack.WordRegImm.reg 14421)))) := by
  unfold input7465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14425 14417 (Flapjack.WordRegImm.reg 14421))))).val
theorem output7465_def : output7465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14425 14417 (Flapjack.WordRegImm.reg 14421)))) := by
  unfold output7465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7465_skip : Flapjack.WordAlloc.isSkip output7465 = false := by
  rw [output7465_def]
  conv => lhs; cbv
  try rfl
theorem node7465_eq : Flapjack.WordAlloc.removeDeadStructural input7465 value3736 value1 value2 = (output7465, value3737, value1) := by
  rw [input7465_def, output7465_def]
  try (conv => lhs; cbv)
  try rfl

def value3738 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14421 3400#64))).val
theorem input7466_def : input7466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14421 3400#64)) := by
  unfold input7466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14421 3400#64))).val
theorem output7466_def : output7466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14421 3400#64)) := by
  unfold output7466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7466_skip : Flapjack.WordAlloc.isSkip output7466 = false := by
  rw [output7466_def]
  conv => lhs; cbv
  try rfl
theorem node7466_eq : Flapjack.WordAlloc.removeDeadStructural input7466 value3737 value1 value2 = (output7466, value3738, value1) := by
  rw [input7466_def, output7466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7466 input7465)).val
theorem input7467_def : input7467 = (.seq input7466 input7465) := by
  unfold input7467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7466 output7465)).val
theorem output7467_def : output7467 = (.seq output7466 output7465) := by
  unfold output7467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7467_skip : Flapjack.WordAlloc.isSkip output7467 = false := by
  rw [output7467_def]
  conv => lhs; cbv
  try rfl
theorem node7467_eq : Flapjack.WordAlloc.removeDeadStructural input7467 value3736 value1 value2 = (output7467, value3738, value1) := by
  rw [input7467_def, output7467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7465_eq]
  dsimp only
  rw [node7466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3739 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14417 (Flapjack.WordLangAddr.addr 14413 18446744073709551104#64)))).val
theorem input7468_def : input7468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14417 (Flapjack.WordLangAddr.addr 14413 18446744073709551104#64))) := by
  unfold input7468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14417 (Flapjack.WordLangAddr.addr 14413 18446744073709551104#64)))).val
theorem output7468_def : output7468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14417 (Flapjack.WordLangAddr.addr 14413 18446744073709551104#64))) := by
  unfold output7468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7468_skip : Flapjack.WordAlloc.isSkip output7468 = false := by
  rw [output7468_def]
  conv => lhs; cbv
  try rfl
theorem node7468_eq : Flapjack.WordAlloc.removeDeadStructural input7468 value3738 value1 value2 = (output7468, value3739, value1) := by
  rw [input7468_def, output7468_def]
  try (conv => lhs; cbv)
  try rfl

def value3740 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14413 14409)).val
theorem input7469_def : input7469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14413 14409) := by
  unfold input7469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14413 14409)).val
theorem output7469_def : output7469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14413 14409) := by
  unfold output7469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7469_skip : Flapjack.WordAlloc.isSkip output7469 = false := by
  rw [output7469_def]
  conv => lhs; cbv
  try rfl
theorem node7469_eq : Flapjack.WordAlloc.removeDeadStructural input7469 value3739 value1 value2 = (output7469, value3740, value1) := by
  rw [input7469_def, output7469_def]
  try (conv => lhs; cbv)
  try rfl

def value3741 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14409 14405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7470_def : input7470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14409 14405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14409 14405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7470_def : output7470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14409 14405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7470_skip : Flapjack.WordAlloc.isSkip output7470 = false := by
  rw [output7470_def]
  conv => lhs; cbv
  try rfl
theorem node7470_eq : Flapjack.WordAlloc.removeDeadStructural input7470 value3740 value1 value2 = (output7470, value3741, value1) := by
  rw [input7470_def, output7470_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14405 Flapjack.WordStore.heapLength)).val
theorem input7471_def : input7471 = (Flapjack.WordLangProgHOL.get 14405 Flapjack.WordStore.heapLength) := by
  unfold input7471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14405 Flapjack.WordStore.heapLength)).val
theorem output7471_def : output7471 = (Flapjack.WordLangProgHOL.get 14405 Flapjack.WordStore.heapLength) := by
  unfold output7471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7471_skip : Flapjack.WordAlloc.isSkip output7471 = false := by
  rw [output7471_def]
  conv => lhs; cbv
  try rfl
theorem node7471_eq : Flapjack.WordAlloc.removeDeadStructural input7471 value3741 value1 value2 = (output7471, value5, value1) := by
  rw [input7471_def, output7471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7471 input7470)).val
theorem input7472_def : input7472 = (.seq input7471 input7470) := by
  unfold input7472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7471 output7470)).val
theorem output7472_def : output7472 = (.seq output7471 output7470) := by
  unfold output7472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7472_skip : Flapjack.WordAlloc.isSkip output7472 = false := by
  rw [output7472_def]
  conv => lhs; cbv
  try rfl
theorem node7472_eq : Flapjack.WordAlloc.removeDeadStructural input7472 value3740 value1 value2 = (output7472, value5, value1) := by
  rw [input7472_def, output7472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7470_eq]
  dsimp only
  rw [node7471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7472 input7469)).val
theorem input7473_def : input7473 = (.seq input7472 input7469) := by
  unfold input7473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7472 output7469)).val
theorem output7473_def : output7473 = (.seq output7472 output7469) := by
  unfold output7473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7473_skip : Flapjack.WordAlloc.isSkip output7473 = false := by
  rw [output7473_def]
  conv => lhs; cbv
  try rfl
theorem node7473_eq : Flapjack.WordAlloc.removeDeadStructural input7473 value3739 value1 value2 = (output7473, value5, value1) := by
  rw [input7473_def, output7473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7469_eq]
  dsimp only
  rw [node7472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7473 input7468)).val
theorem input7474_def : input7474 = (.seq input7473 input7468) := by
  unfold input7474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7473 output7468)).val
theorem output7474_def : output7474 = (.seq output7473 output7468) := by
  unfold output7474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7474_skip : Flapjack.WordAlloc.isSkip output7474 = false := by
  rw [output7474_def]
  conv => lhs; cbv
  try rfl
theorem node7474_eq : Flapjack.WordAlloc.removeDeadStructural input7474 value3738 value1 value2 = (output7474, value5, value1) := by
  rw [input7474_def, output7474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7468_eq]
  dsimp only
  rw [node7473_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7474 input7467)).val
theorem input7475_def : input7475 = (.seq input7474 input7467) := by
  unfold input7475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7474 output7467)).val
theorem output7475_def : output7475 = (.seq output7474 output7467) := by
  unfold output7475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7475_skip : Flapjack.WordAlloc.isSkip output7475 = false := by
  rw [output7475_def]
  conv => lhs; cbv
  try rfl
theorem node7475_eq : Flapjack.WordAlloc.removeDeadStructural input7475 value3736 value1 value2 = (output7475, value5, value1) := by
  rw [input7475_def, output7475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7467_eq]
  dsimp only
  rw [node7474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3742 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14397 (Flapjack.WordLangAddr.addr 14401 0#64)))).val
theorem input7476_def : input7476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14397 (Flapjack.WordLangAddr.addr 14401 0#64))) := by
  unfold input7476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14397 (Flapjack.WordLangAddr.addr 14401 0#64)))).val
theorem output7476_def : output7476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14397 (Flapjack.WordLangAddr.addr 14401 0#64))) := by
  unfold output7476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7476_skip : Flapjack.WordAlloc.isSkip output7476 = false := by
  rw [output7476_def]
  conv => lhs; cbv
  try rfl
theorem node7476_eq : Flapjack.WordAlloc.removeDeadStructural input7476 value5 value1 value2 = (output7476, value3742, value1) := by
  rw [input7476_def, output7476_def]
  try (conv => lhs; cbv)
  try rfl

def value3743 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14401, 14389)])).val
theorem input7477_def : input7477 = (Flapjack.WordLangProgHOL.move 0 [(14401, 14389)]) := by
  unfold input7477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14401, 14389)])).val
theorem output7477_def : output7477 = (Flapjack.WordLangProgHOL.move 0 [(14401, 14389)]) := by
  unfold output7477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7477_skip : Flapjack.WordAlloc.isSkip output7477 = false := by
  rw [output7477_def]
  conv => lhs; cbv
  try rfl
theorem node7477_eq : Flapjack.WordAlloc.removeDeadStructural input7477 value3742 value1 value2 = (output7477, value3743, value1) := by
  rw [input7477_def, output7477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7477 input7476)).val
theorem input7478_def : input7478 = (.seq input7477 input7476) := by
  unfold input7478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7477 output7476)).val
theorem output7478_def : output7478 = (.seq output7477 output7476) := by
  unfold output7478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7478_skip : Flapjack.WordAlloc.isSkip output7478 = false := by
  rw [output7478_def]
  conv => lhs; cbv
  try rfl
theorem node7478_eq : Flapjack.WordAlloc.removeDeadStructural input7478 value5 value1 value2 = (output7478, value3743, value1) := by
  rw [input7478_def, output7478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7476_eq]
  dsimp only
  rw [node7477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3744 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14397 6933025920263103879#64))).val
theorem input7479_def : input7479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14397 6933025920263103879#64)) := by
  unfold input7479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14397 6933025920263103879#64))).val
theorem output7479_def : output7479 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14397 6933025920263103879#64)) := by
  unfold output7479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7479_skip : Flapjack.WordAlloc.isSkip output7479 = false := by
  rw [output7479_def]
  conv => lhs; cbv
  try rfl
theorem node7479_eq : Flapjack.WordAlloc.removeDeadStructural input7479 value3743 value1 value2 = (output7479, value3744, value1) := by
  rw [input7479_def, output7479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14393 6933025920263103879#64))).val
theorem input7480_def : input7480 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14393 6933025920263103879#64)) := by
  unfold input7480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7480_def : output7480 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7480_skip : Flapjack.WordAlloc.isSkip output7480 = true := by
  rw [output7480_def]
  conv => lhs; cbv
  try rfl
theorem node7480_eq : Flapjack.WordAlloc.removeDeadStructural input7480 value3744 value1 value2 = (output7480, value3744, value1) := by
  rw [input7480_def, output7480_def]
  try (conv => lhs; cbv)
  try rfl

def value3745 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14389 14381 (Flapjack.WordRegImm.reg 14385))))).val
theorem input7481_def : input7481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14389 14381 (Flapjack.WordRegImm.reg 14385)))) := by
  unfold input7481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14389 14381 (Flapjack.WordRegImm.reg 14385))))).val
theorem output7481_def : output7481 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14389 14381 (Flapjack.WordRegImm.reg 14385)))) := by
  unfold output7481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7481_skip : Flapjack.WordAlloc.isSkip output7481 = false := by
  rw [output7481_def]
  conv => lhs; cbv
  try rfl
theorem node7481_eq : Flapjack.WordAlloc.removeDeadStructural input7481 value3744 value1 value2 = (output7481, value3745, value1) := by
  rw [input7481_def, output7481_def]
  try (conv => lhs; cbv)
  try rfl

def value3746 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14385 3392#64))).val
theorem input7482_def : input7482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14385 3392#64)) := by
  unfold input7482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14385 3392#64))).val
theorem output7482_def : output7482 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14385 3392#64)) := by
  unfold output7482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7482_skip : Flapjack.WordAlloc.isSkip output7482 = false := by
  rw [output7482_def]
  conv => lhs; cbv
  try rfl
theorem node7482_eq : Flapjack.WordAlloc.removeDeadStructural input7482 value3745 value1 value2 = (output7482, value3746, value1) := by
  rw [input7482_def, output7482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7482 input7481)).val
theorem input7483_def : input7483 = (.seq input7482 input7481) := by
  unfold input7483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7482 output7481)).val
theorem output7483_def : output7483 = (.seq output7482 output7481) := by
  unfold output7483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7483_skip : Flapjack.WordAlloc.isSkip output7483 = false := by
  rw [output7483_def]
  conv => lhs; cbv
  try rfl
theorem node7483_eq : Flapjack.WordAlloc.removeDeadStructural input7483 value3744 value1 value2 = (output7483, value3746, value1) := by
  rw [input7483_def, output7483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7481_eq]
  dsimp only
  rw [node7482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3747 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14381 (Flapjack.WordLangAddr.addr 14377 18446744073709551104#64)))).val
theorem input7484_def : input7484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14381 (Flapjack.WordLangAddr.addr 14377 18446744073709551104#64))) := by
  unfold input7484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14381 (Flapjack.WordLangAddr.addr 14377 18446744073709551104#64)))).val
theorem output7484_def : output7484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14381 (Flapjack.WordLangAddr.addr 14377 18446744073709551104#64))) := by
  unfold output7484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7484_skip : Flapjack.WordAlloc.isSkip output7484 = false := by
  rw [output7484_def]
  conv => lhs; cbv
  try rfl
theorem node7484_eq : Flapjack.WordAlloc.removeDeadStructural input7484 value3746 value1 value2 = (output7484, value3747, value1) := by
  rw [input7484_def, output7484_def]
  try (conv => lhs; cbv)
  try rfl

def value3748 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14377 14373)).val
theorem input7485_def : input7485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14377 14373) := by
  unfold input7485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14377 14373)).val
theorem output7485_def : output7485 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14377 14373) := by
  unfold output7485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7485_skip : Flapjack.WordAlloc.isSkip output7485 = false := by
  rw [output7485_def]
  conv => lhs; cbv
  try rfl
theorem node7485_eq : Flapjack.WordAlloc.removeDeadStructural input7485 value3747 value1 value2 = (output7485, value3748, value1) := by
  rw [input7485_def, output7485_def]
  try (conv => lhs; cbv)
  try rfl

def value3749 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14373 14369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7486_def : input7486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14373 14369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14373 14369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7486_def : output7486 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14373 14369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7486_skip : Flapjack.WordAlloc.isSkip output7486 = false := by
  rw [output7486_def]
  conv => lhs; cbv
  try rfl
theorem node7486_eq : Flapjack.WordAlloc.removeDeadStructural input7486 value3748 value1 value2 = (output7486, value3749, value1) := by
  rw [input7486_def, output7486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14369 Flapjack.WordStore.heapLength)).val
theorem input7487_def : input7487 = (Flapjack.WordLangProgHOL.get 14369 Flapjack.WordStore.heapLength) := by
  unfold input7487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14369 Flapjack.WordStore.heapLength)).val
theorem output7487_def : output7487 = (Flapjack.WordLangProgHOL.get 14369 Flapjack.WordStore.heapLength) := by
  unfold output7487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7487_skip : Flapjack.WordAlloc.isSkip output7487 = false := by
  rw [output7487_def]
  conv => lhs; cbv
  try rfl
theorem node7487_eq : Flapjack.WordAlloc.removeDeadStructural input7487 value3749 value1 value2 = (output7487, value5, value1) := by
  rw [input7487_def, output7487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7487 input7486)).val
theorem input7488_def : input7488 = (.seq input7487 input7486) := by
  unfold input7488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7487 output7486)).val
theorem output7488_def : output7488 = (.seq output7487 output7486) := by
  unfold output7488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7488_skip : Flapjack.WordAlloc.isSkip output7488 = false := by
  rw [output7488_def]
  conv => lhs; cbv
  try rfl
theorem node7488_eq : Flapjack.WordAlloc.removeDeadStructural input7488 value3748 value1 value2 = (output7488, value5, value1) := by
  rw [input7488_def, output7488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7486_eq]
  dsimp only
  rw [node7487_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7488 input7485)).val
theorem input7489_def : input7489 = (.seq input7488 input7485) := by
  unfold input7489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7488 output7485)).val
theorem output7489_def : output7489 = (.seq output7488 output7485) := by
  unfold output7489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7489_skip : Flapjack.WordAlloc.isSkip output7489 = false := by
  rw [output7489_def]
  conv => lhs; cbv
  try rfl
theorem node7489_eq : Flapjack.WordAlloc.removeDeadStructural input7489 value3747 value1 value2 = (output7489, value5, value1) := by
  rw [input7489_def, output7489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7485_eq]
  dsimp only
  rw [node7488_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7489 input7484)).val
theorem input7490_def : input7490 = (.seq input7489 input7484) := by
  unfold input7490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7489 output7484)).val
theorem output7490_def : output7490 = (.seq output7489 output7484) := by
  unfold output7490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7490_skip : Flapjack.WordAlloc.isSkip output7490 = false := by
  rw [output7490_def]
  conv => lhs; cbv
  try rfl
theorem node7490_eq : Flapjack.WordAlloc.removeDeadStructural input7490 value3746 value1 value2 = (output7490, value5, value1) := by
  rw [input7490_def, output7490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7484_eq]
  dsimp only
  rw [node7489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7490 input7483)).val
theorem input7491_def : input7491 = (.seq input7490 input7483) := by
  unfold input7491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7490 output7483)).val
theorem output7491_def : output7491 = (.seq output7490 output7483) := by
  unfold output7491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7491_skip : Flapjack.WordAlloc.isSkip output7491 = false := by
  rw [output7491_def]
  conv => lhs; cbv
  try rfl
theorem node7491_eq : Flapjack.WordAlloc.removeDeadStructural input7491 value3744 value1 value2 = (output7491, value5, value1) := by
  rw [input7491_def, output7491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7483_eq]
  dsimp only
  rw [node7490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3750 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14361 (Flapjack.WordLangAddr.addr 14365 0#64)))).val
theorem input7492_def : input7492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14361 (Flapjack.WordLangAddr.addr 14365 0#64))) := by
  unfold input7492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14361 (Flapjack.WordLangAddr.addr 14365 0#64)))).val
theorem output7492_def : output7492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14361 (Flapjack.WordLangAddr.addr 14365 0#64))) := by
  unfold output7492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7492_skip : Flapjack.WordAlloc.isSkip output7492 = false := by
  rw [output7492_def]
  conv => lhs; cbv
  try rfl
theorem node7492_eq : Flapjack.WordAlloc.removeDeadStructural input7492 value5 value1 value2 = (output7492, value3750, value1) := by
  rw [input7492_def, output7492_def]
  try (conv => lhs; cbv)
  try rfl

def value3751 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14365, 14353)])).val
theorem input7493_def : input7493 = (Flapjack.WordLangProgHOL.move 0 [(14365, 14353)]) := by
  unfold input7493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14365, 14353)])).val
theorem output7493_def : output7493 = (Flapjack.WordLangProgHOL.move 0 [(14365, 14353)]) := by
  unfold output7493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7493_skip : Flapjack.WordAlloc.isSkip output7493 = false := by
  rw [output7493_def]
  conv => lhs; cbv
  try rfl
theorem node7493_eq : Flapjack.WordAlloc.removeDeadStructural input7493 value3750 value1 value2 = (output7493, value3751, value1) := by
  rw [input7493_def, output7493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7493 input7492)).val
theorem input7494_def : input7494 = (.seq input7493 input7492) := by
  unfold input7494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7493 output7492)).val
theorem output7494_def : output7494 = (.seq output7493 output7492) := by
  unfold output7494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7494_skip : Flapjack.WordAlloc.isSkip output7494 = false := by
  rw [output7494_def]
  conv => lhs; cbv
  try rfl
theorem node7494_eq : Flapjack.WordAlloc.removeDeadStructural input7494 value5 value1 value2 = (output7494, value3751, value1) := by
  rw [input7494_def, output7494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7492_eq]
  dsimp only
  rw [node7493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3752 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14361 686738286210365551#64))).val
theorem input7495_def : input7495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14361 686738286210365551#64)) := by
  unfold input7495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14361 686738286210365551#64))).val
theorem output7495_def : output7495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14361 686738286210365551#64)) := by
  unfold output7495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7495_skip : Flapjack.WordAlloc.isSkip output7495 = false := by
  rw [output7495_def]
  conv => lhs; cbv
  try rfl
theorem node7495_eq : Flapjack.WordAlloc.removeDeadStructural input7495 value3751 value1 value2 = (output7495, value3752, value1) := by
  rw [input7495_def, output7495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14357 686738286210365551#64))).val
theorem input7496_def : input7496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14357 686738286210365551#64)) := by
  unfold input7496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7496_def : output7496 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7496_skip : Flapjack.WordAlloc.isSkip output7496 = true := by
  rw [output7496_def]
  conv => lhs; cbv
  try rfl
theorem node7496_eq : Flapjack.WordAlloc.removeDeadStructural input7496 value3752 value1 value2 = (output7496, value3752, value1) := by
  rw [input7496_def, output7496_def]
  try (conv => lhs; cbv)
  try rfl

def value3753 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14353 14345 (Flapjack.WordRegImm.reg 14349))))).val
theorem input7497_def : input7497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14353 14345 (Flapjack.WordRegImm.reg 14349)))) := by
  unfold input7497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14353 14345 (Flapjack.WordRegImm.reg 14349))))).val
theorem output7497_def : output7497 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14353 14345 (Flapjack.WordRegImm.reg 14349)))) := by
  unfold output7497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7497_skip : Flapjack.WordAlloc.isSkip output7497 = false := by
  rw [output7497_def]
  conv => lhs; cbv
  try rfl
theorem node7497_eq : Flapjack.WordAlloc.removeDeadStructural input7497 value3752 value1 value2 = (output7497, value3753, value1) := by
  rw [input7497_def, output7497_def]
  try (conv => lhs; cbv)
  try rfl

def value3754 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14349 3384#64))).val
theorem input7498_def : input7498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14349 3384#64)) := by
  unfold input7498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14349 3384#64))).val
theorem output7498_def : output7498 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14349 3384#64)) := by
  unfold output7498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7498_skip : Flapjack.WordAlloc.isSkip output7498 = false := by
  rw [output7498_def]
  conv => lhs; cbv
  try rfl
theorem node7498_eq : Flapjack.WordAlloc.removeDeadStructural input7498 value3753 value1 value2 = (output7498, value3754, value1) := by
  rw [input7498_def, output7498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7498 input7497)).val
theorem input7499_def : input7499 = (.seq input7498 input7497) := by
  unfold input7499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7498 output7497)).val
theorem output7499_def : output7499 = (.seq output7498 output7497) := by
  unfold output7499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7499_skip : Flapjack.WordAlloc.isSkip output7499 = false := by
  rw [output7499_def]
  conv => lhs; cbv
  try rfl
theorem node7499_eq : Flapjack.WordAlloc.removeDeadStructural input7499 value3752 value1 value2 = (output7499, value3754, value1) := by
  rw [input7499_def, output7499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7497_eq]
  dsimp only
  rw [node7498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3755 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14345 (Flapjack.WordLangAddr.addr 14341 18446744073709551104#64)))).val
theorem input7500_def : input7500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14345 (Flapjack.WordLangAddr.addr 14341 18446744073709551104#64))) := by
  unfold input7500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14345 (Flapjack.WordLangAddr.addr 14341 18446744073709551104#64)))).val
theorem output7500_def : output7500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14345 (Flapjack.WordLangAddr.addr 14341 18446744073709551104#64))) := by
  unfold output7500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7500_skip : Flapjack.WordAlloc.isSkip output7500 = false := by
  rw [output7500_def]
  conv => lhs; cbv
  try rfl
theorem node7500_eq : Flapjack.WordAlloc.removeDeadStructural input7500 value3754 value1 value2 = (output7500, value3755, value1) := by
  rw [input7500_def, output7500_def]
  try (conv => lhs; cbv)
  try rfl

def value3756 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14341 14337)).val
theorem input7501_def : input7501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14341 14337) := by
  unfold input7501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14341 14337)).val
theorem output7501_def : output7501 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14341 14337) := by
  unfold output7501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7501_skip : Flapjack.WordAlloc.isSkip output7501 = false := by
  rw [output7501_def]
  conv => lhs; cbv
  try rfl
theorem node7501_eq : Flapjack.WordAlloc.removeDeadStructural input7501 value3755 value1 value2 = (output7501, value3756, value1) := by
  rw [input7501_def, output7501_def]
  try (conv => lhs; cbv)
  try rfl

def value3757 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14337 14333 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7502_def : input7502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14337 14333 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14337 14333 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7502_def : output7502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14337 14333 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7502_skip : Flapjack.WordAlloc.isSkip output7502 = false := by
  rw [output7502_def]
  conv => lhs; cbv
  try rfl
theorem node7502_eq : Flapjack.WordAlloc.removeDeadStructural input7502 value3756 value1 value2 = (output7502, value3757, value1) := by
  rw [input7502_def, output7502_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14333 Flapjack.WordStore.heapLength)).val
theorem input7503_def : input7503 = (Flapjack.WordLangProgHOL.get 14333 Flapjack.WordStore.heapLength) := by
  unfold input7503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14333 Flapjack.WordStore.heapLength)).val
theorem output7503_def : output7503 = (Flapjack.WordLangProgHOL.get 14333 Flapjack.WordStore.heapLength) := by
  unfold output7503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7503_skip : Flapjack.WordAlloc.isSkip output7503 = false := by
  rw [output7503_def]
  conv => lhs; cbv
  try rfl
theorem node7503_eq : Flapjack.WordAlloc.removeDeadStructural input7503 value3757 value1 value2 = (output7503, value5, value1) := by
  rw [input7503_def, output7503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7503 input7502)).val
theorem input7504_def : input7504 = (.seq input7503 input7502) := by
  unfold input7504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7503 output7502)).val
theorem output7504_def : output7504 = (.seq output7503 output7502) := by
  unfold output7504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7504_skip : Flapjack.WordAlloc.isSkip output7504 = false := by
  rw [output7504_def]
  conv => lhs; cbv
  try rfl
theorem node7504_eq : Flapjack.WordAlloc.removeDeadStructural input7504 value3756 value1 value2 = (output7504, value5, value1) := by
  rw [input7504_def, output7504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7502_eq]
  dsimp only
  rw [node7503_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7504 input7501)).val
theorem input7505_def : input7505 = (.seq input7504 input7501) := by
  unfold input7505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7504 output7501)).val
theorem output7505_def : output7505 = (.seq output7504 output7501) := by
  unfold output7505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7505_skip : Flapjack.WordAlloc.isSkip output7505 = false := by
  rw [output7505_def]
  conv => lhs; cbv
  try rfl
theorem node7505_eq : Flapjack.WordAlloc.removeDeadStructural input7505 value3755 value1 value2 = (output7505, value5, value1) := by
  rw [input7505_def, output7505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7501_eq]
  dsimp only
  rw [node7504_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7505 input7500)).val
theorem input7506_def : input7506 = (.seq input7505 input7500) := by
  unfold input7506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7505 output7500)).val
theorem output7506_def : output7506 = (.seq output7505 output7500) := by
  unfold output7506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7506_skip : Flapjack.WordAlloc.isSkip output7506 = false := by
  rw [output7506_def]
  conv => lhs; cbv
  try rfl
theorem node7506_eq : Flapjack.WordAlloc.removeDeadStructural input7506 value3754 value1 value2 = (output7506, value5, value1) := by
  rw [input7506_def, output7506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7500_eq]
  dsimp only
  rw [node7505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7506 input7499)).val
theorem input7507_def : input7507 = (.seq input7506 input7499) := by
  unfold input7507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7506 output7499)).val
theorem output7507_def : output7507 = (.seq output7506 output7499) := by
  unfold output7507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7507_skip : Flapjack.WordAlloc.isSkip output7507 = false := by
  rw [output7507_def]
  conv => lhs; cbv
  try rfl
theorem node7507_eq : Flapjack.WordAlloc.removeDeadStructural input7507 value3752 value1 value2 = (output7507, value5, value1) := by
  rw [input7507_def, output7507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7499_eq]
  dsimp only
  rw [node7506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3758 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14325 (Flapjack.WordLangAddr.addr 14329 0#64)))).val
theorem input7508_def : input7508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14325 (Flapjack.WordLangAddr.addr 14329 0#64))) := by
  unfold input7508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14325 (Flapjack.WordLangAddr.addr 14329 0#64)))).val
theorem output7508_def : output7508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14325 (Flapjack.WordLangAddr.addr 14329 0#64))) := by
  unfold output7508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7508_skip : Flapjack.WordAlloc.isSkip output7508 = false := by
  rw [output7508_def]
  conv => lhs; cbv
  try rfl
theorem node7508_eq : Flapjack.WordAlloc.removeDeadStructural input7508 value5 value1 value2 = (output7508, value3758, value1) := by
  rw [input7508_def, output7508_def]
  try (conv => lhs; cbv)
  try rfl

def value3759 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14329, 14317)])).val
theorem input7509_def : input7509 = (Flapjack.WordLangProgHOL.move 0 [(14329, 14317)]) := by
  unfold input7509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14329, 14317)])).val
theorem output7509_def : output7509 = (Flapjack.WordLangProgHOL.move 0 [(14329, 14317)]) := by
  unfold output7509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7509_skip : Flapjack.WordAlloc.isSkip output7509 = false := by
  rw [output7509_def]
  conv => lhs; cbv
  try rfl
theorem node7509_eq : Flapjack.WordAlloc.removeDeadStructural input7509 value3758 value1 value2 = (output7509, value3759, value1) := by
  rw [input7509_def, output7509_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7509 input7508)).val
theorem input7510_def : input7510 = (.seq input7509 input7508) := by
  unfold input7510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7509 output7508)).val
theorem output7510_def : output7510 = (.seq output7509 output7508) := by
  unfold output7510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7510_skip : Flapjack.WordAlloc.isSkip output7510 = false := by
  rw [output7510_def]
  conv => lhs; cbv
  try rfl
theorem node7510_eq : Flapjack.WordAlloc.removeDeadStructural input7510 value5 value1 value2 = (output7510, value3759, value1) := by
  rw [input7510_def, output7510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7508_eq]
  dsimp only
  rw [node7509_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3760 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14325 16039894141796533876#64))).val
theorem input7511_def : input7511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14325 16039894141796533876#64)) := by
  unfold input7511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14325 16039894141796533876#64))).val
theorem output7511_def : output7511 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14325 16039894141796533876#64)) := by
  unfold output7511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7511_skip : Flapjack.WordAlloc.isSkip output7511 = false := by
  rw [output7511_def]
  conv => lhs; cbv
  try rfl
theorem node7511_eq : Flapjack.WordAlloc.removeDeadStructural input7511 value3759 value1 value2 = (output7511, value3760, value1) := by
  rw [input7511_def, output7511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14321 16039894141796533876#64))).val
theorem input7512_def : input7512 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14321 16039894141796533876#64)) := by
  unfold input7512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7512_def : output7512 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7512_skip : Flapjack.WordAlloc.isSkip output7512 = true := by
  rw [output7512_def]
  conv => lhs; cbv
  try rfl
theorem node7512_eq : Flapjack.WordAlloc.removeDeadStructural input7512 value3760 value1 value2 = (output7512, value3760, value1) := by
  rw [input7512_def, output7512_def]
  try (conv => lhs; cbv)
  try rfl

def value3761 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14317 14309 (Flapjack.WordRegImm.reg 14313))))).val
theorem input7513_def : input7513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14317 14309 (Flapjack.WordRegImm.reg 14313)))) := by
  unfold input7513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14317 14309 (Flapjack.WordRegImm.reg 14313))))).val
theorem output7513_def : output7513 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14317 14309 (Flapjack.WordRegImm.reg 14313)))) := by
  unfold output7513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7513_skip : Flapjack.WordAlloc.isSkip output7513 = false := by
  rw [output7513_def]
  conv => lhs; cbv
  try rfl
theorem node7513_eq : Flapjack.WordAlloc.removeDeadStructural input7513 value3760 value1 value2 = (output7513, value3761, value1) := by
  rw [input7513_def, output7513_def]
  try (conv => lhs; cbv)
  try rfl

def value3762 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14313 3376#64))).val
theorem input7514_def : input7514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14313 3376#64)) := by
  unfold input7514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14313 3376#64))).val
theorem output7514_def : output7514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14313 3376#64)) := by
  unfold output7514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7514_skip : Flapjack.WordAlloc.isSkip output7514 = false := by
  rw [output7514_def]
  conv => lhs; cbv
  try rfl
theorem node7514_eq : Flapjack.WordAlloc.removeDeadStructural input7514 value3761 value1 value2 = (output7514, value3762, value1) := by
  rw [input7514_def, output7514_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7514 input7513)).val
theorem input7515_def : input7515 = (.seq input7514 input7513) := by
  unfold input7515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7514 output7513)).val
theorem output7515_def : output7515 = (.seq output7514 output7513) := by
  unfold output7515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7515_skip : Flapjack.WordAlloc.isSkip output7515 = false := by
  rw [output7515_def]
  conv => lhs; cbv
  try rfl
theorem node7515_eq : Flapjack.WordAlloc.removeDeadStructural input7515 value3760 value1 value2 = (output7515, value3762, value1) := by
  rw [input7515_def, output7515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7513_eq]
  dsimp only
  rw [node7514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3763 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14309 (Flapjack.WordLangAddr.addr 14305 18446744073709551104#64)))).val
theorem input7516_def : input7516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14309 (Flapjack.WordLangAddr.addr 14305 18446744073709551104#64))) := by
  unfold input7516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14309 (Flapjack.WordLangAddr.addr 14305 18446744073709551104#64)))).val
theorem output7516_def : output7516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14309 (Flapjack.WordLangAddr.addr 14305 18446744073709551104#64))) := by
  unfold output7516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7516_skip : Flapjack.WordAlloc.isSkip output7516 = false := by
  rw [output7516_def]
  conv => lhs; cbv
  try rfl
theorem node7516_eq : Flapjack.WordAlloc.removeDeadStructural input7516 value3762 value1 value2 = (output7516, value3763, value1) := by
  rw [input7516_def, output7516_def]
  try (conv => lhs; cbv)
  try rfl

def value3764 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14305 14301)).val
theorem input7517_def : input7517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14305 14301) := by
  unfold input7517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14305 14301)).val
theorem output7517_def : output7517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14305 14301) := by
  unfold output7517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7517_skip : Flapjack.WordAlloc.isSkip output7517 = false := by
  rw [output7517_def]
  conv => lhs; cbv
  try rfl
theorem node7517_eq : Flapjack.WordAlloc.removeDeadStructural input7517 value3763 value1 value2 = (output7517, value3764, value1) := by
  rw [input7517_def, output7517_def]
  try (conv => lhs; cbv)
  try rfl

def value3765 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14301 14297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7518_def : input7518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14301 14297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14301 14297 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7518_def : output7518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14301 14297 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7518_skip : Flapjack.WordAlloc.isSkip output7518 = false := by
  rw [output7518_def]
  conv => lhs; cbv
  try rfl
theorem node7518_eq : Flapjack.WordAlloc.removeDeadStructural input7518 value3764 value1 value2 = (output7518, value3765, value1) := by
  rw [input7518_def, output7518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14297 Flapjack.WordStore.heapLength)).val
theorem input7519_def : input7519 = (Flapjack.WordLangProgHOL.get 14297 Flapjack.WordStore.heapLength) := by
  unfold input7519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14297 Flapjack.WordStore.heapLength)).val
theorem output7519_def : output7519 = (Flapjack.WordLangProgHOL.get 14297 Flapjack.WordStore.heapLength) := by
  unfold output7519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7519_skip : Flapjack.WordAlloc.isSkip output7519 = false := by
  rw [output7519_def]
  conv => lhs; cbv
  try rfl
theorem node7519_eq : Flapjack.WordAlloc.removeDeadStructural input7519 value3765 value1 value2 = (output7519, value5, value1) := by
  rw [input7519_def, output7519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7519 input7518)).val
theorem input7520_def : input7520 = (.seq input7519 input7518) := by
  unfold input7520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7519 output7518)).val
theorem output7520_def : output7520 = (.seq output7519 output7518) := by
  unfold output7520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7520_skip : Flapjack.WordAlloc.isSkip output7520 = false := by
  rw [output7520_def]
  conv => lhs; cbv
  try rfl
theorem node7520_eq : Flapjack.WordAlloc.removeDeadStructural input7520 value3764 value1 value2 = (output7520, value5, value1) := by
  rw [input7520_def, output7520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7518_eq]
  dsimp only
  rw [node7519_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7520 input7517)).val
theorem input7521_def : input7521 = (.seq input7520 input7517) := by
  unfold input7521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7520 output7517)).val
theorem output7521_def : output7521 = (.seq output7520 output7517) := by
  unfold output7521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7521_skip : Flapjack.WordAlloc.isSkip output7521 = false := by
  rw [output7521_def]
  conv => lhs; cbv
  try rfl
theorem node7521_eq : Flapjack.WordAlloc.removeDeadStructural input7521 value3763 value1 value2 = (output7521, value5, value1) := by
  rw [input7521_def, output7521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7517_eq]
  dsimp only
  rw [node7520_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7521 input7516)).val
theorem input7522_def : input7522 = (.seq input7521 input7516) := by
  unfold input7522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7521 output7516)).val
theorem output7522_def : output7522 = (.seq output7521 output7516) := by
  unfold output7522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7522_skip : Flapjack.WordAlloc.isSkip output7522 = false := by
  rw [output7522_def]
  conv => lhs; cbv
  try rfl
theorem node7522_eq : Flapjack.WordAlloc.removeDeadStructural input7522 value3762 value1 value2 = (output7522, value5, value1) := by
  rw [input7522_def, output7522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7516_eq]
  dsimp only
  rw [node7521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7522 input7515)).val
theorem input7523_def : input7523 = (.seq input7522 input7515) := by
  unfold input7523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7522 output7515)).val
theorem output7523_def : output7523 = (.seq output7522 output7515) := by
  unfold output7523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7523_skip : Flapjack.WordAlloc.isSkip output7523 = false := by
  rw [output7523_def]
  conv => lhs; cbv
  try rfl
theorem node7523_eq : Flapjack.WordAlloc.removeDeadStructural input7523 value3760 value1 value2 = (output7523, value5, value1) := by
  rw [input7523_def, output7523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7515_eq]
  dsimp only
  rw [node7522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3766 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14289 (Flapjack.WordLangAddr.addr 14293 0#64)))).val
theorem input7524_def : input7524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14289 (Flapjack.WordLangAddr.addr 14293 0#64))) := by
  unfold input7524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14289 (Flapjack.WordLangAddr.addr 14293 0#64)))).val
theorem output7524_def : output7524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14289 (Flapjack.WordLangAddr.addr 14293 0#64))) := by
  unfold output7524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7524_skip : Flapjack.WordAlloc.isSkip output7524 = false := by
  rw [output7524_def]
  conv => lhs; cbv
  try rfl
theorem node7524_eq : Flapjack.WordAlloc.removeDeadStructural input7524 value5 value1 value2 = (output7524, value3766, value1) := by
  rw [input7524_def, output7524_def]
  try (conv => lhs; cbv)
  try rfl

def value3767 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14293, 14281)])).val
theorem input7525_def : input7525 = (Flapjack.WordLangProgHOL.move 0 [(14293, 14281)]) := by
  unfold input7525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14293, 14281)])).val
theorem output7525_def : output7525 = (Flapjack.WordLangProgHOL.move 0 [(14293, 14281)]) := by
  unfold output7525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7525_skip : Flapjack.WordAlloc.isSkip output7525 = false := by
  rw [output7525_def]
  conv => lhs; cbv
  try rfl
theorem node7525_eq : Flapjack.WordAlloc.removeDeadStructural input7525 value3766 value1 value2 = (output7525, value3767, value1) := by
  rw [input7525_def, output7525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7525 input7524)).val
theorem input7526_def : input7526 = (.seq input7525 input7524) := by
  unfold input7526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7525 output7524)).val
theorem output7526_def : output7526 = (.seq output7525 output7524) := by
  unfold output7526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7526_skip : Flapjack.WordAlloc.isSkip output7526 = false := by
  rw [output7526_def]
  conv => lhs; cbv
  try rfl
theorem node7526_eq : Flapjack.WordAlloc.removeDeadStructural input7526 value5 value1 value2 = (output7526, value3767, value1) := by
  rw [input7526_def, output7526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7524_eq]
  dsimp only
  rw [node7525_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3768 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14289 1660145734357211167#64))).val
theorem input7527_def : input7527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14289 1660145734357211167#64)) := by
  unfold input7527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14289 1660145734357211167#64))).val
theorem output7527_def : output7527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14289 1660145734357211167#64)) := by
  unfold output7527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7527_skip : Flapjack.WordAlloc.isSkip output7527 = false := by
  rw [output7527_def]
  conv => lhs; cbv
  try rfl
theorem node7527_eq : Flapjack.WordAlloc.removeDeadStructural input7527 value3767 value1 value2 = (output7527, value3768, value1) := by
  rw [input7527_def, output7527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14285 1660145734357211167#64))).val
theorem input7528_def : input7528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14285 1660145734357211167#64)) := by
  unfold input7528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7528_def : output7528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7528_skip : Flapjack.WordAlloc.isSkip output7528 = true := by
  rw [output7528_def]
  conv => lhs; cbv
  try rfl
theorem node7528_eq : Flapjack.WordAlloc.removeDeadStructural input7528 value3768 value1 value2 = (output7528, value3768, value1) := by
  rw [input7528_def, output7528_def]
  try (conv => lhs; cbv)
  try rfl

def value3769 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14281 14273 (Flapjack.WordRegImm.reg 14277))))).val
theorem input7529_def : input7529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14281 14273 (Flapjack.WordRegImm.reg 14277)))) := by
  unfold input7529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14281 14273 (Flapjack.WordRegImm.reg 14277))))).val
theorem output7529_def : output7529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14281 14273 (Flapjack.WordRegImm.reg 14277)))) := by
  unfold output7529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7529_skip : Flapjack.WordAlloc.isSkip output7529 = false := by
  rw [output7529_def]
  conv => lhs; cbv
  try rfl
theorem node7529_eq : Flapjack.WordAlloc.removeDeadStructural input7529 value3768 value1 value2 = (output7529, value3769, value1) := by
  rw [input7529_def, output7529_def]
  try (conv => lhs; cbv)
  try rfl

def value3770 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14277 3368#64))).val
theorem input7530_def : input7530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14277 3368#64)) := by
  unfold input7530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14277 3368#64))).val
theorem output7530_def : output7530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14277 3368#64)) := by
  unfold output7530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7530_skip : Flapjack.WordAlloc.isSkip output7530 = false := by
  rw [output7530_def]
  conv => lhs; cbv
  try rfl
theorem node7530_eq : Flapjack.WordAlloc.removeDeadStructural input7530 value3769 value1 value2 = (output7530, value3770, value1) := by
  rw [input7530_def, output7530_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7530 input7529)).val
theorem input7531_def : input7531 = (.seq input7530 input7529) := by
  unfold input7531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7530 output7529)).val
theorem output7531_def : output7531 = (.seq output7530 output7529) := by
  unfold output7531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7531_skip : Flapjack.WordAlloc.isSkip output7531 = false := by
  rw [output7531_def]
  conv => lhs; cbv
  try rfl
theorem node7531_eq : Flapjack.WordAlloc.removeDeadStructural input7531 value3768 value1 value2 = (output7531, value3770, value1) := by
  rw [input7531_def, output7531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7529_eq]
  dsimp only
  rw [node7530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3771 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14273 (Flapjack.WordLangAddr.addr 14269 18446744073709551104#64)))).val
theorem input7532_def : input7532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14273 (Flapjack.WordLangAddr.addr 14269 18446744073709551104#64))) := by
  unfold input7532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14273 (Flapjack.WordLangAddr.addr 14269 18446744073709551104#64)))).val
theorem output7532_def : output7532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14273 (Flapjack.WordLangAddr.addr 14269 18446744073709551104#64))) := by
  unfold output7532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7532_skip : Flapjack.WordAlloc.isSkip output7532 = false := by
  rw [output7532_def]
  conv => lhs; cbv
  try rfl
theorem node7532_eq : Flapjack.WordAlloc.removeDeadStructural input7532 value3770 value1 value2 = (output7532, value3771, value1) := by
  rw [input7532_def, output7532_def]
  try (conv => lhs; cbv)
  try rfl

def value3772 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14269 14265)).val
theorem input7533_def : input7533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14269 14265) := by
  unfold input7533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14269 14265)).val
theorem output7533_def : output7533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14269 14265) := by
  unfold output7533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7533_skip : Flapjack.WordAlloc.isSkip output7533 = false := by
  rw [output7533_def]
  conv => lhs; cbv
  try rfl
theorem node7533_eq : Flapjack.WordAlloc.removeDeadStructural input7533 value3771 value1 value2 = (output7533, value3772, value1) := by
  rw [input7533_def, output7533_def]
  try (conv => lhs; cbv)
  try rfl

def value3773 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14265 14261 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7534_def : input7534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14265 14261 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14265 14261 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7534_def : output7534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14265 14261 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7534_skip : Flapjack.WordAlloc.isSkip output7534 = false := by
  rw [output7534_def]
  conv => lhs; cbv
  try rfl
theorem node7534_eq : Flapjack.WordAlloc.removeDeadStructural input7534 value3772 value1 value2 = (output7534, value3773, value1) := by
  rw [input7534_def, output7534_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14261 Flapjack.WordStore.heapLength)).val
theorem input7535_def : input7535 = (Flapjack.WordLangProgHOL.get 14261 Flapjack.WordStore.heapLength) := by
  unfold input7535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14261 Flapjack.WordStore.heapLength)).val
theorem output7535_def : output7535 = (Flapjack.WordLangProgHOL.get 14261 Flapjack.WordStore.heapLength) := by
  unfold output7535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7535_skip : Flapjack.WordAlloc.isSkip output7535 = false := by
  rw [output7535_def]
  conv => lhs; cbv
  try rfl
theorem node7535_eq : Flapjack.WordAlloc.removeDeadStructural input7535 value3773 value1 value2 = (output7535, value5, value1) := by
  rw [input7535_def, output7535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7535 input7534)).val
theorem input7536_def : input7536 = (.seq input7535 input7534) := by
  unfold input7536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7535 output7534)).val
theorem output7536_def : output7536 = (.seq output7535 output7534) := by
  unfold output7536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7536_skip : Flapjack.WordAlloc.isSkip output7536 = false := by
  rw [output7536_def]
  conv => lhs; cbv
  try rfl
theorem node7536_eq : Flapjack.WordAlloc.removeDeadStructural input7536 value3772 value1 value2 = (output7536, value5, value1) := by
  rw [input7536_def, output7536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7534_eq]
  dsimp only
  rw [node7535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7536 input7533)).val
theorem input7537_def : input7537 = (.seq input7536 input7533) := by
  unfold input7537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7536 output7533)).val
theorem output7537_def : output7537 = (.seq output7536 output7533) := by
  unfold output7537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7537_skip : Flapjack.WordAlloc.isSkip output7537 = false := by
  rw [output7537_def]
  conv => lhs; cbv
  try rfl
theorem node7537_eq : Flapjack.WordAlloc.removeDeadStructural input7537 value3771 value1 value2 = (output7537, value5, value1) := by
  rw [input7537_def, output7537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7533_eq]
  dsimp only
  rw [node7536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7537 input7532)).val
theorem input7538_def : input7538 = (.seq input7537 input7532) := by
  unfold input7538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7537 output7532)).val
theorem output7538_def : output7538 = (.seq output7537 output7532) := by
  unfold output7538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7538_skip : Flapjack.WordAlloc.isSkip output7538 = false := by
  rw [output7538_def]
  conv => lhs; cbv
  try rfl
theorem node7538_eq : Flapjack.WordAlloc.removeDeadStructural input7538 value3770 value1 value2 = (output7538, value5, value1) := by
  rw [input7538_def, output7538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7532_eq]
  dsimp only
  rw [node7537_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7538 input7531)).val
theorem input7539_def : input7539 = (.seq input7538 input7531) := by
  unfold input7539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7538 output7531)).val
theorem output7539_def : output7539 = (.seq output7538 output7531) := by
  unfold output7539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7539_skip : Flapjack.WordAlloc.isSkip output7539 = false := by
  rw [output7539_def]
  conv => lhs; cbv
  try rfl
theorem node7539_eq : Flapjack.WordAlloc.removeDeadStructural input7539 value3768 value1 value2 = (output7539, value5, value1) := by
  rw [input7539_def, output7539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7531_eq]
  dsimp only
  rw [node7538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3774 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14253 (Flapjack.WordLangAddr.addr 14257 0#64)))).val
theorem input7540_def : input7540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14253 (Flapjack.WordLangAddr.addr 14257 0#64))) := by
  unfold input7540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14253 (Flapjack.WordLangAddr.addr 14257 0#64)))).val
theorem output7540_def : output7540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14253 (Flapjack.WordLangAddr.addr 14257 0#64))) := by
  unfold output7540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7540_skip : Flapjack.WordAlloc.isSkip output7540 = false := by
  rw [output7540_def]
  conv => lhs; cbv
  try rfl
theorem node7540_eq : Flapjack.WordAlloc.removeDeadStructural input7540 value5 value1 value2 = (output7540, value3774, value1) := by
  rw [input7540_def, output7540_def]
  try (conv => lhs; cbv)
  try rfl

def value3775 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14257, 14245)])).val
theorem input7541_def : input7541 = (Flapjack.WordLangProgHOL.move 0 [(14257, 14245)]) := by
  unfold input7541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14257, 14245)])).val
theorem output7541_def : output7541 = (Flapjack.WordLangProgHOL.move 0 [(14257, 14245)]) := by
  unfold output7541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7541_skip : Flapjack.WordAlloc.isSkip output7541 = false := by
  rw [output7541_def]
  conv => lhs; cbv
  try rfl
theorem node7541_eq : Flapjack.WordAlloc.removeDeadStructural input7541 value3774 value1 value2 = (output7541, value3775, value1) := by
  rw [input7541_def, output7541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7541 input7540)).val
theorem input7542_def : input7542 = (.seq input7541 input7540) := by
  unfold input7542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7541 output7540)).val
theorem output7542_def : output7542 = (.seq output7541 output7540) := by
  unfold output7542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7542_skip : Flapjack.WordAlloc.isSkip output7542 = false := by
  rw [output7542_def]
  conv => lhs; cbv
  try rfl
theorem node7542_eq : Flapjack.WordAlloc.removeDeadStructural input7542 value5 value1 value2 = (output7542, value3775, value1) := by
  rw [input7542_def, output7542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7540_eq]
  dsimp only
  rw [node7541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3776 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14253 18231571463891878950#64))).val
theorem input7543_def : input7543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14253 18231571463891878950#64)) := by
  unfold input7543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14253 18231571463891878950#64))).val
theorem output7543_def : output7543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14253 18231571463891878950#64)) := by
  unfold output7543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7543_skip : Flapjack.WordAlloc.isSkip output7543 = false := by
  rw [output7543_def]
  conv => lhs; cbv
  try rfl
theorem node7543_eq : Flapjack.WordAlloc.removeDeadStructural input7543 value3775 value1 value2 = (output7543, value3776, value1) := by
  rw [input7543_def, output7543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14249 18231571463891878950#64))).val
theorem input7544_def : input7544 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14249 18231571463891878950#64)) := by
  unfold input7544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7544_def : output7544 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7544_skip : Flapjack.WordAlloc.isSkip output7544 = true := by
  rw [output7544_def]
  conv => lhs; cbv
  try rfl
theorem node7544_eq : Flapjack.WordAlloc.removeDeadStructural input7544 value3776 value1 value2 = (output7544, value3776, value1) := by
  rw [input7544_def, output7544_def]
  try (conv => lhs; cbv)
  try rfl

def value3777 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14245 14237 (Flapjack.WordRegImm.reg 14241))))).val
theorem input7545_def : input7545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14245 14237 (Flapjack.WordRegImm.reg 14241)))) := by
  unfold input7545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14245 14237 (Flapjack.WordRegImm.reg 14241))))).val
theorem output7545_def : output7545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14245 14237 (Flapjack.WordRegImm.reg 14241)))) := by
  unfold output7545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7545_skip : Flapjack.WordAlloc.isSkip output7545 = false := by
  rw [output7545_def]
  conv => lhs; cbv
  try rfl
theorem node7545_eq : Flapjack.WordAlloc.removeDeadStructural input7545 value3776 value1 value2 = (output7545, value3777, value1) := by
  rw [input7545_def, output7545_def]
  try (conv => lhs; cbv)
  try rfl

def value3778 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14241 3360#64))).val
theorem input7546_def : input7546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14241 3360#64)) := by
  unfold input7546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14241 3360#64))).val
theorem output7546_def : output7546 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14241 3360#64)) := by
  unfold output7546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7546_skip : Flapjack.WordAlloc.isSkip output7546 = false := by
  rw [output7546_def]
  conv => lhs; cbv
  try rfl
theorem node7546_eq : Flapjack.WordAlloc.removeDeadStructural input7546 value3777 value1 value2 = (output7546, value3778, value1) := by
  rw [input7546_def, output7546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7546 input7545)).val
theorem input7547_def : input7547 = (.seq input7546 input7545) := by
  unfold input7547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7546 output7545)).val
theorem output7547_def : output7547 = (.seq output7546 output7545) := by
  unfold output7547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7547_skip : Flapjack.WordAlloc.isSkip output7547 = false := by
  rw [output7547_def]
  conv => lhs; cbv
  try rfl
theorem node7547_eq : Flapjack.WordAlloc.removeDeadStructural input7547 value3776 value1 value2 = (output7547, value3778, value1) := by
  rw [input7547_def, output7547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7545_eq]
  dsimp only
  rw [node7546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3779 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14237 (Flapjack.WordLangAddr.addr 14233 18446744073709551104#64)))).val
theorem input7548_def : input7548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14237 (Flapjack.WordLangAddr.addr 14233 18446744073709551104#64))) := by
  unfold input7548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14237 (Flapjack.WordLangAddr.addr 14233 18446744073709551104#64)))).val
theorem output7548_def : output7548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14237 (Flapjack.WordLangAddr.addr 14233 18446744073709551104#64))) := by
  unfold output7548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7548_skip : Flapjack.WordAlloc.isSkip output7548 = false := by
  rw [output7548_def]
  conv => lhs; cbv
  try rfl
theorem node7548_eq : Flapjack.WordAlloc.removeDeadStructural input7548 value3778 value1 value2 = (output7548, value3779, value1) := by
  rw [input7548_def, output7548_def]
  try (conv => lhs; cbv)
  try rfl

def value3780 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14233 14229)).val
theorem input7549_def : input7549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14233 14229) := by
  unfold input7549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14233 14229)).val
theorem output7549_def : output7549 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14233 14229) := by
  unfold output7549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7549_skip : Flapjack.WordAlloc.isSkip output7549 = false := by
  rw [output7549_def]
  conv => lhs; cbv
  try rfl
theorem node7549_eq : Flapjack.WordAlloc.removeDeadStructural input7549 value3779 value1 value2 = (output7549, value3780, value1) := by
  rw [input7549_def, output7549_def]
  try (conv => lhs; cbv)
  try rfl

def value3781 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14229 14225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7550_def : input7550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14229 14225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14229 14225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7550_def : output7550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14229 14225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7550_skip : Flapjack.WordAlloc.isSkip output7550 = false := by
  rw [output7550_def]
  conv => lhs; cbv
  try rfl
theorem node7550_eq : Flapjack.WordAlloc.removeDeadStructural input7550 value3780 value1 value2 = (output7550, value3781, value1) := by
  rw [input7550_def, output7550_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14225 Flapjack.WordStore.heapLength)).val
theorem input7551_def : input7551 = (Flapjack.WordLangProgHOL.get 14225 Flapjack.WordStore.heapLength) := by
  unfold input7551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14225 Flapjack.WordStore.heapLength)).val
theorem output7551_def : output7551 = (Flapjack.WordLangProgHOL.get 14225 Flapjack.WordStore.heapLength) := by
  unfold output7551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7551_skip : Flapjack.WordAlloc.isSkip output7551 = false := by
  rw [output7551_def]
  conv => lhs; cbv
  try rfl
theorem node7551_eq : Flapjack.WordAlloc.removeDeadStructural input7551 value3781 value1 value2 = (output7551, value5, value1) := by
  rw [input7551_def, output7551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7551 input7550)).val
theorem input7552_def : input7552 = (.seq input7551 input7550) := by
  unfold input7552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7551 output7550)).val
theorem output7552_def : output7552 = (.seq output7551 output7550) := by
  unfold output7552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7552_skip : Flapjack.WordAlloc.isSkip output7552 = false := by
  rw [output7552_def]
  conv => lhs; cbv
  try rfl
theorem node7552_eq : Flapjack.WordAlloc.removeDeadStructural input7552 value3780 value1 value2 = (output7552, value5, value1) := by
  rw [input7552_def, output7552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7550_eq]
  dsimp only
  rw [node7551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7552 input7549)).val
theorem input7553_def : input7553 = (.seq input7552 input7549) := by
  unfold input7553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7552 output7549)).val
theorem output7553_def : output7553 = (.seq output7552 output7549) := by
  unfold output7553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7553_skip : Flapjack.WordAlloc.isSkip output7553 = false := by
  rw [output7553_def]
  conv => lhs; cbv
  try rfl
theorem node7553_eq : Flapjack.WordAlloc.removeDeadStructural input7553 value3779 value1 value2 = (output7553, value5, value1) := by
  rw [input7553_def, output7553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7549_eq]
  dsimp only
  rw [node7552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7553 input7548)).val
theorem input7554_def : input7554 = (.seq input7553 input7548) := by
  unfold input7554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7553 output7548)).val
theorem output7554_def : output7554 = (.seq output7553 output7548) := by
  unfold output7554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7554_skip : Flapjack.WordAlloc.isSkip output7554 = false := by
  rw [output7554_def]
  conv => lhs; cbv
  try rfl
theorem node7554_eq : Flapjack.WordAlloc.removeDeadStructural input7554 value3778 value1 value2 = (output7554, value5, value1) := by
  rw [input7554_def, output7554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7548_eq]
  dsimp only
  rw [node7553_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7554 input7547)).val
theorem input7555_def : input7555 = (.seq input7554 input7547) := by
  unfold input7555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7554 output7547)).val
theorem output7555_def : output7555 = (.seq output7554 output7547) := by
  unfold output7555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7555_skip : Flapjack.WordAlloc.isSkip output7555 = false := by
  rw [output7555_def]
  conv => lhs; cbv
  try rfl
theorem node7555_eq : Flapjack.WordAlloc.removeDeadStructural input7555 value3776 value1 value2 = (output7555, value5, value1) := by
  rw [input7555_def, output7555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7547_eq]
  dsimp only
  rw [node7554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3782 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14217 (Flapjack.WordLangAddr.addr 14221 0#64)))).val
theorem input7556_def : input7556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14217 (Flapjack.WordLangAddr.addr 14221 0#64))) := by
  unfold input7556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14217 (Flapjack.WordLangAddr.addr 14221 0#64)))).val
theorem output7556_def : output7556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14217 (Flapjack.WordLangAddr.addr 14221 0#64))) := by
  unfold output7556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7556_skip : Flapjack.WordAlloc.isSkip output7556 = false := by
  rw [output7556_def]
  conv => lhs; cbv
  try rfl
theorem node7556_eq : Flapjack.WordAlloc.removeDeadStructural input7556 value5 value1 value2 = (output7556, value3782, value1) := by
  rw [input7556_def, output7556_def]
  try (conv => lhs; cbv)
  try rfl

def value3783 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14221, 14209)])).val
theorem input7557_def : input7557 = (Flapjack.WordLangProgHOL.move 0 [(14221, 14209)]) := by
  unfold input7557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14221, 14209)])).val
theorem output7557_def : output7557 = (Flapjack.WordLangProgHOL.move 0 [(14221, 14209)]) := by
  unfold output7557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7557_skip : Flapjack.WordAlloc.isSkip output7557 = false := by
  rw [output7557_def]
  conv => lhs; cbv
  try rfl
theorem node7557_eq : Flapjack.WordAlloc.removeDeadStructural input7557 value3782 value1 value2 = (output7557, value3783, value1) := by
  rw [input7557_def, output7557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7557 input7556)).val
theorem input7558_def : input7558 = (.seq input7557 input7556) := by
  unfold input7558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7557 output7556)).val
theorem output7558_def : output7558 = (.seq output7557 output7556) := by
  unfold output7558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7558_skip : Flapjack.WordAlloc.isSkip output7558 = false := by
  rw [output7558_def]
  conv => lhs; cbv
  try rfl
theorem node7558_eq : Flapjack.WordAlloc.removeDeadStructural input7558 value5 value1 value2 = (output7558, value3783, value1) := by
  rw [input7558_def, output7558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7556_eq]
  dsimp only
  rw [node7557_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3784 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14217 4825120264949852469#64))).val
theorem input7559_def : input7559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14217 4825120264949852469#64)) := by
  unfold input7559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14217 4825120264949852469#64))).val
theorem output7559_def : output7559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14217 4825120264949852469#64)) := by
  unfold output7559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7559_skip : Flapjack.WordAlloc.isSkip output7559 = false := by
  rw [output7559_def]
  conv => lhs; cbv
  try rfl
theorem node7559_eq : Flapjack.WordAlloc.removeDeadStructural input7559 value3783 value1 value2 = (output7559, value3784, value1) := by
  rw [input7559_def, output7559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14213 4825120264949852469#64))).val
theorem input7560_def : input7560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14213 4825120264949852469#64)) := by
  unfold input7560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7560_def : output7560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7560_skip : Flapjack.WordAlloc.isSkip output7560 = true := by
  rw [output7560_def]
  conv => lhs; cbv
  try rfl
theorem node7560_eq : Flapjack.WordAlloc.removeDeadStructural input7560 value3784 value1 value2 = (output7560, value3784, value1) := by
  rw [input7560_def, output7560_def]
  try (conv => lhs; cbv)
  try rfl

def value3785 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14209 14201 (Flapjack.WordRegImm.reg 14205))))).val
theorem input7561_def : input7561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14209 14201 (Flapjack.WordRegImm.reg 14205)))) := by
  unfold input7561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14209 14201 (Flapjack.WordRegImm.reg 14205))))).val
theorem output7561_def : output7561 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14209 14201 (Flapjack.WordRegImm.reg 14205)))) := by
  unfold output7561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7561_skip : Flapjack.WordAlloc.isSkip output7561 = false := by
  rw [output7561_def]
  conv => lhs; cbv
  try rfl
theorem node7561_eq : Flapjack.WordAlloc.removeDeadStructural input7561 value3784 value1 value2 = (output7561, value3785, value1) := by
  rw [input7561_def, output7561_def]
  try (conv => lhs; cbv)
  try rfl

def value3786 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14205 3352#64))).val
theorem input7562_def : input7562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14205 3352#64)) := by
  unfold input7562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14205 3352#64))).val
theorem output7562_def : output7562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14205 3352#64)) := by
  unfold output7562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7562_skip : Flapjack.WordAlloc.isSkip output7562 = false := by
  rw [output7562_def]
  conv => lhs; cbv
  try rfl
theorem node7562_eq : Flapjack.WordAlloc.removeDeadStructural input7562 value3785 value1 value2 = (output7562, value3786, value1) := by
  rw [input7562_def, output7562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7562 input7561)).val
theorem input7563_def : input7563 = (.seq input7562 input7561) := by
  unfold input7563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7562 output7561)).val
theorem output7563_def : output7563 = (.seq output7562 output7561) := by
  unfold output7563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7563_skip : Flapjack.WordAlloc.isSkip output7563 = false := by
  rw [output7563_def]
  conv => lhs; cbv
  try rfl
theorem node7563_eq : Flapjack.WordAlloc.removeDeadStructural input7563 value3784 value1 value2 = (output7563, value3786, value1) := by
  rw [input7563_def, output7563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7561_eq]
  dsimp only
  rw [node7562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3787 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14201 (Flapjack.WordLangAddr.addr 14197 18446744073709551104#64)))).val
theorem input7564_def : input7564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14201 (Flapjack.WordLangAddr.addr 14197 18446744073709551104#64))) := by
  unfold input7564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14201 (Flapjack.WordLangAddr.addr 14197 18446744073709551104#64)))).val
theorem output7564_def : output7564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14201 (Flapjack.WordLangAddr.addr 14197 18446744073709551104#64))) := by
  unfold output7564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7564_skip : Flapjack.WordAlloc.isSkip output7564 = false := by
  rw [output7564_def]
  conv => lhs; cbv
  try rfl
theorem node7564_eq : Flapjack.WordAlloc.removeDeadStructural input7564 value3786 value1 value2 = (output7564, value3787, value1) := by
  rw [input7564_def, output7564_def]
  try (conv => lhs; cbv)
  try rfl

def value3788 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14197 14193)).val
theorem input7565_def : input7565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14197 14193) := by
  unfold input7565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14197 14193)).val
theorem output7565_def : output7565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14197 14193) := by
  unfold output7565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7565_skip : Flapjack.WordAlloc.isSkip output7565 = false := by
  rw [output7565_def]
  conv => lhs; cbv
  try rfl
theorem node7565_eq : Flapjack.WordAlloc.removeDeadStructural input7565 value3787 value1 value2 = (output7565, value3788, value1) := by
  rw [input7565_def, output7565_def]
  try (conv => lhs; cbv)
  try rfl

def value3789 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14193 14189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7566_def : input7566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14193 14189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14193 14189 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7566_def : output7566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14193 14189 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7566_skip : Flapjack.WordAlloc.isSkip output7566 = false := by
  rw [output7566_def]
  conv => lhs; cbv
  try rfl
theorem node7566_eq : Flapjack.WordAlloc.removeDeadStructural input7566 value3788 value1 value2 = (output7566, value3789, value1) := by
  rw [input7566_def, output7566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14189 Flapjack.WordStore.heapLength)).val
theorem input7567_def : input7567 = (Flapjack.WordLangProgHOL.get 14189 Flapjack.WordStore.heapLength) := by
  unfold input7567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14189 Flapjack.WordStore.heapLength)).val
theorem output7567_def : output7567 = (Flapjack.WordLangProgHOL.get 14189 Flapjack.WordStore.heapLength) := by
  unfold output7567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7567_skip : Flapjack.WordAlloc.isSkip output7567 = false := by
  rw [output7567_def]
  conv => lhs; cbv
  try rfl
theorem node7567_eq : Flapjack.WordAlloc.removeDeadStructural input7567 value3789 value1 value2 = (output7567, value5, value1) := by
  rw [input7567_def, output7567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7567 input7566)).val
theorem input7568_def : input7568 = (.seq input7567 input7566) := by
  unfold input7568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7567 output7566)).val
theorem output7568_def : output7568 = (.seq output7567 output7566) := by
  unfold output7568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7568_skip : Flapjack.WordAlloc.isSkip output7568 = false := by
  rw [output7568_def]
  conv => lhs; cbv
  try rfl
theorem node7568_eq : Flapjack.WordAlloc.removeDeadStructural input7568 value3788 value1 value2 = (output7568, value5, value1) := by
  rw [input7568_def, output7568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7566_eq]
  dsimp only
  rw [node7567_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7568 input7565)).val
theorem input7569_def : input7569 = (.seq input7568 input7565) := by
  unfold input7569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7568 output7565)).val
theorem output7569_def : output7569 = (.seq output7568 output7565) := by
  unfold output7569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7569_skip : Flapjack.WordAlloc.isSkip output7569 = false := by
  rw [output7569_def]
  conv => lhs; cbv
  try rfl
theorem node7569_eq : Flapjack.WordAlloc.removeDeadStructural input7569 value3787 value1 value2 = (output7569, value5, value1) := by
  rw [input7569_def, output7569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7565_eq]
  dsimp only
  rw [node7568_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7569 input7564)).val
theorem input7570_def : input7570 = (.seq input7569 input7564) := by
  unfold input7570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7569 output7564)).val
theorem output7570_def : output7570 = (.seq output7569 output7564) := by
  unfold output7570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7570_skip : Flapjack.WordAlloc.isSkip output7570 = false := by
  rw [output7570_def]
  conv => lhs; cbv
  try rfl
theorem node7570_eq : Flapjack.WordAlloc.removeDeadStructural input7570 value3786 value1 value2 = (output7570, value5, value1) := by
  rw [input7570_def, output7570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7564_eq]
  dsimp only
  rw [node7569_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7570 input7563)).val
theorem input7571_def : input7571 = (.seq input7570 input7563) := by
  unfold input7571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7570 output7563)).val
theorem output7571_def : output7571 = (.seq output7570 output7563) := by
  unfold output7571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7571_skip : Flapjack.WordAlloc.isSkip output7571 = false := by
  rw [output7571_def]
  conv => lhs; cbv
  try rfl
theorem node7571_eq : Flapjack.WordAlloc.removeDeadStructural input7571 value3784 value1 value2 = (output7571, value5, value1) := by
  rw [input7571_def, output7571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7563_eq]
  dsimp only
  rw [node7570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3790 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14181 (Flapjack.WordLangAddr.addr 14185 0#64)))).val
theorem input7572_def : input7572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14181 (Flapjack.WordLangAddr.addr 14185 0#64))) := by
  unfold input7572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14181 (Flapjack.WordLangAddr.addr 14185 0#64)))).val
theorem output7572_def : output7572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14181 (Flapjack.WordLangAddr.addr 14185 0#64))) := by
  unfold output7572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7572_skip : Flapjack.WordAlloc.isSkip output7572 = false := by
  rw [output7572_def]
  conv => lhs; cbv
  try rfl
theorem node7572_eq : Flapjack.WordAlloc.removeDeadStructural input7572 value5 value1 value2 = (output7572, value3790, value1) := by
  rw [input7572_def, output7572_def]
  try (conv => lhs; cbv)
  try rfl

def value3791 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14185, 14173)])).val
theorem input7573_def : input7573 = (Flapjack.WordLangProgHOL.move 0 [(14185, 14173)]) := by
  unfold input7573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14185, 14173)])).val
theorem output7573_def : output7573 = (Flapjack.WordLangProgHOL.move 0 [(14185, 14173)]) := by
  unfold output7573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7573_skip : Flapjack.WordAlloc.isSkip output7573 = false := by
  rw [output7573_def]
  conv => lhs; cbv
  try rfl
theorem node7573_eq : Flapjack.WordAlloc.removeDeadStructural input7573 value3790 value1 value2 = (output7573, value3791, value1) := by
  rw [input7573_def, output7573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7573 input7572)).val
theorem input7574_def : input7574 = (.seq input7573 input7572) := by
  unfold input7574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7573 output7572)).val
theorem output7574_def : output7574 = (.seq output7573 output7572) := by
  unfold output7574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7574_skip : Flapjack.WordAlloc.isSkip output7574 = false := by
  rw [output7574_def]
  conv => lhs; cbv
  try rfl
theorem node7574_eq : Flapjack.WordAlloc.removeDeadStructural input7574 value5 value1 value2 = (output7574, value3791, value1) := by
  rw [input7574_def, output7574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7572_eq]
  dsimp only
  rw [node7573_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3792 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14181 11627815551290637097#64))).val
theorem input7575_def : input7575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14181 11627815551290637097#64)) := by
  unfold input7575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14181 11627815551290637097#64))).val
theorem output7575_def : output7575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14181 11627815551290637097#64)) := by
  unfold output7575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7575_skip : Flapjack.WordAlloc.isSkip output7575 = false := by
  rw [output7575_def]
  conv => lhs; cbv
  try rfl
theorem node7575_eq : Flapjack.WordAlloc.removeDeadStructural input7575 value3791 value1 value2 = (output7575, value3792, value1) := by
  rw [input7575_def, output7575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14177 11627815551290637097#64))).val
theorem input7576_def : input7576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14177 11627815551290637097#64)) := by
  unfold input7576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7576_def : output7576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7576_skip : Flapjack.WordAlloc.isSkip output7576 = true := by
  rw [output7576_def]
  conv => lhs; cbv
  try rfl
theorem node7576_eq : Flapjack.WordAlloc.removeDeadStructural input7576 value3792 value1 value2 = (output7576, value3792, value1) := by
  rw [input7576_def, output7576_def]
  try (conv => lhs; cbv)
  try rfl

def value3793 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14173 14165 (Flapjack.WordRegImm.reg 14169))))).val
theorem input7577_def : input7577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14173 14165 (Flapjack.WordRegImm.reg 14169)))) := by
  unfold input7577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14173 14165 (Flapjack.WordRegImm.reg 14169))))).val
theorem output7577_def : output7577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14173 14165 (Flapjack.WordRegImm.reg 14169)))) := by
  unfold output7577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7577_skip : Flapjack.WordAlloc.isSkip output7577 = false := by
  rw [output7577_def]
  conv => lhs; cbv
  try rfl
theorem node7577_eq : Flapjack.WordAlloc.removeDeadStructural input7577 value3792 value1 value2 = (output7577, value3793, value1) := by
  rw [input7577_def, output7577_def]
  try (conv => lhs; cbv)
  try rfl

def value3794 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14169 3344#64))).val
theorem input7578_def : input7578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14169 3344#64)) := by
  unfold input7578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14169 3344#64))).val
theorem output7578_def : output7578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14169 3344#64)) := by
  unfold output7578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7578_skip : Flapjack.WordAlloc.isSkip output7578 = false := by
  rw [output7578_def]
  conv => lhs; cbv
  try rfl
theorem node7578_eq : Flapjack.WordAlloc.removeDeadStructural input7578 value3793 value1 value2 = (output7578, value3794, value1) := by
  rw [input7578_def, output7578_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7578 input7577)).val
theorem input7579_def : input7579 = (.seq input7578 input7577) := by
  unfold input7579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7578 output7577)).val
theorem output7579_def : output7579 = (.seq output7578 output7577) := by
  unfold output7579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7579_skip : Flapjack.WordAlloc.isSkip output7579 = false := by
  rw [output7579_def]
  conv => lhs; cbv
  try rfl
theorem node7579_eq : Flapjack.WordAlloc.removeDeadStructural input7579 value3792 value1 value2 = (output7579, value3794, value1) := by
  rw [input7579_def, output7579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7577_eq]
  dsimp only
  rw [node7578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3795 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14165 (Flapjack.WordLangAddr.addr 14161 18446744073709551104#64)))).val
theorem input7580_def : input7580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14165 (Flapjack.WordLangAddr.addr 14161 18446744073709551104#64))) := by
  unfold input7580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14165 (Flapjack.WordLangAddr.addr 14161 18446744073709551104#64)))).val
theorem output7580_def : output7580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14165 (Flapjack.WordLangAddr.addr 14161 18446744073709551104#64))) := by
  unfold output7580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7580_skip : Flapjack.WordAlloc.isSkip output7580 = false := by
  rw [output7580_def]
  conv => lhs; cbv
  try rfl
theorem node7580_eq : Flapjack.WordAlloc.removeDeadStructural input7580 value3794 value1 value2 = (output7580, value3795, value1) := by
  rw [input7580_def, output7580_def]
  try (conv => lhs; cbv)
  try rfl

def value3796 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14161 14157)).val
theorem input7581_def : input7581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14161 14157) := by
  unfold input7581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14161 14157)).val
theorem output7581_def : output7581 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14161 14157) := by
  unfold output7581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7581_skip : Flapjack.WordAlloc.isSkip output7581 = false := by
  rw [output7581_def]
  conv => lhs; cbv
  try rfl
theorem node7581_eq : Flapjack.WordAlloc.removeDeadStructural input7581 value3795 value1 value2 = (output7581, value3796, value1) := by
  rw [input7581_def, output7581_def]
  try (conv => lhs; cbv)
  try rfl

def value3797 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14157 14153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7582_def : input7582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14157 14153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14157 14153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7582_def : output7582 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14157 14153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7582_skip : Flapjack.WordAlloc.isSkip output7582 = false := by
  rw [output7582_def]
  conv => lhs; cbv
  try rfl
theorem node7582_eq : Flapjack.WordAlloc.removeDeadStructural input7582 value3796 value1 value2 = (output7582, value3797, value1) := by
  rw [input7582_def, output7582_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14153 Flapjack.WordStore.heapLength)).val
theorem input7583_def : input7583 = (Flapjack.WordLangProgHOL.get 14153 Flapjack.WordStore.heapLength) := by
  unfold input7583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14153 Flapjack.WordStore.heapLength)).val
theorem output7583_def : output7583 = (Flapjack.WordLangProgHOL.get 14153 Flapjack.WordStore.heapLength) := by
  unfold output7583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7583_skip : Flapjack.WordAlloc.isSkip output7583 = false := by
  rw [output7583_def]
  conv => lhs; cbv
  try rfl
theorem node7583_eq : Flapjack.WordAlloc.removeDeadStructural input7583 value3797 value1 value2 = (output7583, value5, value1) := by
  rw [input7583_def, output7583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7583 input7582)).val
theorem input7584_def : input7584 = (.seq input7583 input7582) := by
  unfold input7584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7583 output7582)).val
theorem output7584_def : output7584 = (.seq output7583 output7582) := by
  unfold output7584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7584_skip : Flapjack.WordAlloc.isSkip output7584 = false := by
  rw [output7584_def]
  conv => lhs; cbv
  try rfl
theorem node7584_eq : Flapjack.WordAlloc.removeDeadStructural input7584 value3796 value1 value2 = (output7584, value5, value1) := by
  rw [input7584_def, output7584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7582_eq]
  dsimp only
  rw [node7583_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7584 input7581)).val
theorem input7585_def : input7585 = (.seq input7584 input7581) := by
  unfold input7585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7584 output7581)).val
theorem output7585_def : output7585 = (.seq output7584 output7581) := by
  unfold output7585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7585_skip : Flapjack.WordAlloc.isSkip output7585 = false := by
  rw [output7585_def]
  conv => lhs; cbv
  try rfl
theorem node7585_eq : Flapjack.WordAlloc.removeDeadStructural input7585 value3795 value1 value2 = (output7585, value5, value1) := by
  rw [input7585_def, output7585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7581_eq]
  dsimp only
  rw [node7584_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7585 input7580)).val
theorem input7586_def : input7586 = (.seq input7585 input7580) := by
  unfold input7586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7585 output7580)).val
theorem output7586_def : output7586 = (.seq output7585 output7580) := by
  unfold output7586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7586_skip : Flapjack.WordAlloc.isSkip output7586 = false := by
  rw [output7586_def]
  conv => lhs; cbv
  try rfl
theorem node7586_eq : Flapjack.WordAlloc.removeDeadStructural input7586 value3794 value1 value2 = (output7586, value5, value1) := by
  rw [input7586_def, output7586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7580_eq]
  dsimp only
  rw [node7585_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7586 input7579)).val
theorem input7587_def : input7587 = (.seq input7586 input7579) := by
  unfold input7587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7586 output7579)).val
theorem output7587_def : output7587 = (.seq output7586 output7579) := by
  unfold output7587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7587_skip : Flapjack.WordAlloc.isSkip output7587 = false := by
  rw [output7587_def]
  conv => lhs; cbv
  try rfl
theorem node7587_eq : Flapjack.WordAlloc.removeDeadStructural input7587 value3792 value1 value2 = (output7587, value5, value1) := by
  rw [input7587_def, output7587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7579_eq]
  dsimp only
  rw [node7586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3798 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14145 (Flapjack.WordLangAddr.addr 14149 0#64)))).val
theorem input7588_def : input7588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14145 (Flapjack.WordLangAddr.addr 14149 0#64))) := by
  unfold input7588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14145 (Flapjack.WordLangAddr.addr 14149 0#64)))).val
theorem output7588_def : output7588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14145 (Flapjack.WordLangAddr.addr 14149 0#64))) := by
  unfold output7588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7588_skip : Flapjack.WordAlloc.isSkip output7588 = false := by
  rw [output7588_def]
  conv => lhs; cbv
  try rfl
theorem node7588_eq : Flapjack.WordAlloc.removeDeadStructural input7588 value5 value1 value2 = (output7588, value3798, value1) := by
  rw [input7588_def, output7588_def]
  try (conv => lhs; cbv)
  try rfl

def value3799 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14149, 14137)])).val
theorem input7589_def : input7589 = (Flapjack.WordLangProgHOL.move 0 [(14149, 14137)]) := by
  unfold input7589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14149, 14137)])).val
theorem output7589_def : output7589 = (Flapjack.WordLangProgHOL.move 0 [(14149, 14137)]) := by
  unfold output7589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7589_skip : Flapjack.WordAlloc.isSkip output7589 = false := by
  rw [output7589_def]
  conv => lhs; cbv
  try rfl
theorem node7589_eq : Flapjack.WordAlloc.removeDeadStructural input7589 value3798 value1 value2 = (output7589, value3799, value1) := by
  rw [input7589_def, output7589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7589 input7588)).val
theorem input7590_def : input7590 = (.seq input7589 input7588) := by
  unfold input7590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7589 output7588)).val
theorem output7590_def : output7590 = (.seq output7589 output7588) := by
  unfold output7590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7590_skip : Flapjack.WordAlloc.isSkip output7590 = false := by
  rw [output7590_def]
  conv => lhs; cbv
  try rfl
theorem node7590_eq : Flapjack.WordAlloc.removeDeadStructural input7590 value5 value1 value2 = (output7590, value3799, value1) := by
  rw [input7590_def, output7590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7588_eq]
  dsimp only
  rw [node7589_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3800 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14145 336375361001233340#64))).val
theorem input7591_def : input7591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14145 336375361001233340#64)) := by
  unfold input7591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14145 336375361001233340#64))).val
theorem output7591_def : output7591 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14145 336375361001233340#64)) := by
  unfold output7591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7591_skip : Flapjack.WordAlloc.isSkip output7591 = false := by
  rw [output7591_def]
  conv => lhs; cbv
  try rfl
theorem node7591_eq : Flapjack.WordAlloc.removeDeadStructural input7591 value3799 value1 value2 = (output7591, value3800, value1) := by
  rw [input7591_def, output7591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14141 336375361001233340#64))).val
theorem input7592_def : input7592 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14141 336375361001233340#64)) := by
  unfold input7592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7592_def : output7592 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7592_skip : Flapjack.WordAlloc.isSkip output7592 = true := by
  rw [output7592_def]
  conv => lhs; cbv
  try rfl
theorem node7592_eq : Flapjack.WordAlloc.removeDeadStructural input7592 value3800 value1 value2 = (output7592, value3800, value1) := by
  rw [input7592_def, output7592_def]
  try (conv => lhs; cbv)
  try rfl

def value3801 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14137 14129 (Flapjack.WordRegImm.reg 14133))))).val
theorem input7593_def : input7593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14137 14129 (Flapjack.WordRegImm.reg 14133)))) := by
  unfold input7593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14137 14129 (Flapjack.WordRegImm.reg 14133))))).val
theorem output7593_def : output7593 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14137 14129 (Flapjack.WordRegImm.reg 14133)))) := by
  unfold output7593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7593_skip : Flapjack.WordAlloc.isSkip output7593 = false := by
  rw [output7593_def]
  conv => lhs; cbv
  try rfl
theorem node7593_eq : Flapjack.WordAlloc.removeDeadStructural input7593 value3800 value1 value2 = (output7593, value3801, value1) := by
  rw [input7593_def, output7593_def]
  try (conv => lhs; cbv)
  try rfl

def value3802 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14133 3336#64))).val
theorem input7594_def : input7594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14133 3336#64)) := by
  unfold input7594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14133 3336#64))).val
theorem output7594_def : output7594 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14133 3336#64)) := by
  unfold output7594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7594_skip : Flapjack.WordAlloc.isSkip output7594 = false := by
  rw [output7594_def]
  conv => lhs; cbv
  try rfl
theorem node7594_eq : Flapjack.WordAlloc.removeDeadStructural input7594 value3801 value1 value2 = (output7594, value3802, value1) := by
  rw [input7594_def, output7594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7594 input7593)).val
theorem input7595_def : input7595 = (.seq input7594 input7593) := by
  unfold input7595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7594 output7593)).val
theorem output7595_def : output7595 = (.seq output7594 output7593) := by
  unfold output7595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7595_skip : Flapjack.WordAlloc.isSkip output7595 = false := by
  rw [output7595_def]
  conv => lhs; cbv
  try rfl
theorem node7595_eq : Flapjack.WordAlloc.removeDeadStructural input7595 value3800 value1 value2 = (output7595, value3802, value1) := by
  rw [input7595_def, output7595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7593_eq]
  dsimp only
  rw [node7594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3803 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14129 (Flapjack.WordLangAddr.addr 14125 18446744073709551104#64)))).val
theorem input7596_def : input7596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14129 (Flapjack.WordLangAddr.addr 14125 18446744073709551104#64))) := by
  unfold input7596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14129 (Flapjack.WordLangAddr.addr 14125 18446744073709551104#64)))).val
theorem output7596_def : output7596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14129 (Flapjack.WordLangAddr.addr 14125 18446744073709551104#64))) := by
  unfold output7596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7596_skip : Flapjack.WordAlloc.isSkip output7596 = false := by
  rw [output7596_def]
  conv => lhs; cbv
  try rfl
theorem node7596_eq : Flapjack.WordAlloc.removeDeadStructural input7596 value3802 value1 value2 = (output7596, value3803, value1) := by
  rw [input7596_def, output7596_def]
  try (conv => lhs; cbv)
  try rfl

def value3804 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14125 14121)).val
theorem input7597_def : input7597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14125 14121) := by
  unfold input7597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14125 14121)).val
theorem output7597_def : output7597 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14125 14121) := by
  unfold output7597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7597_skip : Flapjack.WordAlloc.isSkip output7597 = false := by
  rw [output7597_def]
  conv => lhs; cbv
  try rfl
theorem node7597_eq : Flapjack.WordAlloc.removeDeadStructural input7597 value3803 value1 value2 = (output7597, value3804, value1) := by
  rw [input7597_def, output7597_def]
  try (conv => lhs; cbv)
  try rfl

def value3805 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14121 14117 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7598_def : input7598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14121 14117 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14121 14117 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7598_def : output7598 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14121 14117 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7598_skip : Flapjack.WordAlloc.isSkip output7598 = false := by
  rw [output7598_def]
  conv => lhs; cbv
  try rfl
theorem node7598_eq : Flapjack.WordAlloc.removeDeadStructural input7598 value3804 value1 value2 = (output7598, value3805, value1) := by
  rw [input7598_def, output7598_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14117 Flapjack.WordStore.heapLength)).val
theorem input7599_def : input7599 = (Flapjack.WordLangProgHOL.get 14117 Flapjack.WordStore.heapLength) := by
  unfold input7599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14117 Flapjack.WordStore.heapLength)).val
theorem output7599_def : output7599 = (Flapjack.WordLangProgHOL.get 14117 Flapjack.WordStore.heapLength) := by
  unfold output7599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7599_skip : Flapjack.WordAlloc.isSkip output7599 = false := by
  rw [output7599_def]
  conv => lhs; cbv
  try rfl
theorem node7599_eq : Flapjack.WordAlloc.removeDeadStructural input7599 value3805 value1 value2 = (output7599, value5, value1) := by
  rw [input7599_def, output7599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7599 input7598)).val
theorem input7600_def : input7600 = (.seq input7599 input7598) := by
  unfold input7600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7599 output7598)).val
theorem output7600_def : output7600 = (.seq output7599 output7598) := by
  unfold output7600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7600_skip : Flapjack.WordAlloc.isSkip output7600 = false := by
  rw [output7600_def]
  conv => lhs; cbv
  try rfl
theorem node7600_eq : Flapjack.WordAlloc.removeDeadStructural input7600 value3804 value1 value2 = (output7600, value5, value1) := by
  rw [input7600_def, output7600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7598_eq]
  dsimp only
  rw [node7599_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7600 input7597)).val
theorem input7601_def : input7601 = (.seq input7600 input7597) := by
  unfold input7601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7600 output7597)).val
theorem output7601_def : output7601 = (.seq output7600 output7597) := by
  unfold output7601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7601_skip : Flapjack.WordAlloc.isSkip output7601 = false := by
  rw [output7601_def]
  conv => lhs; cbv
  try rfl
theorem node7601_eq : Flapjack.WordAlloc.removeDeadStructural input7601 value3803 value1 value2 = (output7601, value5, value1) := by
  rw [input7601_def, output7601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7597_eq]
  dsimp only
  rw [node7600_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7601 input7596)).val
theorem input7602_def : input7602 = (.seq input7601 input7596) := by
  unfold input7602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7601 output7596)).val
theorem output7602_def : output7602 = (.seq output7601 output7596) := by
  unfold output7602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7602_skip : Flapjack.WordAlloc.isSkip output7602 = false := by
  rw [output7602_def]
  conv => lhs; cbv
  try rfl
theorem node7602_eq : Flapjack.WordAlloc.removeDeadStructural input7602 value3802 value1 value2 = (output7602, value5, value1) := by
  rw [input7602_def, output7602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7596_eq]
  dsimp only
  rw [node7601_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7602 input7595)).val
theorem input7603_def : input7603 = (.seq input7602 input7595) := by
  unfold input7603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7602 output7595)).val
theorem output7603_def : output7603 = (.seq output7602 output7595) := by
  unfold output7603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7603_skip : Flapjack.WordAlloc.isSkip output7603 = false := by
  rw [output7603_def]
  conv => lhs; cbv
  try rfl
theorem node7603_eq : Flapjack.WordAlloc.removeDeadStructural input7603 value3800 value1 value2 = (output7603, value5, value1) := by
  rw [input7603_def, output7603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7595_eq]
  dsimp only
  rw [node7602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3806 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14109 (Flapjack.WordLangAddr.addr 14113 0#64)))).val
theorem input7604_def : input7604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14109 (Flapjack.WordLangAddr.addr 14113 0#64))) := by
  unfold input7604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14109 (Flapjack.WordLangAddr.addr 14113 0#64)))).val
theorem output7604_def : output7604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14109 (Flapjack.WordLangAddr.addr 14113 0#64))) := by
  unfold output7604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7604_skip : Flapjack.WordAlloc.isSkip output7604 = false := by
  rw [output7604_def]
  conv => lhs; cbv
  try rfl
theorem node7604_eq : Flapjack.WordAlloc.removeDeadStructural input7604 value5 value1 value2 = (output7604, value3806, value1) := by
  rw [input7604_def, output7604_def]
  try (conv => lhs; cbv)
  try rfl

def value3807 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14113, 14101)])).val
theorem input7605_def : input7605 = (Flapjack.WordLangProgHOL.move 0 [(14113, 14101)]) := by
  unfold input7605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14113, 14101)])).val
theorem output7605_def : output7605 = (Flapjack.WordLangProgHOL.move 0 [(14113, 14101)]) := by
  unfold output7605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7605_skip : Flapjack.WordAlloc.isSkip output7605 = false := by
  rw [output7605_def]
  conv => lhs; cbv
  try rfl
theorem node7605_eq : Flapjack.WordAlloc.removeDeadStructural input7605 value3806 value1 value2 = (output7605, value3807, value1) := by
  rw [input7605_def, output7605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7605 input7604)).val
theorem input7606_def : input7606 = (.seq input7605 input7604) := by
  unfold input7606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7605 output7604)).val
theorem output7606_def : output7606 = (.seq output7605 output7604) := by
  unfold output7606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7606_skip : Flapjack.WordAlloc.isSkip output7606 = false := by
  rw [output7606_def]
  conv => lhs; cbv
  try rfl
theorem node7606_eq : Flapjack.WordAlloc.removeDeadStructural input7606 value5 value1 value2 = (output7606, value3807, value1) := by
  rw [input7606_def, output7606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7604_eq]
  dsimp only
  rw [node7605_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3808 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14109 12882959944969186108#64))).val
theorem input7607_def : input7607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14109 12882959944969186108#64)) := by
  unfold input7607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14109 12882959944969186108#64))).val
theorem output7607_def : output7607 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14109 12882959944969186108#64)) := by
  unfold output7607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7607_skip : Flapjack.WordAlloc.isSkip output7607 = false := by
  rw [output7607_def]
  conv => lhs; cbv
  try rfl
theorem node7607_eq : Flapjack.WordAlloc.removeDeadStructural input7607 value3807 value1 value2 = (output7607, value3808, value1) := by
  rw [input7607_def, output7607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14105 12882959944969186108#64))).val
theorem input7608_def : input7608 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14105 12882959944969186108#64)) := by
  unfold input7608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7608_def : output7608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7608_skip : Flapjack.WordAlloc.isSkip output7608 = true := by
  rw [output7608_def]
  conv => lhs; cbv
  try rfl
theorem node7608_eq : Flapjack.WordAlloc.removeDeadStructural input7608 value3808 value1 value2 = (output7608, value3808, value1) := by
  rw [input7608_def, output7608_def]
  try (conv => lhs; cbv)
  try rfl

def value3809 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14101 14093 (Flapjack.WordRegImm.reg 14097))))).val
theorem input7609_def : input7609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14101 14093 (Flapjack.WordRegImm.reg 14097)))) := by
  unfold input7609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14101 14093 (Flapjack.WordRegImm.reg 14097))))).val
theorem output7609_def : output7609 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14101 14093 (Flapjack.WordRegImm.reg 14097)))) := by
  unfold output7609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7609_skip : Flapjack.WordAlloc.isSkip output7609 = false := by
  rw [output7609_def]
  conv => lhs; cbv
  try rfl
theorem node7609_eq : Flapjack.WordAlloc.removeDeadStructural input7609 value3808 value1 value2 = (output7609, value3809, value1) := by
  rw [input7609_def, output7609_def]
  try (conv => lhs; cbv)
  try rfl

def value3810 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14097 3328#64))).val
theorem input7610_def : input7610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14097 3328#64)) := by
  unfold input7610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14097 3328#64))).val
theorem output7610_def : output7610 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14097 3328#64)) := by
  unfold output7610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7610_skip : Flapjack.WordAlloc.isSkip output7610 = false := by
  rw [output7610_def]
  conv => lhs; cbv
  try rfl
theorem node7610_eq : Flapjack.WordAlloc.removeDeadStructural input7610 value3809 value1 value2 = (output7610, value3810, value1) := by
  rw [input7610_def, output7610_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7610 input7609)).val
theorem input7611_def : input7611 = (.seq input7610 input7609) := by
  unfold input7611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7610 output7609)).val
theorem output7611_def : output7611 = (.seq output7610 output7609) := by
  unfold output7611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7611_skip : Flapjack.WordAlloc.isSkip output7611 = false := by
  rw [output7611_def]
  conv => lhs; cbv
  try rfl
theorem node7611_eq : Flapjack.WordAlloc.removeDeadStructural input7611 value3808 value1 value2 = (output7611, value3810, value1) := by
  rw [input7611_def, output7611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7609_eq]
  dsimp only
  rw [node7610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3811 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14093 (Flapjack.WordLangAddr.addr 14089 18446744073709551104#64)))).val
theorem input7612_def : input7612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14093 (Flapjack.WordLangAddr.addr 14089 18446744073709551104#64))) := by
  unfold input7612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14093 (Flapjack.WordLangAddr.addr 14089 18446744073709551104#64)))).val
theorem output7612_def : output7612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14093 (Flapjack.WordLangAddr.addr 14089 18446744073709551104#64))) := by
  unfold output7612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7612_skip : Flapjack.WordAlloc.isSkip output7612 = false := by
  rw [output7612_def]
  conv => lhs; cbv
  try rfl
theorem node7612_eq : Flapjack.WordAlloc.removeDeadStructural input7612 value3810 value1 value2 = (output7612, value3811, value1) := by
  rw [input7612_def, output7612_def]
  try (conv => lhs; cbv)
  try rfl

def value3812 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14089 14085)).val
theorem input7613_def : input7613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14089 14085) := by
  unfold input7613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14089 14085)).val
theorem output7613_def : output7613 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14089 14085) := by
  unfold output7613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7613_skip : Flapjack.WordAlloc.isSkip output7613 = false := by
  rw [output7613_def]
  conv => lhs; cbv
  try rfl
theorem node7613_eq : Flapjack.WordAlloc.removeDeadStructural input7613 value3811 value1 value2 = (output7613, value3812, value1) := by
  rw [input7613_def, output7613_def]
  try (conv => lhs; cbv)
  try rfl

def value3813 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14085 14081 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7614_def : input7614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14085 14081 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14085 14081 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7614_def : output7614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14085 14081 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7614_skip : Flapjack.WordAlloc.isSkip output7614 = false := by
  rw [output7614_def]
  conv => lhs; cbv
  try rfl
theorem node7614_eq : Flapjack.WordAlloc.removeDeadStructural input7614 value3812 value1 value2 = (output7614, value3813, value1) := by
  rw [input7614_def, output7614_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14081 Flapjack.WordStore.heapLength)).val
theorem input7615_def : input7615 = (Flapjack.WordLangProgHOL.get 14081 Flapjack.WordStore.heapLength) := by
  unfold input7615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14081 Flapjack.WordStore.heapLength)).val
theorem output7615_def : output7615 = (Flapjack.WordLangProgHOL.get 14081 Flapjack.WordStore.heapLength) := by
  unfold output7615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7615_skip : Flapjack.WordAlloc.isSkip output7615 = false := by
  rw [output7615_def]
  conv => lhs; cbv
  try rfl
theorem node7615_eq : Flapjack.WordAlloc.removeDeadStructural input7615 value3813 value1 value2 = (output7615, value5, value1) := by
  rw [input7615_def, output7615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7615 input7614)).val
theorem input7616_def : input7616 = (.seq input7615 input7614) := by
  unfold input7616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7615 output7614)).val
theorem output7616_def : output7616 = (.seq output7615 output7614) := by
  unfold output7616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7616_skip : Flapjack.WordAlloc.isSkip output7616 = false := by
  rw [output7616_def]
  conv => lhs; cbv
  try rfl
theorem node7616_eq : Flapjack.WordAlloc.removeDeadStructural input7616 value3812 value1 value2 = (output7616, value5, value1) := by
  rw [input7616_def, output7616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7614_eq]
  dsimp only
  rw [node7615_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7616 input7613)).val
theorem input7617_def : input7617 = (.seq input7616 input7613) := by
  unfold input7617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7616 output7613)).val
theorem output7617_def : output7617 = (.seq output7616 output7613) := by
  unfold output7617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7617_skip : Flapjack.WordAlloc.isSkip output7617 = false := by
  rw [output7617_def]
  conv => lhs; cbv
  try rfl
theorem node7617_eq : Flapjack.WordAlloc.removeDeadStructural input7617 value3811 value1 value2 = (output7617, value5, value1) := by
  rw [input7617_def, output7617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7613_eq]
  dsimp only
  rw [node7616_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7617 input7612)).val
theorem input7618_def : input7618 = (.seq input7617 input7612) := by
  unfold input7618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7617 output7612)).val
theorem output7618_def : output7618 = (.seq output7617 output7612) := by
  unfold output7618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7618_skip : Flapjack.WordAlloc.isSkip output7618 = false := by
  rw [output7618_def]
  conv => lhs; cbv
  try rfl
theorem node7618_eq : Flapjack.WordAlloc.removeDeadStructural input7618 value3810 value1 value2 = (output7618, value5, value1) := by
  rw [input7618_def, output7618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7612_eq]
  dsimp only
  rw [node7617_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7618 input7611)).val
theorem input7619_def : input7619 = (.seq input7618 input7611) := by
  unfold input7619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7618 output7611)).val
theorem output7619_def : output7619 = (.seq output7618 output7611) := by
  unfold output7619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7619_skip : Flapjack.WordAlloc.isSkip output7619 = false := by
  rw [output7619_def]
  conv => lhs; cbv
  try rfl
theorem node7619_eq : Flapjack.WordAlloc.removeDeadStructural input7619 value3808 value1 value2 = (output7619, value5, value1) := by
  rw [input7619_def, output7619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7611_eq]
  dsimp only
  rw [node7618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3814 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14073 (Flapjack.WordLangAddr.addr 14077 0#64)))).val
theorem input7620_def : input7620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14073 (Flapjack.WordLangAddr.addr 14077 0#64))) := by
  unfold input7620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14073 (Flapjack.WordLangAddr.addr 14077 0#64)))).val
theorem output7620_def : output7620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14073 (Flapjack.WordLangAddr.addr 14077 0#64))) := by
  unfold output7620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7620_skip : Flapjack.WordAlloc.isSkip output7620 = false := by
  rw [output7620_def]
  conv => lhs; cbv
  try rfl
theorem node7620_eq : Flapjack.WordAlloc.removeDeadStructural input7620 value5 value1 value2 = (output7620, value3814, value1) := by
  rw [input7620_def, output7620_def]
  try (conv => lhs; cbv)
  try rfl

def value3815 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14077, 14065)])).val
theorem input7621_def : input7621 = (Flapjack.WordLangProgHOL.move 0 [(14077, 14065)]) := by
  unfold input7621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14077, 14065)])).val
theorem output7621_def : output7621 = (Flapjack.WordLangProgHOL.move 0 [(14077, 14065)]) := by
  unfold output7621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7621_skip : Flapjack.WordAlloc.isSkip output7621 = false := by
  rw [output7621_def]
  conv => lhs; cbv
  try rfl
theorem node7621_eq : Flapjack.WordAlloc.removeDeadStructural input7621 value3814 value1 value2 = (output7621, value3815, value1) := by
  rw [input7621_def, output7621_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7621 input7620)).val
theorem input7622_def : input7622 = (.seq input7621 input7620) := by
  unfold input7622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7621 output7620)).val
theorem output7622_def : output7622 = (.seq output7621 output7620) := by
  unfold output7622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7622_skip : Flapjack.WordAlloc.isSkip output7622 = false := by
  rw [output7622_def]
  conv => lhs; cbv
  try rfl
theorem node7622_eq : Flapjack.WordAlloc.removeDeadStructural input7622 value5 value1 value2 = (output7622, value3815, value1) := by
  rw [input7622_def, output7622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7620_eq]
  dsimp only
  rw [node7621_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3816 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14073 16671121624101127371#64))).val
theorem input7623_def : input7623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14073 16671121624101127371#64)) := by
  unfold input7623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14073 16671121624101127371#64))).val
theorem output7623_def : output7623 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14073 16671121624101127371#64)) := by
  unfold output7623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7623_skip : Flapjack.WordAlloc.isSkip output7623 = false := by
  rw [output7623_def]
  conv => lhs; cbv
  try rfl
theorem node7623_eq : Flapjack.WordAlloc.removeDeadStructural input7623 value3815 value1 value2 = (output7623, value3816, value1) := by
  rw [input7623_def, output7623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14069 16671121624101127371#64))).val
theorem input7624_def : input7624 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14069 16671121624101127371#64)) := by
  unfold input7624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7624_def : output7624 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7624_skip : Flapjack.WordAlloc.isSkip output7624 = true := by
  rw [output7624_def]
  conv => lhs; cbv
  try rfl
theorem node7624_eq : Flapjack.WordAlloc.removeDeadStructural input7624 value3816 value1 value2 = (output7624, value3816, value1) := by
  rw [input7624_def, output7624_def]
  try (conv => lhs; cbv)
  try rfl

def value3817 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14065 14057 (Flapjack.WordRegImm.reg 14061))))).val
theorem input7625_def : input7625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14065 14057 (Flapjack.WordRegImm.reg 14061)))) := by
  unfold input7625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14065 14057 (Flapjack.WordRegImm.reg 14061))))).val
theorem output7625_def : output7625 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14065 14057 (Flapjack.WordRegImm.reg 14061)))) := by
  unfold output7625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7625_skip : Flapjack.WordAlloc.isSkip output7625 = false := by
  rw [output7625_def]
  conv => lhs; cbv
  try rfl
theorem node7625_eq : Flapjack.WordAlloc.removeDeadStructural input7625 value3816 value1 value2 = (output7625, value3817, value1) := by
  rw [input7625_def, output7625_def]
  try (conv => lhs; cbv)
  try rfl

def value3818 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14061 3320#64))).val
theorem input7626_def : input7626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14061 3320#64)) := by
  unfold input7626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14061 3320#64))).val
theorem output7626_def : output7626 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14061 3320#64)) := by
  unfold output7626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7626_skip : Flapjack.WordAlloc.isSkip output7626 = false := by
  rw [output7626_def]
  conv => lhs; cbv
  try rfl
theorem node7626_eq : Flapjack.WordAlloc.removeDeadStructural input7626 value3817 value1 value2 = (output7626, value3818, value1) := by
  rw [input7626_def, output7626_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7626 input7625)).val
theorem input7627_def : input7627 = (.seq input7626 input7625) := by
  unfold input7627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7626 output7625)).val
theorem output7627_def : output7627 = (.seq output7626 output7625) := by
  unfold output7627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7627_skip : Flapjack.WordAlloc.isSkip output7627 = false := by
  rw [output7627_def]
  conv => lhs; cbv
  try rfl
theorem node7627_eq : Flapjack.WordAlloc.removeDeadStructural input7627 value3816 value1 value2 = (output7627, value3818, value1) := by
  rw [input7627_def, output7627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7625_eq]
  dsimp only
  rw [node7626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3819 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14057 (Flapjack.WordLangAddr.addr 14053 18446744073709551104#64)))).val
theorem input7628_def : input7628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14057 (Flapjack.WordLangAddr.addr 14053 18446744073709551104#64))) := by
  unfold input7628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14057 (Flapjack.WordLangAddr.addr 14053 18446744073709551104#64)))).val
theorem output7628_def : output7628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14057 (Flapjack.WordLangAddr.addr 14053 18446744073709551104#64))) := by
  unfold output7628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7628_skip : Flapjack.WordAlloc.isSkip output7628 = false := by
  rw [output7628_def]
  conv => lhs; cbv
  try rfl
theorem node7628_eq : Flapjack.WordAlloc.removeDeadStructural input7628 value3818 value1 value2 = (output7628, value3819, value1) := by
  rw [input7628_def, output7628_def]
  try (conv => lhs; cbv)
  try rfl

def value3820 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14053 14049)).val
theorem input7629_def : input7629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14053 14049) := by
  unfold input7629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14053 14049)).val
theorem output7629_def : output7629 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14053 14049) := by
  unfold output7629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7629_skip : Flapjack.WordAlloc.isSkip output7629 = false := by
  rw [output7629_def]
  conv => lhs; cbv
  try rfl
theorem node7629_eq : Flapjack.WordAlloc.removeDeadStructural input7629 value3819 value1 value2 = (output7629, value3820, value1) := by
  rw [input7629_def, output7629_def]
  try (conv => lhs; cbv)
  try rfl

def value3821 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14049 14045 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7630_def : input7630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14049 14045 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14049 14045 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7630_def : output7630 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14049 14045 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7630_skip : Flapjack.WordAlloc.isSkip output7630 = false := by
  rw [output7630_def]
  conv => lhs; cbv
  try rfl
theorem node7630_eq : Flapjack.WordAlloc.removeDeadStructural input7630 value3820 value1 value2 = (output7630, value3821, value1) := by
  rw [input7630_def, output7630_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14045 Flapjack.WordStore.heapLength)).val
theorem input7631_def : input7631 = (Flapjack.WordLangProgHOL.get 14045 Flapjack.WordStore.heapLength) := by
  unfold input7631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14045 Flapjack.WordStore.heapLength)).val
theorem output7631_def : output7631 = (Flapjack.WordLangProgHOL.get 14045 Flapjack.WordStore.heapLength) := by
  unfold output7631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7631_skip : Flapjack.WordAlloc.isSkip output7631 = false := by
  rw [output7631_def]
  conv => lhs; cbv
  try rfl
theorem node7631_eq : Flapjack.WordAlloc.removeDeadStructural input7631 value3821 value1 value2 = (output7631, value5, value1) := by
  rw [input7631_def, output7631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7631 input7630)).val
theorem input7632_def : input7632 = (.seq input7631 input7630) := by
  unfold input7632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7631 output7630)).val
theorem output7632_def : output7632 = (.seq output7631 output7630) := by
  unfold output7632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7632_skip : Flapjack.WordAlloc.isSkip output7632 = false := by
  rw [output7632_def]
  conv => lhs; cbv
  try rfl
theorem node7632_eq : Flapjack.WordAlloc.removeDeadStructural input7632 value3820 value1 value2 = (output7632, value5, value1) := by
  rw [input7632_def, output7632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7630_eq]
  dsimp only
  rw [node7631_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7632 input7629)).val
theorem input7633_def : input7633 = (.seq input7632 input7629) := by
  unfold input7633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7632 output7629)).val
theorem output7633_def : output7633 = (.seq output7632 output7629) := by
  unfold output7633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7633_skip : Flapjack.WordAlloc.isSkip output7633 = false := by
  rw [output7633_def]
  conv => lhs; cbv
  try rfl
theorem node7633_eq : Flapjack.WordAlloc.removeDeadStructural input7633 value3819 value1 value2 = (output7633, value5, value1) := by
  rw [input7633_def, output7633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7629_eq]
  dsimp only
  rw [node7632_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7633 input7628)).val
theorem input7634_def : input7634 = (.seq input7633 input7628) := by
  unfold input7634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7633 output7628)).val
theorem output7634_def : output7634 = (.seq output7633 output7628) := by
  unfold output7634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7634_skip : Flapjack.WordAlloc.isSkip output7634 = false := by
  rw [output7634_def]
  conv => lhs; cbv
  try rfl
theorem node7634_eq : Flapjack.WordAlloc.removeDeadStructural input7634 value3818 value1 value2 = (output7634, value5, value1) := by
  rw [input7634_def, output7634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7628_eq]
  dsimp only
  rw [node7633_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7634 input7627)).val
theorem input7635_def : input7635 = (.seq input7634 input7627) := by
  unfold input7635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7634 output7627)).val
theorem output7635_def : output7635 = (.seq output7634 output7627) := by
  unfold output7635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7635_skip : Flapjack.WordAlloc.isSkip output7635 = false := by
  rw [output7635_def]
  conv => lhs; cbv
  try rfl
theorem node7635_eq : Flapjack.WordAlloc.removeDeadStructural input7635 value3816 value1 value2 = (output7635, value5, value1) := by
  rw [input7635_def, output7635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7627_eq]
  dsimp only
  rw [node7634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3822 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14037 (Flapjack.WordLangAddr.addr 14041 0#64)))).val
theorem input7636_def : input7636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14037 (Flapjack.WordLangAddr.addr 14041 0#64))) := by
  unfold input7636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14037 (Flapjack.WordLangAddr.addr 14041 0#64)))).val
theorem output7636_def : output7636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14037 (Flapjack.WordLangAddr.addr 14041 0#64))) := by
  unfold output7636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7636_skip : Flapjack.WordAlloc.isSkip output7636 = false := by
  rw [output7636_def]
  conv => lhs; cbv
  try rfl
theorem node7636_eq : Flapjack.WordAlloc.removeDeadStructural input7636 value5 value1 value2 = (output7636, value3822, value1) := by
  rw [input7636_def, output7636_def]
  try (conv => lhs; cbv)
  try rfl

def value3823 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14041, 14029)])).val
theorem input7637_def : input7637 = (Flapjack.WordLangProgHOL.move 0 [(14041, 14029)]) := by
  unfold input7637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14041, 14029)])).val
theorem output7637_def : output7637 = (Flapjack.WordLangProgHOL.move 0 [(14041, 14029)]) := by
  unfold output7637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7637_skip : Flapjack.WordAlloc.isSkip output7637 = false := by
  rw [output7637_def]
  conv => lhs; cbv
  try rfl
theorem node7637_eq : Flapjack.WordAlloc.removeDeadStructural input7637 value3822 value1 value2 = (output7637, value3823, value1) := by
  rw [input7637_def, output7637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7637 input7636)).val
theorem input7638_def : input7638 = (.seq input7637 input7636) := by
  unfold input7638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7637 output7636)).val
theorem output7638_def : output7638 = (.seq output7637 output7636) := by
  unfold output7638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7638_skip : Flapjack.WordAlloc.isSkip output7638 = false := by
  rw [output7638_def]
  conv => lhs; cbv
  try rfl
theorem node7638_eq : Flapjack.WordAlloc.removeDeadStructural input7638 value5 value1 value2 = (output7638, value3823, value1) := by
  rw [input7638_def, output7638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7636_eq]
  dsimp only
  rw [node7637_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3824 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14037 5922586712221110071#64))).val
theorem input7639_def : input7639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14037 5922586712221110071#64)) := by
  unfold input7639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14037 5922586712221110071#64))).val
theorem output7639_def : output7639 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14037 5922586712221110071#64)) := by
  unfold output7639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7639_skip : Flapjack.WordAlloc.isSkip output7639 = false := by
  rw [output7639_def]
  conv => lhs; cbv
  try rfl
theorem node7639_eq : Flapjack.WordAlloc.removeDeadStructural input7639 value3823 value1 value2 = (output7639, value3824, value1) := by
  rw [input7639_def, output7639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14033 5922586712221110071#64))).val
theorem input7640_def : input7640 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14033 5922586712221110071#64)) := by
  unfold input7640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7640_def : output7640 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7640_skip : Flapjack.WordAlloc.isSkip output7640 = true := by
  rw [output7640_def]
  conv => lhs; cbv
  try rfl
theorem node7640_eq : Flapjack.WordAlloc.removeDeadStructural input7640 value3824 value1 value2 = (output7640, value3824, value1) := by
  rw [input7640_def, output7640_def]
  try (conv => lhs; cbv)
  try rfl

def value3825 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14029 14021 (Flapjack.WordRegImm.reg 14025))))).val
theorem input7641_def : input7641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14029 14021 (Flapjack.WordRegImm.reg 14025)))) := by
  unfold input7641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14029 14021 (Flapjack.WordRegImm.reg 14025))))).val
theorem output7641_def : output7641 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14029 14021 (Flapjack.WordRegImm.reg 14025)))) := by
  unfold output7641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7641_skip : Flapjack.WordAlloc.isSkip output7641 = false := by
  rw [output7641_def]
  conv => lhs; cbv
  try rfl
theorem node7641_eq : Flapjack.WordAlloc.removeDeadStructural input7641 value3824 value1 value2 = (output7641, value3825, value1) := by
  rw [input7641_def, output7641_def]
  try (conv => lhs; cbv)
  try rfl

def value3826 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14025 3312#64))).val
theorem input7642_def : input7642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14025 3312#64)) := by
  unfold input7642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14025 3312#64))).val
theorem output7642_def : output7642 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14025 3312#64)) := by
  unfold output7642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7642_skip : Flapjack.WordAlloc.isSkip output7642 = false := by
  rw [output7642_def]
  conv => lhs; cbv
  try rfl
theorem node7642_eq : Flapjack.WordAlloc.removeDeadStructural input7642 value3825 value1 value2 = (output7642, value3826, value1) := by
  rw [input7642_def, output7642_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7642 input7641)).val
theorem input7643_def : input7643 = (.seq input7642 input7641) := by
  unfold input7643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7642 output7641)).val
theorem output7643_def : output7643 = (.seq output7642 output7641) := by
  unfold output7643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7643_skip : Flapjack.WordAlloc.isSkip output7643 = false := by
  rw [output7643_def]
  conv => lhs; cbv
  try rfl
theorem node7643_eq : Flapjack.WordAlloc.removeDeadStructural input7643 value3824 value1 value2 = (output7643, value3826, value1) := by
  rw [input7643_def, output7643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7641_eq]
  dsimp only
  rw [node7642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3827 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14021 (Flapjack.WordLangAddr.addr 14017 18446744073709551104#64)))).val
theorem input7644_def : input7644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14021 (Flapjack.WordLangAddr.addr 14017 18446744073709551104#64))) := by
  unfold input7644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14021 (Flapjack.WordLangAddr.addr 14017 18446744073709551104#64)))).val
theorem output7644_def : output7644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14021 (Flapjack.WordLangAddr.addr 14017 18446744073709551104#64))) := by
  unfold output7644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7644_skip : Flapjack.WordAlloc.isSkip output7644 = false := by
  rw [output7644_def]
  conv => lhs; cbv
  try rfl
theorem node7644_eq : Flapjack.WordAlloc.removeDeadStructural input7644 value3826 value1 value2 = (output7644, value3827, value1) := by
  rw [input7644_def, output7644_def]
  try (conv => lhs; cbv)
  try rfl

def value3828 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14017 14013)).val
theorem input7645_def : input7645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14017 14013) := by
  unfold input7645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14017 14013)).val
theorem output7645_def : output7645 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14017 14013) := by
  unfold output7645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7645_skip : Flapjack.WordAlloc.isSkip output7645 = false := by
  rw [output7645_def]
  conv => lhs; cbv
  try rfl
theorem node7645_eq : Flapjack.WordAlloc.removeDeadStructural input7645 value3827 value1 value2 = (output7645, value3828, value1) := by
  rw [input7645_def, output7645_def]
  try (conv => lhs; cbv)
  try rfl

def value3829 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14013 14009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7646_def : input7646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14013 14009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14013 14009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7646_def : output7646 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14013 14009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7646_skip : Flapjack.WordAlloc.isSkip output7646 = false := by
  rw [output7646_def]
  conv => lhs; cbv
  try rfl
theorem node7646_eq : Flapjack.WordAlloc.removeDeadStructural input7646 value3828 value1 value2 = (output7646, value3829, value1) := by
  rw [input7646_def, output7646_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14009 Flapjack.WordStore.heapLength)).val
theorem input7647_def : input7647 = (Flapjack.WordLangProgHOL.get 14009 Flapjack.WordStore.heapLength) := by
  unfold input7647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14009 Flapjack.WordStore.heapLength)).val
theorem output7647_def : output7647 = (Flapjack.WordLangProgHOL.get 14009 Flapjack.WordStore.heapLength) := by
  unfold output7647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7647_skip : Flapjack.WordAlloc.isSkip output7647 = false := by
  rw [output7647_def]
  conv => lhs; cbv
  try rfl
theorem node7647_eq : Flapjack.WordAlloc.removeDeadStructural input7647 value3829 value1 value2 = (output7647, value5, value1) := by
  rw [input7647_def, output7647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7647 input7646)).val
theorem input7648_def : input7648 = (.seq input7647 input7646) := by
  unfold input7648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7647 output7646)).val
theorem output7648_def : output7648 = (.seq output7647 output7646) := by
  unfold output7648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7648_skip : Flapjack.WordAlloc.isSkip output7648 = false := by
  rw [output7648_def]
  conv => lhs; cbv
  try rfl
theorem node7648_eq : Flapjack.WordAlloc.removeDeadStructural input7648 value3828 value1 value2 = (output7648, value5, value1) := by
  rw [input7648_def, output7648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7646_eq]
  dsimp only
  rw [node7647_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7648 input7645)).val
theorem input7649_def : input7649 = (.seq input7648 input7645) := by
  unfold input7649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7648 output7645)).val
theorem output7649_def : output7649 = (.seq output7648 output7645) := by
  unfold output7649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7649_skip : Flapjack.WordAlloc.isSkip output7649 = false := by
  rw [output7649_def]
  conv => lhs; cbv
  try rfl
theorem node7649_eq : Flapjack.WordAlloc.removeDeadStructural input7649 value3827 value1 value2 = (output7649, value5, value1) := by
  rw [input7649_def, output7649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7645_eq]
  dsimp only
  rw [node7648_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7649 input7644)).val
theorem input7650_def : input7650 = (.seq input7649 input7644) := by
  unfold input7650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7649 output7644)).val
theorem output7650_def : output7650 = (.seq output7649 output7644) := by
  unfold output7650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7650_skip : Flapjack.WordAlloc.isSkip output7650 = false := by
  rw [output7650_def]
  conv => lhs; cbv
  try rfl
theorem node7650_eq : Flapjack.WordAlloc.removeDeadStructural input7650 value3826 value1 value2 = (output7650, value5, value1) := by
  rw [input7650_def, output7650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7644_eq]
  dsimp only
  rw [node7649_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7650 input7643)).val
theorem input7651_def : input7651 = (.seq input7650 input7643) := by
  unfold input7651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7650 output7643)).val
theorem output7651_def : output7651 = (.seq output7650 output7643) := by
  unfold output7651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7651_skip : Flapjack.WordAlloc.isSkip output7651 = false := by
  rw [output7651_def]
  conv => lhs; cbv
  try rfl
theorem node7651_eq : Flapjack.WordAlloc.removeDeadStructural input7651 value3824 value1 value2 = (output7651, value5, value1) := by
  rw [input7651_def, output7651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7643_eq]
  dsimp only
  rw [node7650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3830 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14001 (Flapjack.WordLangAddr.addr 14005 0#64)))).val
theorem input7652_def : input7652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14001 (Flapjack.WordLangAddr.addr 14005 0#64))) := by
  unfold input7652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14001 (Flapjack.WordLangAddr.addr 14005 0#64)))).val
theorem output7652_def : output7652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14001 (Flapjack.WordLangAddr.addr 14005 0#64))) := by
  unfold output7652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7652_skip : Flapjack.WordAlloc.isSkip output7652 = false := by
  rw [output7652_def]
  conv => lhs; cbv
  try rfl
theorem node7652_eq : Flapjack.WordAlloc.removeDeadStructural input7652 value5 value1 value2 = (output7652, value3830, value1) := by
  rw [input7652_def, output7652_def]
  try (conv => lhs; cbv)
  try rfl

def value3831 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14005, 13993)])).val
theorem input7653_def : input7653 = (Flapjack.WordLangProgHOL.move 0 [(14005, 13993)]) := by
  unfold input7653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14005, 13993)])).val
theorem output7653_def : output7653 = (Flapjack.WordLangProgHOL.move 0 [(14005, 13993)]) := by
  unfold output7653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7653_skip : Flapjack.WordAlloc.isSkip output7653 = false := by
  rw [output7653_def]
  conv => lhs; cbv
  try rfl
theorem node7653_eq : Flapjack.WordAlloc.removeDeadStructural input7653 value3830 value1 value2 = (output7653, value3831, value1) := by
  rw [input7653_def, output7653_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7653 input7652)).val
theorem input7654_def : input7654 = (.seq input7653 input7652) := by
  unfold input7654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7653 output7652)).val
theorem output7654_def : output7654 = (.seq output7653 output7652) := by
  unfold output7654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7654_skip : Flapjack.WordAlloc.isSkip output7654 = false := by
  rw [output7654_def]
  conv => lhs; cbv
  try rfl
theorem node7654_eq : Flapjack.WordAlloc.removeDeadStructural input7654 value5 value1 value2 = (output7654, value3831, value1) := by
  rw [input7654_def, output7654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7652_eq]
  dsimp only
  rw [node7653_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3832 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14001 5163511947597922654#64))).val
theorem input7655_def : input7655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14001 5163511947597922654#64)) := by
  unfold input7655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14001 5163511947597922654#64))).val
theorem output7655_def : output7655 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14001 5163511947597922654#64)) := by
  unfold output7655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7655_skip : Flapjack.WordAlloc.isSkip output7655 = false := by
  rw [output7655_def]
  conv => lhs; cbv
  try rfl
theorem node7655_eq : Flapjack.WordAlloc.removeDeadStructural input7655 value3831 value1 value2 = (output7655, value3832, value1) := by
  rw [input7655_def, output7655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13997 5163511947597922654#64))).val
theorem input7656_def : input7656 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13997 5163511947597922654#64)) := by
  unfold input7656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7656_def : output7656 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7656_skip : Flapjack.WordAlloc.isSkip output7656 = true := by
  rw [output7656_def]
  conv => lhs; cbv
  try rfl
theorem node7656_eq : Flapjack.WordAlloc.removeDeadStructural input7656 value3832 value1 value2 = (output7656, value3832, value1) := by
  rw [input7656_def, output7656_def]
  try (conv => lhs; cbv)
  try rfl

def value3833 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13993 13985 (Flapjack.WordRegImm.reg 13989))))).val
theorem input7657_def : input7657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13993 13985 (Flapjack.WordRegImm.reg 13989)))) := by
  unfold input7657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13993 13985 (Flapjack.WordRegImm.reg 13989))))).val
theorem output7657_def : output7657 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13993 13985 (Flapjack.WordRegImm.reg 13989)))) := by
  unfold output7657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7657_skip : Flapjack.WordAlloc.isSkip output7657 = false := by
  rw [output7657_def]
  conv => lhs; cbv
  try rfl
theorem node7657_eq : Flapjack.WordAlloc.removeDeadStructural input7657 value3832 value1 value2 = (output7657, value3833, value1) := by
  rw [input7657_def, output7657_def]
  try (conv => lhs; cbv)
  try rfl

def value3834 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13989 3304#64))).val
theorem input7658_def : input7658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13989 3304#64)) := by
  unfold input7658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13989 3304#64))).val
theorem output7658_def : output7658 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13989 3304#64)) := by
  unfold output7658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7658_skip : Flapjack.WordAlloc.isSkip output7658 = false := by
  rw [output7658_def]
  conv => lhs; cbv
  try rfl
theorem node7658_eq : Flapjack.WordAlloc.removeDeadStructural input7658 value3833 value1 value2 = (output7658, value3834, value1) := by
  rw [input7658_def, output7658_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7658 input7657)).val
theorem input7659_def : input7659 = (.seq input7658 input7657) := by
  unfold input7659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7658 output7657)).val
theorem output7659_def : output7659 = (.seq output7658 output7657) := by
  unfold output7659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7659_skip : Flapjack.WordAlloc.isSkip output7659 = false := by
  rw [output7659_def]
  conv => lhs; cbv
  try rfl
theorem node7659_eq : Flapjack.WordAlloc.removeDeadStructural input7659 value3832 value1 value2 = (output7659, value3834, value1) := by
  rw [input7659_def, output7659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7657_eq]
  dsimp only
  rw [node7658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3835 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13985 (Flapjack.WordLangAddr.addr 13981 18446744073709551104#64)))).val
theorem input7660_def : input7660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13985 (Flapjack.WordLangAddr.addr 13981 18446744073709551104#64))) := by
  unfold input7660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13985 (Flapjack.WordLangAddr.addr 13981 18446744073709551104#64)))).val
theorem output7660_def : output7660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13985 (Flapjack.WordLangAddr.addr 13981 18446744073709551104#64))) := by
  unfold output7660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7660_skip : Flapjack.WordAlloc.isSkip output7660 = false := by
  rw [output7660_def]
  conv => lhs; cbv
  try rfl
theorem node7660_eq : Flapjack.WordAlloc.removeDeadStructural input7660 value3834 value1 value2 = (output7660, value3835, value1) := by
  rw [input7660_def, output7660_def]
  try (conv => lhs; cbv)
  try rfl

def value3836 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13981 13977)).val
theorem input7661_def : input7661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13981 13977) := by
  unfold input7661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13981 13977)).val
theorem output7661_def : output7661 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13981 13977) := by
  unfold output7661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7661_skip : Flapjack.WordAlloc.isSkip output7661 = false := by
  rw [output7661_def]
  conv => lhs; cbv
  try rfl
theorem node7661_eq : Flapjack.WordAlloc.removeDeadStructural input7661 value3835 value1 value2 = (output7661, value3836, value1) := by
  rw [input7661_def, output7661_def]
  try (conv => lhs; cbv)
  try rfl

def value3837 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13977 13973 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7662_def : input7662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13977 13973 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13977 13973 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7662_def : output7662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13977 13973 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7662_skip : Flapjack.WordAlloc.isSkip output7662 = false := by
  rw [output7662_def]
  conv => lhs; cbv
  try rfl
theorem node7662_eq : Flapjack.WordAlloc.removeDeadStructural input7662 value3836 value1 value2 = (output7662, value3837, value1) := by
  rw [input7662_def, output7662_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13973 Flapjack.WordStore.heapLength)).val
theorem input7663_def : input7663 = (Flapjack.WordLangProgHOL.get 13973 Flapjack.WordStore.heapLength) := by
  unfold input7663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13973 Flapjack.WordStore.heapLength)).val
theorem output7663_def : output7663 = (Flapjack.WordLangProgHOL.get 13973 Flapjack.WordStore.heapLength) := by
  unfold output7663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7663_skip : Flapjack.WordAlloc.isSkip output7663 = false := by
  rw [output7663_def]
  conv => lhs; cbv
  try rfl
theorem node7663_eq : Flapjack.WordAlloc.removeDeadStructural input7663 value3837 value1 value2 = (output7663, value5, value1) := by
  rw [input7663_def, output7663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7663 input7662)).val
theorem input7664_def : input7664 = (.seq input7663 input7662) := by
  unfold input7664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7663 output7662)).val
theorem output7664_def : output7664 = (.seq output7663 output7662) := by
  unfold output7664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7664_skip : Flapjack.WordAlloc.isSkip output7664 = false := by
  rw [output7664_def]
  conv => lhs; cbv
  try rfl
theorem node7664_eq : Flapjack.WordAlloc.removeDeadStructural input7664 value3836 value1 value2 = (output7664, value5, value1) := by
  rw [input7664_def, output7664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7662_eq]
  dsimp only
  rw [node7663_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7664 input7661)).val
theorem input7665_def : input7665 = (.seq input7664 input7661) := by
  unfold input7665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7664 output7661)).val
theorem output7665_def : output7665 = (.seq output7664 output7661) := by
  unfold output7665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7665_skip : Flapjack.WordAlloc.isSkip output7665 = false := by
  rw [output7665_def]
  conv => lhs; cbv
  try rfl
theorem node7665_eq : Flapjack.WordAlloc.removeDeadStructural input7665 value3835 value1 value2 = (output7665, value5, value1) := by
  rw [input7665_def, output7665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7661_eq]
  dsimp only
  rw [node7664_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7665 input7660)).val
theorem input7666_def : input7666 = (.seq input7665 input7660) := by
  unfold input7666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7665 output7660)).val
theorem output7666_def : output7666 = (.seq output7665 output7660) := by
  unfold output7666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7666_skip : Flapjack.WordAlloc.isSkip output7666 = false := by
  rw [output7666_def]
  conv => lhs; cbv
  try rfl
theorem node7666_eq : Flapjack.WordAlloc.removeDeadStructural input7666 value3834 value1 value2 = (output7666, value5, value1) := by
  rw [input7666_def, output7666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7660_eq]
  dsimp only
  rw [node7665_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7666 input7659)).val
theorem input7667_def : input7667 = (.seq input7666 input7659) := by
  unfold input7667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7666 output7659)).val
theorem output7667_def : output7667 = (.seq output7666 output7659) := by
  unfold output7667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7667_skip : Flapjack.WordAlloc.isSkip output7667 = false := by
  rw [output7667_def]
  conv => lhs; cbv
  try rfl
theorem node7667_eq : Flapjack.WordAlloc.removeDeadStructural input7667 value3832 value1 value2 = (output7667, value5, value1) := by
  rw [input7667_def, output7667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7659_eq]
  dsimp only
  rw [node7666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3838 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13965 (Flapjack.WordLangAddr.addr 13969 0#64)))).val
theorem input7668_def : input7668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13965 (Flapjack.WordLangAddr.addr 13969 0#64))) := by
  unfold input7668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13965 (Flapjack.WordLangAddr.addr 13969 0#64)))).val
theorem output7668_def : output7668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13965 (Flapjack.WordLangAddr.addr 13969 0#64))) := by
  unfold output7668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7668_skip : Flapjack.WordAlloc.isSkip output7668 = false := by
  rw [output7668_def]
  conv => lhs; cbv
  try rfl
theorem node7668_eq : Flapjack.WordAlloc.removeDeadStructural input7668 value5 value1 value2 = (output7668, value3838, value1) := by
  rw [input7668_def, output7668_def]
  try (conv => lhs; cbv)
  try rfl

def value3839 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13969, 13957)])).val
theorem input7669_def : input7669 = (Flapjack.WordLangProgHOL.move 0 [(13969, 13957)]) := by
  unfold input7669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13969, 13957)])).val
theorem output7669_def : output7669 = (Flapjack.WordLangProgHOL.move 0 [(13969, 13957)]) := by
  unfold output7669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7669_skip : Flapjack.WordAlloc.isSkip output7669 = false := by
  rw [output7669_def]
  conv => lhs; cbv
  try rfl
theorem node7669_eq : Flapjack.WordAlloc.removeDeadStructural input7669 value3838 value1 value2 = (output7669, value3839, value1) := by
  rw [input7669_def, output7669_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7669 input7668)).val
theorem input7670_def : input7670 = (.seq input7669 input7668) := by
  unfold input7670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7669 output7668)).val
theorem output7670_def : output7670 = (.seq output7669 output7668) := by
  unfold output7670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7670_skip : Flapjack.WordAlloc.isSkip output7670 = false := by
  rw [output7670_def]
  conv => lhs; cbv
  try rfl
theorem node7670_eq : Flapjack.WordAlloc.removeDeadStructural input7670 value5 value1 value2 = (output7670, value3839, value1) := by
  rw [input7670_def, output7670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7668_eq]
  dsimp only
  rw [node7669_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3840 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13965 14511152726087948018#64))).val
theorem input7671_def : input7671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13965 14511152726087948018#64)) := by
  unfold input7671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13965 14511152726087948018#64))).val
theorem output7671_def : output7671 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13965 14511152726087948018#64)) := by
  unfold output7671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7671_skip : Flapjack.WordAlloc.isSkip output7671 = false := by
  rw [output7671_def]
  conv => lhs; cbv
  try rfl
theorem node7671_eq : Flapjack.WordAlloc.removeDeadStructural input7671 value3839 value1 value2 = (output7671, value3840, value1) := by
  rw [input7671_def, output7671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13961 14511152726087948018#64))).val
theorem input7672_def : input7672 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13961 14511152726087948018#64)) := by
  unfold input7672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7672_def : output7672 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7672_skip : Flapjack.WordAlloc.isSkip output7672 = true := by
  rw [output7672_def]
  conv => lhs; cbv
  try rfl
theorem node7672_eq : Flapjack.WordAlloc.removeDeadStructural input7672 value3840 value1 value2 = (output7672, value3840, value1) := by
  rw [input7672_def, output7672_def]
  try (conv => lhs; cbv)
  try rfl

def value3841 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13957 13949 (Flapjack.WordRegImm.reg 13953))))).val
theorem input7673_def : input7673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13957 13949 (Flapjack.WordRegImm.reg 13953)))) := by
  unfold input7673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13957 13949 (Flapjack.WordRegImm.reg 13953))))).val
theorem output7673_def : output7673 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13957 13949 (Flapjack.WordRegImm.reg 13953)))) := by
  unfold output7673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7673_skip : Flapjack.WordAlloc.isSkip output7673 = false := by
  rw [output7673_def]
  conv => lhs; cbv
  try rfl
theorem node7673_eq : Flapjack.WordAlloc.removeDeadStructural input7673 value3840 value1 value2 = (output7673, value3841, value1) := by
  rw [input7673_def, output7673_def]
  try (conv => lhs; cbv)
  try rfl

def value3842 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13953 3296#64))).val
theorem input7674_def : input7674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13953 3296#64)) := by
  unfold input7674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13953 3296#64))).val
theorem output7674_def : output7674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13953 3296#64)) := by
  unfold output7674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7674_skip : Flapjack.WordAlloc.isSkip output7674 = false := by
  rw [output7674_def]
  conv => lhs; cbv
  try rfl
theorem node7674_eq : Flapjack.WordAlloc.removeDeadStructural input7674 value3841 value1 value2 = (output7674, value3842, value1) := by
  rw [input7674_def, output7674_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7674 input7673)).val
theorem input7675_def : input7675 = (.seq input7674 input7673) := by
  unfold input7675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7674 output7673)).val
theorem output7675_def : output7675 = (.seq output7674 output7673) := by
  unfold output7675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7675_skip : Flapjack.WordAlloc.isSkip output7675 = false := by
  rw [output7675_def]
  conv => lhs; cbv
  try rfl
theorem node7675_eq : Flapjack.WordAlloc.removeDeadStructural input7675 value3840 value1 value2 = (output7675, value3842, value1) := by
  rw [input7675_def, output7675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7673_eq]
  dsimp only
  rw [node7674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3843 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13949 (Flapjack.WordLangAddr.addr 13945 18446744073709551104#64)))).val
theorem input7676_def : input7676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13949 (Flapjack.WordLangAddr.addr 13945 18446744073709551104#64))) := by
  unfold input7676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13949 (Flapjack.WordLangAddr.addr 13945 18446744073709551104#64)))).val
theorem output7676_def : output7676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13949 (Flapjack.WordLangAddr.addr 13945 18446744073709551104#64))) := by
  unfold output7676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7676_skip : Flapjack.WordAlloc.isSkip output7676 = false := by
  rw [output7676_def]
  conv => lhs; cbv
  try rfl
theorem node7676_eq : Flapjack.WordAlloc.removeDeadStructural input7676 value3842 value1 value2 = (output7676, value3843, value1) := by
  rw [input7676_def, output7676_def]
  try (conv => lhs; cbv)
  try rfl

def value3844 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13945 13941)).val
theorem input7677_def : input7677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13945 13941) := by
  unfold input7677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13945 13941)).val
theorem output7677_def : output7677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13945 13941) := by
  unfold output7677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7677_skip : Flapjack.WordAlloc.isSkip output7677 = false := by
  rw [output7677_def]
  conv => lhs; cbv
  try rfl
theorem node7677_eq : Flapjack.WordAlloc.removeDeadStructural input7677 value3843 value1 value2 = (output7677, value3844, value1) := by
  rw [input7677_def, output7677_def]
  try (conv => lhs; cbv)
  try rfl

def value3845 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13941 13937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7678_def : input7678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13941 13937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13941 13937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7678_def : output7678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13941 13937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7678_skip : Flapjack.WordAlloc.isSkip output7678 = false := by
  rw [output7678_def]
  conv => lhs; cbv
  try rfl
theorem node7678_eq : Flapjack.WordAlloc.removeDeadStructural input7678 value3844 value1 value2 = (output7678, value3845, value1) := by
  rw [input7678_def, output7678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13937 Flapjack.WordStore.heapLength)).val
theorem input7679_def : input7679 = (Flapjack.WordLangProgHOL.get 13937 Flapjack.WordStore.heapLength) := by
  unfold input7679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13937 Flapjack.WordStore.heapLength)).val
theorem output7679_def : output7679 = (Flapjack.WordLangProgHOL.get 13937 Flapjack.WordStore.heapLength) := by
  unfold output7679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7679_skip : Flapjack.WordAlloc.isSkip output7679 = false := by
  rw [output7679_def]
  conv => lhs; cbv
  try rfl
theorem node7679_eq : Flapjack.WordAlloc.removeDeadStructural input7679 value3845 value1 value2 = (output7679, value5, value1) := by
  rw [input7679_def, output7679_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node7679_eq
end InitECandidate.Proofs.DeadStages713
