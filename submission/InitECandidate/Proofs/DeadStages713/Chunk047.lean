import InitECandidate.Proofs.DeadStages713.Chunk046
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input12032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4085 0#64))).val
theorem input12032_def : input12032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4085 0#64)) := by
  unfold input12032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12032_def : output12032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12032_skip : Flapjack.WordAlloc.isSkip output12032 = true := by
  rw [output12032_def]
  conv => lhs; cbv
  try rfl
theorem node12032_eq : Flapjack.WordAlloc.removeDeadStructural input12032 value6020 value1 value2 = (output12032, value6020, value1) := by
  rw [input12032_def, output12032_def]
  try (conv => lhs; cbv)
  try rfl

def value6021 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4081 4077 (Flapjack.WordRegImm.imm 984#64))))).val
theorem input12033_def : input12033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4081 4077 (Flapjack.WordRegImm.imm 984#64)))) := by
  unfold input12033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4081 4077 (Flapjack.WordRegImm.imm 984#64))))).val
theorem output12033_def : output12033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4081 4077 (Flapjack.WordRegImm.imm 984#64)))) := by
  unfold output12033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12033_skip : Flapjack.WordAlloc.isSkip output12033 = false := by
  rw [output12033_def]
  conv => lhs; cbv
  try rfl
theorem node12033_eq : Flapjack.WordAlloc.removeDeadStructural input12033 value6020 value1 value2 = (output12033, value6021, value1) := by
  rw [input12033_def, output12033_def]
  try (conv => lhs; cbv)
  try rfl

def value6022 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4077 (Flapjack.WordLangAddr.addr 4073 18446744073709551104#64)))).val
theorem input12034_def : input12034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4077 (Flapjack.WordLangAddr.addr 4073 18446744073709551104#64))) := by
  unfold input12034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4077 (Flapjack.WordLangAddr.addr 4073 18446744073709551104#64)))).val
theorem output12034_def : output12034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4077 (Flapjack.WordLangAddr.addr 4073 18446744073709551104#64))) := by
  unfold output12034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12034_skip : Flapjack.WordAlloc.isSkip output12034 = false := by
  rw [output12034_def]
  conv => lhs; cbv
  try rfl
theorem node12034_eq : Flapjack.WordAlloc.removeDeadStructural input12034 value6021 value1 value2 = (output12034, value6022, value1) := by
  rw [input12034_def, output12034_def]
  try (conv => lhs; cbv)
  try rfl

def value6023 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4073 4069)).val
theorem input12035_def : input12035 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4073 4069) := by
  unfold input12035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4073 4069)).val
theorem output12035_def : output12035 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4073 4069) := by
  unfold output12035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12035_skip : Flapjack.WordAlloc.isSkip output12035 = false := by
  rw [output12035_def]
  conv => lhs; cbv
  try rfl
theorem node12035_eq : Flapjack.WordAlloc.removeDeadStructural input12035 value6022 value1 value2 = (output12035, value6023, value1) := by
  rw [input12035_def, output12035_def]
  try (conv => lhs; cbv)
  try rfl

def value6024 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4069 4065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12036_def : input12036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4069 4065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4069 4065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12036_def : output12036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4069 4065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12036_skip : Flapjack.WordAlloc.isSkip output12036 = false := by
  rw [output12036_def]
  conv => lhs; cbv
  try rfl
theorem node12036_eq : Flapjack.WordAlloc.removeDeadStructural input12036 value6023 value1 value2 = (output12036, value6024, value1) := by
  rw [input12036_def, output12036_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4065 Flapjack.WordStore.heapLength)).val
theorem input12037_def : input12037 = (Flapjack.WordLangProgHOL.get 4065 Flapjack.WordStore.heapLength) := by
  unfold input12037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4065 Flapjack.WordStore.heapLength)).val
theorem output12037_def : output12037 = (Flapjack.WordLangProgHOL.get 4065 Flapjack.WordStore.heapLength) := by
  unfold output12037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12037_skip : Flapjack.WordAlloc.isSkip output12037 = false := by
  rw [output12037_def]
  conv => lhs; cbv
  try rfl
theorem node12037_eq : Flapjack.WordAlloc.removeDeadStructural input12037 value6024 value1 value2 = (output12037, value5, value1) := by
  rw [input12037_def, output12037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12037 input12036)).val
theorem input12038_def : input12038 = (.seq input12037 input12036) := by
  unfold input12038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12037 output12036)).val
theorem output12038_def : output12038 = (.seq output12037 output12036) := by
  unfold output12038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12038_skip : Flapjack.WordAlloc.isSkip output12038 = false := by
  rw [output12038_def]
  conv => lhs; cbv
  try rfl
theorem node12038_eq : Flapjack.WordAlloc.removeDeadStructural input12038 value6023 value1 value2 = (output12038, value5, value1) := by
  rw [input12038_def, output12038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12036_eq]
  dsimp only
  rw [node12037_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12038 input12035)).val
theorem input12039_def : input12039 = (.seq input12038 input12035) := by
  unfold input12039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12038 output12035)).val
theorem output12039_def : output12039 = (.seq output12038 output12035) := by
  unfold output12039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12039_skip : Flapjack.WordAlloc.isSkip output12039 = false := by
  rw [output12039_def]
  conv => lhs; cbv
  try rfl
theorem node12039_eq : Flapjack.WordAlloc.removeDeadStructural input12039 value6022 value1 value2 = (output12039, value5, value1) := by
  rw [input12039_def, output12039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12035_eq]
  dsimp only
  rw [node12038_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12039 input12034)).val
theorem input12040_def : input12040 = (.seq input12039 input12034) := by
  unfold input12040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12039 output12034)).val
theorem output12040_def : output12040 = (.seq output12039 output12034) := by
  unfold output12040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12040_skip : Flapjack.WordAlloc.isSkip output12040 = false := by
  rw [output12040_def]
  conv => lhs; cbv
  try rfl
theorem node12040_eq : Flapjack.WordAlloc.removeDeadStructural input12040 value6021 value1 value2 = (output12040, value5, value1) := by
  rw [input12040_def, output12040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12034_eq]
  dsimp only
  rw [node12039_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12040 input12033)).val
theorem input12041_def : input12041 = (.seq input12040 input12033) := by
  unfold input12041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12040 output12033)).val
theorem output12041_def : output12041 = (.seq output12040 output12033) := by
  unfold output12041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12041_skip : Flapjack.WordAlloc.isSkip output12041 = false := by
  rw [output12041_def]
  conv => lhs; cbv
  try rfl
theorem node12041_eq : Flapjack.WordAlloc.removeDeadStructural input12041 value6020 value1 value2 = (output12041, value5, value1) := by
  rw [input12041_def, output12041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12033_eq]
  dsimp only
  rw [node12040_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6025 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4057 (Flapjack.WordLangAddr.addr 4061 0#64)))).val
theorem input12042_def : input12042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4057 (Flapjack.WordLangAddr.addr 4061 0#64))) := by
  unfold input12042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4057 (Flapjack.WordLangAddr.addr 4061 0#64)))).val
theorem output12042_def : output12042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4057 (Flapjack.WordLangAddr.addr 4061 0#64))) := by
  unfold output12042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12042_skip : Flapjack.WordAlloc.isSkip output12042 = false := by
  rw [output12042_def]
  conv => lhs; cbv
  try rfl
theorem node12042_eq : Flapjack.WordAlloc.removeDeadStructural input12042 value5 value1 value2 = (output12042, value6025, value1) := by
  rw [input12042_def, output12042_def]
  try (conv => lhs; cbv)
  try rfl

def value6026 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4061, 4049)])).val
theorem input12043_def : input12043 = (Flapjack.WordLangProgHOL.move 0 [(4061, 4049)]) := by
  unfold input12043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4061, 4049)])).val
theorem output12043_def : output12043 = (Flapjack.WordLangProgHOL.move 0 [(4061, 4049)]) := by
  unfold output12043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12043_skip : Flapjack.WordAlloc.isSkip output12043 = false := by
  rw [output12043_def]
  conv => lhs; cbv
  try rfl
theorem node12043_eq : Flapjack.WordAlloc.removeDeadStructural input12043 value6025 value1 value2 = (output12043, value6026, value1) := by
  rw [input12043_def, output12043_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12043 input12042)).val
theorem input12044_def : input12044 = (.seq input12043 input12042) := by
  unfold input12044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12043 output12042)).val
theorem output12044_def : output12044 = (.seq output12043 output12042) := by
  unfold output12044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12044_skip : Flapjack.WordAlloc.isSkip output12044 = false := by
  rw [output12044_def]
  conv => lhs; cbv
  try rfl
theorem node12044_eq : Flapjack.WordAlloc.removeDeadStructural input12044 value5 value1 value2 = (output12044, value6026, value1) := by
  rw [input12044_def, output12044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12042_eq]
  dsimp only
  rw [node12043_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6027 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64))).val
theorem input12045_def : input12045 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64)) := by
  unfold input12045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64))).val
theorem output12045_def : output12045 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64)) := by
  unfold output12045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12045_skip : Flapjack.WordAlloc.isSkip output12045 = false := by
  rw [output12045_def]
  conv => lhs; cbv
  try rfl
theorem node12045_eq : Flapjack.WordAlloc.removeDeadStructural input12045 value6026 value1 value2 = (output12045, value6027, value1) := by
  rw [input12045_def, output12045_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 0#64))).val
theorem input12046_def : input12046 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 0#64)) := by
  unfold input12046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12046_def : output12046 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12046_skip : Flapjack.WordAlloc.isSkip output12046 = true := by
  rw [output12046_def]
  conv => lhs; cbv
  try rfl
theorem node12046_eq : Flapjack.WordAlloc.removeDeadStructural input12046 value6027 value1 value2 = (output12046, value6027, value1) := by
  rw [input12046_def, output12046_def]
  try (conv => lhs; cbv)
  try rfl

def value6028 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4049 4045 (Flapjack.WordRegImm.imm 976#64))))).val
theorem input12047_def : input12047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4049 4045 (Flapjack.WordRegImm.imm 976#64)))) := by
  unfold input12047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4049 4045 (Flapjack.WordRegImm.imm 976#64))))).val
theorem output12047_def : output12047 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4049 4045 (Flapjack.WordRegImm.imm 976#64)))) := by
  unfold output12047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12047_skip : Flapjack.WordAlloc.isSkip output12047 = false := by
  rw [output12047_def]
  conv => lhs; cbv
  try rfl
theorem node12047_eq : Flapjack.WordAlloc.removeDeadStructural input12047 value6027 value1 value2 = (output12047, value6028, value1) := by
  rw [input12047_def, output12047_def]
  try (conv => lhs; cbv)
  try rfl

def value6029 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4045 (Flapjack.WordLangAddr.addr 4041 18446744073709551104#64)))).val
theorem input12048_def : input12048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4045 (Flapjack.WordLangAddr.addr 4041 18446744073709551104#64))) := by
  unfold input12048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4045 (Flapjack.WordLangAddr.addr 4041 18446744073709551104#64)))).val
theorem output12048_def : output12048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4045 (Flapjack.WordLangAddr.addr 4041 18446744073709551104#64))) := by
  unfold output12048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12048_skip : Flapjack.WordAlloc.isSkip output12048 = false := by
  rw [output12048_def]
  conv => lhs; cbv
  try rfl
theorem node12048_eq : Flapjack.WordAlloc.removeDeadStructural input12048 value6028 value1 value2 = (output12048, value6029, value1) := by
  rw [input12048_def, output12048_def]
  try (conv => lhs; cbv)
  try rfl

def value6030 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4041 4037)).val
theorem input12049_def : input12049 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4041 4037) := by
  unfold input12049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4041 4037)).val
theorem output12049_def : output12049 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4041 4037) := by
  unfold output12049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12049_skip : Flapjack.WordAlloc.isSkip output12049 = false := by
  rw [output12049_def]
  conv => lhs; cbv
  try rfl
theorem node12049_eq : Flapjack.WordAlloc.removeDeadStructural input12049 value6029 value1 value2 = (output12049, value6030, value1) := by
  rw [input12049_def, output12049_def]
  try (conv => lhs; cbv)
  try rfl

def value6031 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4037 4033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12050_def : input12050 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4037 4033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4037 4033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12050_def : output12050 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4037 4033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12050_skip : Flapjack.WordAlloc.isSkip output12050 = false := by
  rw [output12050_def]
  conv => lhs; cbv
  try rfl
theorem node12050_eq : Flapjack.WordAlloc.removeDeadStructural input12050 value6030 value1 value2 = (output12050, value6031, value1) := by
  rw [input12050_def, output12050_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4033 Flapjack.WordStore.heapLength)).val
theorem input12051_def : input12051 = (Flapjack.WordLangProgHOL.get 4033 Flapjack.WordStore.heapLength) := by
  unfold input12051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4033 Flapjack.WordStore.heapLength)).val
theorem output12051_def : output12051 = (Flapjack.WordLangProgHOL.get 4033 Flapjack.WordStore.heapLength) := by
  unfold output12051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12051_skip : Flapjack.WordAlloc.isSkip output12051 = false := by
  rw [output12051_def]
  conv => lhs; cbv
  try rfl
theorem node12051_eq : Flapjack.WordAlloc.removeDeadStructural input12051 value6031 value1 value2 = (output12051, value5, value1) := by
  rw [input12051_def, output12051_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12051 input12050)).val
theorem input12052_def : input12052 = (.seq input12051 input12050) := by
  unfold input12052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12051 output12050)).val
theorem output12052_def : output12052 = (.seq output12051 output12050) := by
  unfold output12052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12052_skip : Flapjack.WordAlloc.isSkip output12052 = false := by
  rw [output12052_def]
  conv => lhs; cbv
  try rfl
theorem node12052_eq : Flapjack.WordAlloc.removeDeadStructural input12052 value6030 value1 value2 = (output12052, value5, value1) := by
  rw [input12052_def, output12052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12050_eq]
  dsimp only
  rw [node12051_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12052 input12049)).val
theorem input12053_def : input12053 = (.seq input12052 input12049) := by
  unfold input12053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12052 output12049)).val
theorem output12053_def : output12053 = (.seq output12052 output12049) := by
  unfold output12053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12053_skip : Flapjack.WordAlloc.isSkip output12053 = false := by
  rw [output12053_def]
  conv => lhs; cbv
  try rfl
theorem node12053_eq : Flapjack.WordAlloc.removeDeadStructural input12053 value6029 value1 value2 = (output12053, value5, value1) := by
  rw [input12053_def, output12053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12049_eq]
  dsimp only
  rw [node12052_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12053 input12048)).val
theorem input12054_def : input12054 = (.seq input12053 input12048) := by
  unfold input12054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12053 output12048)).val
theorem output12054_def : output12054 = (.seq output12053 output12048) := by
  unfold output12054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12054_skip : Flapjack.WordAlloc.isSkip output12054 = false := by
  rw [output12054_def]
  conv => lhs; cbv
  try rfl
theorem node12054_eq : Flapjack.WordAlloc.removeDeadStructural input12054 value6028 value1 value2 = (output12054, value5, value1) := by
  rw [input12054_def, output12054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12048_eq]
  dsimp only
  rw [node12053_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12054 input12047)).val
theorem input12055_def : input12055 = (.seq input12054 input12047) := by
  unfold input12055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12054 output12047)).val
theorem output12055_def : output12055 = (.seq output12054 output12047) := by
  unfold output12055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12055_skip : Flapjack.WordAlloc.isSkip output12055 = false := by
  rw [output12055_def]
  conv => lhs; cbv
  try rfl
theorem node12055_eq : Flapjack.WordAlloc.removeDeadStructural input12055 value6027 value1 value2 = (output12055, value5, value1) := by
  rw [input12055_def, output12055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12047_eq]
  dsimp only
  rw [node12054_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6032 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4025 (Flapjack.WordLangAddr.addr 4029 0#64)))).val
theorem input12056_def : input12056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4025 (Flapjack.WordLangAddr.addr 4029 0#64))) := by
  unfold input12056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4025 (Flapjack.WordLangAddr.addr 4029 0#64)))).val
theorem output12056_def : output12056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4025 (Flapjack.WordLangAddr.addr 4029 0#64))) := by
  unfold output12056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12056_skip : Flapjack.WordAlloc.isSkip output12056 = false := by
  rw [output12056_def]
  conv => lhs; cbv
  try rfl
theorem node12056_eq : Flapjack.WordAlloc.removeDeadStructural input12056 value5 value1 value2 = (output12056, value6032, value1) := by
  rw [input12056_def, output12056_def]
  try (conv => lhs; cbv)
  try rfl

def value6033 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4029, 4017)])).val
theorem input12057_def : input12057 = (Flapjack.WordLangProgHOL.move 0 [(4029, 4017)]) := by
  unfold input12057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4029, 4017)])).val
theorem output12057_def : output12057 = (Flapjack.WordLangProgHOL.move 0 [(4029, 4017)]) := by
  unfold output12057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12057_skip : Flapjack.WordAlloc.isSkip output12057 = false := by
  rw [output12057_def]
  conv => lhs; cbv
  try rfl
theorem node12057_eq : Flapjack.WordAlloc.removeDeadStructural input12057 value6032 value1 value2 = (output12057, value6033, value1) := by
  rw [input12057_def, output12057_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12057 input12056)).val
theorem input12058_def : input12058 = (.seq input12057 input12056) := by
  unfold input12058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12057 output12056)).val
theorem output12058_def : output12058 = (.seq output12057 output12056) := by
  unfold output12058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12058_skip : Flapjack.WordAlloc.isSkip output12058 = false := by
  rw [output12058_def]
  conv => lhs; cbv
  try rfl
theorem node12058_eq : Flapjack.WordAlloc.removeDeadStructural input12058 value5 value1 value2 = (output12058, value6033, value1) := by
  rw [input12058_def, output12058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12056_eq]
  dsimp only
  rw [node12057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6034 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64))).val
theorem input12059_def : input12059 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64)) := by
  unfold input12059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64))).val
theorem output12059_def : output12059 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64)) := by
  unfold output12059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12059_skip : Flapjack.WordAlloc.isSkip output12059 = false := by
  rw [output12059_def]
  conv => lhs; cbv
  try rfl
theorem node12059_eq : Flapjack.WordAlloc.removeDeadStructural input12059 value6033 value1 value2 = (output12059, value6034, value1) := by
  rw [input12059_def, output12059_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4021 0#64))).val
theorem input12060_def : input12060 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4021 0#64)) := by
  unfold input12060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12060_def : output12060 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12060_skip : Flapjack.WordAlloc.isSkip output12060 = true := by
  rw [output12060_def]
  conv => lhs; cbv
  try rfl
theorem node12060_eq : Flapjack.WordAlloc.removeDeadStructural input12060 value6034 value1 value2 = (output12060, value6034, value1) := by
  rw [input12060_def, output12060_def]
  try (conv => lhs; cbv)
  try rfl

def value6035 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4017 4013 (Flapjack.WordRegImm.imm 968#64))))).val
theorem input12061_def : input12061 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4017 4013 (Flapjack.WordRegImm.imm 968#64)))) := by
  unfold input12061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4017 4013 (Flapjack.WordRegImm.imm 968#64))))).val
theorem output12061_def : output12061 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4017 4013 (Flapjack.WordRegImm.imm 968#64)))) := by
  unfold output12061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12061_skip : Flapjack.WordAlloc.isSkip output12061 = false := by
  rw [output12061_def]
  conv => lhs; cbv
  try rfl
theorem node12061_eq : Flapjack.WordAlloc.removeDeadStructural input12061 value6034 value1 value2 = (output12061, value6035, value1) := by
  rw [input12061_def, output12061_def]
  try (conv => lhs; cbv)
  try rfl

def value6036 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4013 (Flapjack.WordLangAddr.addr 4009 18446744073709551104#64)))).val
theorem input12062_def : input12062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4013 (Flapjack.WordLangAddr.addr 4009 18446744073709551104#64))) := by
  unfold input12062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4013 (Flapjack.WordLangAddr.addr 4009 18446744073709551104#64)))).val
theorem output12062_def : output12062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4013 (Flapjack.WordLangAddr.addr 4009 18446744073709551104#64))) := by
  unfold output12062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12062_skip : Flapjack.WordAlloc.isSkip output12062 = false := by
  rw [output12062_def]
  conv => lhs; cbv
  try rfl
theorem node12062_eq : Flapjack.WordAlloc.removeDeadStructural input12062 value6035 value1 value2 = (output12062, value6036, value1) := by
  rw [input12062_def, output12062_def]
  try (conv => lhs; cbv)
  try rfl

def value6037 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4009 4005)).val
theorem input12063_def : input12063 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4009 4005) := by
  unfold input12063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4009 4005)).val
theorem output12063_def : output12063 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4009 4005) := by
  unfold output12063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12063_skip : Flapjack.WordAlloc.isSkip output12063 = false := by
  rw [output12063_def]
  conv => lhs; cbv
  try rfl
theorem node12063_eq : Flapjack.WordAlloc.removeDeadStructural input12063 value6036 value1 value2 = (output12063, value6037, value1) := by
  rw [input12063_def, output12063_def]
  try (conv => lhs; cbv)
  try rfl

def value6038 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4005 4001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12064_def : input12064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4005 4001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4005 4001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12064_def : output12064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4005 4001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12064_skip : Flapjack.WordAlloc.isSkip output12064 = false := by
  rw [output12064_def]
  conv => lhs; cbv
  try rfl
theorem node12064_eq : Flapjack.WordAlloc.removeDeadStructural input12064 value6037 value1 value2 = (output12064, value6038, value1) := by
  rw [input12064_def, output12064_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4001 Flapjack.WordStore.heapLength)).val
theorem input12065_def : input12065 = (Flapjack.WordLangProgHOL.get 4001 Flapjack.WordStore.heapLength) := by
  unfold input12065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4001 Flapjack.WordStore.heapLength)).val
