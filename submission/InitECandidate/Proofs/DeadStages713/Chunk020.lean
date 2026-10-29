import InitECandidate.Proofs.DeadStages713.Chunk019
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input5120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5119 input5118)).val
theorem input5120_def : input5120 = (.seq input5119 input5118) := by
  unfold input5120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5119 output5118)).val
theorem output5120_def : output5120 = (.seq output5119 output5118) := by
  unfold output5120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5120_skip : Flapjack.WordAlloc.isSkip output5120 = false := by
  rw [output5120_def]
  conv => lhs; cbv
  try rfl
theorem node5120_eq : Flapjack.WordAlloc.removeDeadStructural input5120 value2564 value1 value2 = (output5120, value5, value1) := by
  rw [input5120_def, output5120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5118_eq]
  dsimp only
  rw [node5119_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5120 input5117)).val
theorem input5121_def : input5121 = (.seq input5120 input5117) := by
  unfold input5121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5120 output5117)).val
theorem output5121_def : output5121 = (.seq output5120 output5117) := by
  unfold output5121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5121_skip : Flapjack.WordAlloc.isSkip output5121 = false := by
  rw [output5121_def]
  conv => lhs; cbv
  try rfl
theorem node5121_eq : Flapjack.WordAlloc.removeDeadStructural input5121 value2563 value1 value2 = (output5121, value5, value1) := by
  rw [input5121_def, output5121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5117_eq]
  dsimp only
  rw [node5120_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5121 input5116)).val
theorem input5122_def : input5122 = (.seq input5121 input5116) := by
  unfold input5122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5121 output5116)).val
theorem output5122_def : output5122 = (.seq output5121 output5116) := by
  unfold output5122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5122_skip : Flapjack.WordAlloc.isSkip output5122 = false := by
  rw [output5122_def]
  conv => lhs; cbv
  try rfl
theorem node5122_eq : Flapjack.WordAlloc.removeDeadStructural input5122 value2562 value1 value2 = (output5122, value5, value1) := by
  rw [input5122_def, output5122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5116_eq]
  dsimp only
  rw [node5121_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5122 input5115)).val
theorem input5123_def : input5123 = (.seq input5122 input5115) := by
  unfold input5123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5122 output5115)).val
theorem output5123_def : output5123 = (.seq output5122 output5115) := by
  unfold output5123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5123_skip : Flapjack.WordAlloc.isSkip output5123 = false := by
  rw [output5123_def]
  conv => lhs; cbv
  try rfl
theorem node5123_eq : Flapjack.WordAlloc.removeDeadStructural input5123 value2560 value1 value2 = (output5123, value5, value1) := by
  rw [input5123_def, output5123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5115_eq]
  dsimp only
  rw [node5122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2566 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19689 (Flapjack.WordLangAddr.addr 19693 0#64)))).val
theorem input5124_def : input5124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19689 (Flapjack.WordLangAddr.addr 19693 0#64))) := by
  unfold input5124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19689 (Flapjack.WordLangAddr.addr 19693 0#64)))).val
theorem output5124_def : output5124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19689 (Flapjack.WordLangAddr.addr 19693 0#64))) := by
  unfold output5124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5124_skip : Flapjack.WordAlloc.isSkip output5124 = false := by
  rw [output5124_def]
  conv => lhs; cbv
  try rfl
theorem node5124_eq : Flapjack.WordAlloc.removeDeadStructural input5124 value5 value1 value2 = (output5124, value2566, value1) := by
  rw [input5124_def, output5124_def]
  try (conv => lhs; cbv)
  try rfl

def value2567 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19693, 19681)])).val
theorem input5125_def : input5125 = (Flapjack.WordLangProgHOL.move 0 [(19693, 19681)]) := by
  unfold input5125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19693, 19681)])).val
theorem output5125_def : output5125 = (Flapjack.WordLangProgHOL.move 0 [(19693, 19681)]) := by
  unfold output5125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5125_skip : Flapjack.WordAlloc.isSkip output5125 = false := by
  rw [output5125_def]
  conv => lhs; cbv
  try rfl
theorem node5125_eq : Flapjack.WordAlloc.removeDeadStructural input5125 value2566 value1 value2 = (output5125, value2567, value1) := by
  rw [input5125_def, output5125_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5125 input5124)).val
theorem input5126_def : input5126 = (.seq input5125 input5124) := by
  unfold input5126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5125 output5124)).val
theorem output5126_def : output5126 = (.seq output5125 output5124) := by
  unfold output5126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5126_skip : Flapjack.WordAlloc.isSkip output5126 = false := by
  rw [output5126_def]
  conv => lhs; cbv
  try rfl
theorem node5126_eq : Flapjack.WordAlloc.removeDeadStructural input5126 value5 value1 value2 = (output5126, value2567, value1) := by
  rw [input5126_def, output5126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5124_eq]
  dsimp only
  rw [node5125_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2568 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19689 0#64))).val
theorem input5127_def : input5127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19689 0#64)) := by
  unfold input5127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19689 0#64))).val
theorem output5127_def : output5127 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19689 0#64)) := by
  unfold output5127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5127_skip : Flapjack.WordAlloc.isSkip output5127 = false := by
  rw [output5127_def]
  conv => lhs; cbv
  try rfl
theorem node5127_eq : Flapjack.WordAlloc.removeDeadStructural input5127 value2567 value1 value2 = (output5127, value2568, value1) := by
  rw [input5127_def, output5127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19685 0#64))).val
theorem input5128_def : input5128 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19685 0#64)) := by
  unfold input5128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5128_def : output5128 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5128_skip : Flapjack.WordAlloc.isSkip output5128 = true := by
  rw [output5128_def]
  conv => lhs; cbv
  try rfl
theorem node5128_eq : Flapjack.WordAlloc.removeDeadStructural input5128 value2568 value1 value2 = (output5128, value2568, value1) := by
  rw [input5128_def, output5128_def]
  try (conv => lhs; cbv)
  try rfl

def value2569 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19681 19673 (Flapjack.WordRegImm.reg 19677))))).val
theorem input5129_def : input5129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19681 19673 (Flapjack.WordRegImm.reg 19677)))) := by
  unfold input5129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19681 19673 (Flapjack.WordRegImm.reg 19677))))).val
theorem output5129_def : output5129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19681 19673 (Flapjack.WordRegImm.reg 19677)))) := by
  unfold output5129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5129_skip : Flapjack.WordAlloc.isSkip output5129 = false := by
  rw [output5129_def]
  conv => lhs; cbv
  try rfl
theorem node5129_eq : Flapjack.WordAlloc.removeDeadStructural input5129 value2568 value1 value2 = (output5129, value2569, value1) := by
  rw [input5129_def, output5129_def]
  try (conv => lhs; cbv)
  try rfl

def value2570 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19677 4568#64))).val
theorem input5130_def : input5130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19677 4568#64)) := by
  unfold input5130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19677 4568#64))).val
theorem output5130_def : output5130 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19677 4568#64)) := by
  unfold output5130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5130_skip : Flapjack.WordAlloc.isSkip output5130 = false := by
  rw [output5130_def]
  conv => lhs; cbv
  try rfl
theorem node5130_eq : Flapjack.WordAlloc.removeDeadStructural input5130 value2569 value1 value2 = (output5130, value2570, value1) := by
  rw [input5130_def, output5130_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5130 input5129)).val
theorem input5131_def : input5131 = (.seq input5130 input5129) := by
  unfold input5131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5130 output5129)).val
theorem output5131_def : output5131 = (.seq output5130 output5129) := by
  unfold output5131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5131_skip : Flapjack.WordAlloc.isSkip output5131 = false := by
  rw [output5131_def]
  conv => lhs; cbv
  try rfl
theorem node5131_eq : Flapjack.WordAlloc.removeDeadStructural input5131 value2568 value1 value2 = (output5131, value2570, value1) := by
  rw [input5131_def, output5131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5129_eq]
  dsimp only
  rw [node5130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2571 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19673 (Flapjack.WordLangAddr.addr 19669 18446744073709551104#64)))).val
theorem input5132_def : input5132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19673 (Flapjack.WordLangAddr.addr 19669 18446744073709551104#64))) := by
  unfold input5132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19673 (Flapjack.WordLangAddr.addr 19669 18446744073709551104#64)))).val
theorem output5132_def : output5132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19673 (Flapjack.WordLangAddr.addr 19669 18446744073709551104#64))) := by
  unfold output5132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5132_skip : Flapjack.WordAlloc.isSkip output5132 = false := by
  rw [output5132_def]
  conv => lhs; cbv
  try rfl
theorem node5132_eq : Flapjack.WordAlloc.removeDeadStructural input5132 value2570 value1 value2 = (output5132, value2571, value1) := by
  rw [input5132_def, output5132_def]
  try (conv => lhs; cbv)
  try rfl

def value2572 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19669 19665)).val
theorem input5133_def : input5133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19669 19665) := by
  unfold input5133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19669 19665)).val
theorem output5133_def : output5133 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19669 19665) := by
  unfold output5133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5133_skip : Flapjack.WordAlloc.isSkip output5133 = false := by
  rw [output5133_def]
  conv => lhs; cbv
  try rfl
theorem node5133_eq : Flapjack.WordAlloc.removeDeadStructural input5133 value2571 value1 value2 = (output5133, value2572, value1) := by
  rw [input5133_def, output5133_def]
  try (conv => lhs; cbv)
  try rfl

def value2573 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19665 19661 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5134_def : input5134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19665 19661 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19665 19661 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5134_def : output5134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19665 19661 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5134_skip : Flapjack.WordAlloc.isSkip output5134 = false := by
  rw [output5134_def]
  conv => lhs; cbv
  try rfl
theorem node5134_eq : Flapjack.WordAlloc.removeDeadStructural input5134 value2572 value1 value2 = (output5134, value2573, value1) := by
  rw [input5134_def, output5134_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19661 Flapjack.WordStore.heapLength)).val
theorem input5135_def : input5135 = (Flapjack.WordLangProgHOL.get 19661 Flapjack.WordStore.heapLength) := by
  unfold input5135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19661 Flapjack.WordStore.heapLength)).val
theorem output5135_def : output5135 = (Flapjack.WordLangProgHOL.get 19661 Flapjack.WordStore.heapLength) := by
  unfold output5135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5135_skip : Flapjack.WordAlloc.isSkip output5135 = false := by
  rw [output5135_def]
  conv => lhs; cbv
  try rfl
theorem node5135_eq : Flapjack.WordAlloc.removeDeadStructural input5135 value2573 value1 value2 = (output5135, value5, value1) := by
  rw [input5135_def, output5135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5135 input5134)).val
theorem input5136_def : input5136 = (.seq input5135 input5134) := by
  unfold input5136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5135 output5134)).val
theorem output5136_def : output5136 = (.seq output5135 output5134) := by
  unfold output5136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5136_skip : Flapjack.WordAlloc.isSkip output5136 = false := by
  rw [output5136_def]
  conv => lhs; cbv
  try rfl
theorem node5136_eq : Flapjack.WordAlloc.removeDeadStructural input5136 value2572 value1 value2 = (output5136, value5, value1) := by
  rw [input5136_def, output5136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5134_eq]
  dsimp only
  rw [node5135_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5136 input5133)).val
theorem input5137_def : input5137 = (.seq input5136 input5133) := by
  unfold input5137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5136 output5133)).val
theorem output5137_def : output5137 = (.seq output5136 output5133) := by
  unfold output5137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5137_skip : Flapjack.WordAlloc.isSkip output5137 = false := by
  rw [output5137_def]
  conv => lhs; cbv
  try rfl
theorem node5137_eq : Flapjack.WordAlloc.removeDeadStructural input5137 value2571 value1 value2 = (output5137, value5, value1) := by
  rw [input5137_def, output5137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5133_eq]
  dsimp only
  rw [node5136_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5137 input5132)).val
theorem input5138_def : input5138 = (.seq input5137 input5132) := by
  unfold input5138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5137 output5132)).val
theorem output5138_def : output5138 = (.seq output5137 output5132) := by
  unfold output5138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5138_skip : Flapjack.WordAlloc.isSkip output5138 = false := by
  rw [output5138_def]
  conv => lhs; cbv
  try rfl
theorem node5138_eq : Flapjack.WordAlloc.removeDeadStructural input5138 value2570 value1 value2 = (output5138, value5, value1) := by
  rw [input5138_def, output5138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5132_eq]
  dsimp only
  rw [node5137_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5138 input5131)).val
theorem input5139_def : input5139 = (.seq input5138 input5131) := by
  unfold input5139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5138 output5131)).val
theorem output5139_def : output5139 = (.seq output5138 output5131) := by
  unfold output5139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5139_skip : Flapjack.WordAlloc.isSkip output5139 = false := by
  rw [output5139_def]
  conv => lhs; cbv
  try rfl
theorem node5139_eq : Flapjack.WordAlloc.removeDeadStructural input5139 value2568 value1 value2 = (output5139, value5, value1) := by
  rw [input5139_def, output5139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5131_eq]
  dsimp only
  rw [node5138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2574 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19653 (Flapjack.WordLangAddr.addr 19657 0#64)))).val
theorem input5140_def : input5140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19653 (Flapjack.WordLangAddr.addr 19657 0#64))) := by
  unfold input5140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19653 (Flapjack.WordLangAddr.addr 19657 0#64)))).val
theorem output5140_def : output5140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19653 (Flapjack.WordLangAddr.addr 19657 0#64))) := by
  unfold output5140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5140_skip : Flapjack.WordAlloc.isSkip output5140 = false := by
  rw [output5140_def]
  conv => lhs; cbv
  try rfl
theorem node5140_eq : Flapjack.WordAlloc.removeDeadStructural input5140 value5 value1 value2 = (output5140, value2574, value1) := by
  rw [input5140_def, output5140_def]
  try (conv => lhs; cbv)
  try rfl

def value2575 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19657, 19645)])).val
theorem input5141_def : input5141 = (Flapjack.WordLangProgHOL.move 0 [(19657, 19645)]) := by
  unfold input5141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19657, 19645)])).val
theorem output5141_def : output5141 = (Flapjack.WordLangProgHOL.move 0 [(19657, 19645)]) := by
  unfold output5141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5141_skip : Flapjack.WordAlloc.isSkip output5141 = false := by
  rw [output5141_def]
  conv => lhs; cbv
  try rfl
theorem node5141_eq : Flapjack.WordAlloc.removeDeadStructural input5141 value2574 value1 value2 = (output5141, value2575, value1) := by
  rw [input5141_def, output5141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5141 input5140)).val
theorem input5142_def : input5142 = (.seq input5141 input5140) := by
  unfold input5142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5141 output5140)).val
theorem output5142_def : output5142 = (.seq output5141 output5140) := by
  unfold output5142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5142_skip : Flapjack.WordAlloc.isSkip output5142 = false := by
  rw [output5142_def]
  conv => lhs; cbv
  try rfl
theorem node5142_eq : Flapjack.WordAlloc.removeDeadStructural input5142 value5 value1 value2 = (output5142, value2575, value1) := by
  rw [input5142_def, output5142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5140_eq]
  dsimp only
  rw [node5141_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2576 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19653 0#64))).val
theorem input5143_def : input5143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19653 0#64)) := by
  unfold input5143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19653 0#64))).val
theorem output5143_def : output5143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19653 0#64)) := by
  unfold output5143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5143_skip : Flapjack.WordAlloc.isSkip output5143 = false := by
  rw [output5143_def]
  conv => lhs; cbv
  try rfl
theorem node5143_eq : Flapjack.WordAlloc.removeDeadStructural input5143 value2575 value1 value2 = (output5143, value2576, value1) := by
  rw [input5143_def, output5143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19649 0#64))).val
theorem input5144_def : input5144 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19649 0#64)) := by
  unfold input5144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5144_def : output5144 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5144_skip : Flapjack.WordAlloc.isSkip output5144 = true := by
  rw [output5144_def]
  conv => lhs; cbv
  try rfl
theorem node5144_eq : Flapjack.WordAlloc.removeDeadStructural input5144 value2576 value1 value2 = (output5144, value2576, value1) := by
  rw [input5144_def, output5144_def]
  try (conv => lhs; cbv)
  try rfl

def value2577 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19645 19637 (Flapjack.WordRegImm.reg 19641))))).val
theorem input5145_def : input5145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19645 19637 (Flapjack.WordRegImm.reg 19641)))) := by
  unfold input5145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19645 19637 (Flapjack.WordRegImm.reg 19641))))).val
theorem output5145_def : output5145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19645 19637 (Flapjack.WordRegImm.reg 19641)))) := by
  unfold output5145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5145_skip : Flapjack.WordAlloc.isSkip output5145 = false := by
  rw [output5145_def]
  conv => lhs; cbv
  try rfl
theorem node5145_eq : Flapjack.WordAlloc.removeDeadStructural input5145 value2576 value1 value2 = (output5145, value2577, value1) := by
  rw [input5145_def, output5145_def]
  try (conv => lhs; cbv)
  try rfl

def value2578 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19641 4560#64))).val
theorem input5146_def : input5146 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19641 4560#64)) := by
  unfold input5146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19641 4560#64))).val
theorem output5146_def : output5146 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19641 4560#64)) := by
  unfold output5146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5146_skip : Flapjack.WordAlloc.isSkip output5146 = false := by
  rw [output5146_def]
  conv => lhs; cbv
  try rfl
theorem node5146_eq : Flapjack.WordAlloc.removeDeadStructural input5146 value2577 value1 value2 = (output5146, value2578, value1) := by
  rw [input5146_def, output5146_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5146 input5145)).val
theorem input5147_def : input5147 = (.seq input5146 input5145) := by
  unfold input5147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5146 output5145)).val
theorem output5147_def : output5147 = (.seq output5146 output5145) := by
  unfold output5147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5147_skip : Flapjack.WordAlloc.isSkip output5147 = false := by
  rw [output5147_def]
  conv => lhs; cbv
  try rfl
theorem node5147_eq : Flapjack.WordAlloc.removeDeadStructural input5147 value2576 value1 value2 = (output5147, value2578, value1) := by
  rw [input5147_def, output5147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5145_eq]
  dsimp only
  rw [node5146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2579 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19637 (Flapjack.WordLangAddr.addr 19633 18446744073709551104#64)))).val
theorem input5148_def : input5148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19637 (Flapjack.WordLangAddr.addr 19633 18446744073709551104#64))) := by
  unfold input5148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19637 (Flapjack.WordLangAddr.addr 19633 18446744073709551104#64)))).val
theorem output5148_def : output5148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19637 (Flapjack.WordLangAddr.addr 19633 18446744073709551104#64))) := by
  unfold output5148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5148_skip : Flapjack.WordAlloc.isSkip output5148 = false := by
  rw [output5148_def]
  conv => lhs; cbv
  try rfl
theorem node5148_eq : Flapjack.WordAlloc.removeDeadStructural input5148 value2578 value1 value2 = (output5148, value2579, value1) := by
  rw [input5148_def, output5148_def]
  try (conv => lhs; cbv)
  try rfl

def value2580 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19633 19629)).val
theorem input5149_def : input5149 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19633 19629) := by
  unfold input5149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19633 19629)).val
theorem output5149_def : output5149 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19633 19629) := by
  unfold output5149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5149_skip : Flapjack.WordAlloc.isSkip output5149 = false := by
  rw [output5149_def]
  conv => lhs; cbv
  try rfl
theorem node5149_eq : Flapjack.WordAlloc.removeDeadStructural input5149 value2579 value1 value2 = (output5149, value2580, value1) := by
  rw [input5149_def, output5149_def]
  try (conv => lhs; cbv)
  try rfl

def value2581 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19629 19625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5150_def : input5150 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19629 19625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19629 19625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5150_def : output5150 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19629 19625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5150_skip : Flapjack.WordAlloc.isSkip output5150 = false := by
  rw [output5150_def]
  conv => lhs; cbv
  try rfl
theorem node5150_eq : Flapjack.WordAlloc.removeDeadStructural input5150 value2580 value1 value2 = (output5150, value2581, value1) := by
  rw [input5150_def, output5150_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19625 Flapjack.WordStore.heapLength)).val
theorem input5151_def : input5151 = (Flapjack.WordLangProgHOL.get 19625 Flapjack.WordStore.heapLength) := by
  unfold input5151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19625 Flapjack.WordStore.heapLength)).val
theorem output5151_def : output5151 = (Flapjack.WordLangProgHOL.get 19625 Flapjack.WordStore.heapLength) := by
  unfold output5151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5151_skip : Flapjack.WordAlloc.isSkip output5151 = false := by
  rw [output5151_def]
  conv => lhs; cbv
  try rfl
