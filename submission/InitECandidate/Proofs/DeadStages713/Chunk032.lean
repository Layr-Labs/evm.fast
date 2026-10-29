import InitECandidate.Proofs.DeadStages713.Chunk031
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input8192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8191 input8190)).val
theorem input8192_def : input8192 = (.seq input8191 input8190) := by
  unfold input8192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8191 output8190)).val
theorem output8192_def : output8192 = (.seq output8191 output8190) := by
  unfold output8192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8192_skip : Flapjack.WordAlloc.isSkip output8192 = false := by
  rw [output8192_def]
  conv => lhs; cbv
  try rfl
theorem node8192_eq : Flapjack.WordAlloc.removeDeadStructural input8192 value4100 value1 value2 = (output8192, value5, value1) := by
  rw [input8192_def, output8192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8190_eq]
  dsimp only
  rw [node8191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8192 input8189)).val
theorem input8193_def : input8193 = (.seq input8192 input8189) := by
  unfold input8193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8192 output8189)).val
theorem output8193_def : output8193 = (.seq output8192 output8189) := by
  unfold output8193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8193_skip : Flapjack.WordAlloc.isSkip output8193 = false := by
  rw [output8193_def]
  conv => lhs; cbv
  try rfl
theorem node8193_eq : Flapjack.WordAlloc.removeDeadStructural input8193 value4099 value1 value2 = (output8193, value5, value1) := by
  rw [input8193_def, output8193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8189_eq]
  dsimp only
  rw [node8192_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8193 input8188)).val
theorem input8194_def : input8194 = (.seq input8193 input8188) := by
  unfold input8194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8193 output8188)).val
theorem output8194_def : output8194 = (.seq output8193 output8188) := by
  unfold output8194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8194_skip : Flapjack.WordAlloc.isSkip output8194 = false := by
  rw [output8194_def]
  conv => lhs; cbv
  try rfl
theorem node8194_eq : Flapjack.WordAlloc.removeDeadStructural input8194 value4098 value1 value2 = (output8194, value5, value1) := by
  rw [input8194_def, output8194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8188_eq]
  dsimp only
  rw [node8193_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8194 input8187)).val
theorem input8195_def : input8195 = (.seq input8194 input8187) := by
  unfold input8195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8194 output8187)).val
theorem output8195_def : output8195 = (.seq output8194 output8187) := by
  unfold output8195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8195_skip : Flapjack.WordAlloc.isSkip output8195 = false := by
  rw [output8195_def]
  conv => lhs; cbv
  try rfl
theorem node8195_eq : Flapjack.WordAlloc.removeDeadStructural input8195 value4096 value1 value2 = (output8195, value5, value1) := by
  rw [input8195_def, output8195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8187_eq]
  dsimp only
  rw [node8194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4102 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12777 (Flapjack.WordLangAddr.addr 12781 0#64)))).val
theorem input8196_def : input8196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12777 (Flapjack.WordLangAddr.addr 12781 0#64))) := by
  unfold input8196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12777 (Flapjack.WordLangAddr.addr 12781 0#64)))).val
theorem output8196_def : output8196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12777 (Flapjack.WordLangAddr.addr 12781 0#64))) := by
  unfold output8196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8196_skip : Flapjack.WordAlloc.isSkip output8196 = false := by
  rw [output8196_def]
  conv => lhs; cbv
  try rfl
theorem node8196_eq : Flapjack.WordAlloc.removeDeadStructural input8196 value5 value1 value2 = (output8196, value4102, value1) := by
  rw [input8196_def, output8196_def]
  try (conv => lhs; cbv)
  try rfl

def value4103 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12781, 12769)])).val
theorem input8197_def : input8197 = (Flapjack.WordLangProgHOL.move 0 [(12781, 12769)]) := by
  unfold input8197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12781, 12769)])).val
theorem output8197_def : output8197 = (Flapjack.WordLangProgHOL.move 0 [(12781, 12769)]) := by
  unfold output8197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8197_skip : Flapjack.WordAlloc.isSkip output8197 = false := by
  rw [output8197_def]
  conv => lhs; cbv
  try rfl
theorem node8197_eq : Flapjack.WordAlloc.removeDeadStructural input8197 value4102 value1 value2 = (output8197, value4103, value1) := by
  rw [input8197_def, output8197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8197 input8196)).val
theorem input8198_def : input8198 = (.seq input8197 input8196) := by
  unfold input8198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8197 output8196)).val
theorem output8198_def : output8198 = (.seq output8197 output8196) := by
  unfold output8198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8198_skip : Flapjack.WordAlloc.isSkip output8198 = false := by
  rw [output8198_def]
  conv => lhs; cbv
  try rfl
theorem node8198_eq : Flapjack.WordAlloc.removeDeadStructural input8198 value5 value1 value2 = (output8198, value4103, value1) := by
  rw [input8198_def, output8198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8196_eq]
  dsimp only
  rw [node8197_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4104 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12777 1273695771440998738#64))).val
theorem input8199_def : input8199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12777 1273695771440998738#64)) := by
  unfold input8199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12777 1273695771440998738#64))).val
theorem output8199_def : output8199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12777 1273695771440998738#64)) := by
  unfold output8199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8199_skip : Flapjack.WordAlloc.isSkip output8199 = false := by
  rw [output8199_def]
  conv => lhs; cbv
  try rfl
theorem node8199_eq : Flapjack.WordAlloc.removeDeadStructural input8199 value4103 value1 value2 = (output8199, value4104, value1) := by
  rw [input8199_def, output8199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12773 1273695771440998738#64))).val
theorem input8200_def : input8200 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12773 1273695771440998738#64)) := by
  unfold input8200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8200_def : output8200 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8200_skip : Flapjack.WordAlloc.isSkip output8200 = true := by
  rw [output8200_def]
  conv => lhs; cbv
  try rfl
theorem node8200_eq : Flapjack.WordAlloc.removeDeadStructural input8200 value4104 value1 value2 = (output8200, value4104, value1) := by
  rw [input8200_def, output8200_def]
  try (conv => lhs; cbv)
  try rfl

def value4105 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12769 12761 (Flapjack.WordRegImm.reg 12765))))).val
theorem input8201_def : input8201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12769 12761 (Flapjack.WordRegImm.reg 12765)))) := by
  unfold input8201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12769 12761 (Flapjack.WordRegImm.reg 12765))))).val
theorem output8201_def : output8201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12769 12761 (Flapjack.WordRegImm.reg 12765)))) := by
  unfold output8201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8201_skip : Flapjack.WordAlloc.isSkip output8201 = false := by
  rw [output8201_def]
  conv => lhs; cbv
  try rfl
theorem node8201_eq : Flapjack.WordAlloc.removeDeadStructural input8201 value4104 value1 value2 = (output8201, value4105, value1) := by
  rw [input8201_def, output8201_def]
  try (conv => lhs; cbv)
  try rfl

def value4106 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12765 3032#64))).val
theorem input8202_def : input8202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12765 3032#64)) := by
  unfold input8202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12765 3032#64))).val
theorem output8202_def : output8202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12765 3032#64)) := by
  unfold output8202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8202_skip : Flapjack.WordAlloc.isSkip output8202 = false := by
  rw [output8202_def]
  conv => lhs; cbv
  try rfl
theorem node8202_eq : Flapjack.WordAlloc.removeDeadStructural input8202 value4105 value1 value2 = (output8202, value4106, value1) := by
  rw [input8202_def, output8202_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8202 input8201)).val
theorem input8203_def : input8203 = (.seq input8202 input8201) := by
  unfold input8203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8202 output8201)).val
theorem output8203_def : output8203 = (.seq output8202 output8201) := by
  unfold output8203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8203_skip : Flapjack.WordAlloc.isSkip output8203 = false := by
  rw [output8203_def]
  conv => lhs; cbv
  try rfl
theorem node8203_eq : Flapjack.WordAlloc.removeDeadStructural input8203 value4104 value1 value2 = (output8203, value4106, value1) := by
  rw [input8203_def, output8203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8201_eq]
  dsimp only
  rw [node8202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4107 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12761 (Flapjack.WordLangAddr.addr 12757 18446744073709551104#64)))).val
theorem input8204_def : input8204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12761 (Flapjack.WordLangAddr.addr 12757 18446744073709551104#64))) := by
  unfold input8204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12761 (Flapjack.WordLangAddr.addr 12757 18446744073709551104#64)))).val
theorem output8204_def : output8204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12761 (Flapjack.WordLangAddr.addr 12757 18446744073709551104#64))) := by
  unfold output8204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8204_skip : Flapjack.WordAlloc.isSkip output8204 = false := by
  rw [output8204_def]
  conv => lhs; cbv
  try rfl
theorem node8204_eq : Flapjack.WordAlloc.removeDeadStructural input8204 value4106 value1 value2 = (output8204, value4107, value1) := by
  rw [input8204_def, output8204_def]
  try (conv => lhs; cbv)
  try rfl

def value4108 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12757 12753)).val
theorem input8205_def : input8205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12757 12753) := by
  unfold input8205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12757 12753)).val
theorem output8205_def : output8205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12757 12753) := by
  unfold output8205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8205_skip : Flapjack.WordAlloc.isSkip output8205 = false := by
  rw [output8205_def]
  conv => lhs; cbv
  try rfl
theorem node8205_eq : Flapjack.WordAlloc.removeDeadStructural input8205 value4107 value1 value2 = (output8205, value4108, value1) := by
  rw [input8205_def, output8205_def]
  try (conv => lhs; cbv)
  try rfl

def value4109 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12753 12749 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8206_def : input8206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12753 12749 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12753 12749 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8206_def : output8206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12753 12749 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8206_skip : Flapjack.WordAlloc.isSkip output8206 = false := by
  rw [output8206_def]
  conv => lhs; cbv
  try rfl
theorem node8206_eq : Flapjack.WordAlloc.removeDeadStructural input8206 value4108 value1 value2 = (output8206, value4109, value1) := by
  rw [input8206_def, output8206_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12749 Flapjack.WordStore.heapLength)).val
theorem input8207_def : input8207 = (Flapjack.WordLangProgHOL.get 12749 Flapjack.WordStore.heapLength) := by
  unfold input8207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12749 Flapjack.WordStore.heapLength)).val
theorem output8207_def : output8207 = (Flapjack.WordLangProgHOL.get 12749 Flapjack.WordStore.heapLength) := by
  unfold output8207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8207_skip : Flapjack.WordAlloc.isSkip output8207 = false := by
  rw [output8207_def]
  conv => lhs; cbv
  try rfl
theorem node8207_eq : Flapjack.WordAlloc.removeDeadStructural input8207 value4109 value1 value2 = (output8207, value5, value1) := by
  rw [input8207_def, output8207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8207 input8206)).val
theorem input8208_def : input8208 = (.seq input8207 input8206) := by
  unfold input8208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8207 output8206)).val
theorem output8208_def : output8208 = (.seq output8207 output8206) := by
  unfold output8208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8208_skip : Flapjack.WordAlloc.isSkip output8208 = false := by
  rw [output8208_def]
  conv => lhs; cbv
  try rfl
theorem node8208_eq : Flapjack.WordAlloc.removeDeadStructural input8208 value4108 value1 value2 = (output8208, value5, value1) := by
  rw [input8208_def, output8208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8206_eq]
  dsimp only
  rw [node8207_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8208 input8205)).val
theorem input8209_def : input8209 = (.seq input8208 input8205) := by
  unfold input8209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8208 output8205)).val
theorem output8209_def : output8209 = (.seq output8208 output8205) := by
  unfold output8209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8209_skip : Flapjack.WordAlloc.isSkip output8209 = false := by
  rw [output8209_def]
  conv => lhs; cbv
  try rfl
theorem node8209_eq : Flapjack.WordAlloc.removeDeadStructural input8209 value4107 value1 value2 = (output8209, value5, value1) := by
  rw [input8209_def, output8209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8205_eq]
  dsimp only
  rw [node8208_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8209 input8204)).val
theorem input8210_def : input8210 = (.seq input8209 input8204) := by
  unfold input8210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8209 output8204)).val
theorem output8210_def : output8210 = (.seq output8209 output8204) := by
  unfold output8210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8210_skip : Flapjack.WordAlloc.isSkip output8210 = false := by
  rw [output8210_def]
  conv => lhs; cbv
  try rfl
theorem node8210_eq : Flapjack.WordAlloc.removeDeadStructural input8210 value4106 value1 value2 = (output8210, value5, value1) := by
  rw [input8210_def, output8210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8204_eq]
  dsimp only
  rw [node8209_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8210 input8203)).val
theorem input8211_def : input8211 = (.seq input8210 input8203) := by
  unfold input8211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8210 output8203)).val
theorem output8211_def : output8211 = (.seq output8210 output8203) := by
  unfold output8211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8211_skip : Flapjack.WordAlloc.isSkip output8211 = false := by
  rw [output8211_def]
  conv => lhs; cbv
  try rfl
theorem node8211_eq : Flapjack.WordAlloc.removeDeadStructural input8211 value4104 value1 value2 = (output8211, value5, value1) := by
  rw [input8211_def, output8211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8203_eq]
  dsimp only
  rw [node8210_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4110 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12741 (Flapjack.WordLangAddr.addr 12745 0#64)))).val
theorem input8212_def : input8212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12741 (Flapjack.WordLangAddr.addr 12745 0#64))) := by
  unfold input8212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12741 (Flapjack.WordLangAddr.addr 12745 0#64)))).val
theorem output8212_def : output8212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12741 (Flapjack.WordLangAddr.addr 12745 0#64))) := by
  unfold output8212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8212_skip : Flapjack.WordAlloc.isSkip output8212 = false := by
  rw [output8212_def]
  conv => lhs; cbv
  try rfl
theorem node8212_eq : Flapjack.WordAlloc.removeDeadStructural input8212 value5 value1 value2 = (output8212, value4110, value1) := by
  rw [input8212_def, output8212_def]
  try (conv => lhs; cbv)
  try rfl

def value4111 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12745, 12733)])).val
theorem input8213_def : input8213 = (Flapjack.WordLangProgHOL.move 0 [(12745, 12733)]) := by
  unfold input8213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12745, 12733)])).val
theorem output8213_def : output8213 = (Flapjack.WordLangProgHOL.move 0 [(12745, 12733)]) := by
  unfold output8213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8213_skip : Flapjack.WordAlloc.isSkip output8213 = false := by
  rw [output8213_def]
  conv => lhs; cbv
  try rfl
theorem node8213_eq : Flapjack.WordAlloc.removeDeadStructural input8213 value4110 value1 value2 = (output8213, value4111, value1) := by
  rw [input8213_def, output8213_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8213 input8212)).val
theorem input8214_def : input8214 = (.seq input8213 input8212) := by
  unfold input8214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8213 output8212)).val
theorem output8214_def : output8214 = (.seq output8213 output8212) := by
  unfold output8214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8214_skip : Flapjack.WordAlloc.isSkip output8214 = false := by
  rw [output8214_def]
  conv => lhs; cbv
  try rfl
theorem node8214_eq : Flapjack.WordAlloc.removeDeadStructural input8214 value5 value1 value2 = (output8214, value4111, value1) := by
  rw [input8214_def, output8214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8212_eq]
  dsimp only
  rw [node8213_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4112 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12741 3121750372618945491#64))).val
theorem input8215_def : input8215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12741 3121750372618945491#64)) := by
  unfold input8215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12741 3121750372618945491#64))).val
theorem output8215_def : output8215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12741 3121750372618945491#64)) := by
  unfold output8215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8215_skip : Flapjack.WordAlloc.isSkip output8215 = false := by
  rw [output8215_def]
  conv => lhs; cbv
  try rfl
theorem node8215_eq : Flapjack.WordAlloc.removeDeadStructural input8215 value4111 value1 value2 = (output8215, value4112, value1) := by
  rw [input8215_def, output8215_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12737 3121750372618945491#64))).val
theorem input8216_def : input8216 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12737 3121750372618945491#64)) := by
  unfold input8216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8216_def : output8216 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8216_skip : Flapjack.WordAlloc.isSkip output8216 = true := by
  rw [output8216_def]
  conv => lhs; cbv
  try rfl
theorem node8216_eq : Flapjack.WordAlloc.removeDeadStructural input8216 value4112 value1 value2 = (output8216, value4112, value1) := by
  rw [input8216_def, output8216_def]
  try (conv => lhs; cbv)
  try rfl

def value4113 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12733 12725 (Flapjack.WordRegImm.reg 12729))))).val
theorem input8217_def : input8217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12733 12725 (Flapjack.WordRegImm.reg 12729)))) := by
  unfold input8217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12733 12725 (Flapjack.WordRegImm.reg 12729))))).val
theorem output8217_def : output8217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12733 12725 (Flapjack.WordRegImm.reg 12729)))) := by
  unfold output8217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8217_skip : Flapjack.WordAlloc.isSkip output8217 = false := by
  rw [output8217_def]
  conv => lhs; cbv
  try rfl
theorem node8217_eq : Flapjack.WordAlloc.removeDeadStructural input8217 value4112 value1 value2 = (output8217, value4113, value1) := by
  rw [input8217_def, output8217_def]
  try (conv => lhs; cbv)
  try rfl

def value4114 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12729 3024#64))).val
theorem input8218_def : input8218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12729 3024#64)) := by
  unfold input8218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12729 3024#64))).val
theorem output8218_def : output8218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12729 3024#64)) := by
  unfold output8218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8218_skip : Flapjack.WordAlloc.isSkip output8218 = false := by
  rw [output8218_def]
  conv => lhs; cbv
  try rfl
theorem node8218_eq : Flapjack.WordAlloc.removeDeadStructural input8218 value4113 value1 value2 = (output8218, value4114, value1) := by
  rw [input8218_def, output8218_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8218 input8217)).val
theorem input8219_def : input8219 = (.seq input8218 input8217) := by
  unfold input8219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8218 output8217)).val
theorem output8219_def : output8219 = (.seq output8218 output8217) := by
  unfold output8219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8219_skip : Flapjack.WordAlloc.isSkip output8219 = false := by
  rw [output8219_def]
  conv => lhs; cbv
  try rfl
theorem node8219_eq : Flapjack.WordAlloc.removeDeadStructural input8219 value4112 value1 value2 = (output8219, value4114, value1) := by
  rw [input8219_def, output8219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8217_eq]
  dsimp only
  rw [node8218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4115 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12725 (Flapjack.WordLangAddr.addr 12721 18446744073709551104#64)))).val
theorem input8220_def : input8220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12725 (Flapjack.WordLangAddr.addr 12721 18446744073709551104#64))) := by
  unfold input8220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12725 (Flapjack.WordLangAddr.addr 12721 18446744073709551104#64)))).val
theorem output8220_def : output8220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12725 (Flapjack.WordLangAddr.addr 12721 18446744073709551104#64))) := by
  unfold output8220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8220_skip : Flapjack.WordAlloc.isSkip output8220 = false := by
  rw [output8220_def]
  conv => lhs; cbv
  try rfl
theorem node8220_eq : Flapjack.WordAlloc.removeDeadStructural input8220 value4114 value1 value2 = (output8220, value4115, value1) := by
  rw [input8220_def, output8220_def]
  try (conv => lhs; cbv)
  try rfl

def value4116 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12721 12717)).val
theorem input8221_def : input8221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12721 12717) := by
  unfold input8221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12721 12717)).val
theorem output8221_def : output8221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12721 12717) := by
  unfold output8221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8221_skip : Flapjack.WordAlloc.isSkip output8221 = false := by
  rw [output8221_def]
  conv => lhs; cbv
  try rfl
theorem node8221_eq : Flapjack.WordAlloc.removeDeadStructural input8221 value4115 value1 value2 = (output8221, value4116, value1) := by
  rw [input8221_def, output8221_def]
  try (conv => lhs; cbv)
  try rfl

def value4117 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12717 12713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8222_def : input8222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12717 12713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12717 12713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8222_def : output8222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12717 12713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8222_skip : Flapjack.WordAlloc.isSkip output8222 = false := by
  rw [output8222_def]
  conv => lhs; cbv
  try rfl
theorem node8222_eq : Flapjack.WordAlloc.removeDeadStructural input8222 value4116 value1 value2 = (output8222, value4117, value1) := by
  rw [input8222_def, output8222_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12713 Flapjack.WordStore.heapLength)).val
theorem input8223_def : input8223 = (Flapjack.WordLangProgHOL.get 12713 Flapjack.WordStore.heapLength) := by
  unfold input8223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12713 Flapjack.WordStore.heapLength)).val
theorem output8223_def : output8223 = (Flapjack.WordLangProgHOL.get 12713 Flapjack.WordStore.heapLength) := by
  unfold output8223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8223_skip : Flapjack.WordAlloc.isSkip output8223 = false := by
  rw [output8223_def]
  conv => lhs; cbv
  try rfl