theorem output12065_def : output12065 = (Flapjack.WordLangProgHOL.get 4001 Flapjack.WordStore.heapLength) := by
  unfold output12065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12065_skip : Flapjack.WordAlloc.isSkip output12065 = false := by
  rw [output12065_def]
  conv => lhs; cbv
  try rfl
theorem node12065_eq : Flapjack.WordAlloc.removeDeadStructural input12065 value6038 value1 value2 = (output12065, value5, value1) := by
  rw [input12065_def, output12065_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12065 input12064)).val
theorem input12066_def : input12066 = (.seq input12065 input12064) := by
  unfold input12066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12065 output12064)).val
theorem output12066_def : output12066 = (.seq output12065 output12064) := by
  unfold output12066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12066_skip : Flapjack.WordAlloc.isSkip output12066 = false := by
  rw [output12066_def]
  conv => lhs; cbv
  try rfl
theorem node12066_eq : Flapjack.WordAlloc.removeDeadStructural input12066 value6037 value1 value2 = (output12066, value5, value1) := by
  rw [input12066_def, output12066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12064_eq]
  dsimp only
  rw [node12065_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12066 input12063)).val
theorem input12067_def : input12067 = (.seq input12066 input12063) := by
  unfold input12067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12066 output12063)).val
theorem output12067_def : output12067 = (.seq output12066 output12063) := by
  unfold output12067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12067_skip : Flapjack.WordAlloc.isSkip output12067 = false := by
  rw [output12067_def]
  conv => lhs; cbv
  try rfl
theorem node12067_eq : Flapjack.WordAlloc.removeDeadStructural input12067 value6036 value1 value2 = (output12067, value5, value1) := by
  rw [input12067_def, output12067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12063_eq]
  dsimp only
  rw [node12066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12067 input12062)).val
theorem input12068_def : input12068 = (.seq input12067 input12062) := by
  unfold input12068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12067 output12062)).val
theorem output12068_def : output12068 = (.seq output12067 output12062) := by
  unfold output12068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12068_skip : Flapjack.WordAlloc.isSkip output12068 = false := by
  rw [output12068_def]
  conv => lhs; cbv
  try rfl
theorem node12068_eq : Flapjack.WordAlloc.removeDeadStructural input12068 value6035 value1 value2 = (output12068, value5, value1) := by
  rw [input12068_def, output12068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12062_eq]
  dsimp only
  rw [node12067_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12068 input12061)).val
theorem input12069_def : input12069 = (.seq input12068 input12061) := by
  unfold input12069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12068 output12061)).val
theorem output12069_def : output12069 = (.seq output12068 output12061) := by
  unfold output12069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12069_skip : Flapjack.WordAlloc.isSkip output12069 = false := by
  rw [output12069_def]
  conv => lhs; cbv
  try rfl
theorem node12069_eq : Flapjack.WordAlloc.removeDeadStructural input12069 value6034 value1 value2 = (output12069, value5, value1) := by
  rw [input12069_def, output12069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12061_eq]
  dsimp only
  rw [node12068_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6039 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3993 (Flapjack.WordLangAddr.addr 3997 0#64)))).val
theorem input12070_def : input12070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3993 (Flapjack.WordLangAddr.addr 3997 0#64))) := by
  unfold input12070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3993 (Flapjack.WordLangAddr.addr 3997 0#64)))).val
theorem output12070_def : output12070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3993 (Flapjack.WordLangAddr.addr 3997 0#64))) := by
  unfold output12070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12070_skip : Flapjack.WordAlloc.isSkip output12070 = false := by
  rw [output12070_def]
  conv => lhs; cbv
  try rfl
theorem node12070_eq : Flapjack.WordAlloc.removeDeadStructural input12070 value5 value1 value2 = (output12070, value6039, value1) := by
  rw [input12070_def, output12070_def]
  try (conv => lhs; cbv)
  try rfl

def value6040 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3997, 3985)])).val
theorem input12071_def : input12071 = (Flapjack.WordLangProgHOL.move 0 [(3997, 3985)]) := by
  unfold input12071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3997, 3985)])).val
theorem output12071_def : output12071 = (Flapjack.WordLangProgHOL.move 0 [(3997, 3985)]) := by
  unfold output12071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12071_skip : Flapjack.WordAlloc.isSkip output12071 = false := by
  rw [output12071_def]
  conv => lhs; cbv
  try rfl
theorem node12071_eq : Flapjack.WordAlloc.removeDeadStructural input12071 value6039 value1 value2 = (output12071, value6040, value1) := by
  rw [input12071_def, output12071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12071 input12070)).val
theorem input12072_def : input12072 = (.seq input12071 input12070) := by
  unfold input12072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12071 output12070)).val
theorem output12072_def : output12072 = (.seq output12071 output12070) := by
  unfold output12072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12072_skip : Flapjack.WordAlloc.isSkip output12072 = false := by
  rw [output12072_def]
  conv => lhs; cbv
  try rfl
theorem node12072_eq : Flapjack.WordAlloc.removeDeadStructural input12072 value5 value1 value2 = (output12072, value6040, value1) := by
  rw [input12072_def, output12072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12070_eq]
  dsimp only
  rw [node12071_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6041 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64))).val
theorem input12073_def : input12073 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64)) := by
  unfold input12073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64))).val
theorem output12073_def : output12073 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64)) := by
  unfold output12073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12073_skip : Flapjack.WordAlloc.isSkip output12073 = false := by
  rw [output12073_def]
  conv => lhs; cbv
  try rfl
theorem node12073_eq : Flapjack.WordAlloc.removeDeadStructural input12073 value6040 value1 value2 = (output12073, value6041, value1) := by
  rw [input12073_def, output12073_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64))).val
theorem input12074_def : input12074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64)) := by
  unfold input12074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12074_def : output12074 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12074_skip : Flapjack.WordAlloc.isSkip output12074 = true := by
  rw [output12074_def]
  conv => lhs; cbv
  try rfl
theorem node12074_eq : Flapjack.WordAlloc.removeDeadStructural input12074 value6041 value1 value2 = (output12074, value6041, value1) := by
  rw [input12074_def, output12074_def]
  try (conv => lhs; cbv)
  try rfl

def value6042 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3985 3981 (Flapjack.WordRegImm.imm 960#64))))).val
theorem input12075_def : input12075 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3985 3981 (Flapjack.WordRegImm.imm 960#64)))) := by
  unfold input12075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3985 3981 (Flapjack.WordRegImm.imm 960#64))))).val
theorem output12075_def : output12075 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3985 3981 (Flapjack.WordRegImm.imm 960#64)))) := by
  unfold output12075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12075_skip : Flapjack.WordAlloc.isSkip output12075 = false := by
  rw [output12075_def]
  conv => lhs; cbv
  try rfl
theorem node12075_eq : Flapjack.WordAlloc.removeDeadStructural input12075 value6041 value1 value2 = (output12075, value6042, value1) := by
  rw [input12075_def, output12075_def]
  try (conv => lhs; cbv)
  try rfl

def value6043 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3981 (Flapjack.WordLangAddr.addr 3977 18446744073709551104#64)))).val
theorem input12076_def : input12076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3981 (Flapjack.WordLangAddr.addr 3977 18446744073709551104#64))) := by
  unfold input12076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3981 (Flapjack.WordLangAddr.addr 3977 18446744073709551104#64)))).val
theorem output12076_def : output12076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3981 (Flapjack.WordLangAddr.addr 3977 18446744073709551104#64))) := by
  unfold output12076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12076_skip : Flapjack.WordAlloc.isSkip output12076 = false := by
  rw [output12076_def]
  conv => lhs; cbv
  try rfl
theorem node12076_eq : Flapjack.WordAlloc.removeDeadStructural input12076 value6042 value1 value2 = (output12076, value6043, value1) := by
  rw [input12076_def, output12076_def]
  try (conv => lhs; cbv)
  try rfl

def value6044 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3977 3973)).val
theorem input12077_def : input12077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3977 3973) := by
  unfold input12077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3977 3973)).val
theorem output12077_def : output12077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3977 3973) := by
  unfold output12077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12077_skip : Flapjack.WordAlloc.isSkip output12077 = false := by
  rw [output12077_def]
  conv => lhs; cbv
  try rfl
theorem node12077_eq : Flapjack.WordAlloc.removeDeadStructural input12077 value6043 value1 value2 = (output12077, value6044, value1) := by
  rw [input12077_def, output12077_def]
  try (conv => lhs; cbv)
  try rfl

def value6045 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3973 3969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12078_def : input12078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3973 3969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3973 3969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12078_def : output12078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3973 3969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12078_skip : Flapjack.WordAlloc.isSkip output12078 = false := by
  rw [output12078_def]
  conv => lhs; cbv
  try rfl
theorem node12078_eq : Flapjack.WordAlloc.removeDeadStructural input12078 value6044 value1 value2 = (output12078, value6045, value1) := by
  rw [input12078_def, output12078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3969 Flapjack.WordStore.heapLength)).val
theorem input12079_def : input12079 = (Flapjack.WordLangProgHOL.get 3969 Flapjack.WordStore.heapLength) := by
  unfold input12079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3969 Flapjack.WordStore.heapLength)).val
theorem output12079_def : output12079 = (Flapjack.WordLangProgHOL.get 3969 Flapjack.WordStore.heapLength) := by
  unfold output12079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12079_skip : Flapjack.WordAlloc.isSkip output12079 = false := by
  rw [output12079_def]
  conv => lhs; cbv
  try rfl
theorem node12079_eq : Flapjack.WordAlloc.removeDeadStructural input12079 value6045 value1 value2 = (output12079, value5, value1) := by
  rw [input12079_def, output12079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12079 input12078)).val
theorem input12080_def : input12080 = (.seq input12079 input12078) := by
  unfold input12080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12079 output12078)).val
theorem output12080_def : output12080 = (.seq output12079 output12078) := by
  unfold output12080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12080_skip : Flapjack.WordAlloc.isSkip output12080 = false := by
  rw [output12080_def]
  conv => lhs; cbv
  try rfl
theorem node12080_eq : Flapjack.WordAlloc.removeDeadStructural input12080 value6044 value1 value2 = (output12080, value5, value1) := by
  rw [input12080_def, output12080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12078_eq]
  dsimp only
  rw [node12079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12080 input12077)).val
theorem input12081_def : input12081 = (.seq input12080 input12077) := by
  unfold input12081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12080 output12077)).val
theorem output12081_def : output12081 = (.seq output12080 output12077) := by
  unfold output12081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12081_skip : Flapjack.WordAlloc.isSkip output12081 = false := by
  rw [output12081_def]
  conv => lhs; cbv
  try rfl
theorem node12081_eq : Flapjack.WordAlloc.removeDeadStructural input12081 value6043 value1 value2 = (output12081, value5, value1) := by
  rw [input12081_def, output12081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12077_eq]
  dsimp only
  rw [node12080_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12081 input12076)).val
theorem input12082_def : input12082 = (.seq input12081 input12076) := by
  unfold input12082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12081 output12076)).val
theorem output12082_def : output12082 = (.seq output12081 output12076) := by
  unfold output12082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12082_skip : Flapjack.WordAlloc.isSkip output12082 = false := by
  rw [output12082_def]
  conv => lhs; cbv
  try rfl
theorem node12082_eq : Flapjack.WordAlloc.removeDeadStructural input12082 value6042 value1 value2 = (output12082, value5, value1) := by
  rw [input12082_def, output12082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12076_eq]
  dsimp only
  rw [node12081_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12082 input12075)).val
theorem input12083_def : input12083 = (.seq input12082 input12075) := by
  unfold input12083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12082 output12075)).val
theorem output12083_def : output12083 = (.seq output12082 output12075) := by
  unfold output12083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12083_skip : Flapjack.WordAlloc.isSkip output12083 = false := by
  rw [output12083_def]
  conv => lhs; cbv
  try rfl
theorem node12083_eq : Flapjack.WordAlloc.removeDeadStructural input12083 value6041 value1 value2 = (output12083, value5, value1) := by
  rw [input12083_def, output12083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12075_eq]
  dsimp only
  rw [node12082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6046 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3961 (Flapjack.WordLangAddr.addr 3965 0#64)))).val
theorem input12084_def : input12084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3961 (Flapjack.WordLangAddr.addr 3965 0#64))) := by
  unfold input12084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3961 (Flapjack.WordLangAddr.addr 3965 0#64)))).val
theorem output12084_def : output12084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3961 (Flapjack.WordLangAddr.addr 3965 0#64))) := by
  unfold output12084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12084_skip : Flapjack.WordAlloc.isSkip output12084 = false := by
  rw [output12084_def]
  conv => lhs; cbv
  try rfl
theorem node12084_eq : Flapjack.WordAlloc.removeDeadStructural input12084 value5 value1 value2 = (output12084, value6046, value1) := by
  rw [input12084_def, output12084_def]
  try (conv => lhs; cbv)
  try rfl

def value6047 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3965, 3953)])).val
theorem input12085_def : input12085 = (Flapjack.WordLangProgHOL.move 0 [(3965, 3953)]) := by
  unfold input12085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3965, 3953)])).val
theorem output12085_def : output12085 = (Flapjack.WordLangProgHOL.move 0 [(3965, 3953)]) := by
  unfold output12085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12085_skip : Flapjack.WordAlloc.isSkip output12085 = false := by
  rw [output12085_def]
  conv => lhs; cbv
  try rfl
theorem node12085_eq : Flapjack.WordAlloc.removeDeadStructural input12085 value6046 value1 value2 = (output12085, value6047, value1) := by
  rw [input12085_def, output12085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12085 input12084)).val
theorem input12086_def : input12086 = (.seq input12085 input12084) := by
  unfold input12086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12085 output12084)).val
theorem output12086_def : output12086 = (.seq output12085 output12084) := by
  unfold output12086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12086_skip : Flapjack.WordAlloc.isSkip output12086 = false := by
  rw [output12086_def]
  conv => lhs; cbv
  try rfl
theorem node12086_eq : Flapjack.WordAlloc.removeDeadStructural input12086 value5 value1 value2 = (output12086, value6047, value1) := by
  rw [input12086_def, output12086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12084_eq]
  dsimp only
  rw [node12085_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6048 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3961 71000049454473266#64))).val
theorem input12087_def : input12087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3961 71000049454473266#64)) := by
  unfold input12087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3961 71000049454473266#64))).val
theorem output12087_def : output12087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3961 71000049454473266#64)) := by
  unfold output12087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12087_skip : Flapjack.WordAlloc.isSkip output12087 = false := by
  rw [output12087_def]
  conv => lhs; cbv
  try rfl
theorem node12087_eq : Flapjack.WordAlloc.removeDeadStructural input12087 value6047 value1 value2 = (output12087, value6048, value1) := by
  rw [input12087_def, output12087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3957 71000049454473266#64))).val
theorem input12088_def : input12088 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3957 71000049454473266#64)) := by
  unfold input12088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12088_def : output12088 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12088_skip : Flapjack.WordAlloc.isSkip output12088 = true := by
  rw [output12088_def]
  conv => lhs; cbv
  try rfl
theorem node12088_eq : Flapjack.WordAlloc.removeDeadStructural input12088 value6048 value1 value2 = (output12088, value6048, value1) := by
  rw [input12088_def, output12088_def]
  try (conv => lhs; cbv)
  try rfl

def value6049 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3953 3949 (Flapjack.WordRegImm.imm 952#64))))).val
theorem input12089_def : input12089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3953 3949 (Flapjack.WordRegImm.imm 952#64)))) := by
  unfold input12089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3953 3949 (Flapjack.WordRegImm.imm 952#64))))).val
theorem output12089_def : output12089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3953 3949 (Flapjack.WordRegImm.imm 952#64)))) := by
  unfold output12089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12089_skip : Flapjack.WordAlloc.isSkip output12089 = false := by
  rw [output12089_def]
  conv => lhs; cbv
  try rfl
theorem node12089_eq : Flapjack.WordAlloc.removeDeadStructural input12089 value6048 value1 value2 = (output12089, value6049, value1) := by
  rw [input12089_def, output12089_def]
  try (conv => lhs; cbv)
  try rfl

def value6050 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3949 (Flapjack.WordLangAddr.addr 3945 18446744073709551104#64)))).val
theorem input12090_def : input12090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3949 (Flapjack.WordLangAddr.addr 3945 18446744073709551104#64))) := by
  unfold input12090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3949 (Flapjack.WordLangAddr.addr 3945 18446744073709551104#64)))).val
theorem output12090_def : output12090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3949 (Flapjack.WordLangAddr.addr 3945 18446744073709551104#64))) := by
  unfold output12090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12090_skip : Flapjack.WordAlloc.isSkip output12090 = false := by
  rw [output12090_def]
  conv => lhs; cbv
  try rfl
theorem node12090_eq : Flapjack.WordAlloc.removeDeadStructural input12090 value6049 value1 value2 = (output12090, value6050, value1) := by
  rw [input12090_def, output12090_def]
  try (conv => lhs; cbv)
  try rfl

def value6051 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3945 3941)).val
theorem input12091_def : input12091 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3945 3941) := by
  unfold input12091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3945 3941)).val
theorem output12091_def : output12091 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3945 3941) := by
  unfold output12091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12091_skip : Flapjack.WordAlloc.isSkip output12091 = false := by
  rw [output12091_def]
  conv => lhs; cbv
  try rfl
theorem node12091_eq : Flapjack.WordAlloc.removeDeadStructural input12091 value6050 value1 value2 = (output12091, value6051, value1) := by
  rw [input12091_def, output12091_def]
  try (conv => lhs; cbv)
  try rfl

def value6052 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3941 3937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12092_def : input12092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3941 3937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3941 3937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12092_def : output12092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3941 3937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12092_skip : Flapjack.WordAlloc.isSkip output12092 = false := by
  rw [output12092_def]
  conv => lhs; cbv
  try rfl
theorem node12092_eq : Flapjack.WordAlloc.removeDeadStructural input12092 value6051 value1 value2 = (output12092, value6052, value1) := by
  rw [input12092_def, output12092_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3937 Flapjack.WordStore.heapLength)).val
theorem input12093_def : input12093 = (Flapjack.WordLangProgHOL.get 3937 Flapjack.WordStore.heapLength) := by
  unfold input12093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3937 Flapjack.WordStore.heapLength)).val
theorem output12093_def : output12093 = (Flapjack.WordLangProgHOL.get 3937 Flapjack.WordStore.heapLength) := by
  unfold output12093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12093_skip : Flapjack.WordAlloc.isSkip output12093 = false := by
  rw [output12093_def]
  conv => lhs; cbv
  try rfl
theorem node12093_eq : Flapjack.WordAlloc.removeDeadStructural input12093 value6052 value1 value2 = (output12093, value5, value1) := by
  rw [input12093_def, output12093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12093 input12092)).val
theorem input12094_def : input12094 = (.seq input12093 input12092) := by
  unfold input12094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12093 output12092)).val
theorem output12094_def : output12094 = (.seq output12093 output12092) := by
  unfold output12094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12094_skip : Flapjack.WordAlloc.isSkip output12094 = false := by
  rw [output12094_def]
  conv => lhs; cbv
  try rfl
theorem node12094_eq : Flapjack.WordAlloc.removeDeadStructural input12094 value6051 value1 value2 = (output12094, value5, value1) := by
  rw [input12094_def, output12094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12092_eq]
  dsimp only
  rw [node12093_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12094 input12091)).val
theorem input12095_def : input12095 = (.seq input12094 input12091) := by
  unfold input12095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12094 output12091)).val
theorem output12095_def : output12095 = (.seq output12094 output12091) := by
  unfold output12095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12095_skip : Flapjack.WordAlloc.isSkip output12095 = false := by
  rw [output12095_def]
  conv => lhs; cbv
  try rfl
theorem node12095_eq : Flapjack.WordAlloc.removeDeadStructural input12095 value6050 value1 value2 = (output12095, value5, value1) := by
  rw [input12095_def, output12095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12091_eq]
  dsimp only
  rw [node12094_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12095 input12090)).val
theorem input12096_def : input12096 = (.seq input12095 input12090) := by
  unfold input12096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12095 output12090)).val