theorem node5151_eq : Flapjack.WordAlloc.removeDeadStructural input5151 value2581 value1 value2 = (output5151, value5, value1) := by
  rw [input5151_def, output5151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5151 input5150)).val
theorem input5152_def : input5152 = (.seq input5151 input5150) := by
  unfold input5152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5151 output5150)).val
theorem output5152_def : output5152 = (.seq output5151 output5150) := by
  unfold output5152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5152_skip : Flapjack.WordAlloc.isSkip output5152 = false := by
  rw [output5152_def]
  conv => lhs; cbv
  try rfl
theorem node5152_eq : Flapjack.WordAlloc.removeDeadStructural input5152 value2580 value1 value2 = (output5152, value5, value1) := by
  rw [input5152_def, output5152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5150_eq]
  dsimp only
  rw [node5151_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5152 input5149)).val
theorem input5153_def : input5153 = (.seq input5152 input5149) := by
  unfold input5153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5152 output5149)).val
theorem output5153_def : output5153 = (.seq output5152 output5149) := by
  unfold output5153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5153_skip : Flapjack.WordAlloc.isSkip output5153 = false := by
  rw [output5153_def]
  conv => lhs; cbv
  try rfl
theorem node5153_eq : Flapjack.WordAlloc.removeDeadStructural input5153 value2579 value1 value2 = (output5153, value5, value1) := by
  rw [input5153_def, output5153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5149_eq]
  dsimp only
  rw [node5152_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5153 input5148)).val
theorem input5154_def : input5154 = (.seq input5153 input5148) := by
  unfold input5154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5153 output5148)).val
theorem output5154_def : output5154 = (.seq output5153 output5148) := by
  unfold output5154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5154_skip : Flapjack.WordAlloc.isSkip output5154 = false := by
  rw [output5154_def]
  conv => lhs; cbv
  try rfl
theorem node5154_eq : Flapjack.WordAlloc.removeDeadStructural input5154 value2578 value1 value2 = (output5154, value5, value1) := by
  rw [input5154_def, output5154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5148_eq]
  dsimp only
  rw [node5153_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5154 input5147)).val
theorem input5155_def : input5155 = (.seq input5154 input5147) := by
  unfold input5155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5154 output5147)).val
theorem output5155_def : output5155 = (.seq output5154 output5147) := by
  unfold output5155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5155_skip : Flapjack.WordAlloc.isSkip output5155 = false := by
  rw [output5155_def]
  conv => lhs; cbv
  try rfl
theorem node5155_eq : Flapjack.WordAlloc.removeDeadStructural input5155 value2576 value1 value2 = (output5155, value5, value1) := by
  rw [input5155_def, output5155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5147_eq]
  dsimp only
  rw [node5154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2582 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19617 (Flapjack.WordLangAddr.addr 19621 0#64)))).val
theorem input5156_def : input5156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19617 (Flapjack.WordLangAddr.addr 19621 0#64))) := by
  unfold input5156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19617 (Flapjack.WordLangAddr.addr 19621 0#64)))).val
theorem output5156_def : output5156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19617 (Flapjack.WordLangAddr.addr 19621 0#64))) := by
  unfold output5156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5156_skip : Flapjack.WordAlloc.isSkip output5156 = false := by
  rw [output5156_def]
  conv => lhs; cbv
  try rfl
theorem node5156_eq : Flapjack.WordAlloc.removeDeadStructural input5156 value5 value1 value2 = (output5156, value2582, value1) := by
  rw [input5156_def, output5156_def]
  try (conv => lhs; cbv)
  try rfl

def value2583 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19621, 19609)])).val
theorem input5157_def : input5157 = (Flapjack.WordLangProgHOL.move 0 [(19621, 19609)]) := by
  unfold input5157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19621, 19609)])).val
theorem output5157_def : output5157 = (Flapjack.WordLangProgHOL.move 0 [(19621, 19609)]) := by
  unfold output5157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5157_skip : Flapjack.WordAlloc.isSkip output5157 = false := by
  rw [output5157_def]
  conv => lhs; cbv
  try rfl
theorem node5157_eq : Flapjack.WordAlloc.removeDeadStructural input5157 value2582 value1 value2 = (output5157, value2583, value1) := by
  rw [input5157_def, output5157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5157 input5156)).val
theorem input5158_def : input5158 = (.seq input5157 input5156) := by
  unfold input5158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5157 output5156)).val
theorem output5158_def : output5158 = (.seq output5157 output5156) := by
  unfold output5158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5158_skip : Flapjack.WordAlloc.isSkip output5158 = false := by
  rw [output5158_def]
  conv => lhs; cbv
  try rfl
theorem node5158_eq : Flapjack.WordAlloc.removeDeadStructural input5158 value5 value1 value2 = (output5158, value2583, value1) := by
  rw [input5158_def, output5158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5156_eq]
  dsimp only
  rw [node5157_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2584 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19617 0#64))).val
theorem input5159_def : input5159 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19617 0#64)) := by
  unfold input5159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19617 0#64))).val
theorem output5159_def : output5159 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19617 0#64)) := by
  unfold output5159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5159_skip : Flapjack.WordAlloc.isSkip output5159 = false := by
  rw [output5159_def]
  conv => lhs; cbv
  try rfl
theorem node5159_eq : Flapjack.WordAlloc.removeDeadStructural input5159 value2583 value1 value2 = (output5159, value2584, value1) := by
  rw [input5159_def, output5159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19613 0#64))).val
theorem input5160_def : input5160 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19613 0#64)) := by
  unfold input5160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5160_def : output5160 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5160_skip : Flapjack.WordAlloc.isSkip output5160 = true := by
  rw [output5160_def]
  conv => lhs; cbv
  try rfl
theorem node5160_eq : Flapjack.WordAlloc.removeDeadStructural input5160 value2584 value1 value2 = (output5160, value2584, value1) := by
  rw [input5160_def, output5160_def]
  try (conv => lhs; cbv)
  try rfl

def value2585 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19609 19601 (Flapjack.WordRegImm.reg 19605))))).val
theorem input5161_def : input5161 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19609 19601 (Flapjack.WordRegImm.reg 19605)))) := by
  unfold input5161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19609 19601 (Flapjack.WordRegImm.reg 19605))))).val
theorem output5161_def : output5161 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19609 19601 (Flapjack.WordRegImm.reg 19605)))) := by
  unfold output5161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5161_skip : Flapjack.WordAlloc.isSkip output5161 = false := by
  rw [output5161_def]
  conv => lhs; cbv
  try rfl
theorem node5161_eq : Flapjack.WordAlloc.removeDeadStructural input5161 value2584 value1 value2 = (output5161, value2585, value1) := by
  rw [input5161_def, output5161_def]
  try (conv => lhs; cbv)
  try rfl

def value2586 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19605 4552#64))).val
theorem input5162_def : input5162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19605 4552#64)) := by
  unfold input5162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19605 4552#64))).val
theorem output5162_def : output5162 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19605 4552#64)) := by
  unfold output5162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5162_skip : Flapjack.WordAlloc.isSkip output5162 = false := by
  rw [output5162_def]
  conv => lhs; cbv
  try rfl
theorem node5162_eq : Flapjack.WordAlloc.removeDeadStructural input5162 value2585 value1 value2 = (output5162, value2586, value1) := by
  rw [input5162_def, output5162_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5162 input5161)).val
theorem input5163_def : input5163 = (.seq input5162 input5161) := by
  unfold input5163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5162 output5161)).val
theorem output5163_def : output5163 = (.seq output5162 output5161) := by
  unfold output5163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5163_skip : Flapjack.WordAlloc.isSkip output5163 = false := by
  rw [output5163_def]
  conv => lhs; cbv
  try rfl
theorem node5163_eq : Flapjack.WordAlloc.removeDeadStructural input5163 value2584 value1 value2 = (output5163, value2586, value1) := by
  rw [input5163_def, output5163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5161_eq]
  dsimp only
  rw [node5162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2587 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19601 (Flapjack.WordLangAddr.addr 19597 18446744073709551104#64)))).val
theorem input5164_def : input5164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19601 (Flapjack.WordLangAddr.addr 19597 18446744073709551104#64))) := by
  unfold input5164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19601 (Flapjack.WordLangAddr.addr 19597 18446744073709551104#64)))).val
theorem output5164_def : output5164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19601 (Flapjack.WordLangAddr.addr 19597 18446744073709551104#64))) := by
  unfold output5164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5164_skip : Flapjack.WordAlloc.isSkip output5164 = false := by
  rw [output5164_def]
  conv => lhs; cbv
  try rfl
theorem node5164_eq : Flapjack.WordAlloc.removeDeadStructural input5164 value2586 value1 value2 = (output5164, value2587, value1) := by
  rw [input5164_def, output5164_def]
  try (conv => lhs; cbv)
  try rfl

def value2588 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19597 19593)).val
theorem input5165_def : input5165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19597 19593) := by
  unfold input5165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19597 19593)).val
theorem output5165_def : output5165 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19597 19593) := by
  unfold output5165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5165_skip : Flapjack.WordAlloc.isSkip output5165 = false := by
  rw [output5165_def]
  conv => lhs; cbv
  try rfl
theorem node5165_eq : Flapjack.WordAlloc.removeDeadStructural input5165 value2587 value1 value2 = (output5165, value2588, value1) := by
  rw [input5165_def, output5165_def]
  try (conv => lhs; cbv)
  try rfl

def value2589 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19593 19589 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5166_def : input5166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19593 19589 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19593 19589 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5166_def : output5166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19593 19589 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5166_skip : Flapjack.WordAlloc.isSkip output5166 = false := by
  rw [output5166_def]
  conv => lhs; cbv
  try rfl
theorem node5166_eq : Flapjack.WordAlloc.removeDeadStructural input5166 value2588 value1 value2 = (output5166, value2589, value1) := by
  rw [input5166_def, output5166_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19589 Flapjack.WordStore.heapLength)).val
theorem input5167_def : input5167 = (Flapjack.WordLangProgHOL.get 19589 Flapjack.WordStore.heapLength) := by
  unfold input5167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19589 Flapjack.WordStore.heapLength)).val
theorem output5167_def : output5167 = (Flapjack.WordLangProgHOL.get 19589 Flapjack.WordStore.heapLength) := by
  unfold output5167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5167_skip : Flapjack.WordAlloc.isSkip output5167 = false := by
  rw [output5167_def]
  conv => lhs; cbv
  try rfl
theorem node5167_eq : Flapjack.WordAlloc.removeDeadStructural input5167 value2589 value1 value2 = (output5167, value5, value1) := by
  rw [input5167_def, output5167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5167 input5166)).val
theorem input5168_def : input5168 = (.seq input5167 input5166) := by
  unfold input5168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5167 output5166)).val
theorem output5168_def : output5168 = (.seq output5167 output5166) := by
  unfold output5168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5168_skip : Flapjack.WordAlloc.isSkip output5168 = false := by
  rw [output5168_def]
  conv => lhs; cbv
  try rfl
theorem node5168_eq : Flapjack.WordAlloc.removeDeadStructural input5168 value2588 value1 value2 = (output5168, value5, value1) := by
  rw [input5168_def, output5168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5166_eq]
  dsimp only
  rw [node5167_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5168 input5165)).val
theorem input5169_def : input5169 = (.seq input5168 input5165) := by
  unfold input5169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5168 output5165)).val
theorem output5169_def : output5169 = (.seq output5168 output5165) := by
  unfold output5169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5169_skip : Flapjack.WordAlloc.isSkip output5169 = false := by
  rw [output5169_def]
  conv => lhs; cbv
  try rfl
theorem node5169_eq : Flapjack.WordAlloc.removeDeadStructural input5169 value2587 value1 value2 = (output5169, value5, value1) := by
  rw [input5169_def, output5169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5165_eq]
  dsimp only
  rw [node5168_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5169 input5164)).val
theorem input5170_def : input5170 = (.seq input5169 input5164) := by
  unfold input5170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5169 output5164)).val
theorem output5170_def : output5170 = (.seq output5169 output5164) := by
  unfold output5170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5170_skip : Flapjack.WordAlloc.isSkip output5170 = false := by
  rw [output5170_def]
  conv => lhs; cbv
  try rfl
theorem node5170_eq : Flapjack.WordAlloc.removeDeadStructural input5170 value2586 value1 value2 = (output5170, value5, value1) := by
  rw [input5170_def, output5170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5164_eq]
  dsimp only
  rw [node5169_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5170 input5163)).val
theorem input5171_def : input5171 = (.seq input5170 input5163) := by
  unfold input5171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5170 output5163)).val
theorem output5171_def : output5171 = (.seq output5170 output5163) := by
  unfold output5171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5171_skip : Flapjack.WordAlloc.isSkip output5171 = false := by
  rw [output5171_def]
  conv => lhs; cbv
  try rfl
theorem node5171_eq : Flapjack.WordAlloc.removeDeadStructural input5171 value2584 value1 value2 = (output5171, value5, value1) := by
  rw [input5171_def, output5171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5163_eq]
  dsimp only
  rw [node5170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2590 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19581 (Flapjack.WordLangAddr.addr 19585 0#64)))).val
theorem input5172_def : input5172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19581 (Flapjack.WordLangAddr.addr 19585 0#64))) := by
  unfold input5172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19581 (Flapjack.WordLangAddr.addr 19585 0#64)))).val
theorem output5172_def : output5172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19581 (Flapjack.WordLangAddr.addr 19585 0#64))) := by
  unfold output5172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5172_skip : Flapjack.WordAlloc.isSkip output5172 = false := by
  rw [output5172_def]
  conv => lhs; cbv
  try rfl
theorem node5172_eq : Flapjack.WordAlloc.removeDeadStructural input5172 value5 value1 value2 = (output5172, value2590, value1) := by
  rw [input5172_def, output5172_def]
  try (conv => lhs; cbv)
  try rfl

def value2591 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19585, 19573)])).val
theorem input5173_def : input5173 = (Flapjack.WordLangProgHOL.move 0 [(19585, 19573)]) := by
  unfold input5173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19585, 19573)])).val
theorem output5173_def : output5173 = (Flapjack.WordLangProgHOL.move 0 [(19585, 19573)]) := by
  unfold output5173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5173_skip : Flapjack.WordAlloc.isSkip output5173 = false := by
  rw [output5173_def]
  conv => lhs; cbv
  try rfl
theorem node5173_eq : Flapjack.WordAlloc.removeDeadStructural input5173 value2590 value1 value2 = (output5173, value2591, value1) := by
  rw [input5173_def, output5173_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5173 input5172)).val
theorem input5174_def : input5174 = (.seq input5173 input5172) := by
  unfold input5174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5173 output5172)).val
theorem output5174_def : output5174 = (.seq output5173 output5172) := by
  unfold output5174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5174_skip : Flapjack.WordAlloc.isSkip output5174 = false := by
  rw [output5174_def]
  conv => lhs; cbv
  try rfl
theorem node5174_eq : Flapjack.WordAlloc.removeDeadStructural input5174 value5 value1 value2 = (output5174, value2591, value1) := by
  rw [input5174_def, output5174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5172_eq]
  dsimp only
  rw [node5173_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2592 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19581 0#64))).val
theorem input5175_def : input5175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19581 0#64)) := by
  unfold input5175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19581 0#64))).val
theorem output5175_def : output5175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19581 0#64)) := by
  unfold output5175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5175_skip : Flapjack.WordAlloc.isSkip output5175 = false := by
  rw [output5175_def]
  conv => lhs; cbv
  try rfl
theorem node5175_eq : Flapjack.WordAlloc.removeDeadStructural input5175 value2591 value1 value2 = (output5175, value2592, value1) := by
  rw [input5175_def, output5175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19577 0#64))).val
theorem input5176_def : input5176 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19577 0#64)) := by
  unfold input5176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5176_def : output5176 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5176_skip : Flapjack.WordAlloc.isSkip output5176 = true := by
  rw [output5176_def]
  conv => lhs; cbv
  try rfl
theorem node5176_eq : Flapjack.WordAlloc.removeDeadStructural input5176 value2592 value1 value2 = (output5176, value2592, value1) := by
  rw [input5176_def, output5176_def]
  try (conv => lhs; cbv)
  try rfl

def value2593 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19573 19565 (Flapjack.WordRegImm.reg 19569))))).val
theorem input5177_def : input5177 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19573 19565 (Flapjack.WordRegImm.reg 19569)))) := by
  unfold input5177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19573 19565 (Flapjack.WordRegImm.reg 19569))))).val
theorem output5177_def : output5177 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19573 19565 (Flapjack.WordRegImm.reg 19569)))) := by
  unfold output5177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5177_skip : Flapjack.WordAlloc.isSkip output5177 = false := by
  rw [output5177_def]
  conv => lhs; cbv
  try rfl
theorem node5177_eq : Flapjack.WordAlloc.removeDeadStructural input5177 value2592 value1 value2 = (output5177, value2593, value1) := by
  rw [input5177_def, output5177_def]
  try (conv => lhs; cbv)
  try rfl

def value2594 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19569 4544#64))).val
theorem input5178_def : input5178 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19569 4544#64)) := by
  unfold input5178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19569 4544#64))).val
theorem output5178_def : output5178 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19569 4544#64)) := by
  unfold output5178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5178_skip : Flapjack.WordAlloc.isSkip output5178 = false := by
  rw [output5178_def]
  conv => lhs; cbv
  try rfl
theorem node5178_eq : Flapjack.WordAlloc.removeDeadStructural input5178 value2593 value1 value2 = (output5178, value2594, value1) := by
  rw [input5178_def, output5178_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5178 input5177)).val
theorem input5179_def : input5179 = (.seq input5178 input5177) := by
  unfold input5179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5178 output5177)).val
theorem output5179_def : output5179 = (.seq output5178 output5177) := by
  unfold output5179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5179_skip : Flapjack.WordAlloc.isSkip output5179 = false := by
  rw [output5179_def]
  conv => lhs; cbv
  try rfl
theorem node5179_eq : Flapjack.WordAlloc.removeDeadStructural input5179 value2592 value1 value2 = (output5179, value2594, value1) := by
  rw [input5179_def, output5179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5177_eq]
  dsimp only
  rw [node5178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2595 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19565 (Flapjack.WordLangAddr.addr 19561 18446744073709551104#64)))).val
theorem input5180_def : input5180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19565 (Flapjack.WordLangAddr.addr 19561 18446744073709551104#64))) := by
  unfold input5180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19565 (Flapjack.WordLangAddr.addr 19561 18446744073709551104#64)))).val
theorem output5180_def : output5180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19565 (Flapjack.WordLangAddr.addr 19561 18446744073709551104#64))) := by
  unfold output5180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5180_skip : Flapjack.WordAlloc.isSkip output5180 = false := by
  rw [output5180_def]
  conv => lhs; cbv
  try rfl
theorem node5180_eq : Flapjack.WordAlloc.removeDeadStructural input5180 value2594 value1 value2 = (output5180, value2595, value1) := by
  rw [input5180_def, output5180_def]
  try (conv => lhs; cbv)
  try rfl

def value2596 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19561 19557)).val
theorem input5181_def : input5181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19561 19557) := by
  unfold input5181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19561 19557)).val
theorem output5181_def : output5181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19561 19557) := by
  unfold output5181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5181_skip : Flapjack.WordAlloc.isSkip output5181 = false := by
  rw [output5181_def]
  conv => lhs; cbv
  try rfl
theorem node5181_eq : Flapjack.WordAlloc.removeDeadStructural input5181 value2595 value1 value2 = (output5181, value2596, value1) := by
  rw [input5181_def, output5181_def]
  try (conv => lhs; cbv)
  try rfl

def value2597 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19557 19553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5182_def : input5182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19557 19553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19557 19553 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5182_def : output5182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19557 19553 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5182_skip : Flapjack.WordAlloc.isSkip output5182 = false := by
  rw [output5182_def]
  conv => lhs; cbv
  try rfl
theorem node5182_eq : Flapjack.WordAlloc.removeDeadStructural input5182 value2596 value1 value2 = (output5182, value2597, value1) := by
  rw [input5182_def, output5182_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19553 Flapjack.WordStore.heapLength)).val
theorem input5183_def : input5183 = (Flapjack.WordLangProgHOL.get 19553 Flapjack.WordStore.heapLength) := by
  unfold input5183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19553 Flapjack.WordStore.heapLength)).val
theorem output5183_def : output5183 = (Flapjack.WordLangProgHOL.get 19553 Flapjack.WordStore.heapLength) := by
  unfold output5183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5183_skip : Flapjack.WordAlloc.isSkip output5183 = false := by
  rw [output5183_def]
  conv => lhs; cbv
  try rfl
theorem node5183_eq : Flapjack.WordAlloc.removeDeadStructural input5183 value2597 value1 value2 = (output5183, value5, value1) := by
  rw [input5183_def, output5183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5183 input5182)).val