theorem node8223_eq : Flapjack.WordAlloc.removeDeadStructural input8223 value4117 value1 value2 = (output8223, value5, value1) := by
  rw [input8223_def, output8223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8223 input8222)).val
theorem input8224_def : input8224 = (.seq input8223 input8222) := by
  unfold input8224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8223 output8222)).val
theorem output8224_def : output8224 = (.seq output8223 output8222) := by
  unfold output8224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8224_skip : Flapjack.WordAlloc.isSkip output8224 = false := by
  rw [output8224_def]
  conv => lhs; cbv
  try rfl
theorem node8224_eq : Flapjack.WordAlloc.removeDeadStructural input8224 value4116 value1 value2 = (output8224, value5, value1) := by
  rw [input8224_def, output8224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8222_eq]
  dsimp only
  rw [node8223_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8224 input8221)).val
theorem input8225_def : input8225 = (.seq input8224 input8221) := by
  unfold input8225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8224 output8221)).val
theorem output8225_def : output8225 = (.seq output8224 output8221) := by
  unfold output8225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8225_skip : Flapjack.WordAlloc.isSkip output8225 = false := by
  rw [output8225_def]
  conv => lhs; cbv
  try rfl
theorem node8225_eq : Flapjack.WordAlloc.removeDeadStructural input8225 value4115 value1 value2 = (output8225, value5, value1) := by
  rw [input8225_def, output8225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8221_eq]
  dsimp only
  rw [node8224_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8225 input8220)).val
theorem input8226_def : input8226 = (.seq input8225 input8220) := by
  unfold input8226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8225 output8220)).val
theorem output8226_def : output8226 = (.seq output8225 output8220) := by
  unfold output8226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8226_skip : Flapjack.WordAlloc.isSkip output8226 = false := by
  rw [output8226_def]
  conv => lhs; cbv
  try rfl
theorem node8226_eq : Flapjack.WordAlloc.removeDeadStructural input8226 value4114 value1 value2 = (output8226, value5, value1) := by
  rw [input8226_def, output8226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8220_eq]
  dsimp only
  rw [node8225_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8226 input8219)).val
theorem input8227_def : input8227 = (.seq input8226 input8219) := by
  unfold input8227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8226 output8219)).val
theorem output8227_def : output8227 = (.seq output8226 output8219) := by
  unfold output8227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8227_skip : Flapjack.WordAlloc.isSkip output8227 = false := by
  rw [output8227_def]
  conv => lhs; cbv
  try rfl
theorem node8227_eq : Flapjack.WordAlloc.removeDeadStructural input8227 value4112 value1 value2 = (output8227, value5, value1) := by
  rw [input8227_def, output8227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8219_eq]
  dsimp only
  rw [node8226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4118 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12705 (Flapjack.WordLangAddr.addr 12709 0#64)))).val
theorem input8228_def : input8228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12705 (Flapjack.WordLangAddr.addr 12709 0#64))) := by
  unfold input8228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12705 (Flapjack.WordLangAddr.addr 12709 0#64)))).val
theorem output8228_def : output8228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12705 (Flapjack.WordLangAddr.addr 12709 0#64))) := by
  unfold output8228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8228_skip : Flapjack.WordAlloc.isSkip output8228 = false := by
  rw [output8228_def]
  conv => lhs; cbv
  try rfl
theorem node8228_eq : Flapjack.WordAlloc.removeDeadStructural input8228 value5 value1 value2 = (output8228, value4118, value1) := by
  rw [input8228_def, output8228_def]
  try (conv => lhs; cbv)
  try rfl

def value4119 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12709, 12697)])).val
theorem input8229_def : input8229 = (Flapjack.WordLangProgHOL.move 0 [(12709, 12697)]) := by
  unfold input8229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12709, 12697)])).val
theorem output8229_def : output8229 = (Flapjack.WordLangProgHOL.move 0 [(12709, 12697)]) := by
  unfold output8229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8229_skip : Flapjack.WordAlloc.isSkip output8229 = false := by
  rw [output8229_def]
  conv => lhs; cbv
  try rfl
theorem node8229_eq : Flapjack.WordAlloc.removeDeadStructural input8229 value4118 value1 value2 = (output8229, value4119, value1) := by
  rw [input8229_def, output8229_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8229 input8228)).val
theorem input8230_def : input8230 = (.seq input8229 input8228) := by
  unfold input8230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8229 output8228)).val
theorem output8230_def : output8230 = (.seq output8229 output8228) := by
  unfold output8230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8230_skip : Flapjack.WordAlloc.isSkip output8230 = false := by
  rw [output8230_def]
  conv => lhs; cbv
  try rfl
theorem node8230_eq : Flapjack.WordAlloc.removeDeadStructural input8230 value5 value1 value2 = (output8230, value4119, value1) := by
  rw [input8230_def, output8230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8228_eq]
  dsimp only
  rw [node8229_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4120 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12705 14775319642720936898#64))).val
theorem input8231_def : input8231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12705 14775319642720936898#64)) := by
  unfold input8231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12705 14775319642720936898#64))).val
theorem output8231_def : output8231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12705 14775319642720936898#64)) := by
  unfold output8231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8231_skip : Flapjack.WordAlloc.isSkip output8231 = false := by
  rw [output8231_def]
  conv => lhs; cbv
  try rfl
theorem node8231_eq : Flapjack.WordAlloc.removeDeadStructural input8231 value4119 value1 value2 = (output8231, value4120, value1) := by
  rw [input8231_def, output8231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12701 14775319642720936898#64))).val
theorem input8232_def : input8232 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12701 14775319642720936898#64)) := by
  unfold input8232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8232_def : output8232 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8232_skip : Flapjack.WordAlloc.isSkip output8232 = true := by
  rw [output8232_def]
  conv => lhs; cbv
  try rfl
theorem node8232_eq : Flapjack.WordAlloc.removeDeadStructural input8232 value4120 value1 value2 = (output8232, value4120, value1) := by
  rw [input8232_def, output8232_def]
  try (conv => lhs; cbv)
  try rfl

def value4121 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12697 12689 (Flapjack.WordRegImm.reg 12693))))).val
theorem input8233_def : input8233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12697 12689 (Flapjack.WordRegImm.reg 12693)))) := by
  unfold input8233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12697 12689 (Flapjack.WordRegImm.reg 12693))))).val
theorem output8233_def : output8233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12697 12689 (Flapjack.WordRegImm.reg 12693)))) := by
  unfold output8233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8233_skip : Flapjack.WordAlloc.isSkip output8233 = false := by
  rw [output8233_def]
  conv => lhs; cbv
  try rfl
theorem node8233_eq : Flapjack.WordAlloc.removeDeadStructural input8233 value4120 value1 value2 = (output8233, value4121, value1) := by
  rw [input8233_def, output8233_def]
  try (conv => lhs; cbv)
  try rfl

def value4122 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12693 3016#64))).val
theorem input8234_def : input8234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12693 3016#64)) := by
  unfold input8234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12693 3016#64))).val
theorem output8234_def : output8234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12693 3016#64)) := by
  unfold output8234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8234_skip : Flapjack.WordAlloc.isSkip output8234 = false := by
  rw [output8234_def]
  conv => lhs; cbv
  try rfl
theorem node8234_eq : Flapjack.WordAlloc.removeDeadStructural input8234 value4121 value1 value2 = (output8234, value4122, value1) := by
  rw [input8234_def, output8234_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8234 input8233)).val
theorem input8235_def : input8235 = (.seq input8234 input8233) := by
  unfold input8235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8234 output8233)).val
theorem output8235_def : output8235 = (.seq output8234 output8233) := by
  unfold output8235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8235_skip : Flapjack.WordAlloc.isSkip output8235 = false := by
  rw [output8235_def]
  conv => lhs; cbv
  try rfl
theorem node8235_eq : Flapjack.WordAlloc.removeDeadStructural input8235 value4120 value1 value2 = (output8235, value4122, value1) := by
  rw [input8235_def, output8235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8233_eq]
  dsimp only
  rw [node8234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4123 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12689 (Flapjack.WordLangAddr.addr 12685 18446744073709551104#64)))).val
theorem input8236_def : input8236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12689 (Flapjack.WordLangAddr.addr 12685 18446744073709551104#64))) := by
  unfold input8236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12689 (Flapjack.WordLangAddr.addr 12685 18446744073709551104#64)))).val
theorem output8236_def : output8236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12689 (Flapjack.WordLangAddr.addr 12685 18446744073709551104#64))) := by
  unfold output8236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8236_skip : Flapjack.WordAlloc.isSkip output8236 = false := by
  rw [output8236_def]
  conv => lhs; cbv
  try rfl
theorem node8236_eq : Flapjack.WordAlloc.removeDeadStructural input8236 value4122 value1 value2 = (output8236, value4123, value1) := by
  rw [input8236_def, output8236_def]
  try (conv => lhs; cbv)
  try rfl

def value4124 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12685 12681)).val
theorem input8237_def : input8237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12685 12681) := by
  unfold input8237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12685 12681)).val
theorem output8237_def : output8237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12685 12681) := by
  unfold output8237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8237_skip : Flapjack.WordAlloc.isSkip output8237 = false := by
  rw [output8237_def]
  conv => lhs; cbv
  try rfl
theorem node8237_eq : Flapjack.WordAlloc.removeDeadStructural input8237 value4123 value1 value2 = (output8237, value4124, value1) := by
  rw [input8237_def, output8237_def]
  try (conv => lhs; cbv)
  try rfl

def value4125 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12681 12677 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8238_def : input8238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12681 12677 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12681 12677 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8238_def : output8238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12681 12677 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8238_skip : Flapjack.WordAlloc.isSkip output8238 = false := by
  rw [output8238_def]
  conv => lhs; cbv
  try rfl
theorem node8238_eq : Flapjack.WordAlloc.removeDeadStructural input8238 value4124 value1 value2 = (output8238, value4125, value1) := by
  rw [input8238_def, output8238_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12677 Flapjack.WordStore.heapLength)).val
theorem input8239_def : input8239 = (Flapjack.WordLangProgHOL.get 12677 Flapjack.WordStore.heapLength) := by
  unfold input8239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12677 Flapjack.WordStore.heapLength)).val
theorem output8239_def : output8239 = (Flapjack.WordLangProgHOL.get 12677 Flapjack.WordStore.heapLength) := by
  unfold output8239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8239_skip : Flapjack.WordAlloc.isSkip output8239 = false := by
  rw [output8239_def]
  conv => lhs; cbv
  try rfl
theorem node8239_eq : Flapjack.WordAlloc.removeDeadStructural input8239 value4125 value1 value2 = (output8239, value5, value1) := by
  rw [input8239_def, output8239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8239 input8238)).val
theorem input8240_def : input8240 = (.seq input8239 input8238) := by
  unfold input8240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8239 output8238)).val
theorem output8240_def : output8240 = (.seq output8239 output8238) := by
  unfold output8240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8240_skip : Flapjack.WordAlloc.isSkip output8240 = false := by
  rw [output8240_def]
  conv => lhs; cbv
  try rfl
theorem node8240_eq : Flapjack.WordAlloc.removeDeadStructural input8240 value4124 value1 value2 = (output8240, value5, value1) := by
  rw [input8240_def, output8240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8238_eq]
  dsimp only
  rw [node8239_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8240 input8237)).val
theorem input8241_def : input8241 = (.seq input8240 input8237) := by
  unfold input8241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8240 output8237)).val
theorem output8241_def : output8241 = (.seq output8240 output8237) := by
  unfold output8241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8241_skip : Flapjack.WordAlloc.isSkip output8241 = false := by
  rw [output8241_def]
  conv => lhs; cbv
  try rfl
theorem node8241_eq : Flapjack.WordAlloc.removeDeadStructural input8241 value4123 value1 value2 = (output8241, value5, value1) := by
  rw [input8241_def, output8241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8237_eq]
  dsimp only
  rw [node8240_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8241 input8236)).val
theorem input8242_def : input8242 = (.seq input8241 input8236) := by
  unfold input8242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8241 output8236)).val
theorem output8242_def : output8242 = (.seq output8241 output8236) := by
  unfold output8242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8242_skip : Flapjack.WordAlloc.isSkip output8242 = false := by
  rw [output8242_def]
  conv => lhs; cbv
  try rfl
theorem node8242_eq : Flapjack.WordAlloc.removeDeadStructural input8242 value4122 value1 value2 = (output8242, value5, value1) := by
  rw [input8242_def, output8242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8236_eq]
  dsimp only
  rw [node8241_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8242 input8235)).val
theorem input8243_def : input8243 = (.seq input8242 input8235) := by
  unfold input8243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8242 output8235)).val
theorem output8243_def : output8243 = (.seq output8242 output8235) := by
  unfold output8243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8243_skip : Flapjack.WordAlloc.isSkip output8243 = false := by
  rw [output8243_def]
  conv => lhs; cbv
  try rfl
theorem node8243_eq : Flapjack.WordAlloc.removeDeadStructural input8243 value4120 value1 value2 = (output8243, value5, value1) := by
  rw [input8243_def, output8243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8235_eq]
  dsimp only
  rw [node8242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4126 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12669 (Flapjack.WordLangAddr.addr 12673 0#64)))).val
theorem input8244_def : input8244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12669 (Flapjack.WordLangAddr.addr 12673 0#64))) := by
  unfold input8244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12669 (Flapjack.WordLangAddr.addr 12673 0#64)))).val
theorem output8244_def : output8244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12669 (Flapjack.WordLangAddr.addr 12673 0#64))) := by
  unfold output8244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8244_skip : Flapjack.WordAlloc.isSkip output8244 = false := by
  rw [output8244_def]
  conv => lhs; cbv
  try rfl
theorem node8244_eq : Flapjack.WordAlloc.removeDeadStructural input8244 value5 value1 value2 = (output8244, value4126, value1) := by
  rw [input8244_def, output8244_def]
  try (conv => lhs; cbv)
  try rfl

def value4127 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12673, 12661)])).val
theorem input8245_def : input8245 = (Flapjack.WordLangProgHOL.move 0 [(12673, 12661)]) := by
  unfold input8245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12673, 12661)])).val
theorem output8245_def : output8245 = (Flapjack.WordLangProgHOL.move 0 [(12673, 12661)]) := by
  unfold output8245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8245_skip : Flapjack.WordAlloc.isSkip output8245 = false := by
  rw [output8245_def]
  conv => lhs; cbv
  try rfl
theorem node8245_eq : Flapjack.WordAlloc.removeDeadStructural input8245 value4126 value1 value2 = (output8245, value4127, value1) := by
  rw [input8245_def, output8245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8245 input8244)).val
theorem input8246_def : input8246 = (.seq input8245 input8244) := by
  unfold input8246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8245 output8244)).val
theorem output8246_def : output8246 = (.seq output8245 output8244) := by
  unfold output8246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8246_skip : Flapjack.WordAlloc.isSkip output8246 = false := by
  rw [output8246_def]
  conv => lhs; cbv
  try rfl
theorem node8246_eq : Flapjack.WordAlloc.removeDeadStructural input8246 value5 value1 value2 = (output8246, value4127, value1) := by
  rw [input8246_def, output8246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8244_eq]
  dsimp only
  rw [node8245_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4128 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12669 13733803417833814835#64))).val
theorem input8247_def : input8247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12669 13733803417833814835#64)) := by
  unfold input8247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12669 13733803417833814835#64))).val
theorem output8247_def : output8247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12669 13733803417833814835#64)) := by
  unfold output8247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8247_skip : Flapjack.WordAlloc.isSkip output8247 = false := by
  rw [output8247_def]
  conv => lhs; cbv
  try rfl
theorem node8247_eq : Flapjack.WordAlloc.removeDeadStructural input8247 value4127 value1 value2 = (output8247, value4128, value1) := by
  rw [input8247_def, output8247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12665 13733803417833814835#64))).val
theorem input8248_def : input8248 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12665 13733803417833814835#64)) := by
  unfold input8248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8248_def : output8248 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8248_skip : Flapjack.WordAlloc.isSkip output8248 = true := by
  rw [output8248_def]
  conv => lhs; cbv
  try rfl
theorem node8248_eq : Flapjack.WordAlloc.removeDeadStructural input8248 value4128 value1 value2 = (output8248, value4128, value1) := by
  rw [input8248_def, output8248_def]
  try (conv => lhs; cbv)
  try rfl

def value4129 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12661 12653 (Flapjack.WordRegImm.reg 12657))))).val
theorem input8249_def : input8249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12661 12653 (Flapjack.WordRegImm.reg 12657)))) := by
  unfold input8249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12661 12653 (Flapjack.WordRegImm.reg 12657))))).val
theorem output8249_def : output8249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12661 12653 (Flapjack.WordRegImm.reg 12657)))) := by
  unfold output8249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8249_skip : Flapjack.WordAlloc.isSkip output8249 = false := by
  rw [output8249_def]
  conv => lhs; cbv
  try rfl
theorem node8249_eq : Flapjack.WordAlloc.removeDeadStructural input8249 value4128 value1 value2 = (output8249, value4129, value1) := by
  rw [input8249_def, output8249_def]
  try (conv => lhs; cbv)
  try rfl

def value4130 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12657 3008#64))).val
theorem input8250_def : input8250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12657 3008#64)) := by
  unfold input8250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12657 3008#64))).val
theorem output8250_def : output8250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12657 3008#64)) := by
  unfold output8250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8250_skip : Flapjack.WordAlloc.isSkip output8250 = false := by
  rw [output8250_def]
  conv => lhs; cbv
  try rfl
theorem node8250_eq : Flapjack.WordAlloc.removeDeadStructural input8250 value4129 value1 value2 = (output8250, value4130, value1) := by
  rw [input8250_def, output8250_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8250 input8249)).val
theorem input8251_def : input8251 = (.seq input8250 input8249) := by
  unfold input8251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8250 output8249)).val
theorem output8251_def : output8251 = (.seq output8250 output8249) := by
  unfold output8251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8251_skip : Flapjack.WordAlloc.isSkip output8251 = false := by
  rw [output8251_def]
  conv => lhs; cbv
  try rfl
theorem node8251_eq : Flapjack.WordAlloc.removeDeadStructural input8251 value4128 value1 value2 = (output8251, value4130, value1) := by
  rw [input8251_def, output8251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8249_eq]
  dsimp only
  rw [node8250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4131 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12653 (Flapjack.WordLangAddr.addr 12649 18446744073709551104#64)))).val
theorem input8252_def : input8252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12653 (Flapjack.WordLangAddr.addr 12649 18446744073709551104#64))) := by
  unfold input8252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12653 (Flapjack.WordLangAddr.addr 12649 18446744073709551104#64)))).val
theorem output8252_def : output8252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12653 (Flapjack.WordLangAddr.addr 12649 18446744073709551104#64))) := by
  unfold output8252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8252_skip : Flapjack.WordAlloc.isSkip output8252 = false := by
  rw [output8252_def]
  conv => lhs; cbv
  try rfl
theorem node8252_eq : Flapjack.WordAlloc.removeDeadStructural input8252 value4130 value1 value2 = (output8252, value4131, value1) := by
  rw [input8252_def, output8252_def]
  try (conv => lhs; cbv)
  try rfl

def value4132 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12649 12645)).val
theorem input8253_def : input8253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12649 12645) := by
  unfold input8253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12649 12645)).val
theorem output8253_def : output8253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12649 12645) := by
  unfold output8253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8253_skip : Flapjack.WordAlloc.isSkip output8253 = false := by
  rw [output8253_def]
  conv => lhs; cbv
  try rfl
theorem node8253_eq : Flapjack.WordAlloc.removeDeadStructural input8253 value4131 value1 value2 = (output8253, value4132, value1) := by
  rw [input8253_def, output8253_def]
  try (conv => lhs; cbv)
  try rfl

def value4133 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12645 12641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8254_def : input8254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12645 12641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12645 12641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8254_def : output8254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12645 12641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8254_skip : Flapjack.WordAlloc.isSkip output8254 = false := by
  rw [output8254_def]
  conv => lhs; cbv
  try rfl
theorem node8254_eq : Flapjack.WordAlloc.removeDeadStructural input8254 value4132 value1 value2 = (output8254, value4133, value1) := by
  rw [input8254_def, output8254_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12641 Flapjack.WordStore.heapLength)).val
theorem input8255_def : input8255 = (Flapjack.WordLangProgHOL.get 12641 Flapjack.WordStore.heapLength) := by
  unfold input8255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12641 Flapjack.WordStore.heapLength)).val
theorem output8255_def : output8255 = (Flapjack.WordLangProgHOL.get 12641 Flapjack.WordStore.heapLength) := by
  unfold output8255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8255_skip : Flapjack.WordAlloc.isSkip output8255 = false := by
  rw [output8255_def]
  conv => lhs; cbv
  try rfl