theorem output12096_def : output12096 = (.seq output12095 output12090) := by
  unfold output12096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12096_skip : Flapjack.WordAlloc.isSkip output12096 = false := by
  rw [output12096_def]
  conv => lhs; cbv
  try rfl
theorem node12096_eq : Flapjack.WordAlloc.removeDeadStructural input12096 value6049 value1 value2 = (output12096, value5, value1) := by
  rw [input12096_def, output12096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12090_eq]
  dsimp only
  rw [node12095_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12096 input12089)).val
theorem input12097_def : input12097 = (.seq input12096 input12089) := by
  unfold input12097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12096 output12089)).val
theorem output12097_def : output12097 = (.seq output12096 output12089) := by
  unfold output12097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12097_skip : Flapjack.WordAlloc.isSkip output12097 = false := by
  rw [output12097_def]
  conv => lhs; cbv
  try rfl
theorem node12097_eq : Flapjack.WordAlloc.removeDeadStructural input12097 value6048 value1 value2 = (output12097, value5, value1) := by
  rw [input12097_def, output12097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12089_eq]
  dsimp only
  rw [node12096_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6053 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3929 (Flapjack.WordLangAddr.addr 3933 0#64)))).val
theorem input12098_def : input12098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3929 (Flapjack.WordLangAddr.addr 3933 0#64))) := by
  unfold input12098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3929 (Flapjack.WordLangAddr.addr 3933 0#64)))).val
theorem output12098_def : output12098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3929 (Flapjack.WordLangAddr.addr 3933 0#64))) := by
  unfold output12098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12098_skip : Flapjack.WordAlloc.isSkip output12098 = false := by
  rw [output12098_def]
  conv => lhs; cbv
  try rfl
theorem node12098_eq : Flapjack.WordAlloc.removeDeadStructural input12098 value5 value1 value2 = (output12098, value6053, value1) := by
  rw [input12098_def, output12098_def]
  try (conv => lhs; cbv)
  try rfl

def value6054 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3933, 3921)])).val
theorem input12099_def : input12099 = (Flapjack.WordLangProgHOL.move 0 [(3933, 3921)]) := by
  unfold input12099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3933, 3921)])).val
theorem output12099_def : output12099 = (Flapjack.WordLangProgHOL.move 0 [(3933, 3921)]) := by
  unfold output12099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12099_skip : Flapjack.WordAlloc.isSkip output12099 = false := by
  rw [output12099_def]
  conv => lhs; cbv
  try rfl
theorem node12099_eq : Flapjack.WordAlloc.removeDeadStructural input12099 value6053 value1 value2 = (output12099, value6054, value1) := by
  rw [input12099_def, output12099_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12099 input12098)).val
theorem input12100_def : input12100 = (.seq input12099 input12098) := by
  unfold input12100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12099 output12098)).val
theorem output12100_def : output12100 = (.seq output12099 output12098) := by
  unfold output12100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12100_skip : Flapjack.WordAlloc.isSkip output12100 = false := by
  rw [output12100_def]
  conv => lhs; cbv
  try rfl
theorem node12100_eq : Flapjack.WordAlloc.removeDeadStructural input12100 value5 value1 value2 = (output12100, value6054, value1) := by
  rw [input12100_def, output12100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12098_eq]
  dsimp only
  rw [node12099_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6055 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3929 9865672654120263608#64))).val
theorem input12101_def : input12101 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3929 9865672654120263608#64)) := by
  unfold input12101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3929 9865672654120263608#64))).val
theorem output12101_def : output12101 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3929 9865672654120263608#64)) := by
  unfold output12101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12101_skip : Flapjack.WordAlloc.isSkip output12101 = false := by
  rw [output12101_def]
  conv => lhs; cbv
  try rfl
theorem node12101_eq : Flapjack.WordAlloc.removeDeadStructural input12101 value6054 value1 value2 = (output12101, value6055, value1) := by
  rw [input12101_def, output12101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3925 9865672654120263608#64))).val
theorem input12102_def : input12102 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3925 9865672654120263608#64)) := by
  unfold input12102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12102_def : output12102 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12102_skip : Flapjack.WordAlloc.isSkip output12102 = true := by
  rw [output12102_def]
  conv => lhs; cbv
  try rfl
theorem node12102_eq : Flapjack.WordAlloc.removeDeadStructural input12102 value6055 value1 value2 = (output12102, value6055, value1) := by
  rw [input12102_def, output12102_def]
  try (conv => lhs; cbv)
  try rfl

def value6056 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3921 3917 (Flapjack.WordRegImm.imm 944#64))))).val
theorem input12103_def : input12103 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3921 3917 (Flapjack.WordRegImm.imm 944#64)))) := by
  unfold input12103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3921 3917 (Flapjack.WordRegImm.imm 944#64))))).val
theorem output12103_def : output12103 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3921 3917 (Flapjack.WordRegImm.imm 944#64)))) := by
  unfold output12103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12103_skip : Flapjack.WordAlloc.isSkip output12103 = false := by
  rw [output12103_def]
  conv => lhs; cbv
  try rfl
theorem node12103_eq : Flapjack.WordAlloc.removeDeadStructural input12103 value6055 value1 value2 = (output12103, value6056, value1) := by
  rw [input12103_def, output12103_def]
  try (conv => lhs; cbv)
  try rfl

def value6057 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 18446744073709551104#64)))).val
theorem input12104_def : input12104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 18446744073709551104#64))) := by
  unfold input12104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 18446744073709551104#64)))).val
theorem output12104_def : output12104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 18446744073709551104#64))) := by
  unfold output12104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12104_skip : Flapjack.WordAlloc.isSkip output12104 = false := by
  rw [output12104_def]
  conv => lhs; cbv
  try rfl
theorem node12104_eq : Flapjack.WordAlloc.removeDeadStructural input12104 value6056 value1 value2 = (output12104, value6057, value1) := by
  rw [input12104_def, output12104_def]
  try (conv => lhs; cbv)
  try rfl

def value6058 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3913 3909)).val
theorem input12105_def : input12105 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3913 3909) := by
  unfold input12105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3913 3909)).val
theorem output12105_def : output12105 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3913 3909) := by
  unfold output12105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12105_skip : Flapjack.WordAlloc.isSkip output12105 = false := by
  rw [output12105_def]
  conv => lhs; cbv
  try rfl
theorem node12105_eq : Flapjack.WordAlloc.removeDeadStructural input12105 value6057 value1 value2 = (output12105, value6058, value1) := by
  rw [input12105_def, output12105_def]
  try (conv => lhs; cbv)
  try rfl

def value6059 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3909 3905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12106_def : input12106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3909 3905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3909 3905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12106_def : output12106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3909 3905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12106_skip : Flapjack.WordAlloc.isSkip output12106 = false := by
  rw [output12106_def]
  conv => lhs; cbv
  try rfl
theorem node12106_eq : Flapjack.WordAlloc.removeDeadStructural input12106 value6058 value1 value2 = (output12106, value6059, value1) := by
  rw [input12106_def, output12106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3905 Flapjack.WordStore.heapLength)).val
theorem input12107_def : input12107 = (Flapjack.WordLangProgHOL.get 3905 Flapjack.WordStore.heapLength) := by
  unfold input12107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3905 Flapjack.WordStore.heapLength)).val
theorem output12107_def : output12107 = (Flapjack.WordLangProgHOL.get 3905 Flapjack.WordStore.heapLength) := by
  unfold output12107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12107_skip : Flapjack.WordAlloc.isSkip output12107 = false := by
  rw [output12107_def]
  conv => lhs; cbv
  try rfl
theorem node12107_eq : Flapjack.WordAlloc.removeDeadStructural input12107 value6059 value1 value2 = (output12107, value5, value1) := by
  rw [input12107_def, output12107_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12107 input12106)).val
theorem input12108_def : input12108 = (.seq input12107 input12106) := by
  unfold input12108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12107 output12106)).val
theorem output12108_def : output12108 = (.seq output12107 output12106) := by
  unfold output12108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12108_skip : Flapjack.WordAlloc.isSkip output12108 = false := by
  rw [output12108_def]
  conv => lhs; cbv
  try rfl
theorem node12108_eq : Flapjack.WordAlloc.removeDeadStructural input12108 value6058 value1 value2 = (output12108, value5, value1) := by
  rw [input12108_def, output12108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12106_eq]
  dsimp only
  rw [node12107_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12108 input12105)).val
theorem input12109_def : input12109 = (.seq input12108 input12105) := by
  unfold input12109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12108 output12105)).val
theorem output12109_def : output12109 = (.seq output12108 output12105) := by
  unfold output12109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12109_skip : Flapjack.WordAlloc.isSkip output12109 = false := by
  rw [output12109_def]
  conv => lhs; cbv
  try rfl
theorem node12109_eq : Flapjack.WordAlloc.removeDeadStructural input12109 value6057 value1 value2 = (output12109, value5, value1) := by
  rw [input12109_def, output12109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12105_eq]
  dsimp only
  rw [node12108_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12109 input12104)).val
theorem input12110_def : input12110 = (.seq input12109 input12104) := by
  unfold input12110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12109 output12104)).val
theorem output12110_def : output12110 = (.seq output12109 output12104) := by
  unfold output12110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12110_skip : Flapjack.WordAlloc.isSkip output12110 = false := by
  rw [output12110_def]
  conv => lhs; cbv
  try rfl
theorem node12110_eq : Flapjack.WordAlloc.removeDeadStructural input12110 value6056 value1 value2 = (output12110, value5, value1) := by
  rw [input12110_def, output12110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12104_eq]
  dsimp only
  rw [node12109_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12110 input12103)).val
theorem input12111_def : input12111 = (.seq input12110 input12103) := by
  unfold input12111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12110 output12103)).val
theorem output12111_def : output12111 = (.seq output12110 output12103) := by
  unfold output12111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12111_skip : Flapjack.WordAlloc.isSkip output12111 = false := by
  rw [output12111_def]
  conv => lhs; cbv
  try rfl
theorem node12111_eq : Flapjack.WordAlloc.removeDeadStructural input12111 value6055 value1 value2 = (output12111, value5, value1) := by
  rw [input12111_def, output12111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12103_eq]
  dsimp only
  rw [node12110_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6060 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3897 (Flapjack.WordLangAddr.addr 3901 0#64)))).val
theorem input12112_def : input12112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3897 (Flapjack.WordLangAddr.addr 3901 0#64))) := by
  unfold input12112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3897 (Flapjack.WordLangAddr.addr 3901 0#64)))).val
theorem output12112_def : output12112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3897 (Flapjack.WordLangAddr.addr 3901 0#64))) := by
  unfold output12112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12112_skip : Flapjack.WordAlloc.isSkip output12112 = false := by
  rw [output12112_def]
  conv => lhs; cbv
  try rfl
theorem node12112_eq : Flapjack.WordAlloc.removeDeadStructural input12112 value5 value1 value2 = (output12112, value6060, value1) := by
  rw [input12112_def, output12112_def]
  try (conv => lhs; cbv)
  try rfl

def value6061 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3901, 3889)])).val
theorem input12113_def : input12113 = (Flapjack.WordLangProgHOL.move 0 [(3901, 3889)]) := by
  unfold input12113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3901, 3889)])).val
theorem output12113_def : output12113 = (Flapjack.WordLangProgHOL.move 0 [(3901, 3889)]) := by
  unfold output12113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12113_skip : Flapjack.WordAlloc.isSkip output12113 = false := by
  rw [output12113_def]
  conv => lhs; cbv
  try rfl
theorem node12113_eq : Flapjack.WordAlloc.removeDeadStructural input12113 value6060 value1 value2 = (output12113, value6061, value1) := by
  rw [input12113_def, output12113_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12113 input12112)).val
theorem input12114_def : input12114 = (.seq input12113 input12112) := by
  unfold input12114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12113 output12112)).val
theorem output12114_def : output12114 = (.seq output12113 output12112) := by
  unfold output12114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12114_skip : Flapjack.WordAlloc.isSkip output12114 = false := by
  rw [output12114_def]
  conv => lhs; cbv
  try rfl
theorem node12114_eq : Flapjack.WordAlloc.removeDeadStructural input12114 value5 value1 value2 = (output12114, value6061, value1) := by
  rw [input12114_def, output12114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12112_eq]
  dsimp only
  rw [node12113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6062 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3897 6098234018649060207#64))).val
theorem input12115_def : input12115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3897 6098234018649060207#64)) := by
  unfold input12115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3897 6098234018649060207#64))).val
theorem output12115_def : output12115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3897 6098234018649060207#64)) := by
  unfold output12115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12115_skip : Flapjack.WordAlloc.isSkip output12115 = false := by
  rw [output12115_def]
  conv => lhs; cbv
  try rfl
theorem node12115_eq : Flapjack.WordAlloc.removeDeadStructural input12115 value6061 value1 value2 = (output12115, value6062, value1) := by
  rw [input12115_def, output12115_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3893 6098234018649060207#64))).val
theorem input12116_def : input12116 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3893 6098234018649060207#64)) := by
  unfold input12116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12116_def : output12116 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12116_skip : Flapjack.WordAlloc.isSkip output12116 = true := by
  rw [output12116_def]
  conv => lhs; cbv
  try rfl
theorem node12116_eq : Flapjack.WordAlloc.removeDeadStructural input12116 value6062 value1 value2 = (output12116, value6062, value1) := by
  rw [input12116_def, output12116_def]
  try (conv => lhs; cbv)
  try rfl

def value6063 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3889 3885 (Flapjack.WordRegImm.imm 936#64))))).val
theorem input12117_def : input12117 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3889 3885 (Flapjack.WordRegImm.imm 936#64)))) := by
  unfold input12117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3889 3885 (Flapjack.WordRegImm.imm 936#64))))).val
theorem output12117_def : output12117 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3889 3885 (Flapjack.WordRegImm.imm 936#64)))) := by
  unfold output12117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12117_skip : Flapjack.WordAlloc.isSkip output12117 = false := by
  rw [output12117_def]
  conv => lhs; cbv
  try rfl
theorem node12117_eq : Flapjack.WordAlloc.removeDeadStructural input12117 value6062 value1 value2 = (output12117, value6063, value1) := by
  rw [input12117_def, output12117_def]
  try (conv => lhs; cbv)
  try rfl

def value6064 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3885 (Flapjack.WordLangAddr.addr 3881 18446744073709551104#64)))).val
theorem input12118_def : input12118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3885 (Flapjack.WordLangAddr.addr 3881 18446744073709551104#64))) := by
  unfold input12118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3885 (Flapjack.WordLangAddr.addr 3881 18446744073709551104#64)))).val
theorem output12118_def : output12118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3885 (Flapjack.WordLangAddr.addr 3881 18446744073709551104#64))) := by
  unfold output12118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12118_skip : Flapjack.WordAlloc.isSkip output12118 = false := by
  rw [output12118_def]
  conv => lhs; cbv
  try rfl
theorem node12118_eq : Flapjack.WordAlloc.removeDeadStructural input12118 value6063 value1 value2 = (output12118, value6064, value1) := by
  rw [input12118_def, output12118_def]
  try (conv => lhs; cbv)
  try rfl

def value6065 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3881 3877)).val
theorem input12119_def : input12119 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3881 3877) := by
  unfold input12119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3881 3877)).val
theorem output12119_def : output12119 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3881 3877) := by
  unfold output12119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12119_skip : Flapjack.WordAlloc.isSkip output12119 = false := by
  rw [output12119_def]
  conv => lhs; cbv
  try rfl
theorem node12119_eq : Flapjack.WordAlloc.removeDeadStructural input12119 value6064 value1 value2 = (output12119, value6065, value1) := by
  rw [input12119_def, output12119_def]
  try (conv => lhs; cbv)
  try rfl

def value6066 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3877 3873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12120_def : input12120 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3877 3873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3877 3873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12120_def : output12120 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3877 3873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12120_skip : Flapjack.WordAlloc.isSkip output12120 = false := by
  rw [output12120_def]
  conv => lhs; cbv
  try rfl
theorem node12120_eq : Flapjack.WordAlloc.removeDeadStructural input12120 value6065 value1 value2 = (output12120, value6066, value1) := by
  rw [input12120_def, output12120_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3873 Flapjack.WordStore.heapLength)).val
theorem input12121_def : input12121 = (Flapjack.WordLangProgHOL.get 3873 Flapjack.WordStore.heapLength) := by
  unfold input12121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3873 Flapjack.WordStore.heapLength)).val
theorem output12121_def : output12121 = (Flapjack.WordLangProgHOL.get 3873 Flapjack.WordStore.heapLength) := by
  unfold output12121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12121_skip : Flapjack.WordAlloc.isSkip output12121 = false := by
  rw [output12121_def]
  conv => lhs; cbv
  try rfl
theorem node12121_eq : Flapjack.WordAlloc.removeDeadStructural input12121 value6066 value1 value2 = (output12121, value5, value1) := by
  rw [input12121_def, output12121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12121 input12120)).val
theorem input12122_def : input12122 = (.seq input12121 input12120) := by
  unfold input12122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12121 output12120)).val
theorem output12122_def : output12122 = (.seq output12121 output12120) := by
  unfold output12122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12122_skip : Flapjack.WordAlloc.isSkip output12122 = false := by
  rw [output12122_def]
  conv => lhs; cbv
  try rfl
theorem node12122_eq : Flapjack.WordAlloc.removeDeadStructural input12122 value6065 value1 value2 = (output12122, value5, value1) := by
  rw [input12122_def, output12122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12120_eq]
  dsimp only
  rw [node12121_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12122 input12119)).val
theorem input12123_def : input12123 = (.seq input12122 input12119) := by
  unfold input12123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12122 output12119)).val
theorem output12123_def : output12123 = (.seq output12122 output12119) := by
  unfold output12123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12123_skip : Flapjack.WordAlloc.isSkip output12123 = false := by
  rw [output12123_def]
  conv => lhs; cbv
  try rfl
theorem node12123_eq : Flapjack.WordAlloc.removeDeadStructural input12123 value6064 value1 value2 = (output12123, value5, value1) := by
  rw [input12123_def, output12123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12119_eq]
  dsimp only
  rw [node12122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12123 input12118)).val
theorem input12124_def : input12124 = (.seq input12123 input12118) := by
  unfold input12124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12123 output12118)).val
theorem output12124_def : output12124 = (.seq output12123 output12118) := by
  unfold output12124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12124_skip : Flapjack.WordAlloc.isSkip output12124 = false := by
  rw [output12124_def]
  conv => lhs; cbv
  try rfl
theorem node12124_eq : Flapjack.WordAlloc.removeDeadStructural input12124 value6063 value1 value2 = (output12124, value5, value1) := by
  rw [input12124_def, output12124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12118_eq]
  dsimp only
  rw [node12123_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12124 input12117)).val
theorem input12125_def : input12125 = (.seq input12124 input12117) := by
  unfold input12125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12124 output12117)).val
theorem output12125_def : output12125 = (.seq output12124 output12117) := by
  unfold output12125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12125_skip : Flapjack.WordAlloc.isSkip output12125 = false := by
  rw [output12125_def]
  conv => lhs; cbv
  try rfl
theorem node12125_eq : Flapjack.WordAlloc.removeDeadStructural input12125 value6062 value1 value2 = (output12125, value5, value1) := by
  rw [input12125_def, output12125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12117_eq]
  dsimp only
  rw [node12124_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6067 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3865 (Flapjack.WordLangAddr.addr 3869 0#64)))).val
theorem input12126_def : input12126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3865 (Flapjack.WordLangAddr.addr 3869 0#64))) := by
  unfold input12126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3865 (Flapjack.WordLangAddr.addr 3869 0#64)))).val
theorem output12126_def : output12126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3865 (Flapjack.WordLangAddr.addr 3869 0#64))) := by
  unfold output12126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12126_skip : Flapjack.WordAlloc.isSkip output12126 = false := by
  rw [output12126_def]
  conv => lhs; cbv
  try rfl
theorem node12126_eq : Flapjack.WordAlloc.removeDeadStructural input12126 value5 value1 value2 = (output12126, value6067, value1) := by
  rw [input12126_def, output12126_def]
  try (conv => lhs; cbv)
  try rfl

def value6068 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3869, 3857)])).val
theorem input12127_def : input12127 = (Flapjack.WordLangProgHOL.move 0 [(3869, 3857)]) := by
  unfold input12127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3869, 3857)])).val
theorem output12127_def : output12127 = (Flapjack.WordLangProgHOL.move 0 [(3869, 3857)]) := by
  unfold output12127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12127_skip : Flapjack.WordAlloc.isSkip output12127 = false := by
  rw [output12127_def]
  conv => lhs; cbv
  try rfl
theorem node12127_eq : Flapjack.WordAlloc.removeDeadStructural input12127 value6067 value1 value2 = (output12127, value6068, value1) := by
  rw [input12127_def, output12127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12127 input12126)).val
theorem input12128_def : input12128 = (.seq input12127 input12126) := by
  unfold input12128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12127 output12126)).val
theorem output12128_def : output12128 = (.seq output12127 output12126) := by
  unfold output12128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12128_skip : Flapjack.WordAlloc.isSkip output12128 = false := by
  rw [output12128_def]
  conv => lhs; cbv
  try rfl