theorem input5184_def : input5184 = (.seq input5183 input5182) := by
  unfold input5184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5183 output5182)).val
theorem output5184_def : output5184 = (.seq output5183 output5182) := by
  unfold output5184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5184_skip : Flapjack.WordAlloc.isSkip output5184 = false := by
  rw [output5184_def]
  conv => lhs; cbv
  try rfl
theorem node5184_eq : Flapjack.WordAlloc.removeDeadStructural input5184 value2596 value1 value2 = (output5184, value5, value1) := by
  rw [input5184_def, output5184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5182_eq]
  dsimp only
  rw [node5183_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5184 input5181)).val
theorem input5185_def : input5185 = (.seq input5184 input5181) := by
  unfold input5185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5184 output5181)).val
theorem output5185_def : output5185 = (.seq output5184 output5181) := by
  unfold output5185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5185_skip : Flapjack.WordAlloc.isSkip output5185 = false := by
  rw [output5185_def]
  conv => lhs; cbv
  try rfl
theorem node5185_eq : Flapjack.WordAlloc.removeDeadStructural input5185 value2595 value1 value2 = (output5185, value5, value1) := by
  rw [input5185_def, output5185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5181_eq]
  dsimp only
  rw [node5184_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5185 input5180)).val
theorem input5186_def : input5186 = (.seq input5185 input5180) := by
  unfold input5186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5185 output5180)).val
theorem output5186_def : output5186 = (.seq output5185 output5180) := by
  unfold output5186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5186_skip : Flapjack.WordAlloc.isSkip output5186 = false := by
  rw [output5186_def]
  conv => lhs; cbv
  try rfl
theorem node5186_eq : Flapjack.WordAlloc.removeDeadStructural input5186 value2594 value1 value2 = (output5186, value5, value1) := by
  rw [input5186_def, output5186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5180_eq]
  dsimp only
  rw [node5185_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5186 input5179)).val
theorem input5187_def : input5187 = (.seq input5186 input5179) := by
  unfold input5187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5186 output5179)).val
theorem output5187_def : output5187 = (.seq output5186 output5179) := by
  unfold output5187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5187_skip : Flapjack.WordAlloc.isSkip output5187 = false := by
  rw [output5187_def]
  conv => lhs; cbv
  try rfl
theorem node5187_eq : Flapjack.WordAlloc.removeDeadStructural input5187 value2592 value1 value2 = (output5187, value5, value1) := by
  rw [input5187_def, output5187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5179_eq]
  dsimp only
  rw [node5186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2598 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19545 (Flapjack.WordLangAddr.addr 19549 0#64)))).val
theorem input5188_def : input5188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19545 (Flapjack.WordLangAddr.addr 19549 0#64))) := by
  unfold input5188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19545 (Flapjack.WordLangAddr.addr 19549 0#64)))).val
theorem output5188_def : output5188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19545 (Flapjack.WordLangAddr.addr 19549 0#64))) := by
  unfold output5188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5188_skip : Flapjack.WordAlloc.isSkip output5188 = false := by
  rw [output5188_def]
  conv => lhs; cbv
  try rfl
theorem node5188_eq : Flapjack.WordAlloc.removeDeadStructural input5188 value5 value1 value2 = (output5188, value2598, value1) := by
  rw [input5188_def, output5188_def]
  try (conv => lhs; cbv)
  try rfl

def value2599 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19549, 19537)])).val
theorem input5189_def : input5189 = (Flapjack.WordLangProgHOL.move 0 [(19549, 19537)]) := by
  unfold input5189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19549, 19537)])).val
theorem output5189_def : output5189 = (Flapjack.WordLangProgHOL.move 0 [(19549, 19537)]) := by
  unfold output5189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5189_skip : Flapjack.WordAlloc.isSkip output5189 = false := by
  rw [output5189_def]
  conv => lhs; cbv
  try rfl
theorem node5189_eq : Flapjack.WordAlloc.removeDeadStructural input5189 value2598 value1 value2 = (output5189, value2599, value1) := by
  rw [input5189_def, output5189_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5189 input5188)).val
theorem input5190_def : input5190 = (.seq input5189 input5188) := by
  unfold input5190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5189 output5188)).val
theorem output5190_def : output5190 = (.seq output5189 output5188) := by
  unfold output5190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5190_skip : Flapjack.WordAlloc.isSkip output5190 = false := by
  rw [output5190_def]
  conv => lhs; cbv
  try rfl
theorem node5190_eq : Flapjack.WordAlloc.removeDeadStructural input5190 value5 value1 value2 = (output5190, value2599, value1) := by
  rw [input5190_def, output5190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5188_eq]
  dsimp only
  rw [node5189_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2600 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19545 0#64))).val
theorem input5191_def : input5191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19545 0#64)) := by
  unfold input5191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19545 0#64))).val
theorem output5191_def : output5191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19545 0#64)) := by
  unfold output5191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5191_skip : Flapjack.WordAlloc.isSkip output5191 = false := by
  rw [output5191_def]
  conv => lhs; cbv
  try rfl
theorem node5191_eq : Flapjack.WordAlloc.removeDeadStructural input5191 value2599 value1 value2 = (output5191, value2600, value1) := by
  rw [input5191_def, output5191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19541 0#64))).val
theorem input5192_def : input5192 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19541 0#64)) := by
  unfold input5192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5192_def : output5192 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5192_skip : Flapjack.WordAlloc.isSkip output5192 = true := by
  rw [output5192_def]
  conv => lhs; cbv
  try rfl
theorem node5192_eq : Flapjack.WordAlloc.removeDeadStructural input5192 value2600 value1 value2 = (output5192, value2600, value1) := by
  rw [input5192_def, output5192_def]
  try (conv => lhs; cbv)
  try rfl

def value2601 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19537 19529 (Flapjack.WordRegImm.reg 19533))))).val
theorem input5193_def : input5193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19537 19529 (Flapjack.WordRegImm.reg 19533)))) := by
  unfold input5193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19537 19529 (Flapjack.WordRegImm.reg 19533))))).val
theorem output5193_def : output5193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19537 19529 (Flapjack.WordRegImm.reg 19533)))) := by
  unfold output5193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5193_skip : Flapjack.WordAlloc.isSkip output5193 = false := by
  rw [output5193_def]
  conv => lhs; cbv
  try rfl
theorem node5193_eq : Flapjack.WordAlloc.removeDeadStructural input5193 value2600 value1 value2 = (output5193, value2601, value1) := by
  rw [input5193_def, output5193_def]
  try (conv => lhs; cbv)
  try rfl

def value2602 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19533 4536#64))).val
theorem input5194_def : input5194 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19533 4536#64)) := by
  unfold input5194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19533 4536#64))).val
theorem output5194_def : output5194 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19533 4536#64)) := by
  unfold output5194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5194_skip : Flapjack.WordAlloc.isSkip output5194 = false := by
  rw [output5194_def]
  conv => lhs; cbv
  try rfl
theorem node5194_eq : Flapjack.WordAlloc.removeDeadStructural input5194 value2601 value1 value2 = (output5194, value2602, value1) := by
  rw [input5194_def, output5194_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5194 input5193)).val
theorem input5195_def : input5195 = (.seq input5194 input5193) := by
  unfold input5195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5194 output5193)).val
theorem output5195_def : output5195 = (.seq output5194 output5193) := by
  unfold output5195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5195_skip : Flapjack.WordAlloc.isSkip output5195 = false := by
  rw [output5195_def]
  conv => lhs; cbv
  try rfl
theorem node5195_eq : Flapjack.WordAlloc.removeDeadStructural input5195 value2600 value1 value2 = (output5195, value2602, value1) := by
  rw [input5195_def, output5195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5193_eq]
  dsimp only
  rw [node5194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2603 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19529 (Flapjack.WordLangAddr.addr 19525 18446744073709551104#64)))).val
theorem input5196_def : input5196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19529 (Flapjack.WordLangAddr.addr 19525 18446744073709551104#64))) := by
  unfold input5196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19529 (Flapjack.WordLangAddr.addr 19525 18446744073709551104#64)))).val
theorem output5196_def : output5196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19529 (Flapjack.WordLangAddr.addr 19525 18446744073709551104#64))) := by
  unfold output5196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5196_skip : Flapjack.WordAlloc.isSkip output5196 = false := by
  rw [output5196_def]
  conv => lhs; cbv
  try rfl
theorem node5196_eq : Flapjack.WordAlloc.removeDeadStructural input5196 value2602 value1 value2 = (output5196, value2603, value1) := by
  rw [input5196_def, output5196_def]
  try (conv => lhs; cbv)
  try rfl

def value2604 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19525 19521)).val
theorem input5197_def : input5197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19525 19521) := by
  unfold input5197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19525 19521)).val
theorem output5197_def : output5197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19525 19521) := by
  unfold output5197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5197_skip : Flapjack.WordAlloc.isSkip output5197 = false := by
  rw [output5197_def]
  conv => lhs; cbv
  try rfl
theorem node5197_eq : Flapjack.WordAlloc.removeDeadStructural input5197 value2603 value1 value2 = (output5197, value2604, value1) := by
  rw [input5197_def, output5197_def]
  try (conv => lhs; cbv)
  try rfl

def value2605 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19521 19517 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5198_def : input5198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19521 19517 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19521 19517 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5198_def : output5198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19521 19517 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5198_skip : Flapjack.WordAlloc.isSkip output5198 = false := by
  rw [output5198_def]
  conv => lhs; cbv
  try rfl
theorem node5198_eq : Flapjack.WordAlloc.removeDeadStructural input5198 value2604 value1 value2 = (output5198, value2605, value1) := by
  rw [input5198_def, output5198_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19517 Flapjack.WordStore.heapLength)).val
theorem input5199_def : input5199 = (Flapjack.WordLangProgHOL.get 19517 Flapjack.WordStore.heapLength) := by
  unfold input5199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19517 Flapjack.WordStore.heapLength)).val
theorem output5199_def : output5199 = (Flapjack.WordLangProgHOL.get 19517 Flapjack.WordStore.heapLength) := by
  unfold output5199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5199_skip : Flapjack.WordAlloc.isSkip output5199 = false := by
  rw [output5199_def]
  conv => lhs; cbv
  try rfl
theorem node5199_eq : Flapjack.WordAlloc.removeDeadStructural input5199 value2605 value1 value2 = (output5199, value5, value1) := by
  rw [input5199_def, output5199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5199 input5198)).val
theorem input5200_def : input5200 = (.seq input5199 input5198) := by
  unfold input5200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5199 output5198)).val
theorem output5200_def : output5200 = (.seq output5199 output5198) := by
  unfold output5200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5200_skip : Flapjack.WordAlloc.isSkip output5200 = false := by
  rw [output5200_def]
  conv => lhs; cbv
  try rfl
theorem node5200_eq : Flapjack.WordAlloc.removeDeadStructural input5200 value2604 value1 value2 = (output5200, value5, value1) := by
  rw [input5200_def, output5200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5198_eq]
  dsimp only
  rw [node5199_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5200 input5197)).val
theorem input5201_def : input5201 = (.seq input5200 input5197) := by
  unfold input5201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5200 output5197)).val
theorem output5201_def : output5201 = (.seq output5200 output5197) := by
  unfold output5201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5201_skip : Flapjack.WordAlloc.isSkip output5201 = false := by
  rw [output5201_def]
  conv => lhs; cbv
  try rfl
theorem node5201_eq : Flapjack.WordAlloc.removeDeadStructural input5201 value2603 value1 value2 = (output5201, value5, value1) := by
  rw [input5201_def, output5201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5197_eq]
  dsimp only
  rw [node5200_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5201 input5196)).val
theorem input5202_def : input5202 = (.seq input5201 input5196) := by
  unfold input5202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5201 output5196)).val
theorem output5202_def : output5202 = (.seq output5201 output5196) := by
  unfold output5202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5202_skip : Flapjack.WordAlloc.isSkip output5202 = false := by
  rw [output5202_def]
  conv => lhs; cbv
  try rfl
theorem node5202_eq : Flapjack.WordAlloc.removeDeadStructural input5202 value2602 value1 value2 = (output5202, value5, value1) := by
  rw [input5202_def, output5202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5196_eq]
  dsimp only
  rw [node5201_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5202 input5195)).val
theorem input5203_def : input5203 = (.seq input5202 input5195) := by
  unfold input5203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5202 output5195)).val
theorem output5203_def : output5203 = (.seq output5202 output5195) := by
  unfold output5203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5203_skip : Flapjack.WordAlloc.isSkip output5203 = false := by
  rw [output5203_def]
  conv => lhs; cbv
  try rfl
theorem node5203_eq : Flapjack.WordAlloc.removeDeadStructural input5203 value2600 value1 value2 = (output5203, value5, value1) := by
  rw [input5203_def, output5203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5195_eq]
  dsimp only
  rw [node5202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2606 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19509 (Flapjack.WordLangAddr.addr 19513 0#64)))).val
theorem input5204_def : input5204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19509 (Flapjack.WordLangAddr.addr 19513 0#64))) := by
  unfold input5204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19509 (Flapjack.WordLangAddr.addr 19513 0#64)))).val
theorem output5204_def : output5204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19509 (Flapjack.WordLangAddr.addr 19513 0#64))) := by
  unfold output5204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5204_skip : Flapjack.WordAlloc.isSkip output5204 = false := by
  rw [output5204_def]
  conv => lhs; cbv
  try rfl
theorem node5204_eq : Flapjack.WordAlloc.removeDeadStructural input5204 value5 value1 value2 = (output5204, value2606, value1) := by
  rw [input5204_def, output5204_def]
  try (conv => lhs; cbv)
  try rfl

def value2607 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19513, 19501)])).val
theorem input5205_def : input5205 = (Flapjack.WordLangProgHOL.move 0 [(19513, 19501)]) := by
  unfold input5205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19513, 19501)])).val
theorem output5205_def : output5205 = (Flapjack.WordLangProgHOL.move 0 [(19513, 19501)]) := by
  unfold output5205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5205_skip : Flapjack.WordAlloc.isSkip output5205 = false := by
  rw [output5205_def]
  conv => lhs; cbv
  try rfl
theorem node5205_eq : Flapjack.WordAlloc.removeDeadStructural input5205 value2606 value1 value2 = (output5205, value2607, value1) := by
  rw [input5205_def, output5205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5205 input5204)).val
theorem input5206_def : input5206 = (.seq input5205 input5204) := by
  unfold input5206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5205 output5204)).val
theorem output5206_def : output5206 = (.seq output5205 output5204) := by
  unfold output5206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5206_skip : Flapjack.WordAlloc.isSkip output5206 = false := by
  rw [output5206_def]
  conv => lhs; cbv
  try rfl
theorem node5206_eq : Flapjack.WordAlloc.removeDeadStructural input5206 value5 value1 value2 = (output5206, value2607, value1) := by
  rw [input5206_def, output5206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5204_eq]
  dsimp only
  rw [node5205_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2608 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19509 0#64))).val
theorem input5207_def : input5207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19509 0#64)) := by
  unfold input5207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19509 0#64))).val
theorem output5207_def : output5207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19509 0#64)) := by
  unfold output5207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5207_skip : Flapjack.WordAlloc.isSkip output5207 = false := by
  rw [output5207_def]
  conv => lhs; cbv
  try rfl
theorem node5207_eq : Flapjack.WordAlloc.removeDeadStructural input5207 value2607 value1 value2 = (output5207, value2608, value1) := by
  rw [input5207_def, output5207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19505 0#64))).val
theorem input5208_def : input5208 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19505 0#64)) := by
  unfold input5208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5208_def : output5208 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5208_skip : Flapjack.WordAlloc.isSkip output5208 = true := by
  rw [output5208_def]
  conv => lhs; cbv
  try rfl
theorem node5208_eq : Flapjack.WordAlloc.removeDeadStructural input5208 value2608 value1 value2 = (output5208, value2608, value1) := by
  rw [input5208_def, output5208_def]
  try (conv => lhs; cbv)
  try rfl

def value2609 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19501 19493 (Flapjack.WordRegImm.reg 19497))))).val
theorem input5209_def : input5209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19501 19493 (Flapjack.WordRegImm.reg 19497)))) := by
  unfold input5209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19501 19493 (Flapjack.WordRegImm.reg 19497))))).val
theorem output5209_def : output5209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19501 19493 (Flapjack.WordRegImm.reg 19497)))) := by
  unfold output5209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5209_skip : Flapjack.WordAlloc.isSkip output5209 = false := by
  rw [output5209_def]
  conv => lhs; cbv
  try rfl
theorem node5209_eq : Flapjack.WordAlloc.removeDeadStructural input5209 value2608 value1 value2 = (output5209, value2609, value1) := by
  rw [input5209_def, output5209_def]
  try (conv => lhs; cbv)
  try rfl

def value2610 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19497 4528#64))).val
theorem input5210_def : input5210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19497 4528#64)) := by
  unfold input5210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19497 4528#64))).val
theorem output5210_def : output5210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19497 4528#64)) := by
  unfold output5210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5210_skip : Flapjack.WordAlloc.isSkip output5210 = false := by
  rw [output5210_def]
  conv => lhs; cbv
  try rfl
theorem node5210_eq : Flapjack.WordAlloc.removeDeadStructural input5210 value2609 value1 value2 = (output5210, value2610, value1) := by
  rw [input5210_def, output5210_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5210 input5209)).val
theorem input5211_def : input5211 = (.seq input5210 input5209) := by
  unfold input5211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5210 output5209)).val
theorem output5211_def : output5211 = (.seq output5210 output5209) := by
  unfold output5211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5211_skip : Flapjack.WordAlloc.isSkip output5211 = false := by
  rw [output5211_def]
  conv => lhs; cbv
  try rfl
theorem node5211_eq : Flapjack.WordAlloc.removeDeadStructural input5211 value2608 value1 value2 = (output5211, value2610, value1) := by
  rw [input5211_def, output5211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5209_eq]
  dsimp only
  rw [node5210_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2611 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19493 (Flapjack.WordLangAddr.addr 19489 18446744073709551104#64)))).val
theorem input5212_def : input5212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19493 (Flapjack.WordLangAddr.addr 19489 18446744073709551104#64))) := by
  unfold input5212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19493 (Flapjack.WordLangAddr.addr 19489 18446744073709551104#64)))).val
theorem output5212_def : output5212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19493 (Flapjack.WordLangAddr.addr 19489 18446744073709551104#64))) := by
  unfold output5212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5212_skip : Flapjack.WordAlloc.isSkip output5212 = false := by
  rw [output5212_def]
  conv => lhs; cbv
  try rfl
theorem node5212_eq : Flapjack.WordAlloc.removeDeadStructural input5212 value2610 value1 value2 = (output5212, value2611, value1) := by
  rw [input5212_def, output5212_def]
  try (conv => lhs; cbv)
  try rfl

def value2612 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19489 19485)).val
theorem input5213_def : input5213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19489 19485) := by
  unfold input5213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19489 19485)).val
theorem output5213_def : output5213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19489 19485) := by
  unfold output5213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5213_skip : Flapjack.WordAlloc.isSkip output5213 = false := by
  rw [output5213_def]
  conv => lhs; cbv
  try rfl
theorem node5213_eq : Flapjack.WordAlloc.removeDeadStructural input5213 value2611 value1 value2 = (output5213, value2612, value1) := by
  rw [input5213_def, output5213_def]
  try (conv => lhs; cbv)
  try rfl

def value2613 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19485 19481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5214_def : input5214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19485 19481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19485 19481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5214_def : output5214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19485 19481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5214_skip : Flapjack.WordAlloc.isSkip output5214 = false := by
  rw [output5214_def]
  conv => lhs; cbv
  try rfl
theorem node5214_eq : Flapjack.WordAlloc.removeDeadStructural input5214 value2612 value1 value2 = (output5214, value2613, value1) := by
  rw [input5214_def, output5214_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19481 Flapjack.WordStore.heapLength)).val
theorem input5215_def : input5215 = (Flapjack.WordLangProgHOL.get 19481 Flapjack.WordStore.heapLength) := by
  unfold input5215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19481 Flapjack.WordStore.heapLength)).val
theorem output5215_def : output5215 = (Flapjack.WordLangProgHOL.get 19481 Flapjack.WordStore.heapLength) := by
  unfold output5215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5215_skip : Flapjack.WordAlloc.isSkip output5215 = false := by
  rw [output5215_def]
  conv => lhs; cbv
  try rfl
theorem node5215_eq : Flapjack.WordAlloc.removeDeadStructural input5215 value2613 value1 value2 = (output5215, value5, value1) := by
  rw [input5215_def, output5215_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5215 input5214)).val