theorem node8255_eq : Flapjack.WordAlloc.removeDeadStructural input8255 value4133 value1 value2 = (output8255, value5, value1) := by
  rw [input8255_def, output8255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8255 input8254)).val
theorem input8256_def : input8256 = (.seq input8255 input8254) := by
  unfold input8256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8255 output8254)).val
theorem output8256_def : output8256 = (.seq output8255 output8254) := by
  unfold output8256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8256_skip : Flapjack.WordAlloc.isSkip output8256 = false := by
  rw [output8256_def]
  conv => lhs; cbv
  try rfl
theorem node8256_eq : Flapjack.WordAlloc.removeDeadStructural input8256 value4132 value1 value2 = (output8256, value5, value1) := by
  rw [input8256_def, output8256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8254_eq]
  dsimp only
  rw [node8255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8256 input8253)).val
theorem input8257_def : input8257 = (.seq input8256 input8253) := by
  unfold input8257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8256 output8253)).val
theorem output8257_def : output8257 = (.seq output8256 output8253) := by
  unfold output8257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8257_skip : Flapjack.WordAlloc.isSkip output8257 = false := by
  rw [output8257_def]
  conv => lhs; cbv
  try rfl
theorem node8257_eq : Flapjack.WordAlloc.removeDeadStructural input8257 value4131 value1 value2 = (output8257, value5, value1) := by
  rw [input8257_def, output8257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8253_eq]
  dsimp only
  rw [node8256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8257 input8252)).val
theorem input8258_def : input8258 = (.seq input8257 input8252) := by
  unfold input8258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8257 output8252)).val
theorem output8258_def : output8258 = (.seq output8257 output8252) := by
  unfold output8258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8258_skip : Flapjack.WordAlloc.isSkip output8258 = false := by
  rw [output8258_def]
  conv => lhs; cbv
  try rfl
theorem node8258_eq : Flapjack.WordAlloc.removeDeadStructural input8258 value4130 value1 value2 = (output8258, value5, value1) := by
  rw [input8258_def, output8258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8252_eq]
  dsimp only
  rw [node8257_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8258 input8251)).val
theorem input8259_def : input8259 = (.seq input8258 input8251) := by
  unfold input8259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8258 output8251)).val
theorem output8259_def : output8259 = (.seq output8258 output8251) := by
  unfold output8259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8259_skip : Flapjack.WordAlloc.isSkip output8259 = false := by
  rw [output8259_def]
  conv => lhs; cbv
  try rfl
theorem node8259_eq : Flapjack.WordAlloc.removeDeadStructural input8259 value4128 value1 value2 = (output8259, value5, value1) := by
  rw [input8259_def, output8259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8251_eq]
  dsimp only
  rw [node8258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4134 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12633 (Flapjack.WordLangAddr.addr 12637 0#64)))).val
theorem input8260_def : input8260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12633 (Flapjack.WordLangAddr.addr 12637 0#64))) := by
  unfold input8260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12633 (Flapjack.WordLangAddr.addr 12637 0#64)))).val
theorem output8260_def : output8260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12633 (Flapjack.WordLangAddr.addr 12637 0#64))) := by
  unfold output8260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8260_skip : Flapjack.WordAlloc.isSkip output8260 = false := by
  rw [output8260_def]
  conv => lhs; cbv
  try rfl
theorem node8260_eq : Flapjack.WordAlloc.removeDeadStructural input8260 value5 value1 value2 = (output8260, value4134, value1) := by
  rw [input8260_def, output8260_def]
  try (conv => lhs; cbv)
  try rfl

def value4135 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12637, 12625)])).val
theorem input8261_def : input8261 = (Flapjack.WordLangProgHOL.move 0 [(12637, 12625)]) := by
  unfold input8261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12637, 12625)])).val
theorem output8261_def : output8261 = (Flapjack.WordLangProgHOL.move 0 [(12637, 12625)]) := by
  unfold output8261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8261_skip : Flapjack.WordAlloc.isSkip output8261 = false := by
  rw [output8261_def]
  conv => lhs; cbv
  try rfl
theorem node8261_eq : Flapjack.WordAlloc.removeDeadStructural input8261 value4134 value1 value2 = (output8261, value4135, value1) := by
  rw [input8261_def, output8261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8261 input8260)).val
theorem input8262_def : input8262 = (.seq input8261 input8260) := by
  unfold input8262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8261 output8260)).val
theorem output8262_def : output8262 = (.seq output8261 output8260) := by
  unfold output8262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8262_skip : Flapjack.WordAlloc.isSkip output8262 = false := by
  rw [output8262_def]
  conv => lhs; cbv
  try rfl
theorem node8262_eq : Flapjack.WordAlloc.removeDeadStructural input8262 value5 value1 value2 = (output8262, value4135, value1) := by
  rw [input8262_def, output8262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8260_eq]
  dsimp only
  rw [node8261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4136 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12633 0#64))).val
theorem input8263_def : input8263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12633 0#64)) := by
  unfold input8263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12633 0#64))).val
theorem output8263_def : output8263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12633 0#64)) := by
  unfold output8263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8263_skip : Flapjack.WordAlloc.isSkip output8263 = false := by
  rw [output8263_def]
  conv => lhs; cbv
  try rfl
theorem node8263_eq : Flapjack.WordAlloc.removeDeadStructural input8263 value4135 value1 value2 = (output8263, value4136, value1) := by
  rw [input8263_def, output8263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12629 0#64))).val
theorem input8264_def : input8264 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12629 0#64)) := by
  unfold input8264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8264_def : output8264 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8264_skip : Flapjack.WordAlloc.isSkip output8264 = true := by
  rw [output8264_def]
  conv => lhs; cbv
  try rfl
theorem node8264_eq : Flapjack.WordAlloc.removeDeadStructural input8264 value4136 value1 value2 = (output8264, value4136, value1) := by
  rw [input8264_def, output8264_def]
  try (conv => lhs; cbv)
  try rfl

def value4137 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12625 12617 (Flapjack.WordRegImm.reg 12621))))).val
theorem input8265_def : input8265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12625 12617 (Flapjack.WordRegImm.reg 12621)))) := by
  unfold input8265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12625 12617 (Flapjack.WordRegImm.reg 12621))))).val
theorem output8265_def : output8265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12625 12617 (Flapjack.WordRegImm.reg 12621)))) := by
  unfold output8265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8265_skip : Flapjack.WordAlloc.isSkip output8265 = false := by
  rw [output8265_def]
  conv => lhs; cbv
  try rfl
theorem node8265_eq : Flapjack.WordAlloc.removeDeadStructural input8265 value4136 value1 value2 = (output8265, value4137, value1) := by
  rw [input8265_def, output8265_def]
  try (conv => lhs; cbv)
  try rfl

def value4138 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12621 3000#64))).val
theorem input8266_def : input8266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12621 3000#64)) := by
  unfold input8266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12621 3000#64))).val
theorem output8266_def : output8266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12621 3000#64)) := by
  unfold output8266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8266_skip : Flapjack.WordAlloc.isSkip output8266 = false := by
  rw [output8266_def]
  conv => lhs; cbv
  try rfl
theorem node8266_eq : Flapjack.WordAlloc.removeDeadStructural input8266 value4137 value1 value2 = (output8266, value4138, value1) := by
  rw [input8266_def, output8266_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8266 input8265)).val
theorem input8267_def : input8267 = (.seq input8266 input8265) := by
  unfold input8267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8266 output8265)).val
theorem output8267_def : output8267 = (.seq output8266 output8265) := by
  unfold output8267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8267_skip : Flapjack.WordAlloc.isSkip output8267 = false := by
  rw [output8267_def]
  conv => lhs; cbv
  try rfl
theorem node8267_eq : Flapjack.WordAlloc.removeDeadStructural input8267 value4136 value1 value2 = (output8267, value4138, value1) := by
  rw [input8267_def, output8267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8265_eq]
  dsimp only
  rw [node8266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4139 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12617 (Flapjack.WordLangAddr.addr 12613 18446744073709551104#64)))).val
theorem input8268_def : input8268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12617 (Flapjack.WordLangAddr.addr 12613 18446744073709551104#64))) := by
  unfold input8268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12617 (Flapjack.WordLangAddr.addr 12613 18446744073709551104#64)))).val
theorem output8268_def : output8268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12617 (Flapjack.WordLangAddr.addr 12613 18446744073709551104#64))) := by
  unfold output8268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8268_skip : Flapjack.WordAlloc.isSkip output8268 = false := by
  rw [output8268_def]
  conv => lhs; cbv
  try rfl
theorem node8268_eq : Flapjack.WordAlloc.removeDeadStructural input8268 value4138 value1 value2 = (output8268, value4139, value1) := by
  rw [input8268_def, output8268_def]
  try (conv => lhs; cbv)
  try rfl

def value4140 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12613 12609)).val
theorem input8269_def : input8269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12613 12609) := by
  unfold input8269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12613 12609)).val
theorem output8269_def : output8269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12613 12609) := by
  unfold output8269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8269_skip : Flapjack.WordAlloc.isSkip output8269 = false := by
  rw [output8269_def]
  conv => lhs; cbv
  try rfl
theorem node8269_eq : Flapjack.WordAlloc.removeDeadStructural input8269 value4139 value1 value2 = (output8269, value4140, value1) := by
  rw [input8269_def, output8269_def]
  try (conv => lhs; cbv)
  try rfl

def value4141 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12609 12605 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8270_def : input8270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12609 12605 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12609 12605 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8270_def : output8270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12609 12605 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8270_skip : Flapjack.WordAlloc.isSkip output8270 = false := by
  rw [output8270_def]
  conv => lhs; cbv
  try rfl
theorem node8270_eq : Flapjack.WordAlloc.removeDeadStructural input8270 value4140 value1 value2 = (output8270, value4141, value1) := by
  rw [input8270_def, output8270_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12605 Flapjack.WordStore.heapLength)).val
theorem input8271_def : input8271 = (Flapjack.WordLangProgHOL.get 12605 Flapjack.WordStore.heapLength) := by
  unfold input8271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12605 Flapjack.WordStore.heapLength)).val
theorem output8271_def : output8271 = (Flapjack.WordLangProgHOL.get 12605 Flapjack.WordStore.heapLength) := by
  unfold output8271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8271_skip : Flapjack.WordAlloc.isSkip output8271 = false := by
  rw [output8271_def]
  conv => lhs; cbv
  try rfl
theorem node8271_eq : Flapjack.WordAlloc.removeDeadStructural input8271 value4141 value1 value2 = (output8271, value5, value1) := by
  rw [input8271_def, output8271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8271 input8270)).val
theorem input8272_def : input8272 = (.seq input8271 input8270) := by
  unfold input8272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8271 output8270)).val
theorem output8272_def : output8272 = (.seq output8271 output8270) := by
  unfold output8272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8272_skip : Flapjack.WordAlloc.isSkip output8272 = false := by
  rw [output8272_def]
  conv => lhs; cbv
  try rfl
theorem node8272_eq : Flapjack.WordAlloc.removeDeadStructural input8272 value4140 value1 value2 = (output8272, value5, value1) := by
  rw [input8272_def, output8272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8270_eq]
  dsimp only
  rw [node8271_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8272 input8269)).val
theorem input8273_def : input8273 = (.seq input8272 input8269) := by
  unfold input8273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8272 output8269)).val
theorem output8273_def : output8273 = (.seq output8272 output8269) := by
  unfold output8273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8273_skip : Flapjack.WordAlloc.isSkip output8273 = false := by
  rw [output8273_def]
  conv => lhs; cbv
  try rfl
theorem node8273_eq : Flapjack.WordAlloc.removeDeadStructural input8273 value4139 value1 value2 = (output8273, value5, value1) := by
  rw [input8273_def, output8273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8269_eq]
  dsimp only
  rw [node8272_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8273 input8268)).val
theorem input8274_def : input8274 = (.seq input8273 input8268) := by
  unfold input8274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8273 output8268)).val
theorem output8274_def : output8274 = (.seq output8273 output8268) := by
  unfold output8274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8274_skip : Flapjack.WordAlloc.isSkip output8274 = false := by
  rw [output8274_def]
  conv => lhs; cbv
  try rfl
theorem node8274_eq : Flapjack.WordAlloc.removeDeadStructural input8274 value4138 value1 value2 = (output8274, value5, value1) := by
  rw [input8274_def, output8274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8268_eq]
  dsimp only
  rw [node8273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8274 input8267)).val
theorem input8275_def : input8275 = (.seq input8274 input8267) := by
  unfold input8275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8274 output8267)).val
theorem output8275_def : output8275 = (.seq output8274 output8267) := by
  unfold output8275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8275_skip : Flapjack.WordAlloc.isSkip output8275 = false := by
  rw [output8275_def]
  conv => lhs; cbv
  try rfl
theorem node8275_eq : Flapjack.WordAlloc.removeDeadStructural input8275 value4136 value1 value2 = (output8275, value5, value1) := by
  rw [input8275_def, output8275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8267_eq]
  dsimp only
  rw [node8274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4142 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12597 (Flapjack.WordLangAddr.addr 12601 0#64)))).val
theorem input8276_def : input8276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12597 (Flapjack.WordLangAddr.addr 12601 0#64))) := by
  unfold input8276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12597 (Flapjack.WordLangAddr.addr 12601 0#64)))).val
theorem output8276_def : output8276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12597 (Flapjack.WordLangAddr.addr 12601 0#64))) := by
  unfold output8276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8276_skip : Flapjack.WordAlloc.isSkip output8276 = false := by
  rw [output8276_def]
  conv => lhs; cbv
  try rfl
theorem node8276_eq : Flapjack.WordAlloc.removeDeadStructural input8276 value5 value1 value2 = (output8276, value4142, value1) := by
  rw [input8276_def, output8276_def]
  try (conv => lhs; cbv)
  try rfl

def value4143 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12601, 12589)])).val
theorem input8277_def : input8277 = (Flapjack.WordLangProgHOL.move 0 [(12601, 12589)]) := by
  unfold input8277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12601, 12589)])).val
theorem output8277_def : output8277 = (Flapjack.WordLangProgHOL.move 0 [(12601, 12589)]) := by
  unfold output8277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8277_skip : Flapjack.WordAlloc.isSkip output8277 = false := by
  rw [output8277_def]
  conv => lhs; cbv
  try rfl
theorem node8277_eq : Flapjack.WordAlloc.removeDeadStructural input8277 value4142 value1 value2 = (output8277, value4143, value1) := by
  rw [input8277_def, output8277_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8277 input8276)).val
theorem input8278_def : input8278 = (.seq input8277 input8276) := by
  unfold input8278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8277 output8276)).val
theorem output8278_def : output8278 = (.seq output8277 output8276) := by
  unfold output8278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8278_skip : Flapjack.WordAlloc.isSkip output8278 = false := by
  rw [output8278_def]
  conv => lhs; cbv
  try rfl
theorem node8278_eq : Flapjack.WordAlloc.removeDeadStructural input8278 value5 value1 value2 = (output8278, value4143, value1) := by
  rw [input8278_def, output8278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8276_eq]
  dsimp only
  rw [node8277_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4144 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12597 0#64))).val
theorem input8279_def : input8279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12597 0#64)) := by
  unfold input8279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12597 0#64))).val
theorem output8279_def : output8279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12597 0#64)) := by
  unfold output8279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8279_skip : Flapjack.WordAlloc.isSkip output8279 = false := by
  rw [output8279_def]
  conv => lhs; cbv
  try rfl
theorem node8279_eq : Flapjack.WordAlloc.removeDeadStructural input8279 value4143 value1 value2 = (output8279, value4144, value1) := by
  rw [input8279_def, output8279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12593 0#64))).val
theorem input8280_def : input8280 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12593 0#64)) := by
  unfold input8280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8280_def : output8280 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8280_skip : Flapjack.WordAlloc.isSkip output8280 = true := by
  rw [output8280_def]
  conv => lhs; cbv
  try rfl
theorem node8280_eq : Flapjack.WordAlloc.removeDeadStructural input8280 value4144 value1 value2 = (output8280, value4144, value1) := by
  rw [input8280_def, output8280_def]
  try (conv => lhs; cbv)
  try rfl

def value4145 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12589 12581 (Flapjack.WordRegImm.reg 12585))))).val
theorem input8281_def : input8281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12589 12581 (Flapjack.WordRegImm.reg 12585)))) := by
  unfold input8281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12589 12581 (Flapjack.WordRegImm.reg 12585))))).val
theorem output8281_def : output8281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12589 12581 (Flapjack.WordRegImm.reg 12585)))) := by
  unfold output8281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8281_skip : Flapjack.WordAlloc.isSkip output8281 = false := by
  rw [output8281_def]
  conv => lhs; cbv
  try rfl
theorem node8281_eq : Flapjack.WordAlloc.removeDeadStructural input8281 value4144 value1 value2 = (output8281, value4145, value1) := by
  rw [input8281_def, output8281_def]
  try (conv => lhs; cbv)
  try rfl

def value4146 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12585 2992#64))).val
theorem input8282_def : input8282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12585 2992#64)) := by
  unfold input8282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12585 2992#64))).val
theorem output8282_def : output8282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12585 2992#64)) := by
  unfold output8282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8282_skip : Flapjack.WordAlloc.isSkip output8282 = false := by
  rw [output8282_def]
  conv => lhs; cbv
  try rfl
theorem node8282_eq : Flapjack.WordAlloc.removeDeadStructural input8282 value4145 value1 value2 = (output8282, value4146, value1) := by
  rw [input8282_def, output8282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8282 input8281)).val
theorem input8283_def : input8283 = (.seq input8282 input8281) := by
  unfold input8283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8282 output8281)).val
theorem output8283_def : output8283 = (.seq output8282 output8281) := by
  unfold output8283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8283_skip : Flapjack.WordAlloc.isSkip output8283 = false := by
  rw [output8283_def]
  conv => lhs; cbv
  try rfl
theorem node8283_eq : Flapjack.WordAlloc.removeDeadStructural input8283 value4144 value1 value2 = (output8283, value4146, value1) := by
  rw [input8283_def, output8283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8281_eq]
  dsimp only
  rw [node8282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4147 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12581 (Flapjack.WordLangAddr.addr 12577 18446744073709551104#64)))).val
theorem input8284_def : input8284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12581 (Flapjack.WordLangAddr.addr 12577 18446744073709551104#64))) := by
  unfold input8284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12581 (Flapjack.WordLangAddr.addr 12577 18446744073709551104#64)))).val
theorem output8284_def : output8284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12581 (Flapjack.WordLangAddr.addr 12577 18446744073709551104#64))) := by
  unfold output8284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8284_skip : Flapjack.WordAlloc.isSkip output8284 = false := by
  rw [output8284_def]
  conv => lhs; cbv
  try rfl
theorem node8284_eq : Flapjack.WordAlloc.removeDeadStructural input8284 value4146 value1 value2 = (output8284, value4147, value1) := by
  rw [input8284_def, output8284_def]
  try (conv => lhs; cbv)
  try rfl

def value4148 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12577 12573)).val
theorem input8285_def : input8285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12577 12573) := by
  unfold input8285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12577 12573)).val
theorem output8285_def : output8285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12577 12573) := by
  unfold output8285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8285_skip : Flapjack.WordAlloc.isSkip output8285 = false := by
  rw [output8285_def]
  conv => lhs; cbv
  try rfl
theorem node8285_eq : Flapjack.WordAlloc.removeDeadStructural input8285 value4147 value1 value2 = (output8285, value4148, value1) := by
  rw [input8285_def, output8285_def]
  try (conv => lhs; cbv)
  try rfl

def value4149 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12573 12569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8286_def : input8286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12573 12569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12573 12569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8286_def : output8286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12573 12569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8286_skip : Flapjack.WordAlloc.isSkip output8286 = false := by
  rw [output8286_def]
  conv => lhs; cbv
  try rfl
theorem node8286_eq : Flapjack.WordAlloc.removeDeadStructural input8286 value4148 value1 value2 = (output8286, value4149, value1) := by
  rw [input8286_def, output8286_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12569 Flapjack.WordStore.heapLength)).val
theorem input8287_def : input8287 = (Flapjack.WordLangProgHOL.get 12569 Flapjack.WordStore.heapLength) := by
  unfold input8287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12569 Flapjack.WordStore.heapLength)).val
theorem output8287_def : output8287 = (Flapjack.WordLangProgHOL.get 12569 Flapjack.WordStore.heapLength) := by
  unfold output8287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8287_skip : Flapjack.WordAlloc.isSkip output8287 = false := by
  rw [output8287_def]
  conv => lhs; cbv
  try rfl