theorem node12128_eq : Flapjack.WordAlloc.removeDeadStructural input12128 value5 value1 value2 = (output12128, value6068, value1) := by
  rw [input12128_def, output12128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12126_eq]
  dsimp only
  rw [node12127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6069 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3865 17009126888523054175#64))).val
theorem input12129_def : input12129 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3865 17009126888523054175#64)) := by
  unfold input12129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3865 17009126888523054175#64))).val
theorem output12129_def : output12129 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3865 17009126888523054175#64)) := by
  unfold output12129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12129_skip : Flapjack.WordAlloc.isSkip output12129 = false := by
  rw [output12129_def]
  conv => lhs; cbv
  try rfl
theorem node12129_eq : Flapjack.WordAlloc.removeDeadStructural input12129 value6068 value1 value2 = (output12129, value6069, value1) := by
  rw [input12129_def, output12129_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3861 17009126888523054175#64))).val
theorem input12130_def : input12130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3861 17009126888523054175#64)) := by
  unfold input12130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12130_def : output12130 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12130_skip : Flapjack.WordAlloc.isSkip output12130 = true := by
  rw [output12130_def]
  conv => lhs; cbv
  try rfl
theorem node12130_eq : Flapjack.WordAlloc.removeDeadStructural input12130 value6069 value1 value2 = (output12130, value6069, value1) := by
  rw [input12130_def, output12130_def]
  try (conv => lhs; cbv)
  try rfl

def value6070 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3857 3853 (Flapjack.WordRegImm.imm 928#64))))).val
theorem input12131_def : input12131 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3857 3853 (Flapjack.WordRegImm.imm 928#64)))) := by
  unfold input12131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3857 3853 (Flapjack.WordRegImm.imm 928#64))))).val
theorem output12131_def : output12131 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3857 3853 (Flapjack.WordRegImm.imm 928#64)))) := by
  unfold output12131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12131_skip : Flapjack.WordAlloc.isSkip output12131 = false := by
  rw [output12131_def]
  conv => lhs; cbv
  try rfl
theorem node12131_eq : Flapjack.WordAlloc.removeDeadStructural input12131 value6069 value1 value2 = (output12131, value6070, value1) := by
  rw [input12131_def, output12131_def]
  try (conv => lhs; cbv)
  try rfl

def value6071 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3853 (Flapjack.WordLangAddr.addr 3849 18446744073709551104#64)))).val
theorem input12132_def : input12132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3853 (Flapjack.WordLangAddr.addr 3849 18446744073709551104#64))) := by
  unfold input12132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3853 (Flapjack.WordLangAddr.addr 3849 18446744073709551104#64)))).val
theorem output12132_def : output12132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3853 (Flapjack.WordLangAddr.addr 3849 18446744073709551104#64))) := by
  unfold output12132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12132_skip : Flapjack.WordAlloc.isSkip output12132 = false := by
  rw [output12132_def]
  conv => lhs; cbv
  try rfl
theorem node12132_eq : Flapjack.WordAlloc.removeDeadStructural input12132 value6070 value1 value2 = (output12132, value6071, value1) := by
  rw [input12132_def, output12132_def]
  try (conv => lhs; cbv)
  try rfl

def value6072 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3849 3845)).val
theorem input12133_def : input12133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3849 3845) := by
  unfold input12133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3849 3845)).val
theorem output12133_def : output12133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3849 3845) := by
  unfold output12133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12133_skip : Flapjack.WordAlloc.isSkip output12133 = false := by
  rw [output12133_def]
  conv => lhs; cbv
  try rfl
theorem node12133_eq : Flapjack.WordAlloc.removeDeadStructural input12133 value6071 value1 value2 = (output12133, value6072, value1) := by
  rw [input12133_def, output12133_def]
  try (conv => lhs; cbv)
  try rfl

def value6073 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3845 3841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12134_def : input12134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3845 3841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3845 3841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12134_def : output12134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3845 3841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12134_skip : Flapjack.WordAlloc.isSkip output12134 = false := by
  rw [output12134_def]
  conv => lhs; cbv
  try rfl
theorem node12134_eq : Flapjack.WordAlloc.removeDeadStructural input12134 value6072 value1 value2 = (output12134, value6073, value1) := by
  rw [input12134_def, output12134_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3841 Flapjack.WordStore.heapLength)).val
theorem input12135_def : input12135 = (Flapjack.WordLangProgHOL.get 3841 Flapjack.WordStore.heapLength) := by
  unfold input12135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3841 Flapjack.WordStore.heapLength)).val
theorem output12135_def : output12135 = (Flapjack.WordLangProgHOL.get 3841 Flapjack.WordStore.heapLength) := by
  unfold output12135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12135_skip : Flapjack.WordAlloc.isSkip output12135 = false := by
  rw [output12135_def]
  conv => lhs; cbv
  try rfl
theorem node12135_eq : Flapjack.WordAlloc.removeDeadStructural input12135 value6073 value1 value2 = (output12135, value5, value1) := by
  rw [input12135_def, output12135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12135 input12134)).val
theorem input12136_def : input12136 = (.seq input12135 input12134) := by
  unfold input12136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12135 output12134)).val
theorem output12136_def : output12136 = (.seq output12135 output12134) := by
  unfold output12136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12136_skip : Flapjack.WordAlloc.isSkip output12136 = false := by
  rw [output12136_def]
  conv => lhs; cbv
  try rfl
theorem node12136_eq : Flapjack.WordAlloc.removeDeadStructural input12136 value6072 value1 value2 = (output12136, value5, value1) := by
  rw [input12136_def, output12136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12134_eq]
  dsimp only
  rw [node12135_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12136 input12133)).val
theorem input12137_def : input12137 = (.seq input12136 input12133) := by
  unfold input12137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12136 output12133)).val
theorem output12137_def : output12137 = (.seq output12136 output12133) := by
  unfold output12137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12137_skip : Flapjack.WordAlloc.isSkip output12137 = false := by
  rw [output12137_def]
  conv => lhs; cbv
  try rfl
theorem node12137_eq : Flapjack.WordAlloc.removeDeadStructural input12137 value6071 value1 value2 = (output12137, value5, value1) := by
  rw [input12137_def, output12137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12133_eq]
  dsimp only
  rw [node12136_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12137 input12132)).val
theorem input12138_def : input12138 = (.seq input12137 input12132) := by
  unfold input12138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12137 output12132)).val
theorem output12138_def : output12138 = (.seq output12137 output12132) := by
  unfold output12138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12138_skip : Flapjack.WordAlloc.isSkip output12138 = false := by
  rw [output12138_def]
  conv => lhs; cbv
  try rfl
theorem node12138_eq : Flapjack.WordAlloc.removeDeadStructural input12138 value6070 value1 value2 = (output12138, value5, value1) := by
  rw [input12138_def, output12138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12132_eq]
  dsimp only
  rw [node12137_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12138 input12131)).val
theorem input12139_def : input12139 = (.seq input12138 input12131) := by
  unfold input12139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12138 output12131)).val
theorem output12139_def : output12139 = (.seq output12138 output12131) := by
  unfold output12139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12139_skip : Flapjack.WordAlloc.isSkip output12139 = false := by
  rw [output12139_def]
  conv => lhs; cbv
  try rfl
theorem node12139_eq : Flapjack.WordAlloc.removeDeadStructural input12139 value6069 value1 value2 = (output12139, value5, value1) := by
  rw [input12139_def, output12139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12131_eq]
  dsimp only
  rw [node12138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6074 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3833 (Flapjack.WordLangAddr.addr 3837 0#64)))).val
theorem input12140_def : input12140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3833 (Flapjack.WordLangAddr.addr 3837 0#64))) := by
  unfold input12140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3833 (Flapjack.WordLangAddr.addr 3837 0#64)))).val
theorem output12140_def : output12140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3833 (Flapjack.WordLangAddr.addr 3837 0#64))) := by
  unfold output12140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12140_skip : Flapjack.WordAlloc.isSkip output12140 = false := by
  rw [output12140_def]
  conv => lhs; cbv
  try rfl
theorem node12140_eq : Flapjack.WordAlloc.removeDeadStructural input12140 value5 value1 value2 = (output12140, value6074, value1) := by
  rw [input12140_def, output12140_def]
  try (conv => lhs; cbv)
  try rfl

def value6075 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3837, 3825)])).val
theorem input12141_def : input12141 = (Flapjack.WordLangProgHOL.move 0 [(3837, 3825)]) := by
  unfold input12141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3837, 3825)])).val
theorem output12141_def : output12141 = (Flapjack.WordLangProgHOL.move 0 [(3837, 3825)]) := by
  unfold output12141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12141_skip : Flapjack.WordAlloc.isSkip output12141 = false := by
  rw [output12141_def]
  conv => lhs; cbv
  try rfl
theorem node12141_eq : Flapjack.WordAlloc.removeDeadStructural input12141 value6074 value1 value2 = (output12141, value6075, value1) := by
  rw [input12141_def, output12141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12141 input12140)).val
theorem input12142_def : input12142 = (.seq input12141 input12140) := by
  unfold input12142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12141 output12140)).val
theorem output12142_def : output12142 = (.seq output12141 output12140) := by
  unfold output12142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12142_skip : Flapjack.WordAlloc.isSkip output12142 = false := by
  rw [output12142_def]
  conv => lhs; cbv
  try rfl
theorem node12142_eq : Flapjack.WordAlloc.removeDeadStructural input12142 value5 value1 value2 = (output12142, value6075, value1) := by
  rw [input12142_def, output12142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12140_eq]
  dsimp only
  rw [node12141_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6076 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 2895069921743240898#64))).val
theorem input12143_def : input12143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 2895069921743240898#64)) := by
  unfold input12143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 2895069921743240898#64))).val
theorem output12143_def : output12143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3833 2895069921743240898#64)) := by
  unfold output12143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12143_skip : Flapjack.WordAlloc.isSkip output12143 = false := by
  rw [output12143_def]
  conv => lhs; cbv
  try rfl
theorem node12143_eq : Flapjack.WordAlloc.removeDeadStructural input12143 value6075 value1 value2 = (output12143, value6076, value1) := by
  rw [input12143_def, output12143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3829 2895069921743240898#64))).val
theorem input12144_def : input12144 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3829 2895069921743240898#64)) := by
  unfold input12144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12144_def : output12144 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12144_skip : Flapjack.WordAlloc.isSkip output12144 = true := by
  rw [output12144_def]
  conv => lhs; cbv
  try rfl
theorem node12144_eq : Flapjack.WordAlloc.removeDeadStructural input12144 value6076 value1 value2 = (output12144, value6076, value1) := by
  rw [input12144_def, output12144_def]
  try (conv => lhs; cbv)
  try rfl

def value6077 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3825 3821 (Flapjack.WordRegImm.imm 920#64))))).val
theorem input12145_def : input12145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3825 3821 (Flapjack.WordRegImm.imm 920#64)))) := by
  unfold input12145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3825 3821 (Flapjack.WordRegImm.imm 920#64))))).val
theorem output12145_def : output12145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3825 3821 (Flapjack.WordRegImm.imm 920#64)))) := by
  unfold output12145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12145_skip : Flapjack.WordAlloc.isSkip output12145 = false := by
  rw [output12145_def]
  conv => lhs; cbv
  try rfl
theorem node12145_eq : Flapjack.WordAlloc.removeDeadStructural input12145 value6076 value1 value2 = (output12145, value6077, value1) := by
  rw [input12145_def, output12145_def]
  try (conv => lhs; cbv)
  try rfl

def value6078 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3821 (Flapjack.WordLangAddr.addr 3817 18446744073709551104#64)))).val
theorem input12146_def : input12146 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3821 (Flapjack.WordLangAddr.addr 3817 18446744073709551104#64))) := by
  unfold input12146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3821 (Flapjack.WordLangAddr.addr 3817 18446744073709551104#64)))).val
theorem output12146_def : output12146 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3821 (Flapjack.WordLangAddr.addr 3817 18446744073709551104#64))) := by
  unfold output12146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12146_skip : Flapjack.WordAlloc.isSkip output12146 = false := by
  rw [output12146_def]
  conv => lhs; cbv
  try rfl
theorem node12146_eq : Flapjack.WordAlloc.removeDeadStructural input12146 value6077 value1 value2 = (output12146, value6078, value1) := by
  rw [input12146_def, output12146_def]
  try (conv => lhs; cbv)
  try rfl

def value6079 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3817 3813)).val
theorem input12147_def : input12147 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3817 3813) := by
  unfold input12147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3817 3813)).val
theorem output12147_def : output12147 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3817 3813) := by
  unfold output12147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12147_skip : Flapjack.WordAlloc.isSkip output12147 = false := by
  rw [output12147_def]
  conv => lhs; cbv
  try rfl
theorem node12147_eq : Flapjack.WordAlloc.removeDeadStructural input12147 value6078 value1 value2 = (output12147, value6079, value1) := by
  rw [input12147_def, output12147_def]
  try (conv => lhs; cbv)
  try rfl

def value6080 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3813 3809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12148_def : input12148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3813 3809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3813 3809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12148_def : output12148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3813 3809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12148_skip : Flapjack.WordAlloc.isSkip output12148 = false := by
  rw [output12148_def]
  conv => lhs; cbv
  try rfl
theorem node12148_eq : Flapjack.WordAlloc.removeDeadStructural input12148 value6079 value1 value2 = (output12148, value6080, value1) := by
  rw [input12148_def, output12148_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3809 Flapjack.WordStore.heapLength)).val
theorem input12149_def : input12149 = (Flapjack.WordLangProgHOL.get 3809 Flapjack.WordStore.heapLength) := by
  unfold input12149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3809 Flapjack.WordStore.heapLength)).val
theorem output12149_def : output12149 = (Flapjack.WordLangProgHOL.get 3809 Flapjack.WordStore.heapLength) := by
  unfold output12149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12149_skip : Flapjack.WordAlloc.isSkip output12149 = false := by
  rw [output12149_def]
  conv => lhs; cbv
  try rfl
theorem node12149_eq : Flapjack.WordAlloc.removeDeadStructural input12149 value6080 value1 value2 = (output12149, value5, value1) := by
  rw [input12149_def, output12149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12149 input12148)).val
theorem input12150_def : input12150 = (.seq input12149 input12148) := by
  unfold input12150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12149 output12148)).val
theorem output12150_def : output12150 = (.seq output12149 output12148) := by
  unfold output12150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12150_skip : Flapjack.WordAlloc.isSkip output12150 = false := by
  rw [output12150_def]
  conv => lhs; cbv
  try rfl
theorem node12150_eq : Flapjack.WordAlloc.removeDeadStructural input12150 value6079 value1 value2 = (output12150, value5, value1) := by
  rw [input12150_def, output12150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12148_eq]
  dsimp only
  rw [node12149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12150 input12147)).val
theorem input12151_def : input12151 = (.seq input12150 input12147) := by
  unfold input12151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12150 output12147)).val
theorem output12151_def : output12151 = (.seq output12150 output12147) := by
  unfold output12151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12151_skip : Flapjack.WordAlloc.isSkip output12151 = false := by
  rw [output12151_def]
  conv => lhs; cbv
  try rfl
theorem node12151_eq : Flapjack.WordAlloc.removeDeadStructural input12151 value6078 value1 value2 = (output12151, value5, value1) := by
  rw [input12151_def, output12151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12147_eq]
  dsimp only
  rw [node12150_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12151 input12146)).val
theorem input12152_def : input12152 = (.seq input12151 input12146) := by
  unfold input12152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12151 output12146)).val
theorem output12152_def : output12152 = (.seq output12151 output12146) := by
  unfold output12152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12152_skip : Flapjack.WordAlloc.isSkip output12152 = false := by
  rw [output12152_def]
  conv => lhs; cbv
  try rfl
theorem node12152_eq : Flapjack.WordAlloc.removeDeadStructural input12152 value6077 value1 value2 = (output12152, value5, value1) := by
  rw [input12152_def, output12152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12146_eq]
  dsimp only
  rw [node12151_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12152 input12145)).val
theorem input12153_def : input12153 = (.seq input12152 input12145) := by
  unfold input12153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12152 output12145)).val
theorem output12153_def : output12153 = (.seq output12152 output12145) := by
  unfold output12153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12153_skip : Flapjack.WordAlloc.isSkip output12153 = false := by
  rw [output12153_def]
  conv => lhs; cbv
  try rfl
theorem node12153_eq : Flapjack.WordAlloc.removeDeadStructural input12153 value6076 value1 value2 = (output12153, value5, value1) := by
  rw [input12153_def, output12153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12145_eq]
  dsimp only
  rw [node12152_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6081 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3801 (Flapjack.WordLangAddr.addr 3805 0#64)))).val
theorem input12154_def : input12154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3801 (Flapjack.WordLangAddr.addr 3805 0#64))) := by
  unfold input12154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3801 (Flapjack.WordLangAddr.addr 3805 0#64)))).val
theorem output12154_def : output12154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3801 (Flapjack.WordLangAddr.addr 3805 0#64))) := by
  unfold output12154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12154_skip : Flapjack.WordAlloc.isSkip output12154 = false := by
  rw [output12154_def]
  conv => lhs; cbv
  try rfl
theorem node12154_eq : Flapjack.WordAlloc.removeDeadStructural input12154 value5 value1 value2 = (output12154, value6081, value1) := by
  rw [input12154_def, output12154_def]
  try (conv => lhs; cbv)
  try rfl

def value6082 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3805, 3793)])).val
theorem input12155_def : input12155 = (Flapjack.WordLangProgHOL.move 0 [(3805, 3793)]) := by
  unfold input12155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3805, 3793)])).val
theorem output12155_def : output12155 = (Flapjack.WordLangProgHOL.move 0 [(3805, 3793)]) := by
  unfold output12155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12155_skip : Flapjack.WordAlloc.isSkip output12155 = false := by
  rw [output12155_def]
  conv => lhs; cbv
  try rfl
theorem node12155_eq : Flapjack.WordAlloc.removeDeadStructural input12155 value6081 value1 value2 = (output12155, value6082, value1) := by
  rw [input12155_def, output12155_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12155 input12154)).val
theorem input12156_def : input12156 = (.seq input12155 input12154) := by
  unfold input12156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12155 output12154)).val
theorem output12156_def : output12156 = (.seq output12155 output12154) := by
  unfold output12156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12156_skip : Flapjack.WordAlloc.isSkip output12156 = false := by
  rw [output12156_def]
  conv => lhs; cbv
  try rfl
theorem node12156_eq : Flapjack.WordAlloc.removeDeadStructural input12156 value5 value1 value2 = (output12156, value6082, value1) := by
  rw [input12156_def, output12156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12154_eq]
  dsimp only
  rw [node12155_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6083 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3801 3240210268673559283#64))).val
theorem input12157_def : input12157 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3801 3240210268673559283#64)) := by
  unfold input12157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3801 3240210268673559283#64))).val
theorem output12157_def : output12157 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3801 3240210268673559283#64)) := by
  unfold output12157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12157_skip : Flapjack.WordAlloc.isSkip output12157 = false := by
  rw [output12157_def]
  conv => lhs; cbv
  try rfl
theorem node12157_eq : Flapjack.WordAlloc.removeDeadStructural input12157 value6082 value1 value2 = (output12157, value6083, value1) := by
  rw [input12157_def, output12157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3797 3240210268673559283#64))).val
theorem input12158_def : input12158 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3797 3240210268673559283#64)) := by
  unfold input12158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12158_def : output12158 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12158_skip : Flapjack.WordAlloc.isSkip output12158 = true := by
  rw [output12158_def]
  conv => lhs; cbv
  try rfl
theorem node12158_eq : Flapjack.WordAlloc.removeDeadStructural input12158 value6083 value1 value2 = (output12158, value6083, value1) := by
  rw [input12158_def, output12158_def]
  try (conv => lhs; cbv)
  try rfl

def value6084 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3793 3789 (Flapjack.WordRegImm.imm 912#64))))).val
theorem input12159_def : input12159 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3793 3789 (Flapjack.WordRegImm.imm 912#64)))) := by
  unfold input12159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3793 3789 (Flapjack.WordRegImm.imm 912#64))))).val
theorem output12159_def : output12159 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3793 3789 (Flapjack.WordRegImm.imm 912#64)))) := by
  unfold output12159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12159_skip : Flapjack.WordAlloc.isSkip output12159 = false := by
  rw [output12159_def]
  conv => lhs; cbv
  try rfl
theorem node12159_eq : Flapjack.WordAlloc.removeDeadStructural input12159 value6083 value1 value2 = (output12159, value6084, value1) := by
  rw [input12159_def, output12159_def]
  try (conv => lhs; cbv)
  try rfl

def value6085 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3789 (Flapjack.WordLangAddr.addr 3785 18446744073709551104#64)))).val
theorem input12160_def : input12160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3789 (Flapjack.WordLangAddr.addr 3785 18446744073709551104#64))) := by
  unfold input12160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3789 (Flapjack.WordLangAddr.addr 3785 18446744073709551104#64)))).val
theorem output12160_def : output12160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3789 (Flapjack.WordLangAddr.addr 3785 18446744073709551104#64))) := by
  unfold output12160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12160_skip : Flapjack.WordAlloc.isSkip output12160 = false := by
  rw [output12160_def]
  conv => lhs; cbv
  try rfl
theorem node12160_eq : Flapjack.WordAlloc.removeDeadStructural input12160 value6084 value1 value2 = (output12160, value6085, value1) := by
  rw [input12160_def, output12160_def]
  try (conv => lhs; cbv)
  try rfl

def value6086 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3785 3781)).val
theorem input12161_def : input12161 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3785 3781) := by
  unfold input12161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3785 3781)).val
theorem output12161_def : output12161 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3785 3781) := by
  unfold output12161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12161_skip : Flapjack.WordAlloc.isSkip output12161 = false := by
  rw [output12161_def]
  conv => lhs; cbv
  try rfl
theorem node12161_eq : Flapjack.WordAlloc.removeDeadStructural input12161 value6085 value1 value2 = (output12161, value6086, value1) := by
  rw [input12161_def, output12161_def]
  try (conv => lhs; cbv)
  try rfl

def value6087 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3781 3777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12162_def : input12162 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3781 3777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3781 3777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12162_def : output12162 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3781 3777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12162_skip : Flapjack.WordAlloc.isSkip output12162 = false := by
  rw [output12162_def]
  conv => lhs; cbv
  try rfl
theorem node12162_eq : Flapjack.WordAlloc.removeDeadStructural input12162 value6086 value1 value2 = (output12162, value6087, value1) := by
  rw [input12162_def, output12162_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3777 Flapjack.WordStore.heapLength)).val
theorem input12163_def : input12163 = (Flapjack.WordLangProgHOL.get 3777 Flapjack.WordStore.heapLength) := by
  unfold input12163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3777 Flapjack.WordStore.heapLength)).val
theorem output12163_def : output12163 = (Flapjack.WordLangProgHOL.get 3777 Flapjack.WordStore.heapLength) := by
  unfold output12163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12163_skip : Flapjack.WordAlloc.isSkip output12163 = false := by
  rw [output12163_def]
  conv => lhs; cbv
  try rfl
theorem node12163_eq : Flapjack.WordAlloc.removeDeadStructural input12163 value6087 value1 value2 = (output12163, value5, value1) := by
  rw [input12163_def, output12163_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12163 input12162)).val