theorem input5216_def : input5216 = (.seq input5215 input5214) := by
  unfold input5216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5215 output5214)).val
theorem output5216_def : output5216 = (.seq output5215 output5214) := by
  unfold output5216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5216_skip : Flapjack.WordAlloc.isSkip output5216 = false := by
  rw [output5216_def]
  conv => lhs; cbv
  try rfl
theorem node5216_eq : Flapjack.WordAlloc.removeDeadStructural input5216 value2612 value1 value2 = (output5216, value5, value1) := by
  rw [input5216_def, output5216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5214_eq]
  dsimp only
  rw [node5215_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5216 input5213)).val
theorem input5217_def : input5217 = (.seq input5216 input5213) := by
  unfold input5217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5216 output5213)).val
theorem output5217_def : output5217 = (.seq output5216 output5213) := by
  unfold output5217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5217_skip : Flapjack.WordAlloc.isSkip output5217 = false := by
  rw [output5217_def]
  conv => lhs; cbv
  try rfl
theorem node5217_eq : Flapjack.WordAlloc.removeDeadStructural input5217 value2611 value1 value2 = (output5217, value5, value1) := by
  rw [input5217_def, output5217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5213_eq]
  dsimp only
  rw [node5216_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5217 input5212)).val
theorem input5218_def : input5218 = (.seq input5217 input5212) := by
  unfold input5218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5217 output5212)).val
theorem output5218_def : output5218 = (.seq output5217 output5212) := by
  unfold output5218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5218_skip : Flapjack.WordAlloc.isSkip output5218 = false := by
  rw [output5218_def]
  conv => lhs; cbv
  try rfl
theorem node5218_eq : Flapjack.WordAlloc.removeDeadStructural input5218 value2610 value1 value2 = (output5218, value5, value1) := by
  rw [input5218_def, output5218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5212_eq]
  dsimp only
  rw [node5217_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5218 input5211)).val
theorem input5219_def : input5219 = (.seq input5218 input5211) := by
  unfold input5219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5218 output5211)).val
theorem output5219_def : output5219 = (.seq output5218 output5211) := by
  unfold output5219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5219_skip : Flapjack.WordAlloc.isSkip output5219 = false := by
  rw [output5219_def]
  conv => lhs; cbv
  try rfl
theorem node5219_eq : Flapjack.WordAlloc.removeDeadStructural input5219 value2608 value1 value2 = (output5219, value5, value1) := by
  rw [input5219_def, output5219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5211_eq]
  dsimp only
  rw [node5218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2614 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19473 (Flapjack.WordLangAddr.addr 19477 0#64)))).val
theorem input5220_def : input5220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19473 (Flapjack.WordLangAddr.addr 19477 0#64))) := by
  unfold input5220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19473 (Flapjack.WordLangAddr.addr 19477 0#64)))).val
theorem output5220_def : output5220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19473 (Flapjack.WordLangAddr.addr 19477 0#64))) := by
  unfold output5220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5220_skip : Flapjack.WordAlloc.isSkip output5220 = false := by
  rw [output5220_def]
  conv => lhs; cbv
  try rfl
theorem node5220_eq : Flapjack.WordAlloc.removeDeadStructural input5220 value5 value1 value2 = (output5220, value2614, value1) := by
  rw [input5220_def, output5220_def]
  try (conv => lhs; cbv)
  try rfl

def value2615 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19477, 19465)])).val
theorem input5221_def : input5221 = (Flapjack.WordLangProgHOL.move 0 [(19477, 19465)]) := by
  unfold input5221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19477, 19465)])).val
theorem output5221_def : output5221 = (Flapjack.WordLangProgHOL.move 0 [(19477, 19465)]) := by
  unfold output5221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5221_skip : Flapjack.WordAlloc.isSkip output5221 = false := by
  rw [output5221_def]
  conv => lhs; cbv
  try rfl
theorem node5221_eq : Flapjack.WordAlloc.removeDeadStructural input5221 value2614 value1 value2 = (output5221, value2615, value1) := by
  rw [input5221_def, output5221_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5221 input5220)).val
theorem input5222_def : input5222 = (.seq input5221 input5220) := by
  unfold input5222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5221 output5220)).val
theorem output5222_def : output5222 = (.seq output5221 output5220) := by
  unfold output5222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5222_skip : Flapjack.WordAlloc.isSkip output5222 = false := by
  rw [output5222_def]
  conv => lhs; cbv
  try rfl
theorem node5222_eq : Flapjack.WordAlloc.removeDeadStructural input5222 value5 value1 value2 = (output5222, value2615, value1) := by
  rw [input5222_def, output5222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5220_eq]
  dsimp only
  rw [node5221_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2616 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19473 0#64))).val
theorem input5223_def : input5223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19473 0#64)) := by
  unfold input5223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19473 0#64))).val
theorem output5223_def : output5223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19473 0#64)) := by
  unfold output5223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5223_skip : Flapjack.WordAlloc.isSkip output5223 = false := by
  rw [output5223_def]
  conv => lhs; cbv
  try rfl
theorem node5223_eq : Flapjack.WordAlloc.removeDeadStructural input5223 value2615 value1 value2 = (output5223, value2616, value1) := by
  rw [input5223_def, output5223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19469 0#64))).val
theorem input5224_def : input5224 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19469 0#64)) := by
  unfold input5224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5224_def : output5224 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5224_skip : Flapjack.WordAlloc.isSkip output5224 = true := by
  rw [output5224_def]
  conv => lhs; cbv
  try rfl
theorem node5224_eq : Flapjack.WordAlloc.removeDeadStructural input5224 value2616 value1 value2 = (output5224, value2616, value1) := by
  rw [input5224_def, output5224_def]
  try (conv => lhs; cbv)
  try rfl

def value2617 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19465 19457 (Flapjack.WordRegImm.reg 19461))))).val
theorem input5225_def : input5225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19465 19457 (Flapjack.WordRegImm.reg 19461)))) := by
  unfold input5225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19465 19457 (Flapjack.WordRegImm.reg 19461))))).val
theorem output5225_def : output5225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19465 19457 (Flapjack.WordRegImm.reg 19461)))) := by
  unfold output5225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5225_skip : Flapjack.WordAlloc.isSkip output5225 = false := by
  rw [output5225_def]
  conv => lhs; cbv
  try rfl
theorem node5225_eq : Flapjack.WordAlloc.removeDeadStructural input5225 value2616 value1 value2 = (output5225, value2617, value1) := by
  rw [input5225_def, output5225_def]
  try (conv => lhs; cbv)
  try rfl

def value2618 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19461 4520#64))).val
theorem input5226_def : input5226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19461 4520#64)) := by
  unfold input5226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19461 4520#64))).val
theorem output5226_def : output5226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19461 4520#64)) := by
  unfold output5226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5226_skip : Flapjack.WordAlloc.isSkip output5226 = false := by
  rw [output5226_def]
  conv => lhs; cbv
  try rfl
theorem node5226_eq : Flapjack.WordAlloc.removeDeadStructural input5226 value2617 value1 value2 = (output5226, value2618, value1) := by
  rw [input5226_def, output5226_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5226 input5225)).val
theorem input5227_def : input5227 = (.seq input5226 input5225) := by
  unfold input5227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5226 output5225)).val
theorem output5227_def : output5227 = (.seq output5226 output5225) := by
  unfold output5227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5227_skip : Flapjack.WordAlloc.isSkip output5227 = false := by
  rw [output5227_def]
  conv => lhs; cbv
  try rfl
theorem node5227_eq : Flapjack.WordAlloc.removeDeadStructural input5227 value2616 value1 value2 = (output5227, value2618, value1) := by
  rw [input5227_def, output5227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5225_eq]
  dsimp only
  rw [node5226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2619 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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

@[irreducible, cbv_opaque] def input5228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19457 (Flapjack.WordLangAddr.addr 19453 18446744073709551104#64)))).val
theorem input5228_def : input5228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19457 (Flapjack.WordLangAddr.addr 19453 18446744073709551104#64))) := by
  unfold input5228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19457 (Flapjack.WordLangAddr.addr 19453 18446744073709551104#64)))).val
theorem output5228_def : output5228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19457 (Flapjack.WordLangAddr.addr 19453 18446744073709551104#64))) := by
  unfold output5228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5228_skip : Flapjack.WordAlloc.isSkip output5228 = false := by
  rw [output5228_def]
  conv => lhs; cbv
  try rfl
theorem node5228_eq : Flapjack.WordAlloc.removeDeadStructural input5228 value2618 value1 value2 = (output5228, value2619, value1) := by
  rw [input5228_def, output5228_def]
  try (conv => lhs; cbv)
  try rfl

def value2620 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19453 19449)).val
theorem input5229_def : input5229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19453 19449) := by
  unfold input5229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19453 19449)).val
theorem output5229_def : output5229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19453 19449) := by
  unfold output5229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5229_skip : Flapjack.WordAlloc.isSkip output5229 = false := by
  rw [output5229_def]
  conv => lhs; cbv
  try rfl
theorem node5229_eq : Flapjack.WordAlloc.removeDeadStructural input5229 value2619 value1 value2 = (output5229, value2620, value1) := by
  rw [input5229_def, output5229_def]
  try (conv => lhs; cbv)
  try rfl

def value2621 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19449 19445 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5230_def : input5230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19449 19445 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19449 19445 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5230_def : output5230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19449 19445 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5230_skip : Flapjack.WordAlloc.isSkip output5230 = false := by
  rw [output5230_def]
  conv => lhs; cbv
  try rfl
theorem node5230_eq : Flapjack.WordAlloc.removeDeadStructural input5230 value2620 value1 value2 = (output5230, value2621, value1) := by
  rw [input5230_def, output5230_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19445 Flapjack.WordStore.heapLength)).val
theorem input5231_def : input5231 = (Flapjack.WordLangProgHOL.get 19445 Flapjack.WordStore.heapLength) := by
  unfold input5231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19445 Flapjack.WordStore.heapLength)).val
theorem output5231_def : output5231 = (Flapjack.WordLangProgHOL.get 19445 Flapjack.WordStore.heapLength) := by
  unfold output5231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5231_skip : Flapjack.WordAlloc.isSkip output5231 = false := by
  rw [output5231_def]
  conv => lhs; cbv
  try rfl
theorem node5231_eq : Flapjack.WordAlloc.removeDeadStructural input5231 value2621 value1 value2 = (output5231, value5, value1) := by
  rw [input5231_def, output5231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5231 input5230)).val
theorem input5232_def : input5232 = (.seq input5231 input5230) := by
  unfold input5232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5231 output5230)).val
theorem output5232_def : output5232 = (.seq output5231 output5230) := by
  unfold output5232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5232_skip : Flapjack.WordAlloc.isSkip output5232 = false := by
  rw [output5232_def]
  conv => lhs; cbv
  try rfl
theorem node5232_eq : Flapjack.WordAlloc.removeDeadStructural input5232 value2620 value1 value2 = (output5232, value5, value1) := by
  rw [input5232_def, output5232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5230_eq]
  dsimp only
  rw [node5231_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5232 input5229)).val
theorem input5233_def : input5233 = (.seq input5232 input5229) := by
  unfold input5233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5232 output5229)).val
theorem output5233_def : output5233 = (.seq output5232 output5229) := by
  unfold output5233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5233_skip : Flapjack.WordAlloc.isSkip output5233 = false := by
  rw [output5233_def]
  conv => lhs; cbv
  try rfl
theorem node5233_eq : Flapjack.WordAlloc.removeDeadStructural input5233 value2619 value1 value2 = (output5233, value5, value1) := by
  rw [input5233_def, output5233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5229_eq]
  dsimp only
  rw [node5232_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5233 input5228)).val
theorem input5234_def : input5234 = (.seq input5233 input5228) := by
  unfold input5234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5233 output5228)).val
theorem output5234_def : output5234 = (.seq output5233 output5228) := by
  unfold output5234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5234_skip : Flapjack.WordAlloc.isSkip output5234 = false := by
  rw [output5234_def]
  conv => lhs; cbv
  try rfl
theorem node5234_eq : Flapjack.WordAlloc.removeDeadStructural input5234 value2618 value1 value2 = (output5234, value5, value1) := by
  rw [input5234_def, output5234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5228_eq]
  dsimp only
  rw [node5233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5234 input5227)).val
theorem input5235_def : input5235 = (.seq input5234 input5227) := by
  unfold input5235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5234 output5227)).val
theorem output5235_def : output5235 = (.seq output5234 output5227) := by
  unfold output5235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5235_skip : Flapjack.WordAlloc.isSkip output5235 = false := by
  rw [output5235_def]
  conv => lhs; cbv
  try rfl
theorem node5235_eq : Flapjack.WordAlloc.removeDeadStructural input5235 value2616 value1 value2 = (output5235, value5, value1) := by
  rw [input5235_def, output5235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5227_eq]
  dsimp only
  rw [node5234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2622 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19437 (Flapjack.WordLangAddr.addr 19441 0#64)))).val
theorem input5236_def : input5236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19437 (Flapjack.WordLangAddr.addr 19441 0#64))) := by
  unfold input5236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19437 (Flapjack.WordLangAddr.addr 19441 0#64)))).val
theorem output5236_def : output5236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19437 (Flapjack.WordLangAddr.addr 19441 0#64))) := by
  unfold output5236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5236_skip : Flapjack.WordAlloc.isSkip output5236 = false := by
  rw [output5236_def]
  conv => lhs; cbv
  try rfl
theorem node5236_eq : Flapjack.WordAlloc.removeDeadStructural input5236 value5 value1 value2 = (output5236, value2622, value1) := by
  rw [input5236_def, output5236_def]
  try (conv => lhs; cbv)
  try rfl

def value2623 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19441, 19429)])).val
theorem input5237_def : input5237 = (Flapjack.WordLangProgHOL.move 0 [(19441, 19429)]) := by
  unfold input5237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19441, 19429)])).val
theorem output5237_def : output5237 = (Flapjack.WordLangProgHOL.move 0 [(19441, 19429)]) := by
  unfold output5237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5237_skip : Flapjack.WordAlloc.isSkip output5237 = false := by
  rw [output5237_def]
  conv => lhs; cbv
  try rfl
theorem node5237_eq : Flapjack.WordAlloc.removeDeadStructural input5237 value2622 value1 value2 = (output5237, value2623, value1) := by
  rw [input5237_def, output5237_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5237 input5236)).val
theorem input5238_def : input5238 = (.seq input5237 input5236) := by
  unfold input5238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5237 output5236)).val
theorem output5238_def : output5238 = (.seq output5237 output5236) := by
  unfold output5238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5238_skip : Flapjack.WordAlloc.isSkip output5238 = false := by
  rw [output5238_def]
  conv => lhs; cbv
  try rfl
theorem node5238_eq : Flapjack.WordAlloc.removeDeadStructural input5238 value5 value1 value2 = (output5238, value2623, value1) := by
  rw [input5238_def, output5238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5236_eq]
  dsimp only
  rw [node5237_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2624 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19437 0#64))).val
theorem input5239_def : input5239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19437 0#64)) := by
  unfold input5239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19437 0#64))).val
theorem output5239_def : output5239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19437 0#64)) := by
  unfold output5239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5239_skip : Flapjack.WordAlloc.isSkip output5239 = false := by
  rw [output5239_def]
  conv => lhs; cbv
  try rfl
theorem node5239_eq : Flapjack.WordAlloc.removeDeadStructural input5239 value2623 value1 value2 = (output5239, value2624, value1) := by
  rw [input5239_def, output5239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19433 0#64))).val
theorem input5240_def : input5240 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19433 0#64)) := by
  unfold input5240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5240_def : output5240 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5240_skip : Flapjack.WordAlloc.isSkip output5240 = true := by
  rw [output5240_def]
  conv => lhs; cbv
  try rfl
theorem node5240_eq : Flapjack.WordAlloc.removeDeadStructural input5240 value2624 value1 value2 = (output5240, value2624, value1) := by
  rw [input5240_def, output5240_def]
  try (conv => lhs; cbv)
  try rfl

def value2625 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19429 19421 (Flapjack.WordRegImm.reg 19425))))).val
theorem input5241_def : input5241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19429 19421 (Flapjack.WordRegImm.reg 19425)))) := by
  unfold input5241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19429 19421 (Flapjack.WordRegImm.reg 19425))))).val
theorem output5241_def : output5241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19429 19421 (Flapjack.WordRegImm.reg 19425)))) := by
  unfold output5241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5241_skip : Flapjack.WordAlloc.isSkip output5241 = false := by
  rw [output5241_def]
  conv => lhs; cbv
  try rfl
theorem node5241_eq : Flapjack.WordAlloc.removeDeadStructural input5241 value2624 value1 value2 = (output5241, value2625, value1) := by
  rw [input5241_def, output5241_def]
  try (conv => lhs; cbv)
  try rfl

def value2626 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19425 4512#64))).val
theorem input5242_def : input5242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19425 4512#64)) := by
  unfold input5242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19425 4512#64))).val
theorem output5242_def : output5242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19425 4512#64)) := by
  unfold output5242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5242_skip : Flapjack.WordAlloc.isSkip output5242 = false := by
  rw [output5242_def]
  conv => lhs; cbv
  try rfl
theorem node5242_eq : Flapjack.WordAlloc.removeDeadStructural input5242 value2625 value1 value2 = (output5242, value2626, value1) := by
  rw [input5242_def, output5242_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5242 input5241)).val
theorem input5243_def : input5243 = (.seq input5242 input5241) := by
  unfold input5243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5242 output5241)).val
theorem output5243_def : output5243 = (.seq output5242 output5241) := by
  unfold output5243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5243_skip : Flapjack.WordAlloc.isSkip output5243 = false := by
  rw [output5243_def]
  conv => lhs; cbv
  try rfl
theorem node5243_eq : Flapjack.WordAlloc.removeDeadStructural input5243 value2624 value1 value2 = (output5243, value2626, value1) := by
  rw [input5243_def, output5243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5241_eq]
  dsimp only
  rw [node5242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2627 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19421 (Flapjack.WordLangAddr.addr 19417 18446744073709551104#64)))).val
theorem input5244_def : input5244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19421 (Flapjack.WordLangAddr.addr 19417 18446744073709551104#64))) := by
  unfold input5244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19421 (Flapjack.WordLangAddr.addr 19417 18446744073709551104#64)))).val
theorem output5244_def : output5244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19421 (Flapjack.WordLangAddr.addr 19417 18446744073709551104#64))) := by
  unfold output5244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5244_skip : Flapjack.WordAlloc.isSkip output5244 = false := by
  rw [output5244_def]
  conv => lhs; cbv
  try rfl
theorem node5244_eq : Flapjack.WordAlloc.removeDeadStructural input5244 value2626 value1 value2 = (output5244, value2627, value1) := by
  rw [input5244_def, output5244_def]
  try (conv => lhs; cbv)
  try rfl

def value2628 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19417 19413)).val
theorem input5245_def : input5245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19417 19413) := by
  unfold input5245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19417 19413)).val
theorem output5245_def : output5245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19417 19413) := by
  unfold output5245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5245_skip : Flapjack.WordAlloc.isSkip output5245 = false := by
  rw [output5245_def]
  conv => lhs; cbv
  try rfl
theorem node5245_eq : Flapjack.WordAlloc.removeDeadStructural input5245 value2627 value1 value2 = (output5245, value2628, value1) := by
  rw [input5245_def, output5245_def]
  try (conv => lhs; cbv)
  try rfl

def value2629 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19413 19409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5246_def : input5246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19413 19409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19413 19409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5246_def : output5246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19413 19409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5246_skip : Flapjack.WordAlloc.isSkip output5246 = false := by
  rw [output5246_def]
  conv => lhs; cbv
  try rfl
theorem node5246_eq : Flapjack.WordAlloc.removeDeadStructural input5246 value2628 value1 value2 = (output5246, value2629, value1) := by
  rw [input5246_def, output5246_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19409 Flapjack.WordStore.heapLength)).val
theorem input5247_def : input5247 = (Flapjack.WordLangProgHOL.get 19409 Flapjack.WordStore.heapLength) := by
  unfold input5247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19409 Flapjack.WordStore.heapLength)).val
theorem output5247_def : output5247 = (Flapjack.WordLangProgHOL.get 19409 Flapjack.WordStore.heapLength) := by
  unfold output5247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5247_skip : Flapjack.WordAlloc.isSkip output5247 = false := by
  rw [output5247_def]
  conv => lhs; cbv
  try rfl
theorem node5247_eq : Flapjack.WordAlloc.removeDeadStructural input5247 value2629 value1 value2 = (output5247, value5, value1) := by
  rw [input5247_def, output5247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5247 input5246)).val
theorem input5248_def : input5248 = (.seq input5247 input5246) := by
  unfold input5248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5247 output5246)).val