theorem node8287_eq : Flapjack.WordAlloc.removeDeadStructural input8287 value4149 value1 value2 = (output8287, value5, value1) := by
  rw [input8287_def, output8287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8287 input8286)).val
theorem input8288_def : input8288 = (.seq input8287 input8286) := by
  unfold input8288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8287 output8286)).val
theorem output8288_def : output8288 = (.seq output8287 output8286) := by
  unfold output8288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8288_skip : Flapjack.WordAlloc.isSkip output8288 = false := by
  rw [output8288_def]
  conv => lhs; cbv
  try rfl
theorem node8288_eq : Flapjack.WordAlloc.removeDeadStructural input8288 value4148 value1 value2 = (output8288, value5, value1) := by
  rw [input8288_def, output8288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8286_eq]
  dsimp only
  rw [node8287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8288 input8285)).val
theorem input8289_def : input8289 = (.seq input8288 input8285) := by
  unfold input8289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8288 output8285)).val
theorem output8289_def : output8289 = (.seq output8288 output8285) := by
  unfold output8289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8289_skip : Flapjack.WordAlloc.isSkip output8289 = false := by
  rw [output8289_def]
  conv => lhs; cbv
  try rfl
theorem node8289_eq : Flapjack.WordAlloc.removeDeadStructural input8289 value4147 value1 value2 = (output8289, value5, value1) := by
  rw [input8289_def, output8289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8285_eq]
  dsimp only
  rw [node8288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8289 input8284)).val
theorem input8290_def : input8290 = (.seq input8289 input8284) := by
  unfold input8290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8289 output8284)).val
theorem output8290_def : output8290 = (.seq output8289 output8284) := by
  unfold output8290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8290_skip : Flapjack.WordAlloc.isSkip output8290 = false := by
  rw [output8290_def]
  conv => lhs; cbv
  try rfl
theorem node8290_eq : Flapjack.WordAlloc.removeDeadStructural input8290 value4146 value1 value2 = (output8290, value5, value1) := by
  rw [input8290_def, output8290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8284_eq]
  dsimp only
  rw [node8289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8290 input8283)).val
theorem input8291_def : input8291 = (.seq input8290 input8283) := by
  unfold input8291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8290 output8283)).val
theorem output8291_def : output8291 = (.seq output8290 output8283) := by
  unfold output8291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8291_skip : Flapjack.WordAlloc.isSkip output8291 = false := by
  rw [output8291_def]
  conv => lhs; cbv
  try rfl
theorem node8291_eq : Flapjack.WordAlloc.removeDeadStructural input8291 value4144 value1 value2 = (output8291, value5, value1) := by
  rw [input8291_def, output8291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8283_eq]
  dsimp only
  rw [node8290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4150 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12561 (Flapjack.WordLangAddr.addr 12565 0#64)))).val
theorem input8292_def : input8292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12561 (Flapjack.WordLangAddr.addr 12565 0#64))) := by
  unfold input8292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12561 (Flapjack.WordLangAddr.addr 12565 0#64)))).val
theorem output8292_def : output8292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12561 (Flapjack.WordLangAddr.addr 12565 0#64))) := by
  unfold output8292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8292_skip : Flapjack.WordAlloc.isSkip output8292 = false := by
  rw [output8292_def]
  conv => lhs; cbv
  try rfl
theorem node8292_eq : Flapjack.WordAlloc.removeDeadStructural input8292 value5 value1 value2 = (output8292, value4150, value1) := by
  rw [input8292_def, output8292_def]
  try (conv => lhs; cbv)
  try rfl

def value4151 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12565, 12553)])).val
theorem input8293_def : input8293 = (Flapjack.WordLangProgHOL.move 0 [(12565, 12553)]) := by
  unfold input8293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12565, 12553)])).val
theorem output8293_def : output8293 = (Flapjack.WordLangProgHOL.move 0 [(12565, 12553)]) := by
  unfold output8293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8293_skip : Flapjack.WordAlloc.isSkip output8293 = false := by
  rw [output8293_def]
  conv => lhs; cbv
  try rfl
theorem node8293_eq : Flapjack.WordAlloc.removeDeadStructural input8293 value4150 value1 value2 = (output8293, value4151, value1) := by
  rw [input8293_def, output8293_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8293 input8292)).val
theorem input8294_def : input8294 = (.seq input8293 input8292) := by
  unfold input8294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8293 output8292)).val
theorem output8294_def : output8294 = (.seq output8293 output8292) := by
  unfold output8294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8294_skip : Flapjack.WordAlloc.isSkip output8294 = false := by
  rw [output8294_def]
  conv => lhs; cbv
  try rfl
theorem node8294_eq : Flapjack.WordAlloc.removeDeadStructural input8294 value5 value1 value2 = (output8294, value4151, value1) := by
  rw [input8294_def, output8294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8292_eq]
  dsimp only
  rw [node8293_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4152 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12561 0#64))).val
theorem input8295_def : input8295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12561 0#64)) := by
  unfold input8295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12561 0#64))).val
theorem output8295_def : output8295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12561 0#64)) := by
  unfold output8295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8295_skip : Flapjack.WordAlloc.isSkip output8295 = false := by
  rw [output8295_def]
  conv => lhs; cbv
  try rfl
theorem node8295_eq : Flapjack.WordAlloc.removeDeadStructural input8295 value4151 value1 value2 = (output8295, value4152, value1) := by
  rw [input8295_def, output8295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12557 0#64))).val
theorem input8296_def : input8296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12557 0#64)) := by
  unfold input8296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8296_def : output8296 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8296_skip : Flapjack.WordAlloc.isSkip output8296 = true := by
  rw [output8296_def]
  conv => lhs; cbv
  try rfl
theorem node8296_eq : Flapjack.WordAlloc.removeDeadStructural input8296 value4152 value1 value2 = (output8296, value4152, value1) := by
  rw [input8296_def, output8296_def]
  try (conv => lhs; cbv)
  try rfl

def value4153 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12553 12545 (Flapjack.WordRegImm.reg 12549))))).val
theorem input8297_def : input8297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12553 12545 (Flapjack.WordRegImm.reg 12549)))) := by
  unfold input8297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12553 12545 (Flapjack.WordRegImm.reg 12549))))).val
theorem output8297_def : output8297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12553 12545 (Flapjack.WordRegImm.reg 12549)))) := by
  unfold output8297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8297_skip : Flapjack.WordAlloc.isSkip output8297 = false := by
  rw [output8297_def]
  conv => lhs; cbv
  try rfl
theorem node8297_eq : Flapjack.WordAlloc.removeDeadStructural input8297 value4152 value1 value2 = (output8297, value4153, value1) := by
  rw [input8297_def, output8297_def]
  try (conv => lhs; cbv)
  try rfl

def value4154 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12549 2984#64))).val
theorem input8298_def : input8298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12549 2984#64)) := by
  unfold input8298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12549 2984#64))).val
theorem output8298_def : output8298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12549 2984#64)) := by
  unfold output8298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8298_skip : Flapjack.WordAlloc.isSkip output8298 = false := by
  rw [output8298_def]
  conv => lhs; cbv
  try rfl
theorem node8298_eq : Flapjack.WordAlloc.removeDeadStructural input8298 value4153 value1 value2 = (output8298, value4154, value1) := by
  rw [input8298_def, output8298_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8298 input8297)).val
theorem input8299_def : input8299 = (.seq input8298 input8297) := by
  unfold input8299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8298 output8297)).val
theorem output8299_def : output8299 = (.seq output8298 output8297) := by
  unfold output8299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8299_skip : Flapjack.WordAlloc.isSkip output8299 = false := by
  rw [output8299_def]
  conv => lhs; cbv
  try rfl
theorem node8299_eq : Flapjack.WordAlloc.removeDeadStructural input8299 value4152 value1 value2 = (output8299, value4154, value1) := by
  rw [input8299_def, output8299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8297_eq]
  dsimp only
  rw [node8298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4155 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12545 (Flapjack.WordLangAddr.addr 12541 18446744073709551104#64)))).val
theorem input8300_def : input8300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12545 (Flapjack.WordLangAddr.addr 12541 18446744073709551104#64))) := by
  unfold input8300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12545 (Flapjack.WordLangAddr.addr 12541 18446744073709551104#64)))).val
theorem output8300_def : output8300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12545 (Flapjack.WordLangAddr.addr 12541 18446744073709551104#64))) := by
  unfold output8300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8300_skip : Flapjack.WordAlloc.isSkip output8300 = false := by
  rw [output8300_def]
  conv => lhs; cbv
  try rfl
theorem node8300_eq : Flapjack.WordAlloc.removeDeadStructural input8300 value4154 value1 value2 = (output8300, value4155, value1) := by
  rw [input8300_def, output8300_def]
  try (conv => lhs; cbv)
  try rfl

def value4156 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12541 12537)).val
theorem input8301_def : input8301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12541 12537) := by
  unfold input8301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12541 12537)).val
theorem output8301_def : output8301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12541 12537) := by
  unfold output8301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8301_skip : Flapjack.WordAlloc.isSkip output8301 = false := by
  rw [output8301_def]
  conv => lhs; cbv
  try rfl
theorem node8301_eq : Flapjack.WordAlloc.removeDeadStructural input8301 value4155 value1 value2 = (output8301, value4156, value1) := by
  rw [input8301_def, output8301_def]
  try (conv => lhs; cbv)
  try rfl

def value4157 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12537 12533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8302_def : input8302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12537 12533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12537 12533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8302_def : output8302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12537 12533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8302_skip : Flapjack.WordAlloc.isSkip output8302 = false := by
  rw [output8302_def]
  conv => lhs; cbv
  try rfl
theorem node8302_eq : Flapjack.WordAlloc.removeDeadStructural input8302 value4156 value1 value2 = (output8302, value4157, value1) := by
  rw [input8302_def, output8302_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12533 Flapjack.WordStore.heapLength)).val
theorem input8303_def : input8303 = (Flapjack.WordLangProgHOL.get 12533 Flapjack.WordStore.heapLength) := by
  unfold input8303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12533 Flapjack.WordStore.heapLength)).val
theorem output8303_def : output8303 = (Flapjack.WordLangProgHOL.get 12533 Flapjack.WordStore.heapLength) := by
  unfold output8303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8303_skip : Flapjack.WordAlloc.isSkip output8303 = false := by
  rw [output8303_def]
  conv => lhs; cbv
  try rfl
theorem node8303_eq : Flapjack.WordAlloc.removeDeadStructural input8303 value4157 value1 value2 = (output8303, value5, value1) := by
  rw [input8303_def, output8303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8303 input8302)).val
theorem input8304_def : input8304 = (.seq input8303 input8302) := by
  unfold input8304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8303 output8302)).val
theorem output8304_def : output8304 = (.seq output8303 output8302) := by
  unfold output8304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8304_skip : Flapjack.WordAlloc.isSkip output8304 = false := by
  rw [output8304_def]
  conv => lhs; cbv
  try rfl
theorem node8304_eq : Flapjack.WordAlloc.removeDeadStructural input8304 value4156 value1 value2 = (output8304, value5, value1) := by
  rw [input8304_def, output8304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8302_eq]
  dsimp only
  rw [node8303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8304 input8301)).val
theorem input8305_def : input8305 = (.seq input8304 input8301) := by
  unfold input8305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8304 output8301)).val
theorem output8305_def : output8305 = (.seq output8304 output8301) := by
  unfold output8305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8305_skip : Flapjack.WordAlloc.isSkip output8305 = false := by
  rw [output8305_def]
  conv => lhs; cbv
  try rfl
theorem node8305_eq : Flapjack.WordAlloc.removeDeadStructural input8305 value4155 value1 value2 = (output8305, value5, value1) := by
  rw [input8305_def, output8305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8301_eq]
  dsimp only
  rw [node8304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8305 input8300)).val
theorem input8306_def : input8306 = (.seq input8305 input8300) := by
  unfold input8306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8305 output8300)).val
theorem output8306_def : output8306 = (.seq output8305 output8300) := by
  unfold output8306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8306_skip : Flapjack.WordAlloc.isSkip output8306 = false := by
  rw [output8306_def]
  conv => lhs; cbv
  try rfl
theorem node8306_eq : Flapjack.WordAlloc.removeDeadStructural input8306 value4154 value1 value2 = (output8306, value5, value1) := by
  rw [input8306_def, output8306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8300_eq]
  dsimp only
  rw [node8305_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8306 input8299)).val
theorem input8307_def : input8307 = (.seq input8306 input8299) := by
  unfold input8307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8306 output8299)).val
theorem output8307_def : output8307 = (.seq output8306 output8299) := by
  unfold output8307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8307_skip : Flapjack.WordAlloc.isSkip output8307 = false := by
  rw [output8307_def]
  conv => lhs; cbv
  try rfl
theorem node8307_eq : Flapjack.WordAlloc.removeDeadStructural input8307 value4152 value1 value2 = (output8307, value5, value1) := by
  rw [input8307_def, output8307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8299_eq]
  dsimp only
  rw [node8306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4158 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12525 (Flapjack.WordLangAddr.addr 12529 0#64)))).val
theorem input8308_def : input8308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12525 (Flapjack.WordLangAddr.addr 12529 0#64))) := by
  unfold input8308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12525 (Flapjack.WordLangAddr.addr 12529 0#64)))).val
theorem output8308_def : output8308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12525 (Flapjack.WordLangAddr.addr 12529 0#64))) := by
  unfold output8308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8308_skip : Flapjack.WordAlloc.isSkip output8308 = false := by
  rw [output8308_def]
  conv => lhs; cbv
  try rfl
theorem node8308_eq : Flapjack.WordAlloc.removeDeadStructural input8308 value5 value1 value2 = (output8308, value4158, value1) := by
  rw [input8308_def, output8308_def]
  try (conv => lhs; cbv)
  try rfl

def value4159 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12529, 12517)])).val
theorem input8309_def : input8309 = (Flapjack.WordLangProgHOL.move 0 [(12529, 12517)]) := by
  unfold input8309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12529, 12517)])).val
theorem output8309_def : output8309 = (Flapjack.WordLangProgHOL.move 0 [(12529, 12517)]) := by
  unfold output8309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8309_skip : Flapjack.WordAlloc.isSkip output8309 = false := by
  rw [output8309_def]
  conv => lhs; cbv
  try rfl
theorem node8309_eq : Flapjack.WordAlloc.removeDeadStructural input8309 value4158 value1 value2 = (output8309, value4159, value1) := by
  rw [input8309_def, output8309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8309 input8308)).val
theorem input8310_def : input8310 = (.seq input8309 input8308) := by
  unfold input8310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8309 output8308)).val
theorem output8310_def : output8310 = (.seq output8309 output8308) := by
  unfold output8310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8310_skip : Flapjack.WordAlloc.isSkip output8310 = false := by
  rw [output8310_def]
  conv => lhs; cbv
  try rfl
theorem node8310_eq : Flapjack.WordAlloc.removeDeadStructural input8310 value5 value1 value2 = (output8310, value4159, value1) := by
  rw [input8310_def, output8310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8308_eq]
  dsimp only
  rw [node8309_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4160 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12525 0#64))).val
theorem input8311_def : input8311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12525 0#64)) := by
  unfold input8311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12525 0#64))).val
theorem output8311_def : output8311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12525 0#64)) := by
  unfold output8311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8311_skip : Flapjack.WordAlloc.isSkip output8311 = false := by
  rw [output8311_def]
  conv => lhs; cbv
  try rfl
theorem node8311_eq : Flapjack.WordAlloc.removeDeadStructural input8311 value4159 value1 value2 = (output8311, value4160, value1) := by
  rw [input8311_def, output8311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12521 0#64))).val
theorem input8312_def : input8312 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12521 0#64)) := by
  unfold input8312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8312_def : output8312 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8312_skip : Flapjack.WordAlloc.isSkip output8312 = true := by
  rw [output8312_def]
  conv => lhs; cbv
  try rfl
theorem node8312_eq : Flapjack.WordAlloc.removeDeadStructural input8312 value4160 value1 value2 = (output8312, value4160, value1) := by
  rw [input8312_def, output8312_def]
  try (conv => lhs; cbv)
  try rfl

def value4161 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12517 12509 (Flapjack.WordRegImm.reg 12513))))).val
theorem input8313_def : input8313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12517 12509 (Flapjack.WordRegImm.reg 12513)))) := by
  unfold input8313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12517 12509 (Flapjack.WordRegImm.reg 12513))))).val
theorem output8313_def : output8313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12517 12509 (Flapjack.WordRegImm.reg 12513)))) := by
  unfold output8313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8313_skip : Flapjack.WordAlloc.isSkip output8313 = false := by
  rw [output8313_def]
  conv => lhs; cbv
  try rfl
theorem node8313_eq : Flapjack.WordAlloc.removeDeadStructural input8313 value4160 value1 value2 = (output8313, value4161, value1) := by
  rw [input8313_def, output8313_def]
  try (conv => lhs; cbv)
  try rfl

def value4162 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12513 2976#64))).val
theorem input8314_def : input8314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12513 2976#64)) := by
  unfold input8314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12513 2976#64))).val
theorem output8314_def : output8314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12513 2976#64)) := by
  unfold output8314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8314_skip : Flapjack.WordAlloc.isSkip output8314 = false := by
  rw [output8314_def]
  conv => lhs; cbv
  try rfl
theorem node8314_eq : Flapjack.WordAlloc.removeDeadStructural input8314 value4161 value1 value2 = (output8314, value4162, value1) := by
  rw [input8314_def, output8314_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8314 input8313)).val
theorem input8315_def : input8315 = (.seq input8314 input8313) := by
  unfold input8315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8314 output8313)).val
theorem output8315_def : output8315 = (.seq output8314 output8313) := by
  unfold output8315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8315_skip : Flapjack.WordAlloc.isSkip output8315 = false := by
  rw [output8315_def]
  conv => lhs; cbv
  try rfl
theorem node8315_eq : Flapjack.WordAlloc.removeDeadStructural input8315 value4160 value1 value2 = (output8315, value4162, value1) := by
  rw [input8315_def, output8315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8313_eq]
  dsimp only
  rw [node8314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4163 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12509 (Flapjack.WordLangAddr.addr 12505 18446744073709551104#64)))).val
theorem input8316_def : input8316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12509 (Flapjack.WordLangAddr.addr 12505 18446744073709551104#64))) := by
  unfold input8316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12509 (Flapjack.WordLangAddr.addr 12505 18446744073709551104#64)))).val
theorem output8316_def : output8316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12509 (Flapjack.WordLangAddr.addr 12505 18446744073709551104#64))) := by
  unfold output8316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8316_skip : Flapjack.WordAlloc.isSkip output8316 = false := by
  rw [output8316_def]
  conv => lhs; cbv
  try rfl
theorem node8316_eq : Flapjack.WordAlloc.removeDeadStructural input8316 value4162 value1 value2 = (output8316, value4163, value1) := by
  rw [input8316_def, output8316_def]
  try (conv => lhs; cbv)
  try rfl

def value4164 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12505 12501)).val
theorem input8317_def : input8317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12505 12501) := by
  unfold input8317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12505 12501)).val
theorem output8317_def : output8317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12505 12501) := by
  unfold output8317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8317_skip : Flapjack.WordAlloc.isSkip output8317 = false := by
  rw [output8317_def]
  conv => lhs; cbv
  try rfl
theorem node8317_eq : Flapjack.WordAlloc.removeDeadStructural input8317 value4163 value1 value2 = (output8317, value4164, value1) := by
  rw [input8317_def, output8317_def]
  try (conv => lhs; cbv)
  try rfl

def value4165 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12501 12497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8318_def : input8318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12501 12497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12501 12497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8318_def : output8318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12501 12497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8318_skip : Flapjack.WordAlloc.isSkip output8318 = false := by
  rw [output8318_def]
  conv => lhs; cbv
  try rfl
theorem node8318_eq : Flapjack.WordAlloc.removeDeadStructural input8318 value4164 value1 value2 = (output8318, value4165, value1) := by
  rw [input8318_def, output8318_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12497 Flapjack.WordStore.heapLength)).val
theorem input8319_def : input8319 = (Flapjack.WordLangProgHOL.get 12497 Flapjack.WordStore.heapLength) := by
  unfold input8319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12497 Flapjack.WordStore.heapLength)).val
theorem output8319_def : output8319 = (Flapjack.WordLangProgHOL.get 12497 Flapjack.WordStore.heapLength) := by
  unfold output8319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8319_skip : Flapjack.WordAlloc.isSkip output8319 = false := by
  rw [output8319_def]
  conv => lhs; cbv
  try rfl
theorem node8319_eq : Flapjack.WordAlloc.removeDeadStructural input8319 value4165 value1 value2 = (output8319, value5, value1) := by
  rw [input8319_def, output8319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8319 input8318)).val