theorem input12164_def : input12164 = (.seq input12163 input12162) := by
  unfold input12164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12163 output12162)).val
theorem output12164_def : output12164 = (.seq output12163 output12162) := by
  unfold output12164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12164_skip : Flapjack.WordAlloc.isSkip output12164 = false := by
  rw [output12164_def]
  conv => lhs; cbv
  try rfl
theorem node12164_eq : Flapjack.WordAlloc.removeDeadStructural input12164 value6086 value1 value2 = (output12164, value5, value1) := by
  rw [input12164_def, output12164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12162_eq]
  dsimp only
  rw [node12163_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12164 input12161)).val
theorem input12165_def : input12165 = (.seq input12164 input12161) := by
  unfold input12165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12164 output12161)).val
theorem output12165_def : output12165 = (.seq output12164 output12161) := by
  unfold output12165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12165_skip : Flapjack.WordAlloc.isSkip output12165 = false := by
  rw [output12165_def]
  conv => lhs; cbv
  try rfl
theorem node12165_eq : Flapjack.WordAlloc.removeDeadStructural input12165 value6085 value1 value2 = (output12165, value5, value1) := by
  rw [input12165_def, output12165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12161_eq]
  dsimp only
  rw [node12164_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12165 input12160)).val
theorem input12166_def : input12166 = (.seq input12165 input12160) := by
  unfold input12166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12165 output12160)).val
theorem output12166_def : output12166 = (.seq output12165 output12160) := by
  unfold output12166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12166_skip : Flapjack.WordAlloc.isSkip output12166 = false := by
  rw [output12166_def]
  conv => lhs; cbv
  try rfl
theorem node12166_eq : Flapjack.WordAlloc.removeDeadStructural input12166 value6084 value1 value2 = (output12166, value5, value1) := by
  rw [input12166_def, output12166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12160_eq]
  dsimp only
  rw [node12165_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12166 input12159)).val
theorem input12167_def : input12167 = (.seq input12166 input12159) := by
  unfold input12167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12166 output12159)).val
theorem output12167_def : output12167 = (.seq output12166 output12159) := by
  unfold output12167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12167_skip : Flapjack.WordAlloc.isSkip output12167 = false := by
  rw [output12167_def]
  conv => lhs; cbv
  try rfl
theorem node12167_eq : Flapjack.WordAlloc.removeDeadStructural input12167 value6083 value1 value2 = (output12167, value5, value1) := by
  rw [input12167_def, output12167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12159_eq]
  dsimp only
  rw [node12166_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6088 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3769 (Flapjack.WordLangAddr.addr 3773 0#64)))).val
theorem input12168_def : input12168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3769 (Flapjack.WordLangAddr.addr 3773 0#64))) := by
  unfold input12168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3769 (Flapjack.WordLangAddr.addr 3773 0#64)))).val
theorem output12168_def : output12168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3769 (Flapjack.WordLangAddr.addr 3773 0#64))) := by
  unfold output12168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12168_skip : Flapjack.WordAlloc.isSkip output12168 = false := by
  rw [output12168_def]
  conv => lhs; cbv
  try rfl
theorem node12168_eq : Flapjack.WordAlloc.removeDeadStructural input12168 value5 value1 value2 = (output12168, value6088, value1) := by
  rw [input12168_def, output12168_def]
  try (conv => lhs; cbv)
  try rfl

def value6089 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input12169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3773, 3761)])).val
theorem input12169_def : input12169 = (Flapjack.WordLangProgHOL.move 0 [(3773, 3761)]) := by
  unfold input12169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3773, 3761)])).val
theorem output12169_def : output12169 = (Flapjack.WordLangProgHOL.move 0 [(3773, 3761)]) := by
  unfold output12169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12169_skip : Flapjack.WordAlloc.isSkip output12169 = false := by
  rw [output12169_def]
  conv => lhs; cbv
  try rfl
theorem node12169_eq : Flapjack.WordAlloc.removeDeadStructural input12169 value6088 value1 value2 = (output12169, value6089, value1) := by
  rw [input12169_def, output12169_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12169 input12168)).val
theorem input12170_def : input12170 = (.seq input12169 input12168) := by
  unfold input12170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12169 output12168)).val
theorem output12170_def : output12170 = (.seq output12169 output12168) := by
  unfold output12170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12170_skip : Flapjack.WordAlloc.isSkip output12170 = false := by
  rw [output12170_def]
  conv => lhs; cbv
  try rfl
theorem node12170_eq : Flapjack.WordAlloc.removeDeadStructural input12170 value5 value1 value2 = (output12170, value6089, value1) := by
  rw [input12170_def, output12170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12168_eq]
  dsimp only
  rw [node12169_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6090 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3769 1802798568193066599#64))).val
theorem input12171_def : input12171 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3769 1802798568193066599#64)) := by
  unfold input12171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3769 1802798568193066599#64))).val
theorem output12171_def : output12171 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3769 1802798568193066599#64)) := by
  unfold output12171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12171_skip : Flapjack.WordAlloc.isSkip output12171 = false := by
  rw [output12171_def]
  conv => lhs; cbv
  try rfl
theorem node12171_eq : Flapjack.WordAlloc.removeDeadStructural input12171 value6089 value1 value2 = (output12171, value6090, value1) := by
  rw [input12171_def, output12171_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3765 1802798568193066599#64))).val
theorem input12172_def : input12172 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3765 1802798568193066599#64)) := by
  unfold input12172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12172_def : output12172 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12172_skip : Flapjack.WordAlloc.isSkip output12172 = true := by
  rw [output12172_def]
  conv => lhs; cbv
  try rfl
theorem node12172_eq : Flapjack.WordAlloc.removeDeadStructural input12172 value6090 value1 value2 = (output12172, value6090, value1) := by
  rw [input12172_def, output12172_def]
  try (conv => lhs; cbv)
  try rfl

def value6091 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3761 3757 (Flapjack.WordRegImm.imm 904#64))))).val
theorem input12173_def : input12173 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3761 3757 (Flapjack.WordRegImm.imm 904#64)))) := by
  unfold input12173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3761 3757 (Flapjack.WordRegImm.imm 904#64))))).val
theorem output12173_def : output12173 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3761 3757 (Flapjack.WordRegImm.imm 904#64)))) := by
  unfold output12173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12173_skip : Flapjack.WordAlloc.isSkip output12173 = false := by
  rw [output12173_def]
  conv => lhs; cbv
  try rfl
theorem node12173_eq : Flapjack.WordAlloc.removeDeadStructural input12173 value6090 value1 value2 = (output12173, value6091, value1) := by
  rw [input12173_def, output12173_def]
  try (conv => lhs; cbv)
  try rfl

def value6092 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3757 (Flapjack.WordLangAddr.addr 3753 18446744073709551104#64)))).val
theorem input12174_def : input12174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3757 (Flapjack.WordLangAddr.addr 3753 18446744073709551104#64))) := by
  unfold input12174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3757 (Flapjack.WordLangAddr.addr 3753 18446744073709551104#64)))).val
theorem output12174_def : output12174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3757 (Flapjack.WordLangAddr.addr 3753 18446744073709551104#64))) := by
  unfold output12174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12174_skip : Flapjack.WordAlloc.isSkip output12174 = false := by
  rw [output12174_def]
  conv => lhs; cbv
  try rfl
theorem node12174_eq : Flapjack.WordAlloc.removeDeadStructural input12174 value6091 value1 value2 = (output12174, value6092, value1) := by
  rw [input12174_def, output12174_def]
  try (conv => lhs; cbv)
  try rfl

def value6093 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3753 3749)).val
theorem input12175_def : input12175 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3753 3749) := by
  unfold input12175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3753 3749)).val
theorem output12175_def : output12175 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3753 3749) := by
  unfold output12175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12175_skip : Flapjack.WordAlloc.isSkip output12175 = false := by
  rw [output12175_def]
  conv => lhs; cbv
  try rfl
theorem node12175_eq : Flapjack.WordAlloc.removeDeadStructural input12175 value6092 value1 value2 = (output12175, value6093, value1) := by
  rw [input12175_def, output12175_def]
  try (conv => lhs; cbv)
  try rfl

def value6094 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3749 3745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12176_def : input12176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3749 3745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3749 3745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12176_def : output12176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3749 3745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12176_skip : Flapjack.WordAlloc.isSkip output12176 = false := by
  rw [output12176_def]
  conv => lhs; cbv
  try rfl
theorem node12176_eq : Flapjack.WordAlloc.removeDeadStructural input12176 value6093 value1 value2 = (output12176, value6094, value1) := by
  rw [input12176_def, output12176_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3745 Flapjack.WordStore.heapLength)).val
theorem input12177_def : input12177 = (Flapjack.WordLangProgHOL.get 3745 Flapjack.WordStore.heapLength) := by
  unfold input12177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3745 Flapjack.WordStore.heapLength)).val
theorem output12177_def : output12177 = (Flapjack.WordLangProgHOL.get 3745 Flapjack.WordStore.heapLength) := by
  unfold output12177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12177_skip : Flapjack.WordAlloc.isSkip output12177 = false := by
  rw [output12177_def]
  conv => lhs; cbv
  try rfl
theorem node12177_eq : Flapjack.WordAlloc.removeDeadStructural input12177 value6094 value1 value2 = (output12177, value5, value1) := by
  rw [input12177_def, output12177_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12177 input12176)).val
theorem input12178_def : input12178 = (.seq input12177 input12176) := by
  unfold input12178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12177 output12176)).val
theorem output12178_def : output12178 = (.seq output12177 output12176) := by
  unfold output12178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12178_skip : Flapjack.WordAlloc.isSkip output12178 = false := by
  rw [output12178_def]
  conv => lhs; cbv
  try rfl
theorem node12178_eq : Flapjack.WordAlloc.removeDeadStructural input12178 value6093 value1 value2 = (output12178, value5, value1) := by
  rw [input12178_def, output12178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12176_eq]
  dsimp only
  rw [node12177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12178 input12175)).val
theorem input12179_def : input12179 = (.seq input12178 input12175) := by
  unfold input12179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12178 output12175)).val
theorem output12179_def : output12179 = (.seq output12178 output12175) := by
  unfold output12179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12179_skip : Flapjack.WordAlloc.isSkip output12179 = false := by
  rw [output12179_def]
  conv => lhs; cbv
  try rfl
theorem node12179_eq : Flapjack.WordAlloc.removeDeadStructural input12179 value6092 value1 value2 = (output12179, value5, value1) := by
  rw [input12179_def, output12179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12175_eq]
  dsimp only
  rw [node12178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12179 input12174)).val
theorem input12180_def : input12180 = (.seq input12179 input12174) := by
  unfold input12180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12179 output12174)).val
theorem output12180_def : output12180 = (.seq output12179 output12174) := by
  unfold output12180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12180_skip : Flapjack.WordAlloc.isSkip output12180 = false := by
  rw [output12180_def]
  conv => lhs; cbv
  try rfl
theorem node12180_eq : Flapjack.WordAlloc.removeDeadStructural input12180 value6091 value1 value2 = (output12180, value5, value1) := by
  rw [input12180_def, output12180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12174_eq]
  dsimp only
  rw [node12179_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12180 input12173)).val
theorem input12181_def : input12181 = (.seq input12180 input12173) := by
  unfold input12181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12180 output12173)).val
theorem output12181_def : output12181 = (.seq output12180 output12173) := by
  unfold output12181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12181_skip : Flapjack.WordAlloc.isSkip output12181 = false := by
  rw [output12181_def]
  conv => lhs; cbv
  try rfl
theorem node12181_eq : Flapjack.WordAlloc.removeDeadStructural input12181 value6090 value1 value2 = (output12181, value5, value1) := by
  rw [input12181_def, output12181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12173_eq]
  dsimp only
  rw [node12180_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6095 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3737 (Flapjack.WordLangAddr.addr 3741 0#64)))).val
theorem input12182_def : input12182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3737 (Flapjack.WordLangAddr.addr 3741 0#64))) := by
  unfold input12182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3737 (Flapjack.WordLangAddr.addr 3741 0#64)))).val
theorem output12182_def : output12182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3737 (Flapjack.WordLangAddr.addr 3741 0#64))) := by
  unfold output12182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12182_skip : Flapjack.WordAlloc.isSkip output12182 = false := by
  rw [output12182_def]
  conv => lhs; cbv
  try rfl
theorem node12182_eq : Flapjack.WordAlloc.removeDeadStructural input12182 value5 value1 value2 = (output12182, value6095, value1) := by
  rw [input12182_def, output12182_def]
  try (conv => lhs; cbv)
  try rfl

def value6096 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3741, 3729)])).val
theorem input12183_def : input12183 = (Flapjack.WordLangProgHOL.move 0 [(3741, 3729)]) := by
  unfold input12183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3741, 3729)])).val
theorem output12183_def : output12183 = (Flapjack.WordLangProgHOL.move 0 [(3741, 3729)]) := by
  unfold output12183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12183_skip : Flapjack.WordAlloc.isSkip output12183 = false := by
  rw [output12183_def]
  conv => lhs; cbv
  try rfl
theorem node12183_eq : Flapjack.WordAlloc.removeDeadStructural input12183 value6095 value1 value2 = (output12183, value6096, value1) := by
  rw [input12183_def, output12183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12183 input12182)).val
theorem input12184_def : input12184 = (.seq input12183 input12182) := by
  unfold input12184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12183 output12182)).val
theorem output12184_def : output12184 = (.seq output12183 output12182) := by
  unfold output12184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12184_skip : Flapjack.WordAlloc.isSkip output12184 = false := by
  rw [output12184_def]
  conv => lhs; cbv
  try rfl
theorem node12184_eq : Flapjack.WordAlloc.removeDeadStructural input12184 value5 value1 value2 = (output12184, value6096, value1) := by
  rw [input12184_def, output12184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12182_eq]
  dsimp only
  rw [node12183_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6097 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3737 13993175198059990303#64))).val
theorem input12185_def : input12185 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3737 13993175198059990303#64)) := by
  unfold input12185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3737 13993175198059990303#64))).val
theorem output12185_def : output12185 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3737 13993175198059990303#64)) := by
  unfold output12185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12185_skip : Flapjack.WordAlloc.isSkip output12185 = false := by
  rw [output12185_def]
  conv => lhs; cbv
  try rfl
theorem node12185_eq : Flapjack.WordAlloc.removeDeadStructural input12185 value6096 value1 value2 = (output12185, value6097, value1) := by
  rw [input12185_def, output12185_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3733 13993175198059990303#64))).val
theorem input12186_def : input12186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3733 13993175198059990303#64)) := by
  unfold input12186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12186_def : output12186 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12186_skip : Flapjack.WordAlloc.isSkip output12186 = true := by
  rw [output12186_def]
  conv => lhs; cbv
  try rfl
theorem node12186_eq : Flapjack.WordAlloc.removeDeadStructural input12186 value6097 value1 value2 = (output12186, value6097, value1) := by
  rw [input12186_def, output12186_def]
  try (conv => lhs; cbv)
  try rfl

def value6098 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3729 3725 (Flapjack.WordRegImm.imm 896#64))))).val
theorem input12187_def : input12187 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3729 3725 (Flapjack.WordRegImm.imm 896#64)))) := by
  unfold input12187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3729 3725 (Flapjack.WordRegImm.imm 896#64))))).val
theorem output12187_def : output12187 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3729 3725 (Flapjack.WordRegImm.imm 896#64)))) := by
  unfold output12187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12187_skip : Flapjack.WordAlloc.isSkip output12187 = false := by
  rw [output12187_def]
  conv => lhs; cbv
  try rfl
theorem node12187_eq : Flapjack.WordAlloc.removeDeadStructural input12187 value6097 value1 value2 = (output12187, value6098, value1) := by
  rw [input12187_def, output12187_def]
  try (conv => lhs; cbv)
  try rfl

def value6099 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3725 (Flapjack.WordLangAddr.addr 3721 18446744073709551104#64)))).val
theorem input12188_def : input12188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3725 (Flapjack.WordLangAddr.addr 3721 18446744073709551104#64))) := by
  unfold input12188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3725 (Flapjack.WordLangAddr.addr 3721 18446744073709551104#64)))).val
theorem output12188_def : output12188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3725 (Flapjack.WordLangAddr.addr 3721 18446744073709551104#64))) := by
  unfold output12188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12188_skip : Flapjack.WordAlloc.isSkip output12188 = false := by
  rw [output12188_def]
  conv => lhs; cbv
  try rfl
theorem node12188_eq : Flapjack.WordAlloc.removeDeadStructural input12188 value6098 value1 value2 = (output12188, value6099, value1) := by
  rw [input12188_def, output12188_def]
  try (conv => lhs; cbv)
  try rfl

def value6100 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3721 3717)).val
theorem input12189_def : input12189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3721 3717) := by
  unfold input12189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3721 3717)).val
theorem output12189_def : output12189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3721 3717) := by
  unfold output12189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12189_skip : Flapjack.WordAlloc.isSkip output12189 = false := by
  rw [output12189_def]
  conv => lhs; cbv
  try rfl
theorem node12189_eq : Flapjack.WordAlloc.removeDeadStructural input12189 value6099 value1 value2 = (output12189, value6100, value1) := by
  rw [input12189_def, output12189_def]
  try (conv => lhs; cbv)
  try rfl

def value6101 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3717 3713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12190_def : input12190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3717 3713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3717 3713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12190_def : output12190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3717 3713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12190_skip : Flapjack.WordAlloc.isSkip output12190 = false := by
  rw [output12190_def]
  conv => lhs; cbv
  try rfl
theorem node12190_eq : Flapjack.WordAlloc.removeDeadStructural input12190 value6100 value1 value2 = (output12190, value6101, value1) := by
  rw [input12190_def, output12190_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3713 Flapjack.WordStore.heapLength)).val
theorem input12191_def : input12191 = (Flapjack.WordLangProgHOL.get 3713 Flapjack.WordStore.heapLength) := by
  unfold input12191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3713 Flapjack.WordStore.heapLength)).val
theorem output12191_def : output12191 = (Flapjack.WordLangProgHOL.get 3713 Flapjack.WordStore.heapLength) := by
  unfold output12191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12191_skip : Flapjack.WordAlloc.isSkip output12191 = false := by
  rw [output12191_def]
  conv => lhs; cbv
  try rfl
theorem node12191_eq : Flapjack.WordAlloc.removeDeadStructural input12191 value6101 value1 value2 = (output12191, value5, value1) := by
  rw [input12191_def, output12191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12191 input12190)).val
theorem input12192_def : input12192 = (.seq input12191 input12190) := by
  unfold input12192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12191 output12190)).val