theorem output5248_def : output5248 = (.seq output5247 output5246) := by
  unfold output5248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5248_skip : Flapjack.WordAlloc.isSkip output5248 = false := by
  rw [output5248_def]
  conv => lhs; cbv
  try rfl
theorem node5248_eq : Flapjack.WordAlloc.removeDeadStructural input5248 value2628 value1 value2 = (output5248, value5, value1) := by
  rw [input5248_def, output5248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5246_eq]
  dsimp only
  rw [node5247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5248 input5245)).val
theorem input5249_def : input5249 = (.seq input5248 input5245) := by
  unfold input5249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5248 output5245)).val
theorem output5249_def : output5249 = (.seq output5248 output5245) := by
  unfold output5249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5249_skip : Flapjack.WordAlloc.isSkip output5249 = false := by
  rw [output5249_def]
  conv => lhs; cbv
  try rfl
theorem node5249_eq : Flapjack.WordAlloc.removeDeadStructural input5249 value2627 value1 value2 = (output5249, value5, value1) := by
  rw [input5249_def, output5249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5245_eq]
  dsimp only
  rw [node5248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5249 input5244)).val
theorem input5250_def : input5250 = (.seq input5249 input5244) := by
  unfold input5250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5249 output5244)).val
theorem output5250_def : output5250 = (.seq output5249 output5244) := by
  unfold output5250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5250_skip : Flapjack.WordAlloc.isSkip output5250 = false := by
  rw [output5250_def]
  conv => lhs; cbv
  try rfl
theorem node5250_eq : Flapjack.WordAlloc.removeDeadStructural input5250 value2626 value1 value2 = (output5250, value5, value1) := by
  rw [input5250_def, output5250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5244_eq]
  dsimp only
  rw [node5249_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5250 input5243)).val
theorem input5251_def : input5251 = (.seq input5250 input5243) := by
  unfold input5251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5250 output5243)).val
theorem output5251_def : output5251 = (.seq output5250 output5243) := by
  unfold output5251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5251_skip : Flapjack.WordAlloc.isSkip output5251 = false := by
  rw [output5251_def]
  conv => lhs; cbv
  try rfl
theorem node5251_eq : Flapjack.WordAlloc.removeDeadStructural input5251 value2624 value1 value2 = (output5251, value5, value1) := by
  rw [input5251_def, output5251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5243_eq]
  dsimp only
  rw [node5250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2630 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19401 (Flapjack.WordLangAddr.addr 19405 0#64)))).val
theorem input5252_def : input5252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19401 (Flapjack.WordLangAddr.addr 19405 0#64))) := by
  unfold input5252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19401 (Flapjack.WordLangAddr.addr 19405 0#64)))).val
theorem output5252_def : output5252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19401 (Flapjack.WordLangAddr.addr 19405 0#64))) := by
  unfold output5252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5252_skip : Flapjack.WordAlloc.isSkip output5252 = false := by
  rw [output5252_def]
  conv => lhs; cbv
  try rfl
theorem node5252_eq : Flapjack.WordAlloc.removeDeadStructural input5252 value5 value1 value2 = (output5252, value2630, value1) := by
  rw [input5252_def, output5252_def]
  try (conv => lhs; cbv)
  try rfl

def value2631 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19405, 19393)])).val
theorem input5253_def : input5253 = (Flapjack.WordLangProgHOL.move 0 [(19405, 19393)]) := by
  unfold input5253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19405, 19393)])).val
theorem output5253_def : output5253 = (Flapjack.WordLangProgHOL.move 0 [(19405, 19393)]) := by
  unfold output5253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5253_skip : Flapjack.WordAlloc.isSkip output5253 = false := by
  rw [output5253_def]
  conv => lhs; cbv
  try rfl
theorem node5253_eq : Flapjack.WordAlloc.removeDeadStructural input5253 value2630 value1 value2 = (output5253, value2631, value1) := by
  rw [input5253_def, output5253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5253 input5252)).val
theorem input5254_def : input5254 = (.seq input5253 input5252) := by
  unfold input5254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5253 output5252)).val
theorem output5254_def : output5254 = (.seq output5253 output5252) := by
  unfold output5254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5254_skip : Flapjack.WordAlloc.isSkip output5254 = false := by
  rw [output5254_def]
  conv => lhs; cbv
  try rfl
theorem node5254_eq : Flapjack.WordAlloc.removeDeadStructural input5254 value5 value1 value2 = (output5254, value2631, value1) := by
  rw [input5254_def, output5254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5252_eq]
  dsimp only
  rw [node5253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2632 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19401 0#64))).val
theorem input5255_def : input5255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19401 0#64)) := by
  unfold input5255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19401 0#64))).val
theorem output5255_def : output5255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19401 0#64)) := by
  unfold output5255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5255_skip : Flapjack.WordAlloc.isSkip output5255 = false := by
  rw [output5255_def]
  conv => lhs; cbv
  try rfl
theorem node5255_eq : Flapjack.WordAlloc.removeDeadStructural input5255 value2631 value1 value2 = (output5255, value2632, value1) := by
  rw [input5255_def, output5255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19397 0#64))).val
theorem input5256_def : input5256 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19397 0#64)) := by
  unfold input5256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5256_def : output5256 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5256_skip : Flapjack.WordAlloc.isSkip output5256 = true := by
  rw [output5256_def]
  conv => lhs; cbv
  try rfl
theorem node5256_eq : Flapjack.WordAlloc.removeDeadStructural input5256 value2632 value1 value2 = (output5256, value2632, value1) := by
  rw [input5256_def, output5256_def]
  try (conv => lhs; cbv)
  try rfl

def value2633 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19393 19385 (Flapjack.WordRegImm.reg 19389))))).val
theorem input5257_def : input5257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19393 19385 (Flapjack.WordRegImm.reg 19389)))) := by
  unfold input5257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19393 19385 (Flapjack.WordRegImm.reg 19389))))).val
theorem output5257_def : output5257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19393 19385 (Flapjack.WordRegImm.reg 19389)))) := by
  unfold output5257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5257_skip : Flapjack.WordAlloc.isSkip output5257 = false := by
  rw [output5257_def]
  conv => lhs; cbv
  try rfl
theorem node5257_eq : Flapjack.WordAlloc.removeDeadStructural input5257 value2632 value1 value2 = (output5257, value2633, value1) := by
  rw [input5257_def, output5257_def]
  try (conv => lhs; cbv)
  try rfl

def value2634 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19389 4504#64))).val
theorem input5258_def : input5258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19389 4504#64)) := by
  unfold input5258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19389 4504#64))).val
theorem output5258_def : output5258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19389 4504#64)) := by
  unfold output5258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5258_skip : Flapjack.WordAlloc.isSkip output5258 = false := by
  rw [output5258_def]
  conv => lhs; cbv
  try rfl
theorem node5258_eq : Flapjack.WordAlloc.removeDeadStructural input5258 value2633 value1 value2 = (output5258, value2634, value1) := by
  rw [input5258_def, output5258_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5258 input5257)).val
theorem input5259_def : input5259 = (.seq input5258 input5257) := by
  unfold input5259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5258 output5257)).val
theorem output5259_def : output5259 = (.seq output5258 output5257) := by
  unfold output5259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5259_skip : Flapjack.WordAlloc.isSkip output5259 = false := by
  rw [output5259_def]
  conv => lhs; cbv
  try rfl
theorem node5259_eq : Flapjack.WordAlloc.removeDeadStructural input5259 value2632 value1 value2 = (output5259, value2634, value1) := by
  rw [input5259_def, output5259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5257_eq]
  dsimp only
  rw [node5258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2635 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19385 (Flapjack.WordLangAddr.addr 19381 18446744073709551104#64)))).val
theorem input5260_def : input5260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19385 (Flapjack.WordLangAddr.addr 19381 18446744073709551104#64))) := by
  unfold input5260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19385 (Flapjack.WordLangAddr.addr 19381 18446744073709551104#64)))).val
theorem output5260_def : output5260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19385 (Flapjack.WordLangAddr.addr 19381 18446744073709551104#64))) := by
  unfold output5260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5260_skip : Flapjack.WordAlloc.isSkip output5260 = false := by
  rw [output5260_def]
  conv => lhs; cbv
  try rfl
theorem node5260_eq : Flapjack.WordAlloc.removeDeadStructural input5260 value2634 value1 value2 = (output5260, value2635, value1) := by
  rw [input5260_def, output5260_def]
  try (conv => lhs; cbv)
  try rfl

def value2636 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19381 19377)).val
theorem input5261_def : input5261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19381 19377) := by
  unfold input5261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19381 19377)).val
theorem output5261_def : output5261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19381 19377) := by
  unfold output5261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5261_skip : Flapjack.WordAlloc.isSkip output5261 = false := by
  rw [output5261_def]
  conv => lhs; cbv
  try rfl
theorem node5261_eq : Flapjack.WordAlloc.removeDeadStructural input5261 value2635 value1 value2 = (output5261, value2636, value1) := by
  rw [input5261_def, output5261_def]
  try (conv => lhs; cbv)
  try rfl

def value2637 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19377 19373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5262_def : input5262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19377 19373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19377 19373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5262_def : output5262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19377 19373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5262_skip : Flapjack.WordAlloc.isSkip output5262 = false := by
  rw [output5262_def]
  conv => lhs; cbv
  try rfl
theorem node5262_eq : Flapjack.WordAlloc.removeDeadStructural input5262 value2636 value1 value2 = (output5262, value2637, value1) := by
  rw [input5262_def, output5262_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19373 Flapjack.WordStore.heapLength)).val
theorem input5263_def : input5263 = (Flapjack.WordLangProgHOL.get 19373 Flapjack.WordStore.heapLength) := by
  unfold input5263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19373 Flapjack.WordStore.heapLength)).val
theorem output5263_def : output5263 = (Flapjack.WordLangProgHOL.get 19373 Flapjack.WordStore.heapLength) := by
  unfold output5263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5263_skip : Flapjack.WordAlloc.isSkip output5263 = false := by
  rw [output5263_def]
  conv => lhs; cbv
  try rfl
theorem node5263_eq : Flapjack.WordAlloc.removeDeadStructural input5263 value2637 value1 value2 = (output5263, value5, value1) := by
  rw [input5263_def, output5263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5263 input5262)).val
theorem input5264_def : input5264 = (.seq input5263 input5262) := by
  unfold input5264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5263 output5262)).val
theorem output5264_def : output5264 = (.seq output5263 output5262) := by
  unfold output5264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5264_skip : Flapjack.WordAlloc.isSkip output5264 = false := by
  rw [output5264_def]
  conv => lhs; cbv
  try rfl
theorem node5264_eq : Flapjack.WordAlloc.removeDeadStructural input5264 value2636 value1 value2 = (output5264, value5, value1) := by
  rw [input5264_def, output5264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5262_eq]
  dsimp only
  rw [node5263_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5264 input5261)).val
theorem input5265_def : input5265 = (.seq input5264 input5261) := by
  unfold input5265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5264 output5261)).val
theorem output5265_def : output5265 = (.seq output5264 output5261) := by
  unfold output5265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5265_skip : Flapjack.WordAlloc.isSkip output5265 = false := by
  rw [output5265_def]
  conv => lhs; cbv
  try rfl
theorem node5265_eq : Flapjack.WordAlloc.removeDeadStructural input5265 value2635 value1 value2 = (output5265, value5, value1) := by
  rw [input5265_def, output5265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5261_eq]
  dsimp only
  rw [node5264_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5265 input5260)).val
theorem input5266_def : input5266 = (.seq input5265 input5260) := by
  unfold input5266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5265 output5260)).val
theorem output5266_def : output5266 = (.seq output5265 output5260) := by
  unfold output5266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5266_skip : Flapjack.WordAlloc.isSkip output5266 = false := by
  rw [output5266_def]
  conv => lhs; cbv
  try rfl
theorem node5266_eq : Flapjack.WordAlloc.removeDeadStructural input5266 value2634 value1 value2 = (output5266, value5, value1) := by
  rw [input5266_def, output5266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5260_eq]
  dsimp only
  rw [node5265_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5266 input5259)).val
theorem input5267_def : input5267 = (.seq input5266 input5259) := by
  unfold input5267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5266 output5259)).val
theorem output5267_def : output5267 = (.seq output5266 output5259) := by
  unfold output5267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5267_skip : Flapjack.WordAlloc.isSkip output5267 = false := by
  rw [output5267_def]
  conv => lhs; cbv
  try rfl
theorem node5267_eq : Flapjack.WordAlloc.removeDeadStructural input5267 value2632 value1 value2 = (output5267, value5, value1) := by
  rw [input5267_def, output5267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5259_eq]
  dsimp only
  rw [node5266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2638 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19365 (Flapjack.WordLangAddr.addr 19369 0#64)))).val
theorem input5268_def : input5268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19365 (Flapjack.WordLangAddr.addr 19369 0#64))) := by
  unfold input5268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19365 (Flapjack.WordLangAddr.addr 19369 0#64)))).val
theorem output5268_def : output5268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19365 (Flapjack.WordLangAddr.addr 19369 0#64))) := by
  unfold output5268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5268_skip : Flapjack.WordAlloc.isSkip output5268 = false := by
  rw [output5268_def]
  conv => lhs; cbv
  try rfl
theorem node5268_eq : Flapjack.WordAlloc.removeDeadStructural input5268 value5 value1 value2 = (output5268, value2638, value1) := by
  rw [input5268_def, output5268_def]
  try (conv => lhs; cbv)
  try rfl

def value2639 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19369, 19357)])).val
theorem input5269_def : input5269 = (Flapjack.WordLangProgHOL.move 0 [(19369, 19357)]) := by
  unfold input5269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19369, 19357)])).val
theorem output5269_def : output5269 = (Flapjack.WordLangProgHOL.move 0 [(19369, 19357)]) := by
  unfold output5269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5269_skip : Flapjack.WordAlloc.isSkip output5269 = false := by
  rw [output5269_def]
  conv => lhs; cbv
  try rfl
theorem node5269_eq : Flapjack.WordAlloc.removeDeadStructural input5269 value2638 value1 value2 = (output5269, value2639, value1) := by
  rw [input5269_def, output5269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5269 input5268)).val
theorem input5270_def : input5270 = (.seq input5269 input5268) := by
  unfold input5270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5269 output5268)).val
theorem output5270_def : output5270 = (.seq output5269 output5268) := by
  unfold output5270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5270_skip : Flapjack.WordAlloc.isSkip output5270 = false := by
  rw [output5270_def]
  conv => lhs; cbv
  try rfl
theorem node5270_eq : Flapjack.WordAlloc.removeDeadStructural input5270 value5 value1 value2 = (output5270, value2639, value1) := by
  rw [input5270_def, output5270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5268_eq]
  dsimp only
  rw [node5269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2640 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19365 1#64))).val
theorem input5271_def : input5271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19365 1#64)) := by
  unfold input5271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19365 1#64))).val
theorem output5271_def : output5271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19365 1#64)) := by
  unfold output5271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5271_skip : Flapjack.WordAlloc.isSkip output5271 = false := by
  rw [output5271_def]
  conv => lhs; cbv
  try rfl
theorem node5271_eq : Flapjack.WordAlloc.removeDeadStructural input5271 value2639 value1 value2 = (output5271, value2640, value1) := by
  rw [input5271_def, output5271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19361 1#64))).val
theorem input5272_def : input5272 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19361 1#64)) := by
  unfold input5272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5272_def : output5272 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5272_skip : Flapjack.WordAlloc.isSkip output5272 = true := by
  rw [output5272_def]
  conv => lhs; cbv
  try rfl
theorem node5272_eq : Flapjack.WordAlloc.removeDeadStructural input5272 value2640 value1 value2 = (output5272, value2640, value1) := by
  rw [input5272_def, output5272_def]
  try (conv => lhs; cbv)
  try rfl

def value2641 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19357 19349 (Flapjack.WordRegImm.reg 19353))))).val
theorem input5273_def : input5273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19357 19349 (Flapjack.WordRegImm.reg 19353)))) := by
  unfold input5273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19357 19349 (Flapjack.WordRegImm.reg 19353))))).val
theorem output5273_def : output5273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19357 19349 (Flapjack.WordRegImm.reg 19353)))) := by
  unfold output5273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5273_skip : Flapjack.WordAlloc.isSkip output5273 = false := by
  rw [output5273_def]
  conv => lhs; cbv
  try rfl
theorem node5273_eq : Flapjack.WordAlloc.removeDeadStructural input5273 value2640 value1 value2 = (output5273, value2641, value1) := by
  rw [input5273_def, output5273_def]
  try (conv => lhs; cbv)
  try rfl

def value2642 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19353 4496#64))).val
theorem input5274_def : input5274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19353 4496#64)) := by
  unfold input5274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19353 4496#64))).val
theorem output5274_def : output5274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19353 4496#64)) := by
  unfold output5274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5274_skip : Flapjack.WordAlloc.isSkip output5274 = false := by
  rw [output5274_def]
  conv => lhs; cbv
  try rfl
theorem node5274_eq : Flapjack.WordAlloc.removeDeadStructural input5274 value2641 value1 value2 = (output5274, value2642, value1) := by
  rw [input5274_def, output5274_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5274 input5273)).val
theorem input5275_def : input5275 = (.seq input5274 input5273) := by
  unfold input5275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5274 output5273)).val
theorem output5275_def : output5275 = (.seq output5274 output5273) := by
  unfold output5275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5275_skip : Flapjack.WordAlloc.isSkip output5275 = false := by
  rw [output5275_def]
  conv => lhs; cbv
  try rfl
theorem node5275_eq : Flapjack.WordAlloc.removeDeadStructural input5275 value2640 value1 value2 = (output5275, value2642, value1) := by
  rw [input5275_def, output5275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5273_eq]
  dsimp only
  rw [node5274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2643 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19349 (Flapjack.WordLangAddr.addr 19345 18446744073709551104#64)))).val
theorem input5276_def : input5276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19349 (Flapjack.WordLangAddr.addr 19345 18446744073709551104#64))) := by
  unfold input5276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19349 (Flapjack.WordLangAddr.addr 19345 18446744073709551104#64)))).val
theorem output5276_def : output5276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19349 (Flapjack.WordLangAddr.addr 19345 18446744073709551104#64))) := by
  unfold output5276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5276_skip : Flapjack.WordAlloc.isSkip output5276 = false := by
  rw [output5276_def]
  conv => lhs; cbv
  try rfl
theorem node5276_eq : Flapjack.WordAlloc.removeDeadStructural input5276 value2642 value1 value2 = (output5276, value2643, value1) := by
  rw [input5276_def, output5276_def]
  try (conv => lhs; cbv)
  try rfl

def value2644 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19345 19341)).val
theorem input5277_def : input5277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19345 19341) := by
  unfold input5277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19345 19341)).val
theorem output5277_def : output5277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19345 19341) := by
  unfold output5277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5277_skip : Flapjack.WordAlloc.isSkip output5277 = false := by
  rw [output5277_def]
  conv => lhs; cbv
  try rfl
theorem node5277_eq : Flapjack.WordAlloc.removeDeadStructural input5277 value2643 value1 value2 = (output5277, value2644, value1) := by
  rw [input5277_def, output5277_def]
  try (conv => lhs; cbv)
  try rfl

def value2645 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19341 19337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5278_def : input5278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19341 19337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19341 19337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5278_def : output5278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19341 19337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5278_skip : Flapjack.WordAlloc.isSkip output5278 = false := by
  rw [output5278_def]
  conv => lhs; cbv
  try rfl
theorem node5278_eq : Flapjack.WordAlloc.removeDeadStructural input5278 value2644 value1 value2 = (output5278, value2645, value1) := by
  rw [input5278_def, output5278_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19337 Flapjack.WordStore.heapLength)).val
theorem input5279_def : input5279 = (Flapjack.WordLangProgHOL.get 19337 Flapjack.WordStore.heapLength) := by
  unfold input5279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19337 Flapjack.WordStore.heapLength)).val
theorem output5279_def : output5279 = (Flapjack.WordLangProgHOL.get 19337 Flapjack.WordStore.heapLength) := by
  unfold output5279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5279_skip : Flapjack.WordAlloc.isSkip output5279 = false := by
  rw [output5279_def]
  conv => lhs; cbv
  try rfl
theorem node5279_eq : Flapjack.WordAlloc.removeDeadStructural input5279 value2645 value1 value2 = (output5279, value5, value1) := by
  rw [input5279_def, output5279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5279 input5278)).val
theorem input5280_def : input5280 = (.seq input5279 input5278) := by
  unfold input5280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5279 output5278)).val