theorem input8320_def : input8320 = (.seq input8319 input8318) := by
  unfold input8320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8319 output8318)).val
theorem output8320_def : output8320 = (.seq output8319 output8318) := by
  unfold output8320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8320_skip : Flapjack.WordAlloc.isSkip output8320 = false := by
  rw [output8320_def]
  conv => lhs; cbv
  try rfl
theorem node8320_eq : Flapjack.WordAlloc.removeDeadStructural input8320 value4164 value1 value2 = (output8320, value5, value1) := by
  rw [input8320_def, output8320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8318_eq]
  dsimp only
  rw [node8319_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8320 input8317)).val
theorem input8321_def : input8321 = (.seq input8320 input8317) := by
  unfold input8321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8320 output8317)).val
theorem output8321_def : output8321 = (.seq output8320 output8317) := by
  unfold output8321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8321_skip : Flapjack.WordAlloc.isSkip output8321 = false := by
  rw [output8321_def]
  conv => lhs; cbv
  try rfl
theorem node8321_eq : Flapjack.WordAlloc.removeDeadStructural input8321 value4163 value1 value2 = (output8321, value5, value1) := by
  rw [input8321_def, output8321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8317_eq]
  dsimp only
  rw [node8320_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8321 input8316)).val
theorem input8322_def : input8322 = (.seq input8321 input8316) := by
  unfold input8322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8321 output8316)).val
theorem output8322_def : output8322 = (.seq output8321 output8316) := by
  unfold output8322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8322_skip : Flapjack.WordAlloc.isSkip output8322 = false := by
  rw [output8322_def]
  conv => lhs; cbv
  try rfl
theorem node8322_eq : Flapjack.WordAlloc.removeDeadStructural input8322 value4162 value1 value2 = (output8322, value5, value1) := by
  rw [input8322_def, output8322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8316_eq]
  dsimp only
  rw [node8321_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8322 input8315)).val
theorem input8323_def : input8323 = (.seq input8322 input8315) := by
  unfold input8323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8322 output8315)).val
theorem output8323_def : output8323 = (.seq output8322 output8315) := by
  unfold output8323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8323_skip : Flapjack.WordAlloc.isSkip output8323 = false := by
  rw [output8323_def]
  conv => lhs; cbv
  try rfl
theorem node8323_eq : Flapjack.WordAlloc.removeDeadStructural input8323 value4160 value1 value2 = (output8323, value5, value1) := by
  rw [input8323_def, output8323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8315_eq]
  dsimp only
  rw [node8322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4166 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12489 (Flapjack.WordLangAddr.addr 12493 0#64)))).val
theorem input8324_def : input8324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12489 (Flapjack.WordLangAddr.addr 12493 0#64))) := by
  unfold input8324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12489 (Flapjack.WordLangAddr.addr 12493 0#64)))).val
theorem output8324_def : output8324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12489 (Flapjack.WordLangAddr.addr 12493 0#64))) := by
  unfold output8324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8324_skip : Flapjack.WordAlloc.isSkip output8324 = false := by
  rw [output8324_def]
  conv => lhs; cbv
  try rfl
theorem node8324_eq : Flapjack.WordAlloc.removeDeadStructural input8324 value5 value1 value2 = (output8324, value4166, value1) := by
  rw [input8324_def, output8324_def]
  try (conv => lhs; cbv)
  try rfl

def value4167 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12493, 12481)])).val
theorem input8325_def : input8325 = (Flapjack.WordLangProgHOL.move 0 [(12493, 12481)]) := by
  unfold input8325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12493, 12481)])).val
theorem output8325_def : output8325 = (Flapjack.WordLangProgHOL.move 0 [(12493, 12481)]) := by
  unfold output8325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8325_skip : Flapjack.WordAlloc.isSkip output8325 = false := by
  rw [output8325_def]
  conv => lhs; cbv
  try rfl
theorem node8325_eq : Flapjack.WordAlloc.removeDeadStructural input8325 value4166 value1 value2 = (output8325, value4167, value1) := by
  rw [input8325_def, output8325_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8325 input8324)).val
theorem input8326_def : input8326 = (.seq input8325 input8324) := by
  unfold input8326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8325 output8324)).val
theorem output8326_def : output8326 = (.seq output8325 output8324) := by
  unfold output8326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8326_skip : Flapjack.WordAlloc.isSkip output8326 = false := by
  rw [output8326_def]
  conv => lhs; cbv
  try rfl
theorem node8326_eq : Flapjack.WordAlloc.removeDeadStructural input8326 value5 value1 value2 = (output8326, value4167, value1) := by
  rw [input8326_def, output8326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8324_eq]
  dsimp only
  rw [node8325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4168 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12489 0#64))).val
theorem input8327_def : input8327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12489 0#64)) := by
  unfold input8327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12489 0#64))).val
theorem output8327_def : output8327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12489 0#64)) := by
  unfold output8327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8327_skip : Flapjack.WordAlloc.isSkip output8327 = false := by
  rw [output8327_def]
  conv => lhs; cbv
  try rfl
theorem node8327_eq : Flapjack.WordAlloc.removeDeadStructural input8327 value4167 value1 value2 = (output8327, value4168, value1) := by
  rw [input8327_def, output8327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12485 0#64))).val
theorem input8328_def : input8328 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12485 0#64)) := by
  unfold input8328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8328_def : output8328 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8328_skip : Flapjack.WordAlloc.isSkip output8328 = true := by
  rw [output8328_def]
  conv => lhs; cbv
  try rfl
theorem node8328_eq : Flapjack.WordAlloc.removeDeadStructural input8328 value4168 value1 value2 = (output8328, value4168, value1) := by
  rw [input8328_def, output8328_def]
  try (conv => lhs; cbv)
  try rfl

def value4169 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12481 12473 (Flapjack.WordRegImm.reg 12477))))).val
theorem input8329_def : input8329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12481 12473 (Flapjack.WordRegImm.reg 12477)))) := by
  unfold input8329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12481 12473 (Flapjack.WordRegImm.reg 12477))))).val
theorem output8329_def : output8329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12481 12473 (Flapjack.WordRegImm.reg 12477)))) := by
  unfold output8329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8329_skip : Flapjack.WordAlloc.isSkip output8329 = false := by
  rw [output8329_def]
  conv => lhs; cbv
  try rfl
theorem node8329_eq : Flapjack.WordAlloc.removeDeadStructural input8329 value4168 value1 value2 = (output8329, value4169, value1) := by
  rw [input8329_def, output8329_def]
  try (conv => lhs; cbv)
  try rfl

def value4170 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12477 2968#64))).val
theorem input8330_def : input8330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12477 2968#64)) := by
  unfold input8330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12477 2968#64))).val
theorem output8330_def : output8330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12477 2968#64)) := by
  unfold output8330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8330_skip : Flapjack.WordAlloc.isSkip output8330 = false := by
  rw [output8330_def]
  conv => lhs; cbv
  try rfl
theorem node8330_eq : Flapjack.WordAlloc.removeDeadStructural input8330 value4169 value1 value2 = (output8330, value4170, value1) := by
  rw [input8330_def, output8330_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8330 input8329)).val
theorem input8331_def : input8331 = (.seq input8330 input8329) := by
  unfold input8331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8330 output8329)).val
theorem output8331_def : output8331 = (.seq output8330 output8329) := by
  unfold output8331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8331_skip : Flapjack.WordAlloc.isSkip output8331 = false := by
  rw [output8331_def]
  conv => lhs; cbv
  try rfl
theorem node8331_eq : Flapjack.WordAlloc.removeDeadStructural input8331 value4168 value1 value2 = (output8331, value4170, value1) := by
  rw [input8331_def, output8331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8329_eq]
  dsimp only
  rw [node8330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4171 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12473 (Flapjack.WordLangAddr.addr 12469 18446744073709551104#64)))).val
theorem input8332_def : input8332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12473 (Flapjack.WordLangAddr.addr 12469 18446744073709551104#64))) := by
  unfold input8332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12473 (Flapjack.WordLangAddr.addr 12469 18446744073709551104#64)))).val
theorem output8332_def : output8332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12473 (Flapjack.WordLangAddr.addr 12469 18446744073709551104#64))) := by
  unfold output8332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8332_skip : Flapjack.WordAlloc.isSkip output8332 = false := by
  rw [output8332_def]
  conv => lhs; cbv
  try rfl
theorem node8332_eq : Flapjack.WordAlloc.removeDeadStructural input8332 value4170 value1 value2 = (output8332, value4171, value1) := by
  rw [input8332_def, output8332_def]
  try (conv => lhs; cbv)
  try rfl

def value4172 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12469 12465)).val
theorem input8333_def : input8333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12469 12465) := by
  unfold input8333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12469 12465)).val
theorem output8333_def : output8333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12469 12465) := by
  unfold output8333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8333_skip : Flapjack.WordAlloc.isSkip output8333 = false := by
  rw [output8333_def]
  conv => lhs; cbv
  try rfl
theorem node8333_eq : Flapjack.WordAlloc.removeDeadStructural input8333 value4171 value1 value2 = (output8333, value4172, value1) := by
  rw [input8333_def, output8333_def]
  try (conv => lhs; cbv)
  try rfl

def value4173 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12465 12461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8334_def : input8334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12465 12461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12465 12461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8334_def : output8334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12465 12461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8334_skip : Flapjack.WordAlloc.isSkip output8334 = false := by
  rw [output8334_def]
  conv => lhs; cbv
  try rfl
theorem node8334_eq : Flapjack.WordAlloc.removeDeadStructural input8334 value4172 value1 value2 = (output8334, value4173, value1) := by
  rw [input8334_def, output8334_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12461 Flapjack.WordStore.heapLength)).val
theorem input8335_def : input8335 = (Flapjack.WordLangProgHOL.get 12461 Flapjack.WordStore.heapLength) := by
  unfold input8335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12461 Flapjack.WordStore.heapLength)).val
theorem output8335_def : output8335 = (Flapjack.WordLangProgHOL.get 12461 Flapjack.WordStore.heapLength) := by
  unfold output8335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8335_skip : Flapjack.WordAlloc.isSkip output8335 = false := by
  rw [output8335_def]
  conv => lhs; cbv
  try rfl
theorem node8335_eq : Flapjack.WordAlloc.removeDeadStructural input8335 value4173 value1 value2 = (output8335, value5, value1) := by
  rw [input8335_def, output8335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8335 input8334)).val
theorem input8336_def : input8336 = (.seq input8335 input8334) := by
  unfold input8336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8335 output8334)).val
theorem output8336_def : output8336 = (.seq output8335 output8334) := by
  unfold output8336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8336_skip : Flapjack.WordAlloc.isSkip output8336 = false := by
  rw [output8336_def]
  conv => lhs; cbv
  try rfl
theorem node8336_eq : Flapjack.WordAlloc.removeDeadStructural input8336 value4172 value1 value2 = (output8336, value5, value1) := by
  rw [input8336_def, output8336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8334_eq]
  dsimp only
  rw [node8335_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8336 input8333)).val
theorem input8337_def : input8337 = (.seq input8336 input8333) := by
  unfold input8337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8336 output8333)).val
theorem output8337_def : output8337 = (.seq output8336 output8333) := by
  unfold output8337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8337_skip : Flapjack.WordAlloc.isSkip output8337 = false := by
  rw [output8337_def]
  conv => lhs; cbv
  try rfl
theorem node8337_eq : Flapjack.WordAlloc.removeDeadStructural input8337 value4171 value1 value2 = (output8337, value5, value1) := by
  rw [input8337_def, output8337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8333_eq]
  dsimp only
  rw [node8336_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8337 input8332)).val
theorem input8338_def : input8338 = (.seq input8337 input8332) := by
  unfold input8338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8337 output8332)).val
theorem output8338_def : output8338 = (.seq output8337 output8332) := by
  unfold output8338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8338_skip : Flapjack.WordAlloc.isSkip output8338 = false := by
  rw [output8338_def]
  conv => lhs; cbv
  try rfl
theorem node8338_eq : Flapjack.WordAlloc.removeDeadStructural input8338 value4170 value1 value2 = (output8338, value5, value1) := by
  rw [input8338_def, output8338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8332_eq]
  dsimp only
  rw [node8337_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8338 input8331)).val
theorem input8339_def : input8339 = (.seq input8338 input8331) := by
  unfold input8339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8338 output8331)).val
theorem output8339_def : output8339 = (.seq output8338 output8331) := by
  unfold output8339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8339_skip : Flapjack.WordAlloc.isSkip output8339 = false := by
  rw [output8339_def]
  conv => lhs; cbv
  try rfl
theorem node8339_eq : Flapjack.WordAlloc.removeDeadStructural input8339 value4168 value1 value2 = (output8339, value5, value1) := by
  rw [input8339_def, output8339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8331_eq]
  dsimp only
  rw [node8338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4174 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12453 (Flapjack.WordLangAddr.addr 12457 0#64)))).val
theorem input8340_def : input8340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12453 (Flapjack.WordLangAddr.addr 12457 0#64))) := by
  unfold input8340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12453 (Flapjack.WordLangAddr.addr 12457 0#64)))).val
theorem output8340_def : output8340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12453 (Flapjack.WordLangAddr.addr 12457 0#64))) := by
  unfold output8340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8340_skip : Flapjack.WordAlloc.isSkip output8340 = false := by
  rw [output8340_def]
  conv => lhs; cbv
  try rfl
theorem node8340_eq : Flapjack.WordAlloc.removeDeadStructural input8340 value5 value1 value2 = (output8340, value4174, value1) := by
  rw [input8340_def, output8340_def]
  try (conv => lhs; cbv)
  try rfl

def value4175 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12457, 12445)])).val
theorem input8341_def : input8341 = (Flapjack.WordLangProgHOL.move 0 [(12457, 12445)]) := by
  unfold input8341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12457, 12445)])).val
theorem output8341_def : output8341 = (Flapjack.WordLangProgHOL.move 0 [(12457, 12445)]) := by
  unfold output8341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8341_skip : Flapjack.WordAlloc.isSkip output8341 = false := by
  rw [output8341_def]
  conv => lhs; cbv
  try rfl
theorem node8341_eq : Flapjack.WordAlloc.removeDeadStructural input8341 value4174 value1 value2 = (output8341, value4175, value1) := by
  rw [input8341_def, output8341_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8341 input8340)).val
theorem input8342_def : input8342 = (.seq input8341 input8340) := by
  unfold input8342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8341 output8340)).val
theorem output8342_def : output8342 = (.seq output8341 output8340) := by
  unfold output8342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8342_skip : Flapjack.WordAlloc.isSkip output8342 = false := by
  rw [output8342_def]
  conv => lhs; cbv
  try rfl
theorem node8342_eq : Flapjack.WordAlloc.removeDeadStructural input8342 value5 value1 value2 = (output8342, value4175, value1) := by
  rw [input8342_def, output8342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8340_eq]
  dsimp only
  rw [node8341_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4176 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12453 1#64))).val
theorem input8343_def : input8343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12453 1#64)) := by
  unfold input8343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12453 1#64))).val
theorem output8343_def : output8343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12453 1#64)) := by
  unfold output8343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8343_skip : Flapjack.WordAlloc.isSkip output8343 = false := by
  rw [output8343_def]
  conv => lhs; cbv
  try rfl
theorem node8343_eq : Flapjack.WordAlloc.removeDeadStructural input8343 value4175 value1 value2 = (output8343, value4176, value1) := by
  rw [input8343_def, output8343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12449 1#64))).val
theorem input8344_def : input8344 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12449 1#64)) := by
  unfold input8344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8344_def : output8344 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8344_skip : Flapjack.WordAlloc.isSkip output8344 = true := by
  rw [output8344_def]
  conv => lhs; cbv
  try rfl
theorem node8344_eq : Flapjack.WordAlloc.removeDeadStructural input8344 value4176 value1 value2 = (output8344, value4176, value1) := by
  rw [input8344_def, output8344_def]
  try (conv => lhs; cbv)
  try rfl

def value4177 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12445 12437 (Flapjack.WordRegImm.reg 12441))))).val
theorem input8345_def : input8345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12445 12437 (Flapjack.WordRegImm.reg 12441)))) := by
  unfold input8345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12445 12437 (Flapjack.WordRegImm.reg 12441))))).val
theorem output8345_def : output8345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12445 12437 (Flapjack.WordRegImm.reg 12441)))) := by
  unfold output8345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8345_skip : Flapjack.WordAlloc.isSkip output8345 = false := by
  rw [output8345_def]
  conv => lhs; cbv
  try rfl
theorem node8345_eq : Flapjack.WordAlloc.removeDeadStructural input8345 value4176 value1 value2 = (output8345, value4177, value1) := by
  rw [input8345_def, output8345_def]
  try (conv => lhs; cbv)
  try rfl

def value4178 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12441 2960#64))).val
theorem input8346_def : input8346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12441 2960#64)) := by
  unfold input8346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12441 2960#64))).val
theorem output8346_def : output8346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12441 2960#64)) := by
  unfold output8346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8346_skip : Flapjack.WordAlloc.isSkip output8346 = false := by
  rw [output8346_def]
  conv => lhs; cbv
  try rfl
theorem node8346_eq : Flapjack.WordAlloc.removeDeadStructural input8346 value4177 value1 value2 = (output8346, value4178, value1) := by
  rw [input8346_def, output8346_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8346 input8345)).val
theorem input8347_def : input8347 = (.seq input8346 input8345) := by
  unfold input8347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8346 output8345)).val
theorem output8347_def : output8347 = (.seq output8346 output8345) := by
  unfold output8347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8347_skip : Flapjack.WordAlloc.isSkip output8347 = false := by
  rw [output8347_def]
  conv => lhs; cbv
  try rfl
theorem node8347_eq : Flapjack.WordAlloc.removeDeadStructural input8347 value4176 value1 value2 = (output8347, value4178, value1) := by
  rw [input8347_def, output8347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8345_eq]
  dsimp only
  rw [node8346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4179 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12437 (Flapjack.WordLangAddr.addr 12433 18446744073709551104#64)))).val
theorem input8348_def : input8348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12437 (Flapjack.WordLangAddr.addr 12433 18446744073709551104#64))) := by
  unfold input8348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12437 (Flapjack.WordLangAddr.addr 12433 18446744073709551104#64)))).val
theorem output8348_def : output8348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12437 (Flapjack.WordLangAddr.addr 12433 18446744073709551104#64))) := by
  unfold output8348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8348_skip : Flapjack.WordAlloc.isSkip output8348 = false := by
  rw [output8348_def]
  conv => lhs; cbv
  try rfl
theorem node8348_eq : Flapjack.WordAlloc.removeDeadStructural input8348 value4178 value1 value2 = (output8348, value4179, value1) := by
  rw [input8348_def, output8348_def]
  try (conv => lhs; cbv)
  try rfl

def value4180 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12433 12429)).val
theorem input8349_def : input8349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12433 12429) := by
  unfold input8349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12433 12429)).val
theorem output8349_def : output8349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12433 12429) := by
  unfold output8349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8349_skip : Flapjack.WordAlloc.isSkip output8349 = false := by
  rw [output8349_def]
  conv => lhs; cbv
  try rfl
theorem node8349_eq : Flapjack.WordAlloc.removeDeadStructural input8349 value4179 value1 value2 = (output8349, value4180, value1) := by
  rw [input8349_def, output8349_def]
  try (conv => lhs; cbv)
  try rfl

def value4181 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12429 12425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8350_def : input8350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12429 12425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12429 12425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8350_def : output8350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12429 12425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8350_skip : Flapjack.WordAlloc.isSkip output8350 = false := by
  rw [output8350_def]
  conv => lhs; cbv
  try rfl
theorem node8350_eq : Flapjack.WordAlloc.removeDeadStructural input8350 value4180 value1 value2 = (output8350, value4181, value1) := by
  rw [input8350_def, output8350_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12425 Flapjack.WordStore.heapLength)).val
theorem input8351_def : input8351 = (Flapjack.WordLangProgHOL.get 12425 Flapjack.WordStore.heapLength) := by
  unfold input8351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12425 Flapjack.WordStore.heapLength)).val
theorem output8351_def : output8351 = (Flapjack.WordLangProgHOL.get 12425 Flapjack.WordStore.heapLength) := by
  unfold output8351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8351_skip : Flapjack.WordAlloc.isSkip output8351 = false := by
  rw [output8351_def]
  conv => lhs; cbv
  try rfl
theorem node8351_eq : Flapjack.WordAlloc.removeDeadStructural input8351 value4181 value1 value2 = (output8351, value5, value1) := by
  rw [input8351_def, output8351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8351 input8350)).val
theorem input8352_def : input8352 = (.seq input8351 input8350) := by
  unfold input8352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8351 output8350)).val