theorem output12192_def : output12192 = (.seq output12191 output12190) := by
  unfold output12192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12192_skip : Flapjack.WordAlloc.isSkip output12192 = false := by
  rw [output12192_def]
  conv => lhs; cbv
  try rfl
theorem node12192_eq : Flapjack.WordAlloc.removeDeadStructural input12192 value6100 value1 value2 = (output12192, value5, value1) := by
  rw [input12192_def, output12192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12190_eq]
  dsimp only
  rw [node12191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12192 input12189)).val
theorem input12193_def : input12193 = (.seq input12192 input12189) := by
  unfold input12193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12192 output12189)).val
theorem output12193_def : output12193 = (.seq output12192 output12189) := by
  unfold output12193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12193_skip : Flapjack.WordAlloc.isSkip output12193 = false := by
  rw [output12193_def]
  conv => lhs; cbv
  try rfl
theorem node12193_eq : Flapjack.WordAlloc.removeDeadStructural input12193 value6099 value1 value2 = (output12193, value5, value1) := by
  rw [input12193_def, output12193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12189_eq]
  dsimp only
  rw [node12192_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12193 input12188)).val
theorem input12194_def : input12194 = (.seq input12193 input12188) := by
  unfold input12194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12193 output12188)).val
theorem output12194_def : output12194 = (.seq output12193 output12188) := by
  unfold output12194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12194_skip : Flapjack.WordAlloc.isSkip output12194 = false := by
  rw [output12194_def]
  conv => lhs; cbv
  try rfl
theorem node12194_eq : Flapjack.WordAlloc.removeDeadStructural input12194 value6098 value1 value2 = (output12194, value5, value1) := by
  rw [input12194_def, output12194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12188_eq]
  dsimp only
  rw [node12193_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12194 input12187)).val
theorem input12195_def : input12195 = (.seq input12194 input12187) := by
  unfold input12195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12194 output12187)).val
theorem output12195_def : output12195 = (.seq output12194 output12187) := by
  unfold output12195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12195_skip : Flapjack.WordAlloc.isSkip output12195 = false := by
  rw [output12195_def]
  conv => lhs; cbv
  try rfl
theorem node12195_eq : Flapjack.WordAlloc.removeDeadStructural input12195 value6097 value1 value2 = (output12195, value5, value1) := by
  rw [input12195_def, output12195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12187_eq]
  dsimp only
  rw [node12194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6102 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3705 (Flapjack.WordLangAddr.addr 3709 0#64)))).val
theorem input12196_def : input12196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3705 (Flapjack.WordLangAddr.addr 3709 0#64))) := by
  unfold input12196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3705 (Flapjack.WordLangAddr.addr 3709 0#64)))).val
theorem output12196_def : output12196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3705 (Flapjack.WordLangAddr.addr 3709 0#64))) := by
  unfold output12196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12196_skip : Flapjack.WordAlloc.isSkip output12196 = false := by
  rw [output12196_def]
  conv => lhs; cbv
  try rfl
theorem node12196_eq : Flapjack.WordAlloc.removeDeadStructural input12196 value5 value1 value2 = (output12196, value6102, value1) := by
  rw [input12196_def, output12196_def]
  try (conv => lhs; cbv)
  try rfl

def value6103 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input12197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3709, 3697)])).val
theorem input12197_def : input12197 = (Flapjack.WordLangProgHOL.move 0 [(3709, 3697)]) := by
  unfold input12197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3709, 3697)])).val
theorem output12197_def : output12197 = (Flapjack.WordLangProgHOL.move 0 [(3709, 3697)]) := by
  unfold output12197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12197_skip : Flapjack.WordAlloc.isSkip output12197 = false := by
  rw [output12197_def]
  conv => lhs; cbv
  try rfl
theorem node12197_eq : Flapjack.WordAlloc.removeDeadStructural input12197 value6102 value1 value2 = (output12197, value6103, value1) := by
  rw [input12197_def, output12197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12197 input12196)).val
theorem input12198_def : input12198 = (.seq input12197 input12196) := by
  unfold input12198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12197 output12196)).val
theorem output12198_def : output12198 = (.seq output12197 output12196) := by
  unfold output12198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12198_skip : Flapjack.WordAlloc.isSkip output12198 = false := by
  rw [output12198_def]
  conv => lhs; cbv
  try rfl
theorem node12198_eq : Flapjack.WordAlloc.removeDeadStructural input12198 value5 value1 value2 = (output12198, value6103, value1) := by
  rw [input12198_def, output12198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12196_eq]
  dsimp only
  rw [node12197_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6104 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3705 1141103941765652303#64))).val
theorem input12199_def : input12199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3705 1141103941765652303#64)) := by
  unfold input12199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3705 1141103941765652303#64))).val
theorem output12199_def : output12199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3705 1141103941765652303#64)) := by
  unfold output12199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12199_skip : Flapjack.WordAlloc.isSkip output12199 = false := by
  rw [output12199_def]
  conv => lhs; cbv
  try rfl
theorem node12199_eq : Flapjack.WordAlloc.removeDeadStructural input12199 value6103 value1 value2 = (output12199, value6104, value1) := by
  rw [input12199_def, output12199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3701 1141103941765652303#64))).val
theorem input12200_def : input12200 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3701 1141103941765652303#64)) := by
  unfold input12200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12200_def : output12200 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12200_skip : Flapjack.WordAlloc.isSkip output12200 = true := by
  rw [output12200_def]
  conv => lhs; cbv
  try rfl
theorem node12200_eq : Flapjack.WordAlloc.removeDeadStructural input12200 value6104 value1 value2 = (output12200, value6104, value1) := by
  rw [input12200_def, output12200_def]
  try (conv => lhs; cbv)
  try rfl

def value6105 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3697 3693 (Flapjack.WordRegImm.imm 888#64))))).val
theorem input12201_def : input12201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3697 3693 (Flapjack.WordRegImm.imm 888#64)))) := by
  unfold input12201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3697 3693 (Flapjack.WordRegImm.imm 888#64))))).val
theorem output12201_def : output12201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3697 3693 (Flapjack.WordRegImm.imm 888#64)))) := by
  unfold output12201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12201_skip : Flapjack.WordAlloc.isSkip output12201 = false := by
  rw [output12201_def]
  conv => lhs; cbv
  try rfl
theorem node12201_eq : Flapjack.WordAlloc.removeDeadStructural input12201 value6104 value1 value2 = (output12201, value6105, value1) := by
  rw [input12201_def, output12201_def]
  try (conv => lhs; cbv)
  try rfl

def value6106 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3693 (Flapjack.WordLangAddr.addr 3689 18446744073709551104#64)))).val
theorem input12202_def : input12202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3693 (Flapjack.WordLangAddr.addr 3689 18446744073709551104#64))) := by
  unfold input12202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3693 (Flapjack.WordLangAddr.addr 3689 18446744073709551104#64)))).val
theorem output12202_def : output12202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3693 (Flapjack.WordLangAddr.addr 3689 18446744073709551104#64))) := by
  unfold output12202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12202_skip : Flapjack.WordAlloc.isSkip output12202 = false := by
  rw [output12202_def]
  conv => lhs; cbv
  try rfl
theorem node12202_eq : Flapjack.WordAlloc.removeDeadStructural input12202 value6105 value1 value2 = (output12202, value6106, value1) := by
  rw [input12202_def, output12202_def]
  try (conv => lhs; cbv)
  try rfl

def value6107 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3689 3685)).val
theorem input12203_def : input12203 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3689 3685) := by
  unfold input12203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3689 3685)).val
theorem output12203_def : output12203 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3689 3685) := by
  unfold output12203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12203_skip : Flapjack.WordAlloc.isSkip output12203 = false := by
  rw [output12203_def]
  conv => lhs; cbv
  try rfl
theorem node12203_eq : Flapjack.WordAlloc.removeDeadStructural input12203 value6106 value1 value2 = (output12203, value6107, value1) := by
  rw [input12203_def, output12203_def]
  try (conv => lhs; cbv)
  try rfl

def value6108 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3685 3681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12204_def : input12204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3685 3681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3685 3681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12204_def : output12204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3685 3681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12204_skip : Flapjack.WordAlloc.isSkip output12204 = false := by
  rw [output12204_def]
  conv => lhs; cbv
  try rfl
theorem node12204_eq : Flapjack.WordAlloc.removeDeadStructural input12204 value6107 value1 value2 = (output12204, value6108, value1) := by
  rw [input12204_def, output12204_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3681 Flapjack.WordStore.heapLength)).val
theorem input12205_def : input12205 = (Flapjack.WordLangProgHOL.get 3681 Flapjack.WordStore.heapLength) := by
  unfold input12205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3681 Flapjack.WordStore.heapLength)).val
theorem output12205_def : output12205 = (Flapjack.WordLangProgHOL.get 3681 Flapjack.WordStore.heapLength) := by
  unfold output12205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12205_skip : Flapjack.WordAlloc.isSkip output12205 = false := by
  rw [output12205_def]
  conv => lhs; cbv
  try rfl
theorem node12205_eq : Flapjack.WordAlloc.removeDeadStructural input12205 value6108 value1 value2 = (output12205, value5, value1) := by
  rw [input12205_def, output12205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12205 input12204)).val
theorem input12206_def : input12206 = (.seq input12205 input12204) := by
  unfold input12206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12205 output12204)).val
theorem output12206_def : output12206 = (.seq output12205 output12204) := by
  unfold output12206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12206_skip : Flapjack.WordAlloc.isSkip output12206 = false := by
  rw [output12206_def]
  conv => lhs; cbv
  try rfl
theorem node12206_eq : Flapjack.WordAlloc.removeDeadStructural input12206 value6107 value1 value2 = (output12206, value5, value1) := by
  rw [input12206_def, output12206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12204_eq]
  dsimp only
  rw [node12205_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12206 input12203)).val
theorem input12207_def : input12207 = (.seq input12206 input12203) := by
  unfold input12207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12206 output12203)).val
theorem output12207_def : output12207 = (.seq output12206 output12203) := by
  unfold output12207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12207_skip : Flapjack.WordAlloc.isSkip output12207 = false := by
  rw [output12207_def]
  conv => lhs; cbv
  try rfl
theorem node12207_eq : Flapjack.WordAlloc.removeDeadStructural input12207 value6106 value1 value2 = (output12207, value5, value1) := by
  rw [input12207_def, output12207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12203_eq]
  dsimp only
  rw [node12206_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12207 input12202)).val
theorem input12208_def : input12208 = (.seq input12207 input12202) := by
  unfold input12208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12207 output12202)).val
theorem output12208_def : output12208 = (.seq output12207 output12202) := by
  unfold output12208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12208_skip : Flapjack.WordAlloc.isSkip output12208 = false := by
  rw [output12208_def]
  conv => lhs; cbv
  try rfl
theorem node12208_eq : Flapjack.WordAlloc.removeDeadStructural input12208 value6105 value1 value2 = (output12208, value5, value1) := by
  rw [input12208_def, output12208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12202_eq]
  dsimp only
  rw [node12207_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12208 input12201)).val
theorem input12209_def : input12209 = (.seq input12208 input12201) := by
  unfold input12209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12208 output12201)).val
theorem output12209_def : output12209 = (.seq output12208 output12201) := by
  unfold output12209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12209_skip : Flapjack.WordAlloc.isSkip output12209 = false := by
  rw [output12209_def]
  conv => lhs; cbv
  try rfl
theorem node12209_eq : Flapjack.WordAlloc.removeDeadStructural input12209 value6104 value1 value2 = (output12209, value5, value1) := by
  rw [input12209_def, output12209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12201_eq]
  dsimp only
  rw [node12208_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6109 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3673 (Flapjack.WordLangAddr.addr 3677 0#64)))).val
theorem input12210_def : input12210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3673 (Flapjack.WordLangAddr.addr 3677 0#64))) := by
  unfold input12210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3673 (Flapjack.WordLangAddr.addr 3677 0#64)))).val
theorem output12210_def : output12210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3673 (Flapjack.WordLangAddr.addr 3677 0#64))) := by
  unfold output12210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12210_skip : Flapjack.WordAlloc.isSkip output12210 = false := by
  rw [output12210_def]
  conv => lhs; cbv
  try rfl
theorem node12210_eq : Flapjack.WordAlloc.removeDeadStructural input12210 value5 value1 value2 = (output12210, value6109, value1) := by
  rw [input12210_def, output12210_def]
  try (conv => lhs; cbv)
  try rfl

def value6110 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3677, 3665)])).val
theorem input12211_def : input12211 = (Flapjack.WordLangProgHOL.move 0 [(3677, 3665)]) := by
  unfold input12211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3677, 3665)])).val
theorem output12211_def : output12211 = (Flapjack.WordLangProgHOL.move 0 [(3677, 3665)]) := by
  unfold output12211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12211_skip : Flapjack.WordAlloc.isSkip output12211 = false := by
  rw [output12211_def]
  conv => lhs; cbv
  try rfl
theorem node12211_eq : Flapjack.WordAlloc.removeDeadStructural input12211 value6109 value1 value2 = (output12211, value6110, value1) := by
  rw [input12211_def, output12211_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12211 input12210)).val
theorem input12212_def : input12212 = (.seq input12211 input12210) := by
  unfold input12212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12211 output12210)).val
theorem output12212_def : output12212 = (.seq output12211 output12210) := by
  unfold output12212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12212_skip : Flapjack.WordAlloc.isSkip output12212 = false := by
  rw [output12212_def]
  conv => lhs; cbv
  try rfl
theorem node12212_eq : Flapjack.WordAlloc.removeDeadStructural input12212 value5 value1 value2 = (output12212, value6110, value1) := by
  rw [input12212_def, output12212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12210_eq]
  dsimp only
  rw [node12211_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6111 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3673 8873291758750579140#64))).val
theorem input12213_def : input12213 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3673 8873291758750579140#64)) := by
  unfold input12213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3673 8873291758750579140#64))).val
theorem output12213_def : output12213 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3673 8873291758750579140#64)) := by
  unfold output12213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12213_skip : Flapjack.WordAlloc.isSkip output12213 = false := by
  rw [output12213_def]
  conv => lhs; cbv
  try rfl
theorem node12213_eq : Flapjack.WordAlloc.removeDeadStructural input12213 value6110 value1 value2 = (output12213, value6111, value1) := by
  rw [input12213_def, output12213_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3669 8873291758750579140#64))).val
theorem input12214_def : input12214 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3669 8873291758750579140#64)) := by
  unfold input12214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12214_def : output12214 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12214_skip : Flapjack.WordAlloc.isSkip output12214 = true := by
  rw [output12214_def]
  conv => lhs; cbv
  try rfl
theorem node12214_eq : Flapjack.WordAlloc.removeDeadStructural input12214 value6111 value1 value2 = (output12214, value6111, value1) := by
  rw [input12214_def, output12214_def]
  try (conv => lhs; cbv)
  try rfl

def value6112 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3665 3661 (Flapjack.WordRegImm.imm 880#64))))).val
theorem input12215_def : input12215 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3665 3661 (Flapjack.WordRegImm.imm 880#64)))) := by
  unfold input12215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3665 3661 (Flapjack.WordRegImm.imm 880#64))))).val
theorem output12215_def : output12215 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3665 3661 (Flapjack.WordRegImm.imm 880#64)))) := by
  unfold output12215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12215_skip : Flapjack.WordAlloc.isSkip output12215 = false := by
  rw [output12215_def]
  conv => lhs; cbv
  try rfl
theorem node12215_eq : Flapjack.WordAlloc.removeDeadStructural input12215 value6111 value1 value2 = (output12215, value6112, value1) := by
  rw [input12215_def, output12215_def]
  try (conv => lhs; cbv)
  try rfl

def value6113 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3661 (Flapjack.WordLangAddr.addr 3657 18446744073709551104#64)))).val
theorem input12216_def : input12216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3661 (Flapjack.WordLangAddr.addr 3657 18446744073709551104#64))) := by
  unfold input12216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3661 (Flapjack.WordLangAddr.addr 3657 18446744073709551104#64)))).val
theorem output12216_def : output12216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3661 (Flapjack.WordLangAddr.addr 3657 18446744073709551104#64))) := by
  unfold output12216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12216_skip : Flapjack.WordAlloc.isSkip output12216 = false := by
  rw [output12216_def]
  conv => lhs; cbv
  try rfl
theorem node12216_eq : Flapjack.WordAlloc.removeDeadStructural input12216 value6112 value1 value2 = (output12216, value6113, value1) := by
  rw [input12216_def, output12216_def]
  try (conv => lhs; cbv)
  try rfl

def value6114 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3657 3653)).val
theorem input12217_def : input12217 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3657 3653) := by
  unfold input12217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3657 3653)).val
theorem output12217_def : output12217 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3657 3653) := by
  unfold output12217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12217_skip : Flapjack.WordAlloc.isSkip output12217 = false := by
  rw [output12217_def]
  conv => lhs; cbv
  try rfl
theorem node12217_eq : Flapjack.WordAlloc.removeDeadStructural input12217 value6113 value1 value2 = (output12217, value6114, value1) := by
  rw [input12217_def, output12217_def]
  try (conv => lhs; cbv)
  try rfl

def value6115 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3653 3649 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12218_def : input12218 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3653 3649 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3653 3649 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12218_def : output12218 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3653 3649 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12218_skip : Flapjack.WordAlloc.isSkip output12218 = false := by
  rw [output12218_def]
  conv => lhs; cbv
  try rfl
theorem node12218_eq : Flapjack.WordAlloc.removeDeadStructural input12218 value6114 value1 value2 = (output12218, value6115, value1) := by
  rw [input12218_def, output12218_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3649 Flapjack.WordStore.heapLength)).val
theorem input12219_def : input12219 = (Flapjack.WordLangProgHOL.get 3649 Flapjack.WordStore.heapLength) := by
  unfold input12219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3649 Flapjack.WordStore.heapLength)).val
theorem output12219_def : output12219 = (Flapjack.WordLangProgHOL.get 3649 Flapjack.WordStore.heapLength) := by
  unfold output12219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12219_skip : Flapjack.WordAlloc.isSkip output12219 = false := by
  rw [output12219_def]
  conv => lhs; cbv
  try rfl
theorem node12219_eq : Flapjack.WordAlloc.removeDeadStructural input12219 value6115 value1 value2 = (output12219, value5, value1) := by
  rw [input12219_def, output12219_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12219 input12218)).val
theorem input12220_def : input12220 = (.seq input12219 input12218) := by
  unfold input12220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12219 output12218)).val
theorem output12220_def : output12220 = (.seq output12219 output12218) := by
  unfold output12220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12220_skip : Flapjack.WordAlloc.isSkip output12220 = false := by
  rw [output12220_def]
  conv => lhs; cbv
  try rfl
theorem node12220_eq : Flapjack.WordAlloc.removeDeadStructural input12220 value6114 value1 value2 = (output12220, value5, value1) := by
  rw [input12220_def, output12220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12218_eq]
  dsimp only
  rw [node12219_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12220 input12217)).val
theorem input12221_def : input12221 = (.seq input12220 input12217) := by
  unfold input12221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12220 output12217)).val
theorem output12221_def : output12221 = (.seq output12220 output12217) := by
  unfold output12221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12221_skip : Flapjack.WordAlloc.isSkip output12221 = false := by
  rw [output12221_def]
  conv => lhs; cbv
  try rfl
theorem node12221_eq : Flapjack.WordAlloc.removeDeadStructural input12221 value6113 value1 value2 = (output12221, value5, value1) := by
  rw [input12221_def, output12221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12217_eq]
  dsimp only
  rw [node12220_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12221 input12216)).val
theorem input12222_def : input12222 = (.seq input12221 input12216) := by
  unfold input12222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12221 output12216)).val
theorem output12222_def : output12222 = (.seq output12221 output12216) := by
  unfold output12222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12222_skip : Flapjack.WordAlloc.isSkip output12222 = false := by
  rw [output12222_def]
  conv => lhs; cbv
  try rfl
theorem node12222_eq : Flapjack.WordAlloc.removeDeadStructural input12222 value6112 value1 value2 = (output12222, value5, value1) := by
  rw [input12222_def, output12222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12216_eq]
  dsimp only
  rw [node12221_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12222 input12215)).val
theorem input12223_def : input12223 = (.seq input12222 input12215) := by
  unfold input12223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12222 output12215)).val
theorem output12223_def : output12223 = (.seq output12222 output12215) := by
  unfold output12223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12223_skip : Flapjack.WordAlloc.isSkip output12223 = false := by
  rw [output12223_def]
  conv => lhs; cbv
  try rfl