theorem output5280_def : output5280 = (.seq output5279 output5278) := by
  unfold output5280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5280_skip : Flapjack.WordAlloc.isSkip output5280 = false := by
  rw [output5280_def]
  conv => lhs; cbv
  try rfl
theorem node5280_eq : Flapjack.WordAlloc.removeDeadStructural input5280 value2644 value1 value2 = (output5280, value5, value1) := by
  rw [input5280_def, output5280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5278_eq]
  dsimp only
  rw [node5279_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5280 input5277)).val
theorem input5281_def : input5281 = (.seq input5280 input5277) := by
  unfold input5281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5280 output5277)).val
theorem output5281_def : output5281 = (.seq output5280 output5277) := by
  unfold output5281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5281_skip : Flapjack.WordAlloc.isSkip output5281 = false := by
  rw [output5281_def]
  conv => lhs; cbv
  try rfl
theorem node5281_eq : Flapjack.WordAlloc.removeDeadStructural input5281 value2643 value1 value2 = (output5281, value5, value1) := by
  rw [input5281_def, output5281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5277_eq]
  dsimp only
  rw [node5280_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5281 input5276)).val
theorem input5282_def : input5282 = (.seq input5281 input5276) := by
  unfold input5282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5281 output5276)).val
theorem output5282_def : output5282 = (.seq output5281 output5276) := by
  unfold output5282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5282_skip : Flapjack.WordAlloc.isSkip output5282 = false := by
  rw [output5282_def]
  conv => lhs; cbv
  try rfl
theorem node5282_eq : Flapjack.WordAlloc.removeDeadStructural input5282 value2642 value1 value2 = (output5282, value5, value1) := by
  rw [input5282_def, output5282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5276_eq]
  dsimp only
  rw [node5281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5282 input5275)).val
theorem input5283_def : input5283 = (.seq input5282 input5275) := by
  unfold input5283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5282 output5275)).val
theorem output5283_def : output5283 = (.seq output5282 output5275) := by
  unfold output5283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5283_skip : Flapjack.WordAlloc.isSkip output5283 = false := by
  rw [output5283_def]
  conv => lhs; cbv
  try rfl
theorem node5283_eq : Flapjack.WordAlloc.removeDeadStructural input5283 value2640 value1 value2 = (output5283, value5, value1) := by
  rw [input5283_def, output5283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5275_eq]
  dsimp only
  rw [node5282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2646 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19329 (Flapjack.WordLangAddr.addr 19333 0#64)))).val
theorem input5284_def : input5284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19329 (Flapjack.WordLangAddr.addr 19333 0#64))) := by
  unfold input5284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19329 (Flapjack.WordLangAddr.addr 19333 0#64)))).val
theorem output5284_def : output5284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19329 (Flapjack.WordLangAddr.addr 19333 0#64))) := by
  unfold output5284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5284_skip : Flapjack.WordAlloc.isSkip output5284 = false := by
  rw [output5284_def]
  conv => lhs; cbv
  try rfl
theorem node5284_eq : Flapjack.WordAlloc.removeDeadStructural input5284 value5 value1 value2 = (output5284, value2646, value1) := by
  rw [input5284_def, output5284_def]
  try (conv => lhs; cbv)
  try rfl

def value2647 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19333, 19321)])).val
theorem input5285_def : input5285 = (Flapjack.WordLangProgHOL.move 0 [(19333, 19321)]) := by
  unfold input5285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19333, 19321)])).val
theorem output5285_def : output5285 = (Flapjack.WordLangProgHOL.move 0 [(19333, 19321)]) := by
  unfold output5285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5285_skip : Flapjack.WordAlloc.isSkip output5285 = false := by
  rw [output5285_def]
  conv => lhs; cbv
  try rfl
theorem node5285_eq : Flapjack.WordAlloc.removeDeadStructural input5285 value2646 value1 value2 = (output5285, value2647, value1) := by
  rw [input5285_def, output5285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5285 input5284)).val
theorem input5286_def : input5286 = (.seq input5285 input5284) := by
  unfold input5286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5285 output5284)).val
theorem output5286_def : output5286 = (.seq output5285 output5284) := by
  unfold output5286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5286_skip : Flapjack.WordAlloc.isSkip output5286 = false := by
  rw [output5286_def]
  conv => lhs; cbv
  try rfl
theorem node5286_eq : Flapjack.WordAlloc.removeDeadStructural input5286 value5 value1 value2 = (output5286, value2647, value1) := by
  rw [input5286_def, output5286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5284_eq]
  dsimp only
  rw [node5285_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2648 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19329 1013206390650290238#64))).val
theorem input5287_def : input5287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19329 1013206390650290238#64)) := by
  unfold input5287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19329 1013206390650290238#64))).val
theorem output5287_def : output5287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19329 1013206390650290238#64)) := by
  unfold output5287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5287_skip : Flapjack.WordAlloc.isSkip output5287 = false := by
  rw [output5287_def]
  conv => lhs; cbv
  try rfl
theorem node5287_eq : Flapjack.WordAlloc.removeDeadStructural input5287 value2647 value1 value2 = (output5287, value2648, value1) := by
  rw [input5287_def, output5287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19325 1013206390650290238#64))).val
theorem input5288_def : input5288 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19325 1013206390650290238#64)) := by
  unfold input5288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5288_def : output5288 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5288_skip : Flapjack.WordAlloc.isSkip output5288 = true := by
  rw [output5288_def]
  conv => lhs; cbv
  try rfl
theorem node5288_eq : Flapjack.WordAlloc.removeDeadStructural input5288 value2648 value1 value2 = (output5288, value2648, value1) := by
  rw [input5288_def, output5288_def]
  try (conv => lhs; cbv)
  try rfl

def value2649 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19321 19313 (Flapjack.WordRegImm.reg 19317))))).val
theorem input5289_def : input5289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19321 19313 (Flapjack.WordRegImm.reg 19317)))) := by
  unfold input5289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19321 19313 (Flapjack.WordRegImm.reg 19317))))).val
theorem output5289_def : output5289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19321 19313 (Flapjack.WordRegImm.reg 19317)))) := by
  unfold output5289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5289_skip : Flapjack.WordAlloc.isSkip output5289 = false := by
  rw [output5289_def]
  conv => lhs; cbv
  try rfl
theorem node5289_eq : Flapjack.WordAlloc.removeDeadStructural input5289 value2648 value1 value2 = (output5289, value2649, value1) := by
  rw [input5289_def, output5289_def]
  try (conv => lhs; cbv)
  try rfl

def value2650 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19317 4488#64))).val
theorem input5290_def : input5290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19317 4488#64)) := by
  unfold input5290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19317 4488#64))).val
theorem output5290_def : output5290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19317 4488#64)) := by
  unfold output5290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5290_skip : Flapjack.WordAlloc.isSkip output5290 = false := by
  rw [output5290_def]
  conv => lhs; cbv
  try rfl
theorem node5290_eq : Flapjack.WordAlloc.removeDeadStructural input5290 value2649 value1 value2 = (output5290, value2650, value1) := by
  rw [input5290_def, output5290_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5290 input5289)).val
theorem input5291_def : input5291 = (.seq input5290 input5289) := by
  unfold input5291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5290 output5289)).val
theorem output5291_def : output5291 = (.seq output5290 output5289) := by
  unfold output5291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5291_skip : Flapjack.WordAlloc.isSkip output5291 = false := by
  rw [output5291_def]
  conv => lhs; cbv
  try rfl
theorem node5291_eq : Flapjack.WordAlloc.removeDeadStructural input5291 value2648 value1 value2 = (output5291, value2650, value1) := by
  rw [input5291_def, output5291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5289_eq]
  dsimp only
  rw [node5290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2651 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19313 (Flapjack.WordLangAddr.addr 19309 18446744073709551104#64)))).val
theorem input5292_def : input5292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19313 (Flapjack.WordLangAddr.addr 19309 18446744073709551104#64))) := by
  unfold input5292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19313 (Flapjack.WordLangAddr.addr 19309 18446744073709551104#64)))).val
theorem output5292_def : output5292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19313 (Flapjack.WordLangAddr.addr 19309 18446744073709551104#64))) := by
  unfold output5292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5292_skip : Flapjack.WordAlloc.isSkip output5292 = false := by
  rw [output5292_def]
  conv => lhs; cbv
  try rfl
theorem node5292_eq : Flapjack.WordAlloc.removeDeadStructural input5292 value2650 value1 value2 = (output5292, value2651, value1) := by
  rw [input5292_def, output5292_def]
  try (conv => lhs; cbv)
  try rfl

def value2652 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19309 19305)).val
theorem input5293_def : input5293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19309 19305) := by
  unfold input5293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19309 19305)).val
theorem output5293_def : output5293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19309 19305) := by
  unfold output5293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5293_skip : Flapjack.WordAlloc.isSkip output5293 = false := by
  rw [output5293_def]
  conv => lhs; cbv
  try rfl
theorem node5293_eq : Flapjack.WordAlloc.removeDeadStructural input5293 value2651 value1 value2 = (output5293, value2652, value1) := by
  rw [input5293_def, output5293_def]
  try (conv => lhs; cbv)
  try rfl

def value2653 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19305 19301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5294_def : input5294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19305 19301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19305 19301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5294_def : output5294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19305 19301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5294_skip : Flapjack.WordAlloc.isSkip output5294 = false := by
  rw [output5294_def]
  conv => lhs; cbv
  try rfl
theorem node5294_eq : Flapjack.WordAlloc.removeDeadStructural input5294 value2652 value1 value2 = (output5294, value2653, value1) := by
  rw [input5294_def, output5294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19301 Flapjack.WordStore.heapLength)).val
theorem input5295_def : input5295 = (Flapjack.WordLangProgHOL.get 19301 Flapjack.WordStore.heapLength) := by
  unfold input5295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19301 Flapjack.WordStore.heapLength)).val
theorem output5295_def : output5295 = (Flapjack.WordLangProgHOL.get 19301 Flapjack.WordStore.heapLength) := by
  unfold output5295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5295_skip : Flapjack.WordAlloc.isSkip output5295 = false := by
  rw [output5295_def]
  conv => lhs; cbv
  try rfl
theorem node5295_eq : Flapjack.WordAlloc.removeDeadStructural input5295 value2653 value1 value2 = (output5295, value5, value1) := by
  rw [input5295_def, output5295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5295 input5294)).val
theorem input5296_def : input5296 = (.seq input5295 input5294) := by
  unfold input5296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5295 output5294)).val
theorem output5296_def : output5296 = (.seq output5295 output5294) := by
  unfold output5296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5296_skip : Flapjack.WordAlloc.isSkip output5296 = false := by
  rw [output5296_def]
  conv => lhs; cbv
  try rfl
theorem node5296_eq : Flapjack.WordAlloc.removeDeadStructural input5296 value2652 value1 value2 = (output5296, value5, value1) := by
  rw [input5296_def, output5296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5294_eq]
  dsimp only
  rw [node5295_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5296 input5293)).val
theorem input5297_def : input5297 = (.seq input5296 input5293) := by
  unfold input5297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5296 output5293)).val
theorem output5297_def : output5297 = (.seq output5296 output5293) := by
  unfold output5297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5297_skip : Flapjack.WordAlloc.isSkip output5297 = false := by
  rw [output5297_def]
  conv => lhs; cbv
  try rfl
theorem node5297_eq : Flapjack.WordAlloc.removeDeadStructural input5297 value2651 value1 value2 = (output5297, value5, value1) := by
  rw [input5297_def, output5297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5293_eq]
  dsimp only
  rw [node5296_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5297 input5292)).val
theorem input5298_def : input5298 = (.seq input5297 input5292) := by
  unfold input5298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5297 output5292)).val
theorem output5298_def : output5298 = (.seq output5297 output5292) := by
  unfold output5298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5298_skip : Flapjack.WordAlloc.isSkip output5298 = false := by
  rw [output5298_def]
  conv => lhs; cbv
  try rfl
theorem node5298_eq : Flapjack.WordAlloc.removeDeadStructural input5298 value2650 value1 value2 = (output5298, value5, value1) := by
  rw [input5298_def, output5298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5292_eq]
  dsimp only
  rw [node5297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5298 input5291)).val
theorem input5299_def : input5299 = (.seq input5298 input5291) := by
  unfold input5299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5298 output5291)).val
theorem output5299_def : output5299 = (.seq output5298 output5291) := by
  unfold output5299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5299_skip : Flapjack.WordAlloc.isSkip output5299 = false := by
  rw [output5299_def]
  conv => lhs; cbv
  try rfl
theorem node5299_eq : Flapjack.WordAlloc.removeDeadStructural input5299 value2648 value1 value2 = (output5299, value5, value1) := by
  rw [input5299_def, output5299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5291_eq]
  dsimp only
  rw [node5298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2654 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19293 (Flapjack.WordLangAddr.addr 19297 0#64)))).val
theorem input5300_def : input5300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19293 (Flapjack.WordLangAddr.addr 19297 0#64))) := by
  unfold input5300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19293 (Flapjack.WordLangAddr.addr 19297 0#64)))).val
theorem output5300_def : output5300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19293 (Flapjack.WordLangAddr.addr 19297 0#64))) := by
  unfold output5300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5300_skip : Flapjack.WordAlloc.isSkip output5300 = false := by
  rw [output5300_def]
  conv => lhs; cbv
  try rfl
theorem node5300_eq : Flapjack.WordAlloc.removeDeadStructural input5300 value5 value1 value2 = (output5300, value2654, value1) := by
  rw [input5300_def, output5300_def]
  try (conv => lhs; cbv)
  try rfl

def value2655 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19297, 19285)])).val
theorem input5301_def : input5301 = (Flapjack.WordLangProgHOL.move 0 [(19297, 19285)]) := by
  unfold input5301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19297, 19285)])).val
theorem output5301_def : output5301 = (Flapjack.WordLangProgHOL.move 0 [(19297, 19285)]) := by
  unfold output5301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5301_skip : Flapjack.WordAlloc.isSkip output5301 = false := by
  rw [output5301_def]
  conv => lhs; cbv
  try rfl
theorem node5301_eq : Flapjack.WordAlloc.removeDeadStructural input5301 value2654 value1 value2 = (output5301, value2655, value1) := by
  rw [input5301_def, output5301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5301 input5300)).val
theorem input5302_def : input5302 = (.seq input5301 input5300) := by
  unfold input5302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5301 output5300)).val
theorem output5302_def : output5302 = (.seq output5301 output5300) := by
  unfold output5302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5302_skip : Flapjack.WordAlloc.isSkip output5302 = false := by
  rw [output5302_def]
  conv => lhs; cbv
  try rfl
theorem node5302_eq : Flapjack.WordAlloc.removeDeadStructural input5302 value5 value1 value2 = (output5302, value2655, value1) := by
  rw [input5302_def, output5302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5300_eq]
  dsimp only
  rw [node5301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2656 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19293 7720336747103001025#64))).val
theorem input5303_def : input5303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19293 7720336747103001025#64)) := by
  unfold input5303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19293 7720336747103001025#64))).val
theorem output5303_def : output5303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19293 7720336747103001025#64)) := by
  unfold output5303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5303_skip : Flapjack.WordAlloc.isSkip output5303 = false := by
  rw [output5303_def]
  conv => lhs; cbv
  try rfl
theorem node5303_eq : Flapjack.WordAlloc.removeDeadStructural input5303 value2655 value1 value2 = (output5303, value2656, value1) := by
  rw [input5303_def, output5303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19289 7720336747103001025#64))).val
theorem input5304_def : input5304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19289 7720336747103001025#64)) := by
  unfold input5304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5304_def : output5304 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5304_skip : Flapjack.WordAlloc.isSkip output5304 = true := by
  rw [output5304_def]
  conv => lhs; cbv
  try rfl
theorem node5304_eq : Flapjack.WordAlloc.removeDeadStructural input5304 value2656 value1 value2 = (output5304, value2656, value1) := by
  rw [input5304_def, output5304_def]
  try (conv => lhs; cbv)
  try rfl

def value2657 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19285 19277 (Flapjack.WordRegImm.reg 19281))))).val
theorem input5305_def : input5305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19285 19277 (Flapjack.WordRegImm.reg 19281)))) := by
  unfold input5305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19285 19277 (Flapjack.WordRegImm.reg 19281))))).val
theorem output5305_def : output5305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19285 19277 (Flapjack.WordRegImm.reg 19281)))) := by
  unfold output5305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5305_skip : Flapjack.WordAlloc.isSkip output5305 = false := by
  rw [output5305_def]
  conv => lhs; cbv
  try rfl
theorem node5305_eq : Flapjack.WordAlloc.removeDeadStructural input5305 value2656 value1 value2 = (output5305, value2657, value1) := by
  rw [input5305_def, output5305_def]
  try (conv => lhs; cbv)
  try rfl

def value2658 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19281 4480#64))).val
theorem input5306_def : input5306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19281 4480#64)) := by
  unfold input5306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19281 4480#64))).val
theorem output5306_def : output5306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19281 4480#64)) := by
  unfold output5306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5306_skip : Flapjack.WordAlloc.isSkip output5306 = false := by
  rw [output5306_def]
  conv => lhs; cbv
  try rfl
theorem node5306_eq : Flapjack.WordAlloc.removeDeadStructural input5306 value2657 value1 value2 = (output5306, value2658, value1) := by
  rw [input5306_def, output5306_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5306 input5305)).val
theorem input5307_def : input5307 = (.seq input5306 input5305) := by
  unfold input5307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5306 output5305)).val
theorem output5307_def : output5307 = (.seq output5306 output5305) := by
  unfold output5307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5307_skip : Flapjack.WordAlloc.isSkip output5307 = false := by
  rw [output5307_def]
  conv => lhs; cbv
  try rfl
theorem node5307_eq : Flapjack.WordAlloc.removeDeadStructural input5307 value2656 value1 value2 = (output5307, value2658, value1) := by
  rw [input5307_def, output5307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5305_eq]
  dsimp only
  rw [node5306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2659 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19277 (Flapjack.WordLangAddr.addr 19273 18446744073709551104#64)))).val
theorem input5308_def : input5308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19277 (Flapjack.WordLangAddr.addr 19273 18446744073709551104#64))) := by
  unfold input5308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19277 (Flapjack.WordLangAddr.addr 19273 18446744073709551104#64)))).val
theorem output5308_def : output5308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19277 (Flapjack.WordLangAddr.addr 19273 18446744073709551104#64))) := by
  unfold output5308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5308_skip : Flapjack.WordAlloc.isSkip output5308 = false := by
  rw [output5308_def]
  conv => lhs; cbv
  try rfl
theorem node5308_eq : Flapjack.WordAlloc.removeDeadStructural input5308 value2658 value1 value2 = (output5308, value2659, value1) := by
  rw [input5308_def, output5308_def]
  try (conv => lhs; cbv)
  try rfl

def value2660 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19273 19269)).val
theorem input5309_def : input5309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19273 19269) := by
  unfold input5309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19273 19269)).val
theorem output5309_def : output5309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19273 19269) := by
  unfold output5309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5309_skip : Flapjack.WordAlloc.isSkip output5309 = false := by
  rw [output5309_def]
  conv => lhs; cbv
  try rfl
theorem node5309_eq : Flapjack.WordAlloc.removeDeadStructural input5309 value2659 value1 value2 = (output5309, value2660, value1) := by
  rw [input5309_def, output5309_def]
  try (conv => lhs; cbv)
  try rfl

def value2661 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19269 19265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5310_def : input5310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19269 19265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19269 19265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5310_def : output5310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19269 19265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5310_skip : Flapjack.WordAlloc.isSkip output5310 = false := by
  rw [output5310_def]
  conv => lhs; cbv
  try rfl
theorem node5310_eq : Flapjack.WordAlloc.removeDeadStructural input5310 value2660 value1 value2 = (output5310, value2661, value1) := by
  rw [input5310_def, output5310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19265 Flapjack.WordStore.heapLength)).val
theorem input5311_def : input5311 = (Flapjack.WordLangProgHOL.get 19265 Flapjack.WordStore.heapLength) := by
  unfold input5311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19265 Flapjack.WordStore.heapLength)).val
theorem output5311_def : output5311 = (Flapjack.WordLangProgHOL.get 19265 Flapjack.WordStore.heapLength) := by
  unfold output5311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5311_skip : Flapjack.WordAlloc.isSkip output5311 = false := by
  rw [output5311_def]
  conv => lhs; cbv
  try rfl
theorem node5311_eq : Flapjack.WordAlloc.removeDeadStructural input5311 value2661 value1 value2 = (output5311, value5, value1) := by
  rw [input5311_def, output5311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5311 input5310)).val
theorem input5312_def : input5312 = (.seq input5311 input5310) := by
  unfold input5312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5311 output5310)).val