theorem output8352_def : output8352 = (.seq output8351 output8350) := by
  unfold output8352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8352_skip : Flapjack.WordAlloc.isSkip output8352 = false := by
  rw [output8352_def]
  conv => lhs; cbv
  try rfl
theorem node8352_eq : Flapjack.WordAlloc.removeDeadStructural input8352 value4180 value1 value2 = (output8352, value5, value1) := by
  rw [input8352_def, output8352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8350_eq]
  dsimp only
  rw [node8351_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8352 input8349)).val
theorem input8353_def : input8353 = (.seq input8352 input8349) := by
  unfold input8353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8352 output8349)).val
theorem output8353_def : output8353 = (.seq output8352 output8349) := by
  unfold output8353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8353_skip : Flapjack.WordAlloc.isSkip output8353 = false := by
  rw [output8353_def]
  conv => lhs; cbv
  try rfl
theorem node8353_eq : Flapjack.WordAlloc.removeDeadStructural input8353 value4179 value1 value2 = (output8353, value5, value1) := by
  rw [input8353_def, output8353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8349_eq]
  dsimp only
  rw [node8352_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8353 input8348)).val
theorem input8354_def : input8354 = (.seq input8353 input8348) := by
  unfold input8354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8353 output8348)).val
theorem output8354_def : output8354 = (.seq output8353 output8348) := by
  unfold output8354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8354_skip : Flapjack.WordAlloc.isSkip output8354 = false := by
  rw [output8354_def]
  conv => lhs; cbv
  try rfl
theorem node8354_eq : Flapjack.WordAlloc.removeDeadStructural input8354 value4178 value1 value2 = (output8354, value5, value1) := by
  rw [input8354_def, output8354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8348_eq]
  dsimp only
  rw [node8353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8354 input8347)).val
theorem input8355_def : input8355 = (.seq input8354 input8347) := by
  unfold input8355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8354 output8347)).val
theorem output8355_def : output8355 = (.seq output8354 output8347) := by
  unfold output8355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8355_skip : Flapjack.WordAlloc.isSkip output8355 = false := by
  rw [output8355_def]
  conv => lhs; cbv
  try rfl
theorem node8355_eq : Flapjack.WordAlloc.removeDeadStructural input8355 value4176 value1 value2 = (output8355, value5, value1) := by
  rw [input8355_def, output8355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8347_eq]
  dsimp only
  rw [node8354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4182 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12417 (Flapjack.WordLangAddr.addr 12421 0#64)))).val
theorem input8356_def : input8356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12417 (Flapjack.WordLangAddr.addr 12421 0#64))) := by
  unfold input8356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12417 (Flapjack.WordLangAddr.addr 12421 0#64)))).val
theorem output8356_def : output8356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12417 (Flapjack.WordLangAddr.addr 12421 0#64))) := by
  unfold output8356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8356_skip : Flapjack.WordAlloc.isSkip output8356 = false := by
  rw [output8356_def]
  conv => lhs; cbv
  try rfl
theorem node8356_eq : Flapjack.WordAlloc.removeDeadStructural input8356 value5 value1 value2 = (output8356, value4182, value1) := by
  rw [input8356_def, output8356_def]
  try (conv => lhs; cbv)
  try rfl

def value4183 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12421, 12409)])).val
theorem input8357_def : input8357 = (Flapjack.WordLangProgHOL.move 0 [(12421, 12409)]) := by
  unfold input8357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12421, 12409)])).val
theorem output8357_def : output8357 = (Flapjack.WordLangProgHOL.move 0 [(12421, 12409)]) := by
  unfold output8357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8357_skip : Flapjack.WordAlloc.isSkip output8357 = false := by
  rw [output8357_def]
  conv => lhs; cbv
  try rfl
theorem node8357_eq : Flapjack.WordAlloc.removeDeadStructural input8357 value4182 value1 value2 = (output8357, value4183, value1) := by
  rw [input8357_def, output8357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8357 input8356)).val
theorem input8358_def : input8358 = (.seq input8357 input8356) := by
  unfold input8358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8357 output8356)).val
theorem output8358_def : output8358 = (.seq output8357 output8356) := by
  unfold output8358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8358_skip : Flapjack.WordAlloc.isSkip output8358 = false := by
  rw [output8358_def]
  conv => lhs; cbv
  try rfl
theorem node8358_eq : Flapjack.WordAlloc.removeDeadStructural input8358 value5 value1 value2 = (output8358, value4183, value1) := by
  rw [input8358_def, output8358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8356_eq]
  dsimp only
  rw [node8357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4184 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12417 675470927100193492#64))).val
theorem input8359_def : input8359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12417 675470927100193492#64)) := by
  unfold input8359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12417 675470927100193492#64))).val
theorem output8359_def : output8359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12417 675470927100193492#64)) := by
  unfold output8359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8359_skip : Flapjack.WordAlloc.isSkip output8359 = false := by
  rw [output8359_def]
  conv => lhs; cbv
  try rfl
theorem node8359_eq : Flapjack.WordAlloc.removeDeadStructural input8359 value4183 value1 value2 = (output8359, value4184, value1) := by
  rw [input8359_def, output8359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12413 675470927100193492#64))).val
theorem input8360_def : input8360 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12413 675470927100193492#64)) := by
  unfold input8360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8360_def : output8360 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8360_skip : Flapjack.WordAlloc.isSkip output8360 = true := by
  rw [output8360_def]
  conv => lhs; cbv
  try rfl
theorem node8360_eq : Flapjack.WordAlloc.removeDeadStructural input8360 value4184 value1 value2 = (output8360, value4184, value1) := by
  rw [input8360_def, output8360_def]
  try (conv => lhs; cbv)
  try rfl

def value4185 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12409 12401 (Flapjack.WordRegImm.reg 12405))))).val
theorem input8361_def : input8361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12409 12401 (Flapjack.WordRegImm.reg 12405)))) := by
  unfold input8361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12409 12401 (Flapjack.WordRegImm.reg 12405))))).val
theorem output8361_def : output8361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12409 12401 (Flapjack.WordRegImm.reg 12405)))) := by
  unfold output8361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8361_skip : Flapjack.WordAlloc.isSkip output8361 = false := by
  rw [output8361_def]
  conv => lhs; cbv
  try rfl
theorem node8361_eq : Flapjack.WordAlloc.removeDeadStructural input8361 value4184 value1 value2 = (output8361, value4185, value1) := by
  rw [input8361_def, output8361_def]
  try (conv => lhs; cbv)
  try rfl

def value4186 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12405 2952#64))).val
theorem input8362_def : input8362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12405 2952#64)) := by
  unfold input8362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12405 2952#64))).val
theorem output8362_def : output8362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12405 2952#64)) := by
  unfold output8362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8362_skip : Flapjack.WordAlloc.isSkip output8362 = false := by
  rw [output8362_def]
  conv => lhs; cbv
  try rfl
theorem node8362_eq : Flapjack.WordAlloc.removeDeadStructural input8362 value4185 value1 value2 = (output8362, value4186, value1) := by
  rw [input8362_def, output8362_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8362 input8361)).val
theorem input8363_def : input8363 = (.seq input8362 input8361) := by
  unfold input8363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8362 output8361)).val
theorem output8363_def : output8363 = (.seq output8362 output8361) := by
  unfold output8363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8363_skip : Flapjack.WordAlloc.isSkip output8363 = false := by
  rw [output8363_def]
  conv => lhs; cbv
  try rfl
theorem node8363_eq : Flapjack.WordAlloc.removeDeadStructural input8363 value4184 value1 value2 = (output8363, value4186, value1) := by
  rw [input8363_def, output8363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8361_eq]
  dsimp only
  rw [node8362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4187 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12401 (Flapjack.WordLangAddr.addr 12397 18446744073709551104#64)))).val
theorem input8364_def : input8364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12401 (Flapjack.WordLangAddr.addr 12397 18446744073709551104#64))) := by
  unfold input8364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12401 (Flapjack.WordLangAddr.addr 12397 18446744073709551104#64)))).val
theorem output8364_def : output8364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12401 (Flapjack.WordLangAddr.addr 12397 18446744073709551104#64))) := by
  unfold output8364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8364_skip : Flapjack.WordAlloc.isSkip output8364 = false := by
  rw [output8364_def]
  conv => lhs; cbv
  try rfl
theorem node8364_eq : Flapjack.WordAlloc.removeDeadStructural input8364 value4186 value1 value2 = (output8364, value4187, value1) := by
  rw [input8364_def, output8364_def]
  try (conv => lhs; cbv)
  try rfl

def value4188 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12397 12393)).val
theorem input8365_def : input8365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12397 12393) := by
  unfold input8365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12397 12393)).val
theorem output8365_def : output8365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12397 12393) := by
  unfold output8365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8365_skip : Flapjack.WordAlloc.isSkip output8365 = false := by
  rw [output8365_def]
  conv => lhs; cbv
  try rfl
theorem node8365_eq : Flapjack.WordAlloc.removeDeadStructural input8365 value4187 value1 value2 = (output8365, value4188, value1) := by
  rw [input8365_def, output8365_def]
  try (conv => lhs; cbv)
  try rfl

def value4189 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12393 12389 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8366_def : input8366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12393 12389 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12393 12389 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8366_def : output8366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12393 12389 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8366_skip : Flapjack.WordAlloc.isSkip output8366 = false := by
  rw [output8366_def]
  conv => lhs; cbv
  try rfl
theorem node8366_eq : Flapjack.WordAlloc.removeDeadStructural input8366 value4188 value1 value2 = (output8366, value4189, value1) := by
  rw [input8366_def, output8366_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12389 Flapjack.WordStore.heapLength)).val
theorem input8367_def : input8367 = (Flapjack.WordLangProgHOL.get 12389 Flapjack.WordStore.heapLength) := by
  unfold input8367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12389 Flapjack.WordStore.heapLength)).val
theorem output8367_def : output8367 = (Flapjack.WordLangProgHOL.get 12389 Flapjack.WordStore.heapLength) := by
  unfold output8367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8367_skip : Flapjack.WordAlloc.isSkip output8367 = false := by
  rw [output8367_def]
  conv => lhs; cbv
  try rfl
theorem node8367_eq : Flapjack.WordAlloc.removeDeadStructural input8367 value4189 value1 value2 = (output8367, value5, value1) := by
  rw [input8367_def, output8367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8367 input8366)).val
theorem input8368_def : input8368 = (.seq input8367 input8366) := by
  unfold input8368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8367 output8366)).val
theorem output8368_def : output8368 = (.seq output8367 output8366) := by
  unfold output8368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8368_skip : Flapjack.WordAlloc.isSkip output8368 = false := by
  rw [output8368_def]
  conv => lhs; cbv
  try rfl
theorem node8368_eq : Flapjack.WordAlloc.removeDeadStructural input8368 value4188 value1 value2 = (output8368, value5, value1) := by
  rw [input8368_def, output8368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8366_eq]
  dsimp only
  rw [node8367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8368 input8365)).val
theorem input8369_def : input8369 = (.seq input8368 input8365) := by
  unfold input8369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8368 output8365)).val
theorem output8369_def : output8369 = (.seq output8368 output8365) := by
  unfold output8369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8369_skip : Flapjack.WordAlloc.isSkip output8369 = false := by
  rw [output8369_def]
  conv => lhs; cbv
  try rfl
theorem node8369_eq : Flapjack.WordAlloc.removeDeadStructural input8369 value4187 value1 value2 = (output8369, value5, value1) := by
  rw [input8369_def, output8369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8365_eq]
  dsimp only
  rw [node8368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8369 input8364)).val
theorem input8370_def : input8370 = (.seq input8369 input8364) := by
  unfold input8370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8369 output8364)).val
theorem output8370_def : output8370 = (.seq output8369 output8364) := by
  unfold output8370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8370_skip : Flapjack.WordAlloc.isSkip output8370 = false := by
  rw [output8370_def]
  conv => lhs; cbv
  try rfl
theorem node8370_eq : Flapjack.WordAlloc.removeDeadStructural input8370 value4186 value1 value2 = (output8370, value5, value1) := by
  rw [input8370_def, output8370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8364_eq]
  dsimp only
  rw [node8369_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8370 input8363)).val
theorem input8371_def : input8371 = (.seq input8370 input8363) := by
  unfold input8371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8370 output8363)).val
theorem output8371_def : output8371 = (.seq output8370 output8363) := by
  unfold output8371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8371_skip : Flapjack.WordAlloc.isSkip output8371 = false := by
  rw [output8371_def]
  conv => lhs; cbv
  try rfl
theorem node8371_eq : Flapjack.WordAlloc.removeDeadStructural input8371 value4184 value1 value2 = (output8371, value5, value1) := by
  rw [input8371_def, output8371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8363_eq]
  dsimp only
  rw [node8370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4190 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12381 (Flapjack.WordLangAddr.addr 12385 0#64)))).val
theorem input8372_def : input8372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12381 (Flapjack.WordLangAddr.addr 12385 0#64))) := by
  unfold input8372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12381 (Flapjack.WordLangAddr.addr 12385 0#64)))).val
theorem output8372_def : output8372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12381 (Flapjack.WordLangAddr.addr 12385 0#64))) := by
  unfold output8372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8372_skip : Flapjack.WordAlloc.isSkip output8372 = false := by
  rw [output8372_def]
  conv => lhs; cbv
  try rfl
theorem node8372_eq : Flapjack.WordAlloc.removeDeadStructural input8372 value5 value1 value2 = (output8372, value4190, value1) := by
  rw [input8372_def, output8372_def]
  try (conv => lhs; cbv)
  try rfl

def value4191 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12385, 12373)])).val
theorem input8373_def : input8373 = (Flapjack.WordLangProgHOL.move 0 [(12385, 12373)]) := by
  unfold input8373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12385, 12373)])).val
theorem output8373_def : output8373 = (Flapjack.WordLangProgHOL.move 0 [(12385, 12373)]) := by
  unfold output8373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8373_skip : Flapjack.WordAlloc.isSkip output8373 = false := by
  rw [output8373_def]
  conv => lhs; cbv
  try rfl
theorem node8373_eq : Flapjack.WordAlloc.removeDeadStructural input8373 value4190 value1 value2 = (output8373, value4191, value1) := by
  rw [input8373_def, output8373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8373 input8372)).val
theorem input8374_def : input8374 = (.seq input8373 input8372) := by
  unfold input8374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8373 output8372)).val
theorem output8374_def : output8374 = (.seq output8373 output8372) := by
  unfold output8374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8374_skip : Flapjack.WordAlloc.isSkip output8374 = false := by
  rw [output8374_def]
  conv => lhs; cbv
  try rfl
theorem node8374_eq : Flapjack.WordAlloc.removeDeadStructural input8374 value5 value1 value2 = (output8374, value4191, value1) := by
  rw [input8374_def, output8374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8372_eq]
  dsimp only
  rw [node8373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4192 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12381 5146891164735334016#64))).val
theorem input8375_def : input8375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12381 5146891164735334016#64)) := by
  unfold input8375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12381 5146891164735334016#64))).val
theorem output8375_def : output8375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12381 5146891164735334016#64)) := by
  unfold output8375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8375_skip : Flapjack.WordAlloc.isSkip output8375 = false := by
  rw [output8375_def]
  conv => lhs; cbv
  try rfl
theorem node8375_eq : Flapjack.WordAlloc.removeDeadStructural input8375 value4191 value1 value2 = (output8375, value4192, value1) := by
  rw [input8375_def, output8375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12377 5146891164735334016#64))).val
theorem input8376_def : input8376 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12377 5146891164735334016#64)) := by
  unfold input8376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8376_def : output8376 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8376_skip : Flapjack.WordAlloc.isSkip output8376 = true := by
  rw [output8376_def]
  conv => lhs; cbv
  try rfl
theorem node8376_eq : Flapjack.WordAlloc.removeDeadStructural input8376 value4192 value1 value2 = (output8376, value4192, value1) := by
  rw [input8376_def, output8376_def]
  try (conv => lhs; cbv)
  try rfl

def value4193 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12373 12365 (Flapjack.WordRegImm.reg 12369))))).val
theorem input8377_def : input8377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12373 12365 (Flapjack.WordRegImm.reg 12369)))) := by
  unfold input8377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12373 12365 (Flapjack.WordRegImm.reg 12369))))).val
theorem output8377_def : output8377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12373 12365 (Flapjack.WordRegImm.reg 12369)))) := by
  unfold output8377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8377_skip : Flapjack.WordAlloc.isSkip output8377 = false := by
  rw [output8377_def]
  conv => lhs; cbv
  try rfl
theorem node8377_eq : Flapjack.WordAlloc.removeDeadStructural input8377 value4192 value1 value2 = (output8377, value4193, value1) := by
  rw [input8377_def, output8377_def]
  try (conv => lhs; cbv)
  try rfl

def value4194 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12369 2944#64))).val
theorem input8378_def : input8378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12369 2944#64)) := by
  unfold input8378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12369 2944#64))).val
theorem output8378_def : output8378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12369 2944#64)) := by
  unfold output8378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8378_skip : Flapjack.WordAlloc.isSkip output8378 = false := by
  rw [output8378_def]
  conv => lhs; cbv
  try rfl
theorem node8378_eq : Flapjack.WordAlloc.removeDeadStructural input8378 value4193 value1 value2 = (output8378, value4194, value1) := by
  rw [input8378_def, output8378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8378 input8377)).val
theorem input8379_def : input8379 = (.seq input8378 input8377) := by
  unfold input8379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8378 output8377)).val
theorem output8379_def : output8379 = (.seq output8378 output8377) := by
  unfold output8379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8379_skip : Flapjack.WordAlloc.isSkip output8379 = false := by
  rw [output8379_def]
  conv => lhs; cbv
  try rfl
theorem node8379_eq : Flapjack.WordAlloc.removeDeadStructural input8379 value4192 value1 value2 = (output8379, value4194, value1) := by
  rw [input8379_def, output8379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8377_eq]
  dsimp only
  rw [node8378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4195 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12365 (Flapjack.WordLangAddr.addr 12361 18446744073709551104#64)))).val
theorem input8380_def : input8380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12365 (Flapjack.WordLangAddr.addr 12361 18446744073709551104#64))) := by
  unfold input8380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12365 (Flapjack.WordLangAddr.addr 12361 18446744073709551104#64)))).val
theorem output8380_def : output8380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12365 (Flapjack.WordLangAddr.addr 12361 18446744073709551104#64))) := by
  unfold output8380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8380_skip : Flapjack.WordAlloc.isSkip output8380 = false := by
  rw [output8380_def]
  conv => lhs; cbv
  try rfl
theorem node8380_eq : Flapjack.WordAlloc.removeDeadStructural input8380 value4194 value1 value2 = (output8380, value4195, value1) := by
  rw [input8380_def, output8380_def]
  try (conv => lhs; cbv)
  try rfl

def value4196 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12361 12357)).val
theorem input8381_def : input8381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12361 12357) := by
  unfold input8381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12361 12357)).val
theorem output8381_def : output8381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12361 12357) := by
  unfold output8381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8381_skip : Flapjack.WordAlloc.isSkip output8381 = false := by
  rw [output8381_def]
  conv => lhs; cbv
  try rfl
theorem node8381_eq : Flapjack.WordAlloc.removeDeadStructural input8381 value4195 value1 value2 = (output8381, value4196, value1) := by
  rw [input8381_def, output8381_def]
  try (conv => lhs; cbv)
  try rfl

def value4197 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12357 12353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8382_def : input8382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12357 12353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12357 12353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8382_def : output8382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12357 12353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8382_skip : Flapjack.WordAlloc.isSkip output8382 = false := by
  rw [output8382_def]
  conv => lhs; cbv
  try rfl
theorem node8382_eq : Flapjack.WordAlloc.removeDeadStructural input8382 value4196 value1 value2 = (output8382, value4197, value1) := by
  rw [input8382_def, output8382_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12353 Flapjack.WordStore.heapLength)).val
theorem input8383_def : input8383 = (Flapjack.WordLangProgHOL.get 12353 Flapjack.WordStore.heapLength) := by
  unfold input8383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12353 Flapjack.WordStore.heapLength)).val
theorem output8383_def : output8383 = (Flapjack.WordLangProgHOL.get 12353 Flapjack.WordStore.heapLength) := by
  unfold output8383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8383_skip : Flapjack.WordAlloc.isSkip output8383 = false := by
  rw [output8383_def]
  conv => lhs; cbv
  try rfl
theorem node8383_eq : Flapjack.WordAlloc.removeDeadStructural input8383 value4197 value1 value2 = (output8383, value5, value1) := by
  rw [input8383_def, output8383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8383 input8382)).val
theorem input8384_def : input8384 = (.seq input8383 input8382) := by
  unfold input8384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8383 output8382)).val