theorem node12223_eq : Flapjack.WordAlloc.removeDeadStructural input12223 value6111 value1 value2 = (output12223, value5, value1) := by
  rw [input12223_def, output12223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12215_eq]
  dsimp only
  rw [node12222_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6116 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3641 (Flapjack.WordLangAddr.addr 3645 0#64)))).val
theorem input12224_def : input12224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3641 (Flapjack.WordLangAddr.addr 3645 0#64))) := by
  unfold input12224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3641 (Flapjack.WordLangAddr.addr 3645 0#64)))).val
theorem output12224_def : output12224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3641 (Flapjack.WordLangAddr.addr 3645 0#64))) := by
  unfold output12224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12224_skip : Flapjack.WordAlloc.isSkip output12224 = false := by
  rw [output12224_def]
  conv => lhs; cbv
  try rfl
theorem node12224_eq : Flapjack.WordAlloc.removeDeadStructural input12224 value5 value1 value2 = (output12224, value6116, value1) := by
  rw [input12224_def, output12224_def]
  try (conv => lhs; cbv)
  try rfl

def value6117 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3645, 3633)])).val
theorem input12225_def : input12225 = (Flapjack.WordLangProgHOL.move 0 [(3645, 3633)]) := by
  unfold input12225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3645, 3633)])).val
theorem output12225_def : output12225 = (Flapjack.WordLangProgHOL.move 0 [(3645, 3633)]) := by
  unfold output12225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12225_skip : Flapjack.WordAlloc.isSkip output12225 = false := by
  rw [output12225_def]
  conv => lhs; cbv
  try rfl
theorem node12225_eq : Flapjack.WordAlloc.removeDeadStructural input12225 value6116 value1 value2 = (output12225, value6117, value1) := by
  rw [input12225_def, output12225_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12225 input12224)).val
theorem input12226_def : input12226 = (.seq input12225 input12224) := by
  unfold input12226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12225 output12224)).val
theorem output12226_def : output12226 = (.seq output12225 output12224) := by
  unfold output12226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12226_skip : Flapjack.WordAlloc.isSkip output12226 = false := by
  rw [output12226_def]
  conv => lhs; cbv
  try rfl
theorem node12226_eq : Flapjack.WordAlloc.removeDeadStructural input12226 value5 value1 value2 = (output12226, value6117, value1) := by
  rw [input12226_def, output12226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12224_eq]
  dsimp only
  rw [node12225_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6118 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3641 17761815663483519293#64))).val
theorem input12227_def : input12227 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3641 17761815663483519293#64)) := by
  unfold input12227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3641 17761815663483519293#64))).val
theorem output12227_def : output12227 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3641 17761815663483519293#64)) := by
  unfold output12227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12227_skip : Flapjack.WordAlloc.isSkip output12227 = false := by
  rw [output12227_def]
  conv => lhs; cbv
  try rfl
theorem node12227_eq : Flapjack.WordAlloc.removeDeadStructural input12227 value6117 value1 value2 = (output12227, value6118, value1) := by
  rw [input12227_def, output12227_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3637 17761815663483519293#64))).val
theorem input12228_def : input12228 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3637 17761815663483519293#64)) := by
  unfold input12228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12228_def : output12228 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12228_skip : Flapjack.WordAlloc.isSkip output12228 = true := by
  rw [output12228_def]
  conv => lhs; cbv
  try rfl
theorem node12228_eq : Flapjack.WordAlloc.removeDeadStructural input12228 value6118 value1 value2 = (output12228, value6118, value1) := by
  rw [input12228_def, output12228_def]
  try (conv => lhs; cbv)
  try rfl

def value6119 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3633 3629 (Flapjack.WordRegImm.imm 872#64))))).val
theorem input12229_def : input12229 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3633 3629 (Flapjack.WordRegImm.imm 872#64)))) := by
  unfold input12229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3633 3629 (Flapjack.WordRegImm.imm 872#64))))).val
theorem output12229_def : output12229 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3633 3629 (Flapjack.WordRegImm.imm 872#64)))) := by
  unfold output12229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12229_skip : Flapjack.WordAlloc.isSkip output12229 = false := by
  rw [output12229_def]
  conv => lhs; cbv
  try rfl
theorem node12229_eq : Flapjack.WordAlloc.removeDeadStructural input12229 value6118 value1 value2 = (output12229, value6119, value1) := by
  rw [input12229_def, output12229_def]
  try (conv => lhs; cbv)
  try rfl

def value6120 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3629 (Flapjack.WordLangAddr.addr 3625 18446744073709551104#64)))).val
theorem input12230_def : input12230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3629 (Flapjack.WordLangAddr.addr 3625 18446744073709551104#64))) := by
  unfold input12230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3629 (Flapjack.WordLangAddr.addr 3625 18446744073709551104#64)))).val
theorem output12230_def : output12230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3629 (Flapjack.WordLangAddr.addr 3625 18446744073709551104#64))) := by
  unfold output12230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12230_skip : Flapjack.WordAlloc.isSkip output12230 = false := by
  rw [output12230_def]
  conv => lhs; cbv
  try rfl
theorem node12230_eq : Flapjack.WordAlloc.removeDeadStructural input12230 value6119 value1 value2 = (output12230, value6120, value1) := by
  rw [input12230_def, output12230_def]
  try (conv => lhs; cbv)
  try rfl

def value6121 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3625 3621)).val
theorem input12231_def : input12231 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3625 3621) := by
  unfold input12231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3625 3621)).val
theorem output12231_def : output12231 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3625 3621) := by
  unfold output12231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12231_skip : Flapjack.WordAlloc.isSkip output12231 = false := by
  rw [output12231_def]
  conv => lhs; cbv
  try rfl
theorem node12231_eq : Flapjack.WordAlloc.removeDeadStructural input12231 value6120 value1 value2 = (output12231, value6121, value1) := by
  rw [input12231_def, output12231_def]
  try (conv => lhs; cbv)
  try rfl

def value6122 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3621 3617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12232_def : input12232 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3621 3617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3621 3617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12232_def : output12232 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3621 3617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12232_skip : Flapjack.WordAlloc.isSkip output12232 = false := by
  rw [output12232_def]
  conv => lhs; cbv
  try rfl
theorem node12232_eq : Flapjack.WordAlloc.removeDeadStructural input12232 value6121 value1 value2 = (output12232, value6122, value1) := by
  rw [input12232_def, output12232_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3617 Flapjack.WordStore.heapLength)).val
theorem input12233_def : input12233 = (Flapjack.WordLangProgHOL.get 3617 Flapjack.WordStore.heapLength) := by
  unfold input12233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3617 Flapjack.WordStore.heapLength)).val
theorem output12233_def : output12233 = (Flapjack.WordLangProgHOL.get 3617 Flapjack.WordStore.heapLength) := by
  unfold output12233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12233_skip : Flapjack.WordAlloc.isSkip output12233 = false := by
  rw [output12233_def]
  conv => lhs; cbv
  try rfl
theorem node12233_eq : Flapjack.WordAlloc.removeDeadStructural input12233 value6122 value1 value2 = (output12233, value5, value1) := by
  rw [input12233_def, output12233_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12233 input12232)).val
theorem input12234_def : input12234 = (.seq input12233 input12232) := by
  unfold input12234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12233 output12232)).val
theorem output12234_def : output12234 = (.seq output12233 output12232) := by
  unfold output12234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12234_skip : Flapjack.WordAlloc.isSkip output12234 = false := by
  rw [output12234_def]
  conv => lhs; cbv
  try rfl
theorem node12234_eq : Flapjack.WordAlloc.removeDeadStructural input12234 value6121 value1 value2 = (output12234, value5, value1) := by
  rw [input12234_def, output12234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12232_eq]
  dsimp only
  rw [node12233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12234 input12231)).val
theorem input12235_def : input12235 = (.seq input12234 input12231) := by
  unfold input12235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12234 output12231)).val
theorem output12235_def : output12235 = (.seq output12234 output12231) := by
  unfold output12235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12235_skip : Flapjack.WordAlloc.isSkip output12235 = false := by
  rw [output12235_def]
  conv => lhs; cbv
  try rfl
theorem node12235_eq : Flapjack.WordAlloc.removeDeadStructural input12235 value6120 value1 value2 = (output12235, value5, value1) := by
  rw [input12235_def, output12235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12231_eq]
  dsimp only
  rw [node12234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12235 input12230)).val
theorem input12236_def : input12236 = (.seq input12235 input12230) := by
  unfold input12236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12235 output12230)).val
theorem output12236_def : output12236 = (.seq output12235 output12230) := by
  unfold output12236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12236_skip : Flapjack.WordAlloc.isSkip output12236 = false := by
  rw [output12236_def]
  conv => lhs; cbv
  try rfl
theorem node12236_eq : Flapjack.WordAlloc.removeDeadStructural input12236 value6119 value1 value2 = (output12236, value5, value1) := by
  rw [input12236_def, output12236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12230_eq]
  dsimp only
  rw [node12235_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12236 input12229)).val
theorem input12237_def : input12237 = (.seq input12236 input12229) := by
  unfold input12237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12236 output12229)).val
theorem output12237_def : output12237 = (.seq output12236 output12229) := by
  unfold output12237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12237_skip : Flapjack.WordAlloc.isSkip output12237 = false := by
  rw [output12237_def]
  conv => lhs; cbv
  try rfl
theorem node12237_eq : Flapjack.WordAlloc.removeDeadStructural input12237 value6118 value1 value2 = (output12237, value5, value1) := by
  rw [input12237_def, output12237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12229_eq]
  dsimp only
  rw [node12236_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6123 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3609 (Flapjack.WordLangAddr.addr 3613 0#64)))).val
theorem input12238_def : input12238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3609 (Flapjack.WordLangAddr.addr 3613 0#64))) := by
  unfold input12238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3609 (Flapjack.WordLangAddr.addr 3613 0#64)))).val
theorem output12238_def : output12238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3609 (Flapjack.WordLangAddr.addr 3613 0#64))) := by
  unfold output12238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12238_skip : Flapjack.WordAlloc.isSkip output12238 = false := by
  rw [output12238_def]
  conv => lhs; cbv
  try rfl
theorem node12238_eq : Flapjack.WordAlloc.removeDeadStructural input12238 value5 value1 value2 = (output12238, value6123, value1) := by
  rw [input12238_def, output12238_def]
  try (conv => lhs; cbv)
  try rfl

def value6124 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3613, 3601)])).val
theorem input12239_def : input12239 = (Flapjack.WordLangProgHOL.move 0 [(3613, 3601)]) := by
  unfold input12239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3613, 3601)])).val
theorem output12239_def : output12239 = (Flapjack.WordLangProgHOL.move 0 [(3613, 3601)]) := by
  unfold output12239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12239_skip : Flapjack.WordAlloc.isSkip output12239 = false := by
  rw [output12239_def]
  conv => lhs; cbv
  try rfl
theorem node12239_eq : Flapjack.WordAlloc.removeDeadStructural input12239 value6123 value1 value2 = (output12239, value6124, value1) := by
  rw [input12239_def, output12239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12239 input12238)).val
theorem input12240_def : input12240 = (.seq input12239 input12238) := by
  unfold input12240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12239 output12238)).val
theorem output12240_def : output12240 = (.seq output12239 output12238) := by
  unfold output12240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12240_skip : Flapjack.WordAlloc.isSkip output12240 = false := by
  rw [output12240_def]
  conv => lhs; cbv
  try rfl
theorem node12240_eq : Flapjack.WordAlloc.removeDeadStructural input12240 value5 value1 value2 = (output12240, value6124, value1) := by
  rw [input12240_def, output12240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12238_eq]
  dsimp only
  rw [node12239_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6125 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3609 10162220747404304312#64))).val
theorem input12241_def : input12241 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3609 10162220747404304312#64)) := by
  unfold input12241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3609 10162220747404304312#64))).val
theorem output12241_def : output12241 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3609 10162220747404304312#64)) := by
  unfold output12241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12241_skip : Flapjack.WordAlloc.isSkip output12241 = false := by
  rw [output12241_def]
  conv => lhs; cbv
  try rfl
theorem node12241_eq : Flapjack.WordAlloc.removeDeadStructural input12241 value6124 value1 value2 = (output12241, value6125, value1) := by
  rw [input12241_def, output12241_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3605 10162220747404304312#64))).val
theorem input12242_def : input12242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3605 10162220747404304312#64)) := by
  unfold input12242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12242_def : output12242 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12242_skip : Flapjack.WordAlloc.isSkip output12242 = true := by
  rw [output12242_def]
  conv => lhs; cbv
  try rfl
theorem node12242_eq : Flapjack.WordAlloc.removeDeadStructural input12242 value6125 value1 value2 = (output12242, value6125, value1) := by
  rw [input12242_def, output12242_def]
  try (conv => lhs; cbv)
  try rfl

def value6126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3601 3597 (Flapjack.WordRegImm.imm 864#64))))).val
theorem input12243_def : input12243 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3601 3597 (Flapjack.WordRegImm.imm 864#64)))) := by
  unfold input12243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3601 3597 (Flapjack.WordRegImm.imm 864#64))))).val
theorem output12243_def : output12243 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3601 3597 (Flapjack.WordRegImm.imm 864#64)))) := by
  unfold output12243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12243_skip : Flapjack.WordAlloc.isSkip output12243 = false := by
  rw [output12243_def]
  conv => lhs; cbv
  try rfl
theorem node12243_eq : Flapjack.WordAlloc.removeDeadStructural input12243 value6125 value1 value2 = (output12243, value6126, value1) := by
  rw [input12243_def, output12243_def]
  try (conv => lhs; cbv)
  try rfl

def value6127 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3597 (Flapjack.WordLangAddr.addr 3593 18446744073709551104#64)))).val
theorem input12244_def : input12244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3597 (Flapjack.WordLangAddr.addr 3593 18446744073709551104#64))) := by
  unfold input12244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3597 (Flapjack.WordLangAddr.addr 3593 18446744073709551104#64)))).val
theorem output12244_def : output12244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3597 (Flapjack.WordLangAddr.addr 3593 18446744073709551104#64))) := by
  unfold output12244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12244_skip : Flapjack.WordAlloc.isSkip output12244 = false := by
  rw [output12244_def]
  conv => lhs; cbv
  try rfl
theorem node12244_eq : Flapjack.WordAlloc.removeDeadStructural input12244 value6126 value1 value2 = (output12244, value6127, value1) := by
  rw [input12244_def, output12244_def]
  try (conv => lhs; cbv)
  try rfl

def value6128 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3593 3589)).val
theorem input12245_def : input12245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3593 3589) := by
  unfold input12245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3593 3589)).val
theorem output12245_def : output12245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3593 3589) := by
  unfold output12245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12245_skip : Flapjack.WordAlloc.isSkip output12245 = false := by
  rw [output12245_def]
  conv => lhs; cbv
  try rfl
theorem node12245_eq : Flapjack.WordAlloc.removeDeadStructural input12245 value6127 value1 value2 = (output12245, value6128, value1) := by
  rw [input12245_def, output12245_def]
  try (conv => lhs; cbv)
  try rfl

def value6129 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3589 3585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12246_def : input12246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3589 3585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3589 3585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12246_def : output12246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3589 3585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12246_skip : Flapjack.WordAlloc.isSkip output12246 = false := by
  rw [output12246_def]
  conv => lhs; cbv
  try rfl
theorem node12246_eq : Flapjack.WordAlloc.removeDeadStructural input12246 value6128 value1 value2 = (output12246, value6129, value1) := by
  rw [input12246_def, output12246_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3585 Flapjack.WordStore.heapLength)).val
theorem input12247_def : input12247 = (Flapjack.WordLangProgHOL.get 3585 Flapjack.WordStore.heapLength) := by
  unfold input12247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3585 Flapjack.WordStore.heapLength)).val
theorem output12247_def : output12247 = (Flapjack.WordLangProgHOL.get 3585 Flapjack.WordStore.heapLength) := by
  unfold output12247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12247_skip : Flapjack.WordAlloc.isSkip output12247 = false := by
  rw [output12247_def]
  conv => lhs; cbv
  try rfl
theorem node12247_eq : Flapjack.WordAlloc.removeDeadStructural input12247 value6129 value1 value2 = (output12247, value5, value1) := by
  rw [input12247_def, output12247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12247 input12246)).val
theorem input12248_def : input12248 = (.seq input12247 input12246) := by
  unfold input12248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12247 output12246)).val
theorem output12248_def : output12248 = (.seq output12247 output12246) := by
  unfold output12248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12248_skip : Flapjack.WordAlloc.isSkip output12248 = false := by
  rw [output12248_def]
  conv => lhs; cbv
  try rfl
theorem node12248_eq : Flapjack.WordAlloc.removeDeadStructural input12248 value6128 value1 value2 = (output12248, value5, value1) := by
  rw [input12248_def, output12248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12246_eq]
  dsimp only
  rw [node12247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12248 input12245)).val
theorem input12249_def : input12249 = (.seq input12248 input12245) := by
  unfold input12249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12248 output12245)).val
theorem output12249_def : output12249 = (.seq output12248 output12245) := by
  unfold output12249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12249_skip : Flapjack.WordAlloc.isSkip output12249 = false := by
  rw [output12249_def]
  conv => lhs; cbv
  try rfl
theorem node12249_eq : Flapjack.WordAlloc.removeDeadStructural input12249 value6127 value1 value2 = (output12249, value5, value1) := by
  rw [input12249_def, output12249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12245_eq]
  dsimp only
  rw [node12248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12249 input12244)).val
theorem input12250_def : input12250 = (.seq input12249 input12244) := by
  unfold input12250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12249 output12244)).val
theorem output12250_def : output12250 = (.seq output12249 output12244) := by
  unfold output12250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12250_skip : Flapjack.WordAlloc.isSkip output12250 = false := by
  rw [output12250_def]
  conv => lhs; cbv
  try rfl
theorem node12250_eq : Flapjack.WordAlloc.removeDeadStructural input12250 value6126 value1 value2 = (output12250, value5, value1) := by
  rw [input12250_def, output12250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12244_eq]
  dsimp only
  rw [node12249_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12250 input12243)).val
theorem input12251_def : input12251 = (.seq input12250 input12243) := by
  unfold input12251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12250 output12243)).val
theorem output12251_def : output12251 = (.seq output12250 output12243) := by
  unfold output12251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12251_skip : Flapjack.WordAlloc.isSkip output12251 = false := by
  rw [output12251_def]
  conv => lhs; cbv
  try rfl
theorem node12251_eq : Flapjack.WordAlloc.removeDeadStructural input12251 value6125 value1 value2 = (output12251, value5, value1) := by
  rw [input12251_def, output12251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12243_eq]
  dsimp only
  rw [node12250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6130 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64)))).val
theorem input12252_def : input12252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64))) := by
  unfold input12252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64)))).val
theorem output12252_def : output12252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3577 (Flapjack.WordLangAddr.addr 3581 0#64))) := by
  unfold output12252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12252_skip : Flapjack.WordAlloc.isSkip output12252 = false := by
  rw [output12252_def]
  conv => lhs; cbv
  try rfl
theorem node12252_eq : Flapjack.WordAlloc.removeDeadStructural input12252 value5 value1 value2 = (output12252, value6130, value1) := by
  rw [input12252_def, output12252_def]
  try (conv => lhs; cbv)
  try rfl

def value6131 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3581, 3569)])).val
theorem input12253_def : input12253 = (Flapjack.WordLangProgHOL.move 0 [(3581, 3569)]) := by
  unfold input12253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3581, 3569)])).val
theorem output12253_def : output12253 = (Flapjack.WordLangProgHOL.move 0 [(3581, 3569)]) := by
  unfold output12253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12253_skip : Flapjack.WordAlloc.isSkip output12253 = false := by
  rw [output12253_def]
  conv => lhs; cbv
  try rfl
theorem node12253_eq : Flapjack.WordAlloc.removeDeadStructural input12253 value6130 value1 value2 = (output12253, value6131, value1) := by
  rw [input12253_def, output12253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12253 input12252)).val
theorem input12254_def : input12254 = (.seq input12253 input12252) := by
  unfold input12254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12253 output12252)).val
theorem output12254_def : output12254 = (.seq output12253 output12252) := by
  unfold output12254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12254_skip : Flapjack.WordAlloc.isSkip output12254 = false := by
  rw [output12254_def]
  conv => lhs; cbv
  try rfl