theorem output5312_def : output5312 = (.seq output5311 output5310) := by
  unfold output5312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5312_skip : Flapjack.WordAlloc.isSkip output5312 = false := by
  rw [output5312_def]
  conv => lhs; cbv
  try rfl
theorem node5312_eq : Flapjack.WordAlloc.removeDeadStructural input5312 value2660 value1 value2 = (output5312, value5, value1) := by
  rw [input5312_def, output5312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5310_eq]
  dsimp only
  rw [node5311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5312 input5309)).val
theorem input5313_def : input5313 = (.seq input5312 input5309) := by
  unfold input5313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5312 output5309)).val
theorem output5313_def : output5313 = (.seq output5312 output5309) := by
  unfold output5313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5313_skip : Flapjack.WordAlloc.isSkip output5313 = false := by
  rw [output5313_def]
  conv => lhs; cbv
  try rfl
theorem node5313_eq : Flapjack.WordAlloc.removeDeadStructural input5313 value2659 value1 value2 = (output5313, value5, value1) := by
  rw [input5313_def, output5313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5309_eq]
  dsimp only
  rw [node5312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5313 input5308)).val
theorem input5314_def : input5314 = (.seq input5313 input5308) := by
  unfold input5314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5313 output5308)).val
theorem output5314_def : output5314 = (.seq output5313 output5308) := by
  unfold output5314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5314_skip : Flapjack.WordAlloc.isSkip output5314 = false := by
  rw [output5314_def]
  conv => lhs; cbv
  try rfl
theorem node5314_eq : Flapjack.WordAlloc.removeDeadStructural input5314 value2658 value1 value2 = (output5314, value5, value1) := by
  rw [input5314_def, output5314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5308_eq]
  dsimp only
  rw [node5313_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5314 input5307)).val
theorem input5315_def : input5315 = (.seq input5314 input5307) := by
  unfold input5315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5314 output5307)).val
theorem output5315_def : output5315 = (.seq output5314 output5307) := by
  unfold output5315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5315_skip : Flapjack.WordAlloc.isSkip output5315 = false := by
  rw [output5315_def]
  conv => lhs; cbv
  try rfl
theorem node5315_eq : Flapjack.WordAlloc.removeDeadStructural input5315 value2656 value1 value2 = (output5315, value5, value1) := by
  rw [input5315_def, output5315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5307_eq]
  dsimp only
  rw [node5314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2662 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19257 (Flapjack.WordLangAddr.addr 19261 0#64)))).val
theorem input5316_def : input5316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19257 (Flapjack.WordLangAddr.addr 19261 0#64))) := by
  unfold input5316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19257 (Flapjack.WordLangAddr.addr 19261 0#64)))).val
theorem output5316_def : output5316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19257 (Flapjack.WordLangAddr.addr 19261 0#64))) := by
  unfold output5316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5316_skip : Flapjack.WordAlloc.isSkip output5316 = false := by
  rw [output5316_def]
  conv => lhs; cbv
  try rfl
theorem node5316_eq : Flapjack.WordAlloc.removeDeadStructural input5316 value5 value1 value2 = (output5316, value2662, value1) := by
  rw [input5316_def, output5316_def]
  try (conv => lhs; cbv)
  try rfl

def value2663 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19261, 19249)])).val
theorem input5317_def : input5317 = (Flapjack.WordLangProgHOL.move 0 [(19261, 19249)]) := by
  unfold input5317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19261, 19249)])).val
theorem output5317_def : output5317 = (Flapjack.WordLangProgHOL.move 0 [(19261, 19249)]) := by
  unfold output5317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5317_skip : Flapjack.WordAlloc.isSkip output5317 = false := by
  rw [output5317_def]
  conv => lhs; cbv
  try rfl
theorem node5317_eq : Flapjack.WordAlloc.removeDeadStructural input5317 value2662 value1 value2 = (output5317, value2663, value1) := by
  rw [input5317_def, output5317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5317 input5316)).val
theorem input5318_def : input5318 = (.seq input5317 input5316) := by
  unfold input5318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5317 output5316)).val
theorem output5318_def : output5318 = (.seq output5317 output5316) := by
  unfold output5318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5318_skip : Flapjack.WordAlloc.isSkip output5318 = false := by
  rw [output5318_def]
  conv => lhs; cbv
  try rfl
theorem node5318_eq : Flapjack.WordAlloc.removeDeadStructural input5318 value5 value1 value2 = (output5318, value2663, value1) := by
  rw [input5318_def, output5318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5316_eq]
  dsimp only
  rw [node5317_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2664 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19257 8197694151986493523#64))).val
theorem input5319_def : input5319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19257 8197694151986493523#64)) := by
  unfold input5319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19257 8197694151986493523#64))).val
theorem output5319_def : output5319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19257 8197694151986493523#64)) := by
  unfold output5319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5319_skip : Flapjack.WordAlloc.isSkip output5319 = false := by
  rw [output5319_def]
  conv => lhs; cbv
  try rfl
theorem node5319_eq : Flapjack.WordAlloc.removeDeadStructural input5319 value2663 value1 value2 = (output5319, value2664, value1) := by
  rw [input5319_def, output5319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19253 8197694151986493523#64))).val
theorem input5320_def : input5320 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19253 8197694151986493523#64)) := by
  unfold input5320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5320_def : output5320 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5320_skip : Flapjack.WordAlloc.isSkip output5320 = true := by
  rw [output5320_def]
  conv => lhs; cbv
  try rfl
theorem node5320_eq : Flapjack.WordAlloc.removeDeadStructural input5320 value2664 value1 value2 = (output5320, value2664, value1) := by
  rw [input5320_def, output5320_def]
  try (conv => lhs; cbv)
  try rfl

def value2665 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19249 19241 (Flapjack.WordRegImm.reg 19245))))).val
theorem input5321_def : input5321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19249 19241 (Flapjack.WordRegImm.reg 19245)))) := by
  unfold input5321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19249 19241 (Flapjack.WordRegImm.reg 19245))))).val
theorem output5321_def : output5321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19249 19241 (Flapjack.WordRegImm.reg 19245)))) := by
  unfold output5321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5321_skip : Flapjack.WordAlloc.isSkip output5321 = false := by
  rw [output5321_def]
  conv => lhs; cbv
  try rfl
theorem node5321_eq : Flapjack.WordAlloc.removeDeadStructural input5321 value2664 value1 value2 = (output5321, value2665, value1) := by
  rw [input5321_def, output5321_def]
  try (conv => lhs; cbv)
  try rfl

def value2666 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19245 4472#64))).val
theorem input5322_def : input5322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19245 4472#64)) := by
  unfold input5322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19245 4472#64))).val
theorem output5322_def : output5322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19245 4472#64)) := by
  unfold output5322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5322_skip : Flapjack.WordAlloc.isSkip output5322 = false := by
  rw [output5322_def]
  conv => lhs; cbv
  try rfl
theorem node5322_eq : Flapjack.WordAlloc.removeDeadStructural input5322 value2665 value1 value2 = (output5322, value2666, value1) := by
  rw [input5322_def, output5322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5322 input5321)).val
theorem input5323_def : input5323 = (.seq input5322 input5321) := by
  unfold input5323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5322 output5321)).val
theorem output5323_def : output5323 = (.seq output5322 output5321) := by
  unfold output5323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5323_skip : Flapjack.WordAlloc.isSkip output5323 = false := by
  rw [output5323_def]
  conv => lhs; cbv
  try rfl
theorem node5323_eq : Flapjack.WordAlloc.removeDeadStructural input5323 value2664 value1 value2 = (output5323, value2666, value1) := by
  rw [input5323_def, output5323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5321_eq]
  dsimp only
  rw [node5322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2667 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19241 (Flapjack.WordLangAddr.addr 19237 18446744073709551104#64)))).val
theorem input5324_def : input5324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19241 (Flapjack.WordLangAddr.addr 19237 18446744073709551104#64))) := by
  unfold input5324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19241 (Flapjack.WordLangAddr.addr 19237 18446744073709551104#64)))).val
theorem output5324_def : output5324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19241 (Flapjack.WordLangAddr.addr 19237 18446744073709551104#64))) := by
  unfold output5324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5324_skip : Flapjack.WordAlloc.isSkip output5324 = false := by
  rw [output5324_def]
  conv => lhs; cbv
  try rfl
theorem node5324_eq : Flapjack.WordAlloc.removeDeadStructural input5324 value2666 value1 value2 = (output5324, value2667, value1) := by
  rw [input5324_def, output5324_def]
  try (conv => lhs; cbv)
  try rfl

def value2668 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19237 19233)).val
theorem input5325_def : input5325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19237 19233) := by
  unfold input5325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19237 19233)).val
theorem output5325_def : output5325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19237 19233) := by
  unfold output5325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5325_skip : Flapjack.WordAlloc.isSkip output5325 = false := by
  rw [output5325_def]
  conv => lhs; cbv
  try rfl
theorem node5325_eq : Flapjack.WordAlloc.removeDeadStructural input5325 value2667 value1 value2 = (output5325, value2668, value1) := by
  rw [input5325_def, output5325_def]
  try (conv => lhs; cbv)
  try rfl

def value2669 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19233 19229 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5326_def : input5326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19233 19229 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19233 19229 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5326_def : output5326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19233 19229 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5326_skip : Flapjack.WordAlloc.isSkip output5326 = false := by
  rw [output5326_def]
  conv => lhs; cbv
  try rfl
theorem node5326_eq : Flapjack.WordAlloc.removeDeadStructural input5326 value2668 value1 value2 = (output5326, value2669, value1) := by
  rw [input5326_def, output5326_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19229 Flapjack.WordStore.heapLength)).val
theorem input5327_def : input5327 = (Flapjack.WordLangProgHOL.get 19229 Flapjack.WordStore.heapLength) := by
  unfold input5327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19229 Flapjack.WordStore.heapLength)).val
theorem output5327_def : output5327 = (Flapjack.WordLangProgHOL.get 19229 Flapjack.WordStore.heapLength) := by
  unfold output5327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5327_skip : Flapjack.WordAlloc.isSkip output5327 = false := by
  rw [output5327_def]
  conv => lhs; cbv
  try rfl
theorem node5327_eq : Flapjack.WordAlloc.removeDeadStructural input5327 value2669 value1 value2 = (output5327, value5, value1) := by
  rw [input5327_def, output5327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5327 input5326)).val
theorem input5328_def : input5328 = (.seq input5327 input5326) := by
  unfold input5328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5327 output5326)).val
theorem output5328_def : output5328 = (.seq output5327 output5326) := by
  unfold output5328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5328_skip : Flapjack.WordAlloc.isSkip output5328 = false := by
  rw [output5328_def]
  conv => lhs; cbv
  try rfl
theorem node5328_eq : Flapjack.WordAlloc.removeDeadStructural input5328 value2668 value1 value2 = (output5328, value5, value1) := by
  rw [input5328_def, output5328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5326_eq]
  dsimp only
  rw [node5327_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5328 input5325)).val
theorem input5329_def : input5329 = (.seq input5328 input5325) := by
  unfold input5329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5328 output5325)).val
theorem output5329_def : output5329 = (.seq output5328 output5325) := by
  unfold output5329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5329_skip : Flapjack.WordAlloc.isSkip output5329 = false := by
  rw [output5329_def]
  conv => lhs; cbv
  try rfl
theorem node5329_eq : Flapjack.WordAlloc.removeDeadStructural input5329 value2667 value1 value2 = (output5329, value5, value1) := by
  rw [input5329_def, output5329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5325_eq]
  dsimp only
  rw [node5328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5329 input5324)).val
theorem input5330_def : input5330 = (.seq input5329 input5324) := by
  unfold input5330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5329 output5324)).val
theorem output5330_def : output5330 = (.seq output5329 output5324) := by
  unfold output5330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5330_skip : Flapjack.WordAlloc.isSkip output5330 = false := by
  rw [output5330_def]
  conv => lhs; cbv
  try rfl
theorem node5330_eq : Flapjack.WordAlloc.removeDeadStructural input5330 value2666 value1 value2 = (output5330, value5, value1) := by
  rw [input5330_def, output5330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5324_eq]
  dsimp only
  rw [node5329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5330 input5323)).val
theorem input5331_def : input5331 = (.seq input5330 input5323) := by
  unfold input5331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5330 output5323)).val
theorem output5331_def : output5331 = (.seq output5330 output5323) := by
  unfold output5331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5331_skip : Flapjack.WordAlloc.isSkip output5331 = false := by
  rw [output5331_def]
  conv => lhs; cbv
  try rfl
theorem node5331_eq : Flapjack.WordAlloc.removeDeadStructural input5331 value2664 value1 value2 = (output5331, value5, value1) := by
  rw [input5331_def, output5331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5323_eq]
  dsimp only
  rw [node5330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2670 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19221 (Flapjack.WordLangAddr.addr 19225 0#64)))).val
theorem input5332_def : input5332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19221 (Flapjack.WordLangAddr.addr 19225 0#64))) := by
  unfold input5332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19221 (Flapjack.WordLangAddr.addr 19225 0#64)))).val
theorem output5332_def : output5332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19221 (Flapjack.WordLangAddr.addr 19225 0#64))) := by
  unfold output5332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5332_skip : Flapjack.WordAlloc.isSkip output5332 = false := by
  rw [output5332_def]
  conv => lhs; cbv
  try rfl
theorem node5332_eq : Flapjack.WordAlloc.removeDeadStructural input5332 value5 value1 value2 = (output5332, value2670, value1) := by
  rw [input5332_def, output5332_def]
  try (conv => lhs; cbv)
  try rfl

def value2671 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19225, 19213)])).val
theorem input5333_def : input5333 = (Flapjack.WordLangProgHOL.move 0 [(19225, 19213)]) := by
  unfold input5333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19225, 19213)])).val
theorem output5333_def : output5333 = (Flapjack.WordLangProgHOL.move 0 [(19225, 19213)]) := by
  unfold output5333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5333_skip : Flapjack.WordAlloc.isSkip output5333 = false := by
  rw [output5333_def]
  conv => lhs; cbv
  try rfl
theorem node5333_eq : Flapjack.WordAlloc.removeDeadStructural input5333 value2670 value1 value2 = (output5333, value2671, value1) := by
  rw [input5333_def, output5333_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5333 input5332)).val
theorem input5334_def : input5334 = (.seq input5333 input5332) := by
  unfold input5334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5333 output5332)).val
theorem output5334_def : output5334 = (.seq output5333 output5332) := by
  unfold output5334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5334_skip : Flapjack.WordAlloc.isSkip output5334 = false := by
  rw [output5334_def]
  conv => lhs; cbv
  try rfl
theorem node5334_eq : Flapjack.WordAlloc.removeDeadStructural input5334 value5 value1 value2 = (output5334, value2671, value1) := by
  rw [input5334_def, output5334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5332_eq]
  dsimp only
  rw [node5333_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2672 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19221 3625112747029342752#64))).val
theorem input5335_def : input5335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19221 3625112747029342752#64)) := by
  unfold input5335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19221 3625112747029342752#64))).val
theorem output5335_def : output5335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19221 3625112747029342752#64)) := by
  unfold output5335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5335_skip : Flapjack.WordAlloc.isSkip output5335 = false := by
  rw [output5335_def]
  conv => lhs; cbv
  try rfl
theorem node5335_eq : Flapjack.WordAlloc.removeDeadStructural input5335 value2671 value1 value2 = (output5335, value2672, value1) := by
  rw [input5335_def, output5335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19217 3625112747029342752#64))).val
theorem input5336_def : input5336 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19217 3625112747029342752#64)) := by
  unfold input5336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5336_def : output5336 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5336_skip : Flapjack.WordAlloc.isSkip output5336 = true := by
  rw [output5336_def]
  conv => lhs; cbv
  try rfl
theorem node5336_eq : Flapjack.WordAlloc.removeDeadStructural input5336 value2672 value1 value2 = (output5336, value2672, value1) := by
  rw [input5336_def, output5336_def]
  try (conv => lhs; cbv)
  try rfl

def value2673 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
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
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19213 19205 (Flapjack.WordRegImm.reg 19209))))).val
theorem input5337_def : input5337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19213 19205 (Flapjack.WordRegImm.reg 19209)))) := by
  unfold input5337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19213 19205 (Flapjack.WordRegImm.reg 19209))))).val
theorem output5337_def : output5337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19213 19205 (Flapjack.WordRegImm.reg 19209)))) := by
  unfold output5337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5337_skip : Flapjack.WordAlloc.isSkip output5337 = false := by
  rw [output5337_def]
  conv => lhs; cbv
  try rfl
theorem node5337_eq : Flapjack.WordAlloc.removeDeadStructural input5337 value2672 value1 value2 = (output5337, value2673, value1) := by
  rw [input5337_def, output5337_def]
  try (conv => lhs; cbv)
  try rfl

def value2674 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19209 4464#64))).val
theorem input5338_def : input5338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19209 4464#64)) := by
  unfold input5338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19209 4464#64))).val
theorem output5338_def : output5338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19209 4464#64)) := by
  unfold output5338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5338_skip : Flapjack.WordAlloc.isSkip output5338 = false := by
  rw [output5338_def]
  conv => lhs; cbv
  try rfl
theorem node5338_eq : Flapjack.WordAlloc.removeDeadStructural input5338 value2673 value1 value2 = (output5338, value2674, value1) := by
  rw [input5338_def, output5338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5338 input5337)).val
theorem input5339_def : input5339 = (.seq input5338 input5337) := by
  unfold input5339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5338 output5337)).val
theorem output5339_def : output5339 = (.seq output5338 output5337) := by
  unfold output5339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5339_skip : Flapjack.WordAlloc.isSkip output5339 = false := by
  rw [output5339_def]
  conv => lhs; cbv
  try rfl
theorem node5339_eq : Flapjack.WordAlloc.removeDeadStructural input5339 value2672 value1 value2 = (output5339, value2674, value1) := by
  rw [input5339_def, output5339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5337_eq]
  dsimp only
  rw [node5338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2675 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19205 (Flapjack.WordLangAddr.addr 19201 18446744073709551104#64)))).val
theorem input5340_def : input5340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19205 (Flapjack.WordLangAddr.addr 19201 18446744073709551104#64))) := by
  unfold input5340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19205 (Flapjack.WordLangAddr.addr 19201 18446744073709551104#64)))).val
theorem output5340_def : output5340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19205 (Flapjack.WordLangAddr.addr 19201 18446744073709551104#64))) := by
  unfold output5340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5340_skip : Flapjack.WordAlloc.isSkip output5340 = false := by
  rw [output5340_def]
  conv => lhs; cbv
  try rfl
theorem node5340_eq : Flapjack.WordAlloc.removeDeadStructural input5340 value2674 value1 value2 = (output5340, value2675, value1) := by
  rw [input5340_def, output5340_def]
  try (conv => lhs; cbv)
  try rfl

def value2676 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19201 19197)).val
theorem input5341_def : input5341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19201 19197) := by
  unfold input5341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19201 19197)).val
theorem output5341_def : output5341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19201 19197) := by
  unfold output5341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5341_skip : Flapjack.WordAlloc.isSkip output5341 = false := by
  rw [output5341_def]
  conv => lhs; cbv
  try rfl
theorem node5341_eq : Flapjack.WordAlloc.removeDeadStructural input5341 value2675 value1 value2 = (output5341, value2676, value1) := by
  rw [input5341_def, output5341_def]
  try (conv => lhs; cbv)
  try rfl

def value2677 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19197 19193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5342_def : input5342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19197 19193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19197 19193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5342_def : output5342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19197 19193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5342_skip : Flapjack.WordAlloc.isSkip output5342 = false := by
  rw [output5342_def]
  conv => lhs; cbv
  try rfl
theorem node5342_eq : Flapjack.WordAlloc.removeDeadStructural input5342 value2676 value1 value2 = (output5342, value2677, value1) := by
  rw [input5342_def, output5342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19193 Flapjack.WordStore.heapLength)).val
theorem input5343_def : input5343 = (Flapjack.WordLangProgHOL.get 19193 Flapjack.WordStore.heapLength) := by
  unfold input5343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19193 Flapjack.WordStore.heapLength)).val
theorem output5343_def : output5343 = (Flapjack.WordLangProgHOL.get 19193 Flapjack.WordStore.heapLength) := by
  unfold output5343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5343_skip : Flapjack.WordAlloc.isSkip output5343 = false := by
  rw [output5343_def]
  conv => lhs; cbv
  try rfl
theorem node5343_eq : Flapjack.WordAlloc.removeDeadStructural input5343 value2677 value1 value2 = (output5343, value5, value1) := by
  rw [input5343_def, output5343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5343 input5342)).val
theorem input5344_def : input5344 = (.seq input5343 input5342) := by
  unfold input5344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5343 output5342)).val