theorem output8384_def : output8384 = (.seq output8383 output8382) := by
  unfold output8384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8384_skip : Flapjack.WordAlloc.isSkip output8384 = false := by
  rw [output8384_def]
  conv => lhs; cbv
  try rfl
theorem node8384_eq : Flapjack.WordAlloc.removeDeadStructural input8384 value4196 value1 value2 = (output8384, value5, value1) := by
  rw [input8384_def, output8384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8382_eq]
  dsimp only
  rw [node8383_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8384 input8381)).val
theorem input8385_def : input8385 = (.seq input8384 input8381) := by
  unfold input8385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8384 output8381)).val
theorem output8385_def : output8385 = (.seq output8384 output8381) := by
  unfold output8385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8385_skip : Flapjack.WordAlloc.isSkip output8385 = false := by
  rw [output8385_def]
  conv => lhs; cbv
  try rfl
theorem node8385_eq : Flapjack.WordAlloc.removeDeadStructural input8385 value4195 value1 value2 = (output8385, value5, value1) := by
  rw [input8385_def, output8385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8381_eq]
  dsimp only
  rw [node8384_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8385 input8380)).val
theorem input8386_def : input8386 = (.seq input8385 input8380) := by
  unfold input8386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8385 output8380)).val
theorem output8386_def : output8386 = (.seq output8385 output8380) := by
  unfold output8386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8386_skip : Flapjack.WordAlloc.isSkip output8386 = false := by
  rw [output8386_def]
  conv => lhs; cbv
  try rfl
theorem node8386_eq : Flapjack.WordAlloc.removeDeadStructural input8386 value4194 value1 value2 = (output8386, value5, value1) := by
  rw [input8386_def, output8386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8380_eq]
  dsimp only
  rw [node8385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8386 input8379)).val
theorem input8387_def : input8387 = (.seq input8386 input8379) := by
  unfold input8387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8386 output8379)).val
theorem output8387_def : output8387 = (.seq output8386 output8379) := by
  unfold output8387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8387_skip : Flapjack.WordAlloc.isSkip output8387 = false := by
  rw [output8387_def]
  conv => lhs; cbv
  try rfl
theorem node8387_eq : Flapjack.WordAlloc.removeDeadStructural input8387 value4192 value1 value2 = (output8387, value5, value1) := by
  rw [input8387_def, output8387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8379_eq]
  dsimp only
  rw [node8386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4198 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12345 (Flapjack.WordLangAddr.addr 12349 0#64)))).val
theorem input8388_def : input8388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12345 (Flapjack.WordLangAddr.addr 12349 0#64))) := by
  unfold input8388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12345 (Flapjack.WordLangAddr.addr 12349 0#64)))).val
theorem output8388_def : output8388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12345 (Flapjack.WordLangAddr.addr 12349 0#64))) := by
  unfold output8388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8388_skip : Flapjack.WordAlloc.isSkip output8388 = false := by
  rw [output8388_def]
  conv => lhs; cbv
  try rfl
theorem node8388_eq : Flapjack.WordAlloc.removeDeadStructural input8388 value5 value1 value2 = (output8388, value4198, value1) := by
  rw [input8388_def, output8388_def]
  try (conv => lhs; cbv)
  try rfl

def value4199 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12349, 12337)])).val
theorem input8389_def : input8389 = (Flapjack.WordLangProgHOL.move 0 [(12349, 12337)]) := by
  unfold input8389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12349, 12337)])).val
theorem output8389_def : output8389 = (Flapjack.WordLangProgHOL.move 0 [(12349, 12337)]) := by
  unfold output8389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8389_skip : Flapjack.WordAlloc.isSkip output8389 = false := by
  rw [output8389_def]
  conv => lhs; cbv
  try rfl
theorem node8389_eq : Flapjack.WordAlloc.removeDeadStructural input8389 value4198 value1 value2 = (output8389, value4199, value1) := by
  rw [input8389_def, output8389_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8389 input8388)).val
theorem input8390_def : input8390 = (.seq input8389 input8388) := by
  unfold input8390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8389 output8388)).val
theorem output8390_def : output8390 = (.seq output8389 output8388) := by
  unfold output8390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8390_skip : Flapjack.WordAlloc.isSkip output8390 = false := by
  rw [output8390_def]
  conv => lhs; cbv
  try rfl
theorem node8390_eq : Flapjack.WordAlloc.removeDeadStructural input8390 value5 value1 value2 = (output8390, value4199, value1) := by
  rw [input8390_def, output8390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8388_eq]
  dsimp only
  rw [node8389_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4200 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12345 17762958817130696759#64))).val
theorem input8391_def : input8391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12345 17762958817130696759#64)) := by
  unfold input8391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12345 17762958817130696759#64))).val
theorem output8391_def : output8391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12345 17762958817130696759#64)) := by
  unfold output8391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8391_skip : Flapjack.WordAlloc.isSkip output8391 = false := by
  rw [output8391_def]
  conv => lhs; cbv
  try rfl
theorem node8391_eq : Flapjack.WordAlloc.removeDeadStructural input8391 value4199 value1 value2 = (output8391, value4200, value1) := by
  rw [input8391_def, output8391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12341 17762958817130696759#64))).val
theorem input8392_def : input8392 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12341 17762958817130696759#64)) := by
  unfold input8392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8392_def : output8392 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8392_skip : Flapjack.WordAlloc.isSkip output8392 = true := by
  rw [output8392_def]
  conv => lhs; cbv
  try rfl
theorem node8392_eq : Flapjack.WordAlloc.removeDeadStructural input8392 value4200 value1 value2 = (output8392, value4200, value1) := by
  rw [input8392_def, output8392_def]
  try (conv => lhs; cbv)
  try rfl

def value4201 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12337 12329 (Flapjack.WordRegImm.reg 12333))))).val
theorem input8393_def : input8393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12337 12329 (Flapjack.WordRegImm.reg 12333)))) := by
  unfold input8393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12337 12329 (Flapjack.WordRegImm.reg 12333))))).val
theorem output8393_def : output8393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12337 12329 (Flapjack.WordRegImm.reg 12333)))) := by
  unfold output8393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8393_skip : Flapjack.WordAlloc.isSkip output8393 = false := by
  rw [output8393_def]
  conv => lhs; cbv
  try rfl
theorem node8393_eq : Flapjack.WordAlloc.removeDeadStructural input8393 value4200 value1 value2 = (output8393, value4201, value1) := by
  rw [input8393_def, output8393_def]
  try (conv => lhs; cbv)
  try rfl

def value4202 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12333 2936#64))).val
theorem input8394_def : input8394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12333 2936#64)) := by
  unfold input8394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12333 2936#64))).val
theorem output8394_def : output8394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12333 2936#64)) := by
  unfold output8394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8394_skip : Flapjack.WordAlloc.isSkip output8394 = false := by
  rw [output8394_def]
  conv => lhs; cbv
  try rfl
theorem node8394_eq : Flapjack.WordAlloc.removeDeadStructural input8394 value4201 value1 value2 = (output8394, value4202, value1) := by
  rw [input8394_def, output8394_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8394 input8393)).val
theorem input8395_def : input8395 = (.seq input8394 input8393) := by
  unfold input8395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8394 output8393)).val
theorem output8395_def : output8395 = (.seq output8394 output8393) := by
  unfold output8395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8395_skip : Flapjack.WordAlloc.isSkip output8395 = false := by
  rw [output8395_def]
  conv => lhs; cbv
  try rfl
theorem node8395_eq : Flapjack.WordAlloc.removeDeadStructural input8395 value4200 value1 value2 = (output8395, value4202, value1) := by
  rw [input8395_def, output8395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8393_eq]
  dsimp only
  rw [node8394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4203 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12329 (Flapjack.WordLangAddr.addr 12325 18446744073709551104#64)))).val
theorem input8396_def : input8396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12329 (Flapjack.WordLangAddr.addr 12325 18446744073709551104#64))) := by
  unfold input8396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12329 (Flapjack.WordLangAddr.addr 12325 18446744073709551104#64)))).val
theorem output8396_def : output8396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12329 (Flapjack.WordLangAddr.addr 12325 18446744073709551104#64))) := by
  unfold output8396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8396_skip : Flapjack.WordAlloc.isSkip output8396 = false := by
  rw [output8396_def]
  conv => lhs; cbv
  try rfl
theorem node8396_eq : Flapjack.WordAlloc.removeDeadStructural input8396 value4202 value1 value2 = (output8396, value4203, value1) := by
  rw [input8396_def, output8396_def]
  try (conv => lhs; cbv)
  try rfl

def value4204 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12325 12321)).val
theorem input8397_def : input8397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12325 12321) := by
  unfold input8397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12325 12321)).val
theorem output8397_def : output8397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12325 12321) := by
  unfold output8397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8397_skip : Flapjack.WordAlloc.isSkip output8397 = false := by
  rw [output8397_def]
  conv => lhs; cbv
  try rfl
theorem node8397_eq : Flapjack.WordAlloc.removeDeadStructural input8397 value4203 value1 value2 = (output8397, value4204, value1) := by
  rw [input8397_def, output8397_def]
  try (conv => lhs; cbv)
  try rfl

def value4205 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12321 12317 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8398_def : input8398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12321 12317 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12321 12317 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8398_def : output8398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12321 12317 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8398_skip : Flapjack.WordAlloc.isSkip output8398 = false := by
  rw [output8398_def]
  conv => lhs; cbv
  try rfl
theorem node8398_eq : Flapjack.WordAlloc.removeDeadStructural input8398 value4204 value1 value2 = (output8398, value4205, value1) := by
  rw [input8398_def, output8398_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12317 Flapjack.WordStore.heapLength)).val
theorem input8399_def : input8399 = (Flapjack.WordLangProgHOL.get 12317 Flapjack.WordStore.heapLength) := by
  unfold input8399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12317 Flapjack.WordStore.heapLength)).val
theorem output8399_def : output8399 = (Flapjack.WordLangProgHOL.get 12317 Flapjack.WordStore.heapLength) := by
  unfold output8399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8399_skip : Flapjack.WordAlloc.isSkip output8399 = false := by
  rw [output8399_def]
  conv => lhs; cbv
  try rfl
theorem node8399_eq : Flapjack.WordAlloc.removeDeadStructural input8399 value4205 value1 value2 = (output8399, value5, value1) := by
  rw [input8399_def, output8399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8399 input8398)).val
theorem input8400_def : input8400 = (.seq input8399 input8398) := by
  unfold input8400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8399 output8398)).val
theorem output8400_def : output8400 = (.seq output8399 output8398) := by
  unfold output8400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8400_skip : Flapjack.WordAlloc.isSkip output8400 = false := by
  rw [output8400_def]
  conv => lhs; cbv
  try rfl
theorem node8400_eq : Flapjack.WordAlloc.removeDeadStructural input8400 value4204 value1 value2 = (output8400, value5, value1) := by
  rw [input8400_def, output8400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8398_eq]
  dsimp only
  rw [node8399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8400 input8397)).val
theorem input8401_def : input8401 = (.seq input8400 input8397) := by
  unfold input8401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8400 output8397)).val
theorem output8401_def : output8401 = (.seq output8400 output8397) := by
  unfold output8401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8401_skip : Flapjack.WordAlloc.isSkip output8401 = false := by
  rw [output8401_def]
  conv => lhs; cbv
  try rfl
theorem node8401_eq : Flapjack.WordAlloc.removeDeadStructural input8401 value4203 value1 value2 = (output8401, value5, value1) := by
  rw [input8401_def, output8401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8397_eq]
  dsimp only
  rw [node8400_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8401 input8396)).val
theorem input8402_def : input8402 = (.seq input8401 input8396) := by
  unfold input8402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8401 output8396)).val
theorem output8402_def : output8402 = (.seq output8401 output8396) := by
  unfold output8402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8402_skip : Flapjack.WordAlloc.isSkip output8402 = false := by
  rw [output8402_def]
  conv => lhs; cbv
  try rfl
theorem node8402_eq : Flapjack.WordAlloc.removeDeadStructural input8402 value4202 value1 value2 = (output8402, value5, value1) := by
  rw [input8402_def, output8402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8396_eq]
  dsimp only
  rw [node8401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8402 input8395)).val
theorem input8403_def : input8403 = (.seq input8402 input8395) := by
  unfold input8403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8402 output8395)).val
theorem output8403_def : output8403 = (.seq output8402 output8395) := by
  unfold output8403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8403_skip : Flapjack.WordAlloc.isSkip output8403 = false := by
  rw [output8403_def]
  conv => lhs; cbv
  try rfl
theorem node8403_eq : Flapjack.WordAlloc.removeDeadStructural input8403 value4200 value1 value2 = (output8403, value5, value1) := by
  rw [input8403_def, output8403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8395_eq]
  dsimp only
  rw [node8402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4206 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12309 (Flapjack.WordLangAddr.addr 12313 0#64)))).val
theorem input8404_def : input8404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12309 (Flapjack.WordLangAddr.addr 12313 0#64))) := by
  unfold input8404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12309 (Flapjack.WordLangAddr.addr 12313 0#64)))).val
theorem output8404_def : output8404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12309 (Flapjack.WordLangAddr.addr 12313 0#64))) := by
  unfold output8404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8404_skip : Flapjack.WordAlloc.isSkip output8404 = false := by
  rw [output8404_def]
  conv => lhs; cbv
  try rfl
theorem node8404_eq : Flapjack.WordAlloc.removeDeadStructural input8404 value5 value1 value2 = (output8404, value4206, value1) := by
  rw [input8404_def, output8404_def]
  try (conv => lhs; cbv)
  try rfl

def value4207 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12313, 12301)])).val
theorem input8405_def : input8405 = (Flapjack.WordLangProgHOL.move 0 [(12313, 12301)]) := by
  unfold input8405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12313, 12301)])).val
theorem output8405_def : output8405 = (Flapjack.WordLangProgHOL.move 0 [(12313, 12301)]) := by
  unfold output8405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8405_skip : Flapjack.WordAlloc.isSkip output8405 = false := by
  rw [output8405_def]
  conv => lhs; cbv
  try rfl
theorem node8405_eq : Flapjack.WordAlloc.removeDeadStructural input8405 value4206 value1 value2 = (output8405, value4207, value1) := by
  rw [input8405_def, output8405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8405 input8404)).val
theorem input8406_def : input8406 = (.seq input8405 input8404) := by
  unfold input8406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8405 output8404)).val
theorem output8406_def : output8406 = (.seq output8405 output8404) := by
  unfold output8406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8406_skip : Flapjack.WordAlloc.isSkip output8406 = false := by
  rw [output8406_def]
  conv => lhs; cbv
  try rfl
theorem node8406_eq : Flapjack.WordAlloc.removeDeadStructural input8406 value5 value1 value2 = (output8406, value4207, value1) := by
  rw [input8406_def, output8406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8404_eq]
  dsimp only
  rw [node8405_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4208 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12309 8565656522589412373#64))).val
theorem input8407_def : input8407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12309 8565656522589412373#64)) := by
  unfold input8407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12309 8565656522589412373#64))).val
theorem output8407_def : output8407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12309 8565656522589412373#64)) := by
  unfold output8407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8407_skip : Flapjack.WordAlloc.isSkip output8407 = false := by
  rw [output8407_def]
  conv => lhs; cbv
  try rfl
theorem node8407_eq : Flapjack.WordAlloc.removeDeadStructural input8407 value4207 value1 value2 = (output8407, value4208, value1) := by
  rw [input8407_def, output8407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12305 8565656522589412373#64))).val
theorem input8408_def : input8408 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12305 8565656522589412373#64)) := by
  unfold input8408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8408_def : output8408 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8408_skip : Flapjack.WordAlloc.isSkip output8408 = true := by
  rw [output8408_def]
  conv => lhs; cbv
  try rfl
theorem node8408_eq : Flapjack.WordAlloc.removeDeadStructural input8408 value4208 value1 value2 = (output8408, value4208, value1) := by
  rw [input8408_def, output8408_def]
  try (conv => lhs; cbv)
  try rfl

def value4209 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12301 12293 (Flapjack.WordRegImm.reg 12297))))).val
theorem input8409_def : input8409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12301 12293 (Flapjack.WordRegImm.reg 12297)))) := by
  unfold input8409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12301 12293 (Flapjack.WordRegImm.reg 12297))))).val
theorem output8409_def : output8409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12301 12293 (Flapjack.WordRegImm.reg 12297)))) := by
  unfold output8409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8409_skip : Flapjack.WordAlloc.isSkip output8409 = false := by
  rw [output8409_def]
  conv => lhs; cbv
  try rfl
theorem node8409_eq : Flapjack.WordAlloc.removeDeadStructural input8409 value4208 value1 value2 = (output8409, value4209, value1) := by
  rw [input8409_def, output8409_def]
  try (conv => lhs; cbv)
  try rfl

def value4210 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12297 2928#64))).val
theorem input8410_def : input8410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12297 2928#64)) := by
  unfold input8410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12297 2928#64))).val
theorem output8410_def : output8410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12297 2928#64)) := by
  unfold output8410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8410_skip : Flapjack.WordAlloc.isSkip output8410 = false := by
  rw [output8410_def]
  conv => lhs; cbv
  try rfl
theorem node8410_eq : Flapjack.WordAlloc.removeDeadStructural input8410 value4209 value1 value2 = (output8410, value4210, value1) := by
  rw [input8410_def, output8410_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8410 input8409)).val
theorem input8411_def : input8411 = (.seq input8410 input8409) := by
  unfold input8411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8410 output8409)).val
theorem output8411_def : output8411 = (.seq output8410 output8409) := by
  unfold output8411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8411_skip : Flapjack.WordAlloc.isSkip output8411 = false := by
  rw [output8411_def]
  conv => lhs; cbv
  try rfl
theorem node8411_eq : Flapjack.WordAlloc.removeDeadStructural input8411 value4208 value1 value2 = (output8411, value4210, value1) := by
  rw [input8411_def, output8411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8409_eq]
  dsimp only
  rw [node8410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4211 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12293 (Flapjack.WordLangAddr.addr 12289 18446744073709551104#64)))).val
theorem input8412_def : input8412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12293 (Flapjack.WordLangAddr.addr 12289 18446744073709551104#64))) := by
  unfold input8412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12293 (Flapjack.WordLangAddr.addr 12289 18446744073709551104#64)))).val
theorem output8412_def : output8412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12293 (Flapjack.WordLangAddr.addr 12289 18446744073709551104#64))) := by
  unfold output8412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8412_skip : Flapjack.WordAlloc.isSkip output8412 = false := by
  rw [output8412_def]
  conv => lhs; cbv
  try rfl
theorem node8412_eq : Flapjack.WordAlloc.removeDeadStructural input8412 value4210 value1 value2 = (output8412, value4211, value1) := by
  rw [input8412_def, output8412_def]
  try (conv => lhs; cbv)
  try rfl

def value4212 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input8413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12289 12285)).val
theorem input8413_def : input8413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12289 12285) := by
  unfold input8413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12289 12285)).val
theorem output8413_def : output8413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12289 12285) := by
  unfold output8413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8413_skip : Flapjack.WordAlloc.isSkip output8413 = false := by
  rw [output8413_def]
  conv => lhs; cbv
  try rfl
theorem node8413_eq : Flapjack.WordAlloc.removeDeadStructural input8413 value4211 value1 value2 = (output8413, value4212, value1) := by
  rw [input8413_def, output8413_def]
  try (conv => lhs; cbv)
  try rfl

def value4213 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12285 12281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8414_def : input8414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12285 12281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12285 12281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8414_def : output8414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12285 12281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8414_skip : Flapjack.WordAlloc.isSkip output8414 = false := by
  rw [output8414_def]
  conv => lhs; cbv
  try rfl
theorem node8414_eq : Flapjack.WordAlloc.removeDeadStructural input8414 value4212 value1 value2 = (output8414, value4213, value1) := by
  rw [input8414_def, output8414_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12281 Flapjack.WordStore.heapLength)).val
theorem input8415_def : input8415 = (Flapjack.WordLangProgHOL.get 12281 Flapjack.WordStore.heapLength) := by
  unfold input8415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12281 Flapjack.WordStore.heapLength)).val
theorem output8415_def : output8415 = (Flapjack.WordLangProgHOL.get 12281 Flapjack.WordStore.heapLength) := by
  unfold output8415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8415_skip : Flapjack.WordAlloc.isSkip output8415 = false := by
  rw [output8415_def]
  conv => lhs; cbv
  try rfl
theorem node8415_eq : Flapjack.WordAlloc.removeDeadStructural input8415 value4213 value1 value2 = (output8415, value5, value1) := by
  rw [input8415_def, output8415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8415 input8414)).val
theorem input8416_def : input8416 = (.seq input8415 input8414) := by
  unfold input8416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8415 output8414)).val