theorem node12254_eq : Flapjack.WordAlloc.removeDeadStructural input12254 value5 value1 value2 = (output12254, value6131, value1) := by
  rw [input12254_def, output12254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12252_eq]
  dsimp only
  rw [node12253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6132 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3577 1614194442543190677#64))).val
theorem input12255_def : input12255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3577 1614194442543190677#64)) := by
  unfold input12255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3577 1614194442543190677#64))).val
theorem output12255_def : output12255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3577 1614194442543190677#64)) := by
  unfold output12255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12255_skip : Flapjack.WordAlloc.isSkip output12255 = false := by
  rw [output12255_def]
  conv => lhs; cbv
  try rfl
theorem node12255_eq : Flapjack.WordAlloc.removeDeadStructural input12255 value6131 value1 value2 = (output12255, value6132, value1) := by
  rw [input12255_def, output12255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3573 1614194442543190677#64))).val
theorem input12256_def : input12256 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3573 1614194442543190677#64)) := by
  unfold input12256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12256_def : output12256 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12256_skip : Flapjack.WordAlloc.isSkip output12256 = true := by
  rw [output12256_def]
  conv => lhs; cbv
  try rfl
theorem node12256_eq : Flapjack.WordAlloc.removeDeadStructural input12256 value6132 value1 value2 = (output12256, value6132, value1) := by
  rw [input12256_def, output12256_def]
  try (conv => lhs; cbv)
  try rfl

def value6133 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 856#64))))).val
theorem input12257_def : input12257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 856#64)))) := by
  unfold input12257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 856#64))))).val
theorem output12257_def : output12257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3569 3565 (Flapjack.WordRegImm.imm 856#64)))) := by
  unfold output12257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12257_skip : Flapjack.WordAlloc.isSkip output12257 = false := by
  rw [output12257_def]
  conv => lhs; cbv
  try rfl
theorem node12257_eq : Flapjack.WordAlloc.removeDeadStructural input12257 value6132 value1 value2 = (output12257, value6133, value1) := by
  rw [input12257_def, output12257_def]
  try (conv => lhs; cbv)
  try rfl

def value6134 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3565 (Flapjack.WordLangAddr.addr 3561 18446744073709551104#64)))).val
theorem input12258_def : input12258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3565 (Flapjack.WordLangAddr.addr 3561 18446744073709551104#64))) := by
  unfold input12258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3565 (Flapjack.WordLangAddr.addr 3561 18446744073709551104#64)))).val
theorem output12258_def : output12258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3565 (Flapjack.WordLangAddr.addr 3561 18446744073709551104#64))) := by
  unfold output12258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12258_skip : Flapjack.WordAlloc.isSkip output12258 = false := by
  rw [output12258_def]
  conv => lhs; cbv
  try rfl
theorem node12258_eq : Flapjack.WordAlloc.removeDeadStructural input12258 value6133 value1 value2 = (output12258, value6134, value1) := by
  rw [input12258_def, output12258_def]
  try (conv => lhs; cbv)
  try rfl

def value6135 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3561 3557)).val
theorem input12259_def : input12259 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3561 3557) := by
  unfold input12259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3561 3557)).val
theorem output12259_def : output12259 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3561 3557) := by
  unfold output12259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12259_skip : Flapjack.WordAlloc.isSkip output12259 = false := by
  rw [output12259_def]
  conv => lhs; cbv
  try rfl
theorem node12259_eq : Flapjack.WordAlloc.removeDeadStructural input12259 value6134 value1 value2 = (output12259, value6135, value1) := by
  rw [input12259_def, output12259_def]
  try (conv => lhs; cbv)
  try rfl

def value6136 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3557 3553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12260_def : input12260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3557 3553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3557 3553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12260_def : output12260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3557 3553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12260_skip : Flapjack.WordAlloc.isSkip output12260 = false := by
  rw [output12260_def]
  conv => lhs; cbv
  try rfl
theorem node12260_eq : Flapjack.WordAlloc.removeDeadStructural input12260 value6135 value1 value2 = (output12260, value6136, value1) := by
  rw [input12260_def, output12260_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3553 Flapjack.WordStore.heapLength)).val
theorem input12261_def : input12261 = (Flapjack.WordLangProgHOL.get 3553 Flapjack.WordStore.heapLength) := by
  unfold input12261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3553 Flapjack.WordStore.heapLength)).val
theorem output12261_def : output12261 = (Flapjack.WordLangProgHOL.get 3553 Flapjack.WordStore.heapLength) := by
  unfold output12261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12261_skip : Flapjack.WordAlloc.isSkip output12261 = false := by
  rw [output12261_def]
  conv => lhs; cbv
  try rfl
theorem node12261_eq : Flapjack.WordAlloc.removeDeadStructural input12261 value6136 value1 value2 = (output12261, value5, value1) := by
  rw [input12261_def, output12261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12261 input12260)).val
theorem input12262_def : input12262 = (.seq input12261 input12260) := by
  unfold input12262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12261 output12260)).val
theorem output12262_def : output12262 = (.seq output12261 output12260) := by
  unfold output12262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12262_skip : Flapjack.WordAlloc.isSkip output12262 = false := by
  rw [output12262_def]
  conv => lhs; cbv
  try rfl
theorem node12262_eq : Flapjack.WordAlloc.removeDeadStructural input12262 value6135 value1 value2 = (output12262, value5, value1) := by
  rw [input12262_def, output12262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12260_eq]
  dsimp only
  rw [node12261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12262 input12259)).val
theorem input12263_def : input12263 = (.seq input12262 input12259) := by
  unfold input12263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12262 output12259)).val
theorem output12263_def : output12263 = (.seq output12262 output12259) := by
  unfold output12263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12263_skip : Flapjack.WordAlloc.isSkip output12263 = false := by
  rw [output12263_def]
  conv => lhs; cbv
  try rfl
theorem node12263_eq : Flapjack.WordAlloc.removeDeadStructural input12263 value6134 value1 value2 = (output12263, value5, value1) := by
  rw [input12263_def, output12263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12259_eq]
  dsimp only
  rw [node12262_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12263 input12258)).val
theorem input12264_def : input12264 = (.seq input12263 input12258) := by
  unfold input12264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12263 output12258)).val
theorem output12264_def : output12264 = (.seq output12263 output12258) := by
  unfold output12264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12264_skip : Flapjack.WordAlloc.isSkip output12264 = false := by
  rw [output12264_def]
  conv => lhs; cbv
  try rfl
theorem node12264_eq : Flapjack.WordAlloc.removeDeadStructural input12264 value6133 value1 value2 = (output12264, value5, value1) := by
  rw [input12264_def, output12264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12258_eq]
  dsimp only
  rw [node12263_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12264 input12257)).val
theorem input12265_def : input12265 = (.seq input12264 input12257) := by
  unfold input12265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12264 output12257)).val
theorem output12265_def : output12265 = (.seq output12264 output12257) := by
  unfold output12265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12265_skip : Flapjack.WordAlloc.isSkip output12265 = false := by
  rw [output12265_def]
  conv => lhs; cbv
  try rfl
theorem node12265_eq : Flapjack.WordAlloc.removeDeadStructural input12265 value6132 value1 value2 = (output12265, value5, value1) := by
  rw [input12265_def, output12265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12257_eq]
  dsimp only
  rw [node12264_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6137 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3545 (Flapjack.WordLangAddr.addr 3549 0#64)))).val
theorem input12266_def : input12266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3545 (Flapjack.WordLangAddr.addr 3549 0#64))) := by
  unfold input12266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3545 (Flapjack.WordLangAddr.addr 3549 0#64)))).val
theorem output12266_def : output12266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3545 (Flapjack.WordLangAddr.addr 3549 0#64))) := by
  unfold output12266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12266_skip : Flapjack.WordAlloc.isSkip output12266 = false := by
  rw [output12266_def]
  conv => lhs; cbv
  try rfl
theorem node12266_eq : Flapjack.WordAlloc.removeDeadStructural input12266 value5 value1 value2 = (output12266, value6137, value1) := by
  rw [input12266_def, output12266_def]
  try (conv => lhs; cbv)
  try rfl

def value6138 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input12267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3549, 3537)])).val
theorem input12267_def : input12267 = (Flapjack.WordLangProgHOL.move 0 [(3549, 3537)]) := by
  unfold input12267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3549, 3537)])).val
theorem output12267_def : output12267 = (Flapjack.WordLangProgHOL.move 0 [(3549, 3537)]) := by
  unfold output12267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12267_skip : Flapjack.WordAlloc.isSkip output12267 = false := by
  rw [output12267_def]
  conv => lhs; cbv
  try rfl
theorem node12267_eq : Flapjack.WordAlloc.removeDeadStructural input12267 value6137 value1 value2 = (output12267, value6138, value1) := by
  rw [input12267_def, output12267_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12267 input12266)).val
theorem input12268_def : input12268 = (.seq input12267 input12266) := by
  unfold input12268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12267 output12266)).val
theorem output12268_def : output12268 = (.seq output12267 output12266) := by
  unfold output12268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12268_skip : Flapjack.WordAlloc.isSkip output12268 = false := by
  rw [output12268_def]
  conv => lhs; cbv
  try rfl
theorem node12268_eq : Flapjack.WordAlloc.removeDeadStructural input12268 value5 value1 value2 = (output12268, value6138, value1) := by
  rw [input12268_def, output12268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12266_eq]
  dsimp only
  rw [node12267_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6139 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3545 235084153942973259#64))).val
theorem input12269_def : input12269 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3545 235084153942973259#64)) := by
  unfold input12269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3545 235084153942973259#64))).val
theorem output12269_def : output12269 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3545 235084153942973259#64)) := by
  unfold output12269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12269_skip : Flapjack.WordAlloc.isSkip output12269 = false := by
  rw [output12269_def]
  conv => lhs; cbv
  try rfl
theorem node12269_eq : Flapjack.WordAlloc.removeDeadStructural input12269 value6138 value1 value2 = (output12269, value6139, value1) := by
  rw [input12269_def, output12269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3541 235084153942973259#64))).val
theorem input12270_def : input12270 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3541 235084153942973259#64)) := by
  unfold input12270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12270_def : output12270 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12270_skip : Flapjack.WordAlloc.isSkip output12270 = true := by
  rw [output12270_def]
  conv => lhs; cbv
  try rfl
theorem node12270_eq : Flapjack.WordAlloc.removeDeadStructural input12270 value6139 value1 value2 = (output12270, value6139, value1) := by
  rw [input12270_def, output12270_def]
  try (conv => lhs; cbv)
  try rfl

def value6140 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3537 3533 (Flapjack.WordRegImm.imm 848#64))))).val
theorem input12271_def : input12271 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3537 3533 (Flapjack.WordRegImm.imm 848#64)))) := by
  unfold input12271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3537 3533 (Flapjack.WordRegImm.imm 848#64))))).val
theorem output12271_def : output12271 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3537 3533 (Flapjack.WordRegImm.imm 848#64)))) := by
  unfold output12271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12271_skip : Flapjack.WordAlloc.isSkip output12271 = false := by
  rw [output12271_def]
  conv => lhs; cbv
  try rfl
theorem node12271_eq : Flapjack.WordAlloc.removeDeadStructural input12271 value6139 value1 value2 = (output12271, value6140, value1) := by
  rw [input12271_def, output12271_def]
  try (conv => lhs; cbv)
  try rfl

def value6141 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3533 (Flapjack.WordLangAddr.addr 3529 18446744073709551104#64)))).val
theorem input12272_def : input12272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3533 (Flapjack.WordLangAddr.addr 3529 18446744073709551104#64))) := by
  unfold input12272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3533 (Flapjack.WordLangAddr.addr 3529 18446744073709551104#64)))).val
theorem output12272_def : output12272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3533 (Flapjack.WordLangAddr.addr 3529 18446744073709551104#64))) := by
  unfold output12272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12272_skip : Flapjack.WordAlloc.isSkip output12272 = false := by
  rw [output12272_def]
  conv => lhs; cbv
  try rfl
theorem node12272_eq : Flapjack.WordAlloc.removeDeadStructural input12272 value6140 value1 value2 = (output12272, value6141, value1) := by
  rw [input12272_def, output12272_def]
  try (conv => lhs; cbv)
  try rfl

def value6142 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3529 3525)).val
theorem input12273_def : input12273 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3529 3525) := by
  unfold input12273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3529 3525)).val
theorem output12273_def : output12273 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3529 3525) := by
  unfold output12273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12273_skip : Flapjack.WordAlloc.isSkip output12273 = false := by
  rw [output12273_def]
  conv => lhs; cbv
  try rfl
theorem node12273_eq : Flapjack.WordAlloc.removeDeadStructural input12273 value6141 value1 value2 = (output12273, value6142, value1) := by
  rw [input12273_def, output12273_def]
  try (conv => lhs; cbv)
  try rfl

def value6143 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3525 3521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input12274_def : input12274 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3525 3521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input12274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3525 3521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output12274_def : output12274 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3525 3521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output12274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12274_skip : Flapjack.WordAlloc.isSkip output12274 = false := by
  rw [output12274_def]
  conv => lhs; cbv
  try rfl
theorem node12274_eq : Flapjack.WordAlloc.removeDeadStructural input12274 value6142 value1 value2 = (output12274, value6143, value1) := by
  rw [input12274_def, output12274_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3521 Flapjack.WordStore.heapLength)).val
theorem input12275_def : input12275 = (Flapjack.WordLangProgHOL.get 3521 Flapjack.WordStore.heapLength) := by
  unfold input12275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3521 Flapjack.WordStore.heapLength)).val
theorem output12275_def : output12275 = (Flapjack.WordLangProgHOL.get 3521 Flapjack.WordStore.heapLength) := by
  unfold output12275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12275_skip : Flapjack.WordAlloc.isSkip output12275 = false := by
  rw [output12275_def]
  conv => lhs; cbv
  try rfl
theorem node12275_eq : Flapjack.WordAlloc.removeDeadStructural input12275 value6143 value1 value2 = (output12275, value5, value1) := by
  rw [input12275_def, output12275_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12275 input12274)).val
theorem input12276_def : input12276 = (.seq input12275 input12274) := by
  unfold input12276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12275 output12274)).val
theorem output12276_def : output12276 = (.seq output12275 output12274) := by
  unfold output12276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12276_skip : Flapjack.WordAlloc.isSkip output12276 = false := by
  rw [output12276_def]
  conv => lhs; cbv
  try rfl
theorem node12276_eq : Flapjack.WordAlloc.removeDeadStructural input12276 value6142 value1 value2 = (output12276, value5, value1) := by
  rw [input12276_def, output12276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12274_eq]
  dsimp only
  rw [node12275_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12276 input12273)).val
theorem input12277_def : input12277 = (.seq input12276 input12273) := by
  unfold input12277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12276 output12273)).val
theorem output12277_def : output12277 = (.seq output12276 output12273) := by
  unfold output12277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12277_skip : Flapjack.WordAlloc.isSkip output12277 = false := by
  rw [output12277_def]
  conv => lhs; cbv
  try rfl
theorem node12277_eq : Flapjack.WordAlloc.removeDeadStructural input12277 value6141 value1 value2 = (output12277, value5, value1) := by
  rw [input12277_def, output12277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12273_eq]
  dsimp only
  rw [node12276_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12277 input12272)).val
theorem input12278_def : input12278 = (.seq input12277 input12272) := by
  unfold input12278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12277 output12272)).val
theorem output12278_def : output12278 = (.seq output12277 output12272) := by
  unfold output12278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12278_skip : Flapjack.WordAlloc.isSkip output12278 = false := by
  rw [output12278_def]
  conv => lhs; cbv
  try rfl
theorem node12278_eq : Flapjack.WordAlloc.removeDeadStructural input12278 value6140 value1 value2 = (output12278, value5, value1) := by
  rw [input12278_def, output12278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12272_eq]
  dsimp only
  rw [node12277_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12278 input12271)).val
theorem input12279_def : input12279 = (.seq input12278 input12271) := by
  unfold input12279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12278 output12271)).val
theorem output12279_def : output12279 = (.seq output12278 output12271) := by
  unfold output12279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12279_skip : Flapjack.WordAlloc.isSkip output12279 = false := by
  rw [output12279_def]
  conv => lhs; cbv
  try rfl
theorem node12279_eq : Flapjack.WordAlloc.removeDeadStructural input12279 value6139 value1 value2 = (output12279, value5, value1) := by
  rw [input12279_def, output12279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12271_eq]
  dsimp only
  rw [node12278_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6144 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3513 (Flapjack.WordLangAddr.addr 3517 0#64)))).val
theorem input12280_def : input12280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3513 (Flapjack.WordLangAddr.addr 3517 0#64))) := by
  unfold input12280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3513 (Flapjack.WordLangAddr.addr 3517 0#64)))).val
theorem output12280_def : output12280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3513 (Flapjack.WordLangAddr.addr 3517 0#64))) := by
  unfold output12280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12280_skip : Flapjack.WordAlloc.isSkip output12280 = false := by
  rw [output12280_def]
  conv => lhs; cbv
  try rfl
theorem node12280_eq : Flapjack.WordAlloc.removeDeadStructural input12280 value5 value1 value2 = (output12280, value6144, value1) := by
  rw [input12280_def, output12280_def]
  try (conv => lhs; cbv)
  try rfl

def value6145 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input12281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3517, 3505)])).val
theorem input12281_def : input12281 = (Flapjack.WordLangProgHOL.move 0 [(3517, 3505)]) := by
  unfold input12281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3517, 3505)])).val
theorem output12281_def : output12281 = (Flapjack.WordLangProgHOL.move 0 [(3517, 3505)]) := by
  unfold output12281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12281_skip : Flapjack.WordAlloc.isSkip output12281 = false := by
  rw [output12281_def]
  conv => lhs; cbv
  try rfl
theorem node12281_eq : Flapjack.WordAlloc.removeDeadStructural input12281 value6144 value1 value2 = (output12281, value6145, value1) := by
  rw [input12281_def, output12281_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input12281 input12280)).val
theorem input12282_def : input12282 = (.seq input12281 input12280) := by
  unfold input12282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output12281 output12280)).val
theorem output12282_def : output12282 = (.seq output12281 output12280) := by
  unfold output12282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12282_skip : Flapjack.WordAlloc.isSkip output12282 = false := by
  rw [output12282_def]
  conv => lhs; cbv
  try rfl
theorem node12282_eq : Flapjack.WordAlloc.removeDeadStructural input12282 value5 value1 value2 = (output12282, value6145, value1) := by
  rw [input12282_def, output12282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node12280_eq]
  dsimp only
  rw [node12281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6146 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3513 17256067581717210911#64))).val
theorem input12283_def : input12283 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3513 17256067581717210911#64)) := by
  unfold input12283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3513 17256067581717210911#64))).val
theorem output12283_def : output12283 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3513 17256067581717210911#64)) := by
  unfold output12283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12283_skip : Flapjack.WordAlloc.isSkip output12283 = false := by
  rw [output12283_def]
  conv => lhs; cbv
  try rfl
theorem node12283_eq : Flapjack.WordAlloc.removeDeadStructural input12283 value6145 value1 value2 = (output12283, value6146, value1) := by
  rw [input12283_def, output12283_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input12284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3509 17256067581717210911#64))).val
theorem input12284_def : input12284 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3509 17256067581717210911#64)) := by
  unfold input12284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output12284_def : output12284 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output12284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12284_skip : Flapjack.WordAlloc.isSkip output12284 = true := by
  rw [output12284_def]
  conv => lhs; cbv
  try rfl
theorem node12284_eq : Flapjack.WordAlloc.removeDeadStructural input12284 value6146 value1 value2 = (output12284, value6146, value1) := by
  rw [input12284_def, output12284_def]
  try (conv => lhs; cbv)
  try rfl

def value6147 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3505 3501 (Flapjack.WordRegImm.imm 840#64))))).val
theorem input12285_def : input12285 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3505 3501 (Flapjack.WordRegImm.imm 840#64)))) := by
  unfold input12285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3505 3501 (Flapjack.WordRegImm.imm 840#64))))).val
theorem output12285_def : output12285 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3505 3501 (Flapjack.WordRegImm.imm 840#64)))) := by
  unfold output12285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12285_skip : Flapjack.WordAlloc.isSkip output12285 = false := by
  rw [output12285_def]
  conv => lhs; cbv
  try rfl
theorem node12285_eq : Flapjack.WordAlloc.removeDeadStructural input12285 value6146 value1 value2 = (output12285, value6147, value1) := by
  rw [input12285_def, output12285_def]
  try (conv => lhs; cbv)
  try rfl

def value6148 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3501 (Flapjack.WordLangAddr.addr 3497 18446744073709551104#64)))).val
theorem input12286_def : input12286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3501 (Flapjack.WordLangAddr.addr 3497 18446744073709551104#64))) := by
  unfold input12286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3501 (Flapjack.WordLangAddr.addr 3497 18446744073709551104#64)))).val
theorem output12286_def : output12286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3501 (Flapjack.WordLangAddr.addr 3497 18446744073709551104#64))) := by
  unfold output12286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12286_skip : Flapjack.WordAlloc.isSkip output12286 = false := by
  rw [output12286_def]
  conv => lhs; cbv
  try rfl
theorem node12286_eq : Flapjack.WordAlloc.removeDeadStructural input12286 value6147 value1 value2 = (output12286, value6148, value1) := by
  rw [input12286_def, output12286_def]
  try (conv => lhs; cbv)
  try rfl

def value6149 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input12287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3497 3493)).val
theorem input12287_def : input12287 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3497 3493) := by
  unfold input12287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output12287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3497 3493)).val
theorem output12287_def : output12287 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3497 3493) := by
  unfold output12287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output12287_skip : Flapjack.WordAlloc.isSkip output12287 = false := by
  rw [output12287_def]
  conv => lhs; cbv
  try rfl
theorem node12287_eq : Flapjack.WordAlloc.removeDeadStructural input12287 value6148 value1 value2 = (output12287, value6149, value1) := by
  rw [input12287_def, output12287_def]
  try (conv => lhs; cbv)
  try rfl

def value6150 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

#print axioms node12287_eq
end InitECandidate.Proofs.DeadStages713