theorem output5344_def : output5344 = (.seq output5343 output5342) := by
  unfold output5344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5344_skip : Flapjack.WordAlloc.isSkip output5344 = false := by
  rw [output5344_def]
  conv => lhs; cbv
  try rfl
theorem node5344_eq : Flapjack.WordAlloc.removeDeadStructural input5344 value2676 value1 value2 = (output5344, value5, value1) := by
  rw [input5344_def, output5344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5342_eq]
  dsimp only
  rw [node5343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5344 input5341)).val
theorem input5345_def : input5345 = (.seq input5344 input5341) := by
  unfold input5345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5344 output5341)).val
theorem output5345_def : output5345 = (.seq output5344 output5341) := by
  unfold output5345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5345_skip : Flapjack.WordAlloc.isSkip output5345 = false := by
  rw [output5345_def]
  conv => lhs; cbv
  try rfl
theorem node5345_eq : Flapjack.WordAlloc.removeDeadStructural input5345 value2675 value1 value2 = (output5345, value5, value1) := by
  rw [input5345_def, output5345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5341_eq]
  dsimp only
  rw [node5344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5345 input5340)).val
theorem input5346_def : input5346 = (.seq input5345 input5340) := by
  unfold input5346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5345 output5340)).val
theorem output5346_def : output5346 = (.seq output5345 output5340) := by
  unfold output5346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5346_skip : Flapjack.WordAlloc.isSkip output5346 = false := by
  rw [output5346_def]
  conv => lhs; cbv
  try rfl
theorem node5346_eq : Flapjack.WordAlloc.removeDeadStructural input5346 value2674 value1 value2 = (output5346, value5, value1) := by
  rw [input5346_def, output5346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5340_eq]
  dsimp only
  rw [node5345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5346 input5339)).val
theorem input5347_def : input5347 = (.seq input5346 input5339) := by
  unfold input5347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5346 output5339)).val
theorem output5347_def : output5347 = (.seq output5346 output5339) := by
  unfold output5347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5347_skip : Flapjack.WordAlloc.isSkip output5347 = false := by
  rw [output5347_def]
  conv => lhs; cbv
  try rfl
theorem node5347_eq : Flapjack.WordAlloc.removeDeadStructural input5347 value2672 value1 value2 = (output5347, value5, value1) := by
  rw [input5347_def, output5347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5339_eq]
  dsimp only
  rw [node5346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2678 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19185 (Flapjack.WordLangAddr.addr 19189 0#64)))).val
theorem input5348_def : input5348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19185 (Flapjack.WordLangAddr.addr 19189 0#64))) := by
  unfold input5348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19185 (Flapjack.WordLangAddr.addr 19189 0#64)))).val
theorem output5348_def : output5348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19185 (Flapjack.WordLangAddr.addr 19189 0#64))) := by
  unfold output5348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5348_skip : Flapjack.WordAlloc.isSkip output5348 = false := by
  rw [output5348_def]
  conv => lhs; cbv
  try rfl
theorem node5348_eq : Flapjack.WordAlloc.removeDeadStructural input5348 value5 value1 value2 = (output5348, value2678, value1) := by
  rw [input5348_def, output5348_def]
  try (conv => lhs; cbv)
  try rfl

def value2679 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19189, 19177)])).val
theorem input5349_def : input5349 = (Flapjack.WordLangProgHOL.move 0 [(19189, 19177)]) := by
  unfold input5349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19189, 19177)])).val
theorem output5349_def : output5349 = (Flapjack.WordLangProgHOL.move 0 [(19189, 19177)]) := by
  unfold output5349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5349_skip : Flapjack.WordAlloc.isSkip output5349 = false := by
  rw [output5349_def]
  conv => lhs; cbv
  try rfl
theorem node5349_eq : Flapjack.WordAlloc.removeDeadStructural input5349 value2678 value1 value2 = (output5349, value2679, value1) := by
  rw [input5349_def, output5349_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5349 input5348)).val
theorem input5350_def : input5350 = (.seq input5349 input5348) := by
  unfold input5350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5349 output5348)).val
theorem output5350_def : output5350 = (.seq output5349 output5348) := by
  unfold output5350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5350_skip : Flapjack.WordAlloc.isSkip output5350 = false := by
  rw [output5350_def]
  conv => lhs; cbv
  try rfl
theorem node5350_eq : Flapjack.WordAlloc.removeDeadStructural input5350 value5 value1 value2 = (output5350, value2679, value1) := by
  rw [input5350_def, output5350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5348_eq]
  dsimp only
  rw [node5349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2680 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19185 6675167463148394368#64))).val
theorem input5351_def : input5351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19185 6675167463148394368#64)) := by
  unfold input5351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19185 6675167463148394368#64))).val
theorem output5351_def : output5351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19185 6675167463148394368#64)) := by
  unfold output5351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5351_skip : Flapjack.WordAlloc.isSkip output5351 = false := by
  rw [output5351_def]
  conv => lhs; cbv
  try rfl
theorem node5351_eq : Flapjack.WordAlloc.removeDeadStructural input5351 value2679 value1 value2 = (output5351, value2680, value1) := by
  rw [input5351_def, output5351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19181 6675167463148394368#64))).val
theorem input5352_def : input5352 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19181 6675167463148394368#64)) := by
  unfold input5352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5352_def : output5352 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5352_skip : Flapjack.WordAlloc.isSkip output5352 = true := by
  rw [output5352_def]
  conv => lhs; cbv
  try rfl
theorem node5352_eq : Flapjack.WordAlloc.removeDeadStructural input5352 value2680 value1 value2 = (output5352, value2680, value1) := by
  rw [input5352_def, output5352_def]
  try (conv => lhs; cbv)
  try rfl

def value2681 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19177 19169 (Flapjack.WordRegImm.reg 19173))))).val
theorem input5353_def : input5353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19177 19169 (Flapjack.WordRegImm.reg 19173)))) := by
  unfold input5353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19177 19169 (Flapjack.WordRegImm.reg 19173))))).val
theorem output5353_def : output5353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19177 19169 (Flapjack.WordRegImm.reg 19173)))) := by
  unfold output5353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5353_skip : Flapjack.WordAlloc.isSkip output5353 = false := by
  rw [output5353_def]
  conv => lhs; cbv
  try rfl
theorem node5353_eq : Flapjack.WordAlloc.removeDeadStructural input5353 value2680 value1 value2 = (output5353, value2681, value1) := by
  rw [input5353_def, output5353_def]
  try (conv => lhs; cbv)
  try rfl

def value2682 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19173 4456#64))).val
theorem input5354_def : input5354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19173 4456#64)) := by
  unfold input5354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19173 4456#64))).val
theorem output5354_def : output5354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19173 4456#64)) := by
  unfold output5354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5354_skip : Flapjack.WordAlloc.isSkip output5354 = false := by
  rw [output5354_def]
  conv => lhs; cbv
  try rfl
theorem node5354_eq : Flapjack.WordAlloc.removeDeadStructural input5354 value2681 value1 value2 = (output5354, value2682, value1) := by
  rw [input5354_def, output5354_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5354 input5353)).val
theorem input5355_def : input5355 = (.seq input5354 input5353) := by
  unfold input5355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5354 output5353)).val
theorem output5355_def : output5355 = (.seq output5354 output5353) := by
  unfold output5355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5355_skip : Flapjack.WordAlloc.isSkip output5355 = false := by
  rw [output5355_def]
  conv => lhs; cbv
  try rfl
theorem node5355_eq : Flapjack.WordAlloc.removeDeadStructural input5355 value2680 value1 value2 = (output5355, value2682, value1) := by
  rw [input5355_def, output5355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5353_eq]
  dsimp only
  rw [node5354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2683 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19169 (Flapjack.WordLangAddr.addr 19165 18446744073709551104#64)))).val
theorem input5356_def : input5356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19169 (Flapjack.WordLangAddr.addr 19165 18446744073709551104#64))) := by
  unfold input5356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19169 (Flapjack.WordLangAddr.addr 19165 18446744073709551104#64)))).val
theorem output5356_def : output5356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19169 (Flapjack.WordLangAddr.addr 19165 18446744073709551104#64))) := by
  unfold output5356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5356_skip : Flapjack.WordAlloc.isSkip output5356 = false := by
  rw [output5356_def]
  conv => lhs; cbv
  try rfl
theorem node5356_eq : Flapjack.WordAlloc.removeDeadStructural input5356 value2682 value1 value2 = (output5356, value2683, value1) := by
  rw [input5356_def, output5356_def]
  try (conv => lhs; cbv)
  try rfl

def value2684 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19165 19161)).val
theorem input5357_def : input5357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19165 19161) := by
  unfold input5357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19165 19161)).val
theorem output5357_def : output5357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19165 19161) := by
  unfold output5357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5357_skip : Flapjack.WordAlloc.isSkip output5357 = false := by
  rw [output5357_def]
  conv => lhs; cbv
  try rfl
theorem node5357_eq : Flapjack.WordAlloc.removeDeadStructural input5357 value2683 value1 value2 = (output5357, value2684, value1) := by
  rw [input5357_def, output5357_def]
  try (conv => lhs; cbv)
  try rfl

def value2685 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19161 19157 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5358_def : input5358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19161 19157 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19161 19157 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5358_def : output5358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19161 19157 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5358_skip : Flapjack.WordAlloc.isSkip output5358 = false := by
  rw [output5358_def]
  conv => lhs; cbv
  try rfl
theorem node5358_eq : Flapjack.WordAlloc.removeDeadStructural input5358 value2684 value1 value2 = (output5358, value2685, value1) := by
  rw [input5358_def, output5358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19157 Flapjack.WordStore.heapLength)).val
theorem input5359_def : input5359 = (Flapjack.WordLangProgHOL.get 19157 Flapjack.WordStore.heapLength) := by
  unfold input5359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19157 Flapjack.WordStore.heapLength)).val
theorem output5359_def : output5359 = (Flapjack.WordLangProgHOL.get 19157 Flapjack.WordStore.heapLength) := by
  unfold output5359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5359_skip : Flapjack.WordAlloc.isSkip output5359 = false := by
  rw [output5359_def]
  conv => lhs; cbv
  try rfl
theorem node5359_eq : Flapjack.WordAlloc.removeDeadStructural input5359 value2685 value1 value2 = (output5359, value5, value1) := by
  rw [input5359_def, output5359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5359 input5358)).val
theorem input5360_def : input5360 = (.seq input5359 input5358) := by
  unfold input5360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5359 output5358)).val
theorem output5360_def : output5360 = (.seq output5359 output5358) := by
  unfold output5360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5360_skip : Flapjack.WordAlloc.isSkip output5360 = false := by
  rw [output5360_def]
  conv => lhs; cbv
  try rfl
theorem node5360_eq : Flapjack.WordAlloc.removeDeadStructural input5360 value2684 value1 value2 = (output5360, value5, value1) := by
  rw [input5360_def, output5360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5358_eq]
  dsimp only
  rw [node5359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5360 input5357)).val
theorem input5361_def : input5361 = (.seq input5360 input5357) := by
  unfold input5361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5360 output5357)).val
theorem output5361_def : output5361 = (.seq output5360 output5357) := by
  unfold output5361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5361_skip : Flapjack.WordAlloc.isSkip output5361 = false := by
  rw [output5361_def]
  conv => lhs; cbv
  try rfl
theorem node5361_eq : Flapjack.WordAlloc.removeDeadStructural input5361 value2683 value1 value2 = (output5361, value5, value1) := by
  rw [input5361_def, output5361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5357_eq]
  dsimp only
  rw [node5360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5361 input5356)).val
theorem input5362_def : input5362 = (.seq input5361 input5356) := by
  unfold input5362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5361 output5356)).val
theorem output5362_def : output5362 = (.seq output5361 output5356) := by
  unfold output5362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5362_skip : Flapjack.WordAlloc.isSkip output5362 = false := by
  rw [output5362_def]
  conv => lhs; cbv
  try rfl
theorem node5362_eq : Flapjack.WordAlloc.removeDeadStructural input5362 value2682 value1 value2 = (output5362, value5, value1) := by
  rw [input5362_def, output5362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5356_eq]
  dsimp only
  rw [node5361_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5362 input5355)).val
theorem input5363_def : input5363 = (.seq input5362 input5355) := by
  unfold input5363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5362 output5355)).val
theorem output5363_def : output5363 = (.seq output5362 output5355) := by
  unfold output5363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5363_skip : Flapjack.WordAlloc.isSkip output5363 = false := by
  rw [output5363_def]
  conv => lhs; cbv
  try rfl
theorem node5363_eq : Flapjack.WordAlloc.removeDeadStructural input5363 value2680 value1 value2 = (output5363, value5, value1) := by
  rw [input5363_def, output5363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5355_eq]
  dsimp only
  rw [node5362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2686 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19149 (Flapjack.WordLangAddr.addr 19153 0#64)))).val
theorem input5364_def : input5364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19149 (Flapjack.WordLangAddr.addr 19153 0#64))) := by
  unfold input5364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19149 (Flapjack.WordLangAddr.addr 19153 0#64)))).val
theorem output5364_def : output5364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 19149 (Flapjack.WordLangAddr.addr 19153 0#64))) := by
  unfold output5364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5364_skip : Flapjack.WordAlloc.isSkip output5364 = false := by
  rw [output5364_def]
  conv => lhs; cbv
  try rfl
theorem node5364_eq : Flapjack.WordAlloc.removeDeadStructural input5364 value5 value1 value2 = (output5364, value2686, value1) := by
  rw [input5364_def, output5364_def]
  try (conv => lhs; cbv)
  try rfl

def value2687 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19153, 19141)])).val
theorem input5365_def : input5365 = (Flapjack.WordLangProgHOL.move 0 [(19153, 19141)]) := by
  unfold input5365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(19153, 19141)])).val
theorem output5365_def : output5365 = (Flapjack.WordLangProgHOL.move 0 [(19153, 19141)]) := by
  unfold output5365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5365_skip : Flapjack.WordAlloc.isSkip output5365 = false := by
  rw [output5365_def]
  conv => lhs; cbv
  try rfl
theorem node5365_eq : Flapjack.WordAlloc.removeDeadStructural input5365 value2686 value1 value2 = (output5365, value2687, value1) := by
  rw [input5365_def, output5365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5365 input5364)).val
theorem input5366_def : input5366 = (.seq input5365 input5364) := by
  unfold input5366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5365 output5364)).val
theorem output5366_def : output5366 = (.seq output5365 output5364) := by
  unfold output5366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5366_skip : Flapjack.WordAlloc.isSkip output5366 = false := by
  rw [output5366_def]
  conv => lhs; cbv
  try rfl
theorem node5366_eq : Flapjack.WordAlloc.removeDeadStructural input5366 value5 value1 value2 = (output5366, value2687, value1) := by
  rw [input5366_def, output5366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5364_eq]
  dsimp only
  rw [node5365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2688 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19149 4905905684016745359#64))).val
theorem input5367_def : input5367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19149 4905905684016745359#64)) := by
  unfold input5367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19149 4905905684016745359#64))).val
theorem output5367_def : output5367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19149 4905905684016745359#64)) := by
  unfold output5367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5367_skip : Flapjack.WordAlloc.isSkip output5367 = false := by
  rw [output5367_def]
  conv => lhs; cbv
  try rfl
theorem node5367_eq : Flapjack.WordAlloc.removeDeadStructural input5367 value2687 value1 value2 = (output5367, value2688, value1) := by
  rw [input5367_def, output5367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19145 4905905684016745359#64))).val
theorem input5368_def : input5368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19145 4905905684016745359#64)) := by
  unfold input5368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5368_def : output5368 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5368_skip : Flapjack.WordAlloc.isSkip output5368 = true := by
  rw [output5368_def]
  conv => lhs; cbv
  try rfl
theorem node5368_eq : Flapjack.WordAlloc.removeDeadStructural input5368 value2688 value1 value2 = (output5368, value2688, value1) := by
  rw [input5368_def, output5368_def]
  try (conv => lhs; cbv)
  try rfl

def value2689 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19141 19133 (Flapjack.WordRegImm.reg 19137))))).val
theorem input5369_def : input5369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19141 19133 (Flapjack.WordRegImm.reg 19137)))) := by
  unfold input5369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19141 19133 (Flapjack.WordRegImm.reg 19137))))).val
theorem output5369_def : output5369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 19141 19133 (Flapjack.WordRegImm.reg 19137)))) := by
  unfold output5369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5369_skip : Flapjack.WordAlloc.isSkip output5369 = false := by
  rw [output5369_def]
  conv => lhs; cbv
  try rfl
theorem node5369_eq : Flapjack.WordAlloc.removeDeadStructural input5369 value2688 value1 value2 = (output5369, value2689, value1) := by
  rw [input5369_def, output5369_def]
  try (conv => lhs; cbv)
  try rfl

def value2690 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19137 4448#64))).val
theorem input5370_def : input5370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19137 4448#64)) := by
  unfold input5370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19137 4448#64))).val
theorem output5370_def : output5370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 19137 4448#64)) := by
  unfold output5370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5370_skip : Flapjack.WordAlloc.isSkip output5370 = false := by
  rw [output5370_def]
  conv => lhs; cbv
  try rfl
theorem node5370_eq : Flapjack.WordAlloc.removeDeadStructural input5370 value2689 value1 value2 = (output5370, value2690, value1) := by
  rw [input5370_def, output5370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5370 input5369)).val
theorem input5371_def : input5371 = (.seq input5370 input5369) := by
  unfold input5371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5370 output5369)).val
theorem output5371_def : output5371 = (.seq output5370 output5369) := by
  unfold output5371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5371_skip : Flapjack.WordAlloc.isSkip output5371 = false := by
  rw [output5371_def]
  conv => lhs; cbv
  try rfl
theorem node5371_eq : Flapjack.WordAlloc.removeDeadStructural input5371 value2688 value1 value2 = (output5371, value2690, value1) := by
  rw [input5371_def, output5371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5369_eq]
  dsimp only
  rw [node5370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2691 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19133 (Flapjack.WordLangAddr.addr 19129 18446744073709551104#64)))).val
theorem input5372_def : input5372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19133 (Flapjack.WordLangAddr.addr 19129 18446744073709551104#64))) := by
  unfold input5372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19133 (Flapjack.WordLangAddr.addr 19129 18446744073709551104#64)))).val
theorem output5372_def : output5372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 19133 (Flapjack.WordLangAddr.addr 19129 18446744073709551104#64))) := by
  unfold output5372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5372_skip : Flapjack.WordAlloc.isSkip output5372 = false := by
  rw [output5372_def]
  conv => lhs; cbv
  try rfl
theorem node5372_eq : Flapjack.WordAlloc.removeDeadStructural input5372 value2690 value1 value2 = (output5372, value2691, value1) := by
  rw [input5372_def, output5372_def]
  try (conv => lhs; cbv)
  try rfl

def value2692 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19129 19125)).val
theorem input5373_def : input5373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19129 19125) := by
  unfold input5373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19129 19125)).val
theorem output5373_def : output5373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 19129 19125) := by
  unfold output5373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5373_skip : Flapjack.WordAlloc.isSkip output5373 = false := by
  rw [output5373_def]
  conv => lhs; cbv
  try rfl
theorem node5373_eq : Flapjack.WordAlloc.removeDeadStructural input5373 value2691 value1 value2 = (output5373, value2692, value1) := by
  rw [input5373_def, output5373_def]
  try (conv => lhs; cbv)
  try rfl

def value2693 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19125 19121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5374_def : input5374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19125 19121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19125 19121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5374_def : output5374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 19125 19121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5374_skip : Flapjack.WordAlloc.isSkip output5374 = false := by
  rw [output5374_def]
  conv => lhs; cbv
  try rfl
theorem node5374_eq : Flapjack.WordAlloc.removeDeadStructural input5374 value2692 value1 value2 = (output5374, value2693, value1) := by
  rw [input5374_def, output5374_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19121 Flapjack.WordStore.heapLength)).val
theorem input5375_def : input5375 = (Flapjack.WordLangProgHOL.get 19121 Flapjack.WordStore.heapLength) := by
  unfold input5375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 19121 Flapjack.WordStore.heapLength)).val
theorem output5375_def : output5375 = (Flapjack.WordLangProgHOL.get 19121 Flapjack.WordStore.heapLength) := by
  unfold output5375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5375_skip : Flapjack.WordAlloc.isSkip output5375 = false := by
  rw [output5375_def]
  conv => lhs; cbv
  try rfl
theorem node5375_eq : Flapjack.WordAlloc.removeDeadStructural input5375 value2693 value1 value2 = (output5375, value5, value1) := by
  rw [input5375_def, output5375_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node5375_eq
end InitECandidate.Proofs.DeadStages713