theorem output8416_def : output8416 = (.seq output8415 output8414) := by
  unfold output8416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8416_skip : Flapjack.WordAlloc.isSkip output8416 = false := by
  rw [output8416_def]
  conv => lhs; cbv
  try rfl
theorem node8416_eq : Flapjack.WordAlloc.removeDeadStructural input8416 value4212 value1 value2 = (output8416, value5, value1) := by
  rw [input8416_def, output8416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8414_eq]
  dsimp only
  rw [node8415_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8416 input8413)).val
theorem input8417_def : input8417 = (.seq input8416 input8413) := by
  unfold input8417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8416 output8413)).val
theorem output8417_def : output8417 = (.seq output8416 output8413) := by
  unfold output8417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8417_skip : Flapjack.WordAlloc.isSkip output8417 = false := by
  rw [output8417_def]
  conv => lhs; cbv
  try rfl
theorem node8417_eq : Flapjack.WordAlloc.removeDeadStructural input8417 value4211 value1 value2 = (output8417, value5, value1) := by
  rw [input8417_def, output8417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8413_eq]
  dsimp only
  rw [node8416_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8417 input8412)).val
theorem input8418_def : input8418 = (.seq input8417 input8412) := by
  unfold input8418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8417 output8412)).val
theorem output8418_def : output8418 = (.seq output8417 output8412) := by
  unfold output8418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8418_skip : Flapjack.WordAlloc.isSkip output8418 = false := by
  rw [output8418_def]
  conv => lhs; cbv
  try rfl
theorem node8418_eq : Flapjack.WordAlloc.removeDeadStructural input8418 value4210 value1 value2 = (output8418, value5, value1) := by
  rw [input8418_def, output8418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8412_eq]
  dsimp only
  rw [node8417_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8418 input8411)).val
theorem input8419_def : input8419 = (.seq input8418 input8411) := by
  unfold input8419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8418 output8411)).val
theorem output8419_def : output8419 = (.seq output8418 output8411) := by
  unfold output8419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8419_skip : Flapjack.WordAlloc.isSkip output8419 = false := by
  rw [output8419_def]
  conv => lhs; cbv
  try rfl
theorem node8419_eq : Flapjack.WordAlloc.removeDeadStructural input8419 value4208 value1 value2 = (output8419, value5, value1) := by
  rw [input8419_def, output8419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8411_eq]
  dsimp only
  rw [node8418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4214 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12273 (Flapjack.WordLangAddr.addr 12277 0#64)))).val
theorem input8420_def : input8420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12273 (Flapjack.WordLangAddr.addr 12277 0#64))) := by
  unfold input8420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12273 (Flapjack.WordLangAddr.addr 12277 0#64)))).val
theorem output8420_def : output8420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12273 (Flapjack.WordLangAddr.addr 12277 0#64))) := by
  unfold output8420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8420_skip : Flapjack.WordAlloc.isSkip output8420 = false := by
  rw [output8420_def]
  conv => lhs; cbv
  try rfl
theorem node8420_eq : Flapjack.WordAlloc.removeDeadStructural input8420 value5 value1 value2 = (output8420, value4214, value1) := by
  rw [input8420_def, output8420_def]
  try (conv => lhs; cbv)
  try rfl

def value4215 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12277, 12265)])).val
theorem input8421_def : input8421 = (Flapjack.WordLangProgHOL.move 0 [(12277, 12265)]) := by
  unfold input8421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12277, 12265)])).val
theorem output8421_def : output8421 = (Flapjack.WordLangProgHOL.move 0 [(12277, 12265)]) := by
  unfold output8421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8421_skip : Flapjack.WordAlloc.isSkip output8421 = false := by
  rw [output8421_def]
  conv => lhs; cbv
  try rfl
theorem node8421_eq : Flapjack.WordAlloc.removeDeadStructural input8421 value4214 value1 value2 = (output8421, value4215, value1) := by
  rw [input8421_def, output8421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8421 input8420)).val
theorem input8422_def : input8422 = (.seq input8421 input8420) := by
  unfold input8422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8421 output8420)).val
theorem output8422_def : output8422 = (.seq output8421 output8420) := by
  unfold output8422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8422_skip : Flapjack.WordAlloc.isSkip output8422 = false := by
  rw [output8422_def]
  conv => lhs; cbv
  try rfl
theorem node8422_eq : Flapjack.WordAlloc.removeDeadStructural input8422 value5 value1 value2 = (output8422, value4215, value1) := by
  rw [input8422_def, output8422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8420_eq]
  dsimp only
  rw [node8421_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4216 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12273 10599026333335446784#64))).val
theorem input8423_def : input8423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12273 10599026333335446784#64)) := by
  unfold input8423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12273 10599026333335446784#64))).val
theorem output8423_def : output8423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12273 10599026333335446784#64)) := by
  unfold output8423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8423_skip : Flapjack.WordAlloc.isSkip output8423 = false := by
  rw [output8423_def]
  conv => lhs; cbv
  try rfl
theorem node8423_eq : Flapjack.WordAlloc.removeDeadStructural input8423 value4215 value1 value2 = (output8423, value4216, value1) := by
  rw [input8423_def, output8423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12269 10599026333335446784#64))).val
theorem input8424_def : input8424 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12269 10599026333335446784#64)) := by
  unfold input8424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8424_def : output8424 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8424_skip : Flapjack.WordAlloc.isSkip output8424 = true := by
  rw [output8424_def]
  conv => lhs; cbv
  try rfl
theorem node8424_eq : Flapjack.WordAlloc.removeDeadStructural input8424 value4216 value1 value2 = (output8424, value4216, value1) := by
  rw [input8424_def, output8424_def]
  try (conv => lhs; cbv)
  try rfl

def value4217 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12265 12257 (Flapjack.WordRegImm.reg 12261))))).val
theorem input8425_def : input8425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12265 12257 (Flapjack.WordRegImm.reg 12261)))) := by
  unfold input8425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12265 12257 (Flapjack.WordRegImm.reg 12261))))).val
theorem output8425_def : output8425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12265 12257 (Flapjack.WordRegImm.reg 12261)))) := by
  unfold output8425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8425_skip : Flapjack.WordAlloc.isSkip output8425 = false := by
  rw [output8425_def]
  conv => lhs; cbv
  try rfl
theorem node8425_eq : Flapjack.WordAlloc.removeDeadStructural input8425 value4216 value1 value2 = (output8425, value4217, value1) := by
  rw [input8425_def, output8425_def]
  try (conv => lhs; cbv)
  try rfl

def value4218 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12261 2920#64))).val
theorem input8426_def : input8426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12261 2920#64)) := by
  unfold input8426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12261 2920#64))).val
theorem output8426_def : output8426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12261 2920#64)) := by
  unfold output8426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8426_skip : Flapjack.WordAlloc.isSkip output8426 = false := by
  rw [output8426_def]
  conv => lhs; cbv
  try rfl
theorem node8426_eq : Flapjack.WordAlloc.removeDeadStructural input8426 value4217 value1 value2 = (output8426, value4218, value1) := by
  rw [input8426_def, output8426_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8426 input8425)).val
theorem input8427_def : input8427 = (.seq input8426 input8425) := by
  unfold input8427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8426 output8425)).val
theorem output8427_def : output8427 = (.seq output8426 output8425) := by
  unfold output8427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8427_skip : Flapjack.WordAlloc.isSkip output8427 = false := by
  rw [output8427_def]
  conv => lhs; cbv
  try rfl
theorem node8427_eq : Flapjack.WordAlloc.removeDeadStructural input8427 value4216 value1 value2 = (output8427, value4218, value1) := by
  rw [input8427_def, output8427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8425_eq]
  dsimp only
  rw [node8426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4219 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12257 (Flapjack.WordLangAddr.addr 12253 18446744073709551104#64)))).val
theorem input8428_def : input8428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12257 (Flapjack.WordLangAddr.addr 12253 18446744073709551104#64))) := by
  unfold input8428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12257 (Flapjack.WordLangAddr.addr 12253 18446744073709551104#64)))).val
theorem output8428_def : output8428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12257 (Flapjack.WordLangAddr.addr 12253 18446744073709551104#64))) := by
  unfold output8428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8428_skip : Flapjack.WordAlloc.isSkip output8428 = false := by
  rw [output8428_def]
  conv => lhs; cbv
  try rfl
theorem node8428_eq : Flapjack.WordAlloc.removeDeadStructural input8428 value4218 value1 value2 = (output8428, value4219, value1) := by
  rw [input8428_def, output8428_def]
  try (conv => lhs; cbv)
  try rfl

def value4220 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12253 12249)).val
theorem input8429_def : input8429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12253 12249) := by
  unfold input8429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12253 12249)).val
theorem output8429_def : output8429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12253 12249) := by
  unfold output8429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8429_skip : Flapjack.WordAlloc.isSkip output8429 = false := by
  rw [output8429_def]
  conv => lhs; cbv
  try rfl
theorem node8429_eq : Flapjack.WordAlloc.removeDeadStructural input8429 value4219 value1 value2 = (output8429, value4220, value1) := by
  rw [input8429_def, output8429_def]
  try (conv => lhs; cbv)
  try rfl

def value4221 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12249 12245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8430_def : input8430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12249 12245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12249 12245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8430_def : output8430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12249 12245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8430_skip : Flapjack.WordAlloc.isSkip output8430 = false := by
  rw [output8430_def]
  conv => lhs; cbv
  try rfl
theorem node8430_eq : Flapjack.WordAlloc.removeDeadStructural input8430 value4220 value1 value2 = (output8430, value4221, value1) := by
  rw [input8430_def, output8430_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12245 Flapjack.WordStore.heapLength)).val
theorem input8431_def : input8431 = (Flapjack.WordLangProgHOL.get 12245 Flapjack.WordStore.heapLength) := by
  unfold input8431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12245 Flapjack.WordStore.heapLength)).val
theorem output8431_def : output8431 = (Flapjack.WordLangProgHOL.get 12245 Flapjack.WordStore.heapLength) := by
  unfold output8431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8431_skip : Flapjack.WordAlloc.isSkip output8431 = false := by
  rw [output8431_def]
  conv => lhs; cbv
  try rfl
theorem node8431_eq : Flapjack.WordAlloc.removeDeadStructural input8431 value4221 value1 value2 = (output8431, value5, value1) := by
  rw [input8431_def, output8431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8431 input8430)).val
theorem input8432_def : input8432 = (.seq input8431 input8430) := by
  unfold input8432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8431 output8430)).val
theorem output8432_def : output8432 = (.seq output8431 output8430) := by
  unfold output8432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8432_skip : Flapjack.WordAlloc.isSkip output8432 = false := by
  rw [output8432_def]
  conv => lhs; cbv
  try rfl
theorem node8432_eq : Flapjack.WordAlloc.removeDeadStructural input8432 value4220 value1 value2 = (output8432, value5, value1) := by
  rw [input8432_def, output8432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8430_eq]
  dsimp only
  rw [node8431_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8432 input8429)).val
theorem input8433_def : input8433 = (.seq input8432 input8429) := by
  unfold input8433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8432 output8429)).val
theorem output8433_def : output8433 = (.seq output8432 output8429) := by
  unfold output8433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8433_skip : Flapjack.WordAlloc.isSkip output8433 = false := by
  rw [output8433_def]
  conv => lhs; cbv
  try rfl
theorem node8433_eq : Flapjack.WordAlloc.removeDeadStructural input8433 value4219 value1 value2 = (output8433, value5, value1) := by
  rw [input8433_def, output8433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8429_eq]
  dsimp only
  rw [node8432_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8433 input8428)).val
theorem input8434_def : input8434 = (.seq input8433 input8428) := by
  unfold input8434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8433 output8428)).val
theorem output8434_def : output8434 = (.seq output8433 output8428) := by
  unfold output8434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8434_skip : Flapjack.WordAlloc.isSkip output8434 = false := by
  rw [output8434_def]
  conv => lhs; cbv
  try rfl
theorem node8434_eq : Flapjack.WordAlloc.removeDeadStructural input8434 value4218 value1 value2 = (output8434, value5, value1) := by
  rw [input8434_def, output8434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8428_eq]
  dsimp only
  rw [node8433_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8434 input8427)).val
theorem input8435_def : input8435 = (.seq input8434 input8427) := by
  unfold input8435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8434 output8427)).val
theorem output8435_def : output8435 = (.seq output8434 output8427) := by
  unfold output8435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8435_skip : Flapjack.WordAlloc.isSkip output8435 = false := by
  rw [output8435_def]
  conv => lhs; cbv
  try rfl
theorem node8435_eq : Flapjack.WordAlloc.removeDeadStructural input8435 value4216 value1 value2 = (output8435, value5, value1) := by
  rw [input8435_def, output8435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8427_eq]
  dsimp only
  rw [node8434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4222 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12237 (Flapjack.WordLangAddr.addr 12241 0#64)))).val
theorem input8436_def : input8436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12237 (Flapjack.WordLangAddr.addr 12241 0#64))) := by
  unfold input8436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12237 (Flapjack.WordLangAddr.addr 12241 0#64)))).val
theorem output8436_def : output8436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12237 (Flapjack.WordLangAddr.addr 12241 0#64))) := by
  unfold output8436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8436_skip : Flapjack.WordAlloc.isSkip output8436 = false := by
  rw [output8436_def]
  conv => lhs; cbv
  try rfl
theorem node8436_eq : Flapjack.WordAlloc.removeDeadStructural input8436 value5 value1 value2 = (output8436, value4222, value1) := by
  rw [input8436_def, output8436_def]
  try (conv => lhs; cbv)
  try rfl

def value4223 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12241, 12229)])).val
theorem input8437_def : input8437 = (Flapjack.WordLangProgHOL.move 0 [(12241, 12229)]) := by
  unfold input8437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12241, 12229)])).val
theorem output8437_def : output8437 = (Flapjack.WordLangProgHOL.move 0 [(12241, 12229)]) := by
  unfold output8437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8437_skip : Flapjack.WordAlloc.isSkip output8437 = false := by
  rw [output8437_def]
  conv => lhs; cbv
  try rfl
theorem node8437_eq : Flapjack.WordAlloc.removeDeadStructural input8437 value4222 value1 value2 = (output8437, value4223, value1) := by
  rw [input8437_def, output8437_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8437 input8436)).val
theorem input8438_def : input8438 = (.seq input8437 input8436) := by
  unfold input8438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8437 output8436)).val
theorem output8438_def : output8438 = (.seq output8437 output8436) := by
  unfold output8438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8438_skip : Flapjack.WordAlloc.isSkip output8438 = false := by
  rw [output8438_def]
  conv => lhs; cbv
  try rfl
theorem node8438_eq : Flapjack.WordAlloc.removeDeadStructural input8438 value5 value1 value2 = (output8438, value4223, value1) := by
  rw [input8438_def, output8438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8436_eq]
  dsimp only
  rw [node8437_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4224 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12237 3270603789344496906#64))).val
theorem input8439_def : input8439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12237 3270603789344496906#64)) := by
  unfold input8439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12237 3270603789344496906#64))).val
theorem output8439_def : output8439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12237 3270603789344496906#64)) := by
  unfold output8439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8439_skip : Flapjack.WordAlloc.isSkip output8439 = false := by
  rw [output8439_def]
  conv => lhs; cbv
  try rfl
theorem node8439_eq : Flapjack.WordAlloc.removeDeadStructural input8439 value4223 value1 value2 = (output8439, value4224, value1) := by
  rw [input8439_def, output8439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12233 3270603789344496906#64))).val
theorem input8440_def : input8440 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12233 3270603789344496906#64)) := by
  unfold input8440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8440_def : output8440 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8440_skip : Flapjack.WordAlloc.isSkip output8440 = true := by
  rw [output8440_def]
  conv => lhs; cbv
  try rfl
theorem node8440_eq : Flapjack.WordAlloc.removeDeadStructural input8440 value4224 value1 value2 = (output8440, value4224, value1) := by
  rw [input8440_def, output8440_def]
  try (conv => lhs; cbv)
  try rfl

def value4225 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12229 12221 (Flapjack.WordRegImm.reg 12225))))).val
theorem input8441_def : input8441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12229 12221 (Flapjack.WordRegImm.reg 12225)))) := by
  unfold input8441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12229 12221 (Flapjack.WordRegImm.reg 12225))))).val
theorem output8441_def : output8441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12229 12221 (Flapjack.WordRegImm.reg 12225)))) := by
  unfold output8441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8441_skip : Flapjack.WordAlloc.isSkip output8441 = false := by
  rw [output8441_def]
  conv => lhs; cbv
  try rfl
theorem node8441_eq : Flapjack.WordAlloc.removeDeadStructural input8441 value4224 value1 value2 = (output8441, value4225, value1) := by
  rw [input8441_def, output8441_def]
  try (conv => lhs; cbv)
  try rfl

def value4226 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12225 2912#64))).val
theorem input8442_def : input8442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12225 2912#64)) := by
  unfold input8442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12225 2912#64))).val
theorem output8442_def : output8442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12225 2912#64)) := by
  unfold output8442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8442_skip : Flapjack.WordAlloc.isSkip output8442 = false := by
  rw [output8442_def]
  conv => lhs; cbv
  try rfl
theorem node8442_eq : Flapjack.WordAlloc.removeDeadStructural input8442 value4225 value1 value2 = (output8442, value4226, value1) := by
  rw [input8442_def, output8442_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8442 input8441)).val
theorem input8443_def : input8443 = (.seq input8442 input8441) := by
  unfold input8443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8442 output8441)).val
theorem output8443_def : output8443 = (.seq output8442 output8441) := by
  unfold output8443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8443_skip : Flapjack.WordAlloc.isSkip output8443 = false := by
  rw [output8443_def]
  conv => lhs; cbv
  try rfl
theorem node8443_eq : Flapjack.WordAlloc.removeDeadStructural input8443 value4224 value1 value2 = (output8443, value4226, value1) := by
  rw [input8443_def, output8443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8441_eq]
  dsimp only
  rw [node8442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4227 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12221 (Flapjack.WordLangAddr.addr 12217 18446744073709551104#64)))).val
theorem input8444_def : input8444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12221 (Flapjack.WordLangAddr.addr 12217 18446744073709551104#64))) := by
  unfold input8444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12221 (Flapjack.WordLangAddr.addr 12217 18446744073709551104#64)))).val
theorem output8444_def : output8444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12221 (Flapjack.WordLangAddr.addr 12217 18446744073709551104#64))) := by
  unfold output8444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8444_skip : Flapjack.WordAlloc.isSkip output8444 = false := by
  rw [output8444_def]
  conv => lhs; cbv
  try rfl
theorem node8444_eq : Flapjack.WordAlloc.removeDeadStructural input8444 value4226 value1 value2 = (output8444, value4227, value1) := by
  rw [input8444_def, output8444_def]
  try (conv => lhs; cbv)
  try rfl

def value4228 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12217 12213)).val
theorem input8445_def : input8445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12217 12213) := by
  unfold input8445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12217 12213)).val
theorem output8445_def : output8445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12217 12213) := by
  unfold output8445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8445_skip : Flapjack.WordAlloc.isSkip output8445 = false := by
  rw [output8445_def]
  conv => lhs; cbv
  try rfl
theorem node8445_eq : Flapjack.WordAlloc.removeDeadStructural input8445 value4227 value1 value2 = (output8445, value4228, value1) := by
  rw [input8445_def, output8445_def]
  try (conv => lhs; cbv)
  try rfl

def value4229 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12213 12209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8446_def : input8446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12213 12209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12213 12209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8446_def : output8446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12213 12209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8446_skip : Flapjack.WordAlloc.isSkip output8446 = false := by
  rw [output8446_def]
  conv => lhs; cbv
  try rfl
theorem node8446_eq : Flapjack.WordAlloc.removeDeadStructural input8446 value4228 value1 value2 = (output8446, value4229, value1) := by
  rw [input8446_def, output8446_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12209 Flapjack.WordStore.heapLength)).val
theorem input8447_def : input8447 = (Flapjack.WordLangProgHOL.get 12209 Flapjack.WordStore.heapLength) := by
  unfold input8447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12209 Flapjack.WordStore.heapLength)).val
theorem output8447_def : output8447 = (Flapjack.WordLangProgHOL.get 12209 Flapjack.WordStore.heapLength) := by
  unfold output8447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8447_skip : Flapjack.WordAlloc.isSkip output8447 = false := by
  rw [output8447_def]
  conv => lhs; cbv
  try rfl
theorem node8447_eq : Flapjack.WordAlloc.removeDeadStructural input8447 value4229 value1 value2 = (output8447, value5, value1) := by
  rw [input8447_def, output8447_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node8447_eq
end InitECandidate.Proofs.DeadStages713
