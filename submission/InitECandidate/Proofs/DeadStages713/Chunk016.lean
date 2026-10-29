import InitECandidate.Proofs.DeadStages713.Chunk015
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input4096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4095 input4094)).val
theorem input4096_def : input4096 = (.seq input4095 input4094) := by
  unfold input4096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4095 output4094)).val
theorem output4096_def : output4096 = (.seq output4095 output4094) := by
  unfold output4096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4096_skip : Flapjack.WordAlloc.isSkip output4096 = false := by
  rw [output4096_def]
  conv => lhs; cbv
  try rfl
theorem node4096_eq : Flapjack.WordAlloc.removeDeadStructural input4096 value2052 value1 value2 = (output4096, value5, value1) := by
  rw [input4096_def, output4096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4094_eq]
  dsimp only
  rw [node4095_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4096 input4093)).val
theorem input4097_def : input4097 = (.seq input4096 input4093) := by
  unfold input4097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4096 output4093)).val
theorem output4097_def : output4097 = (.seq output4096 output4093) := by
  unfold output4097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4097_skip : Flapjack.WordAlloc.isSkip output4097 = false := by
  rw [output4097_def]
  conv => lhs; cbv
  try rfl
theorem node4097_eq : Flapjack.WordAlloc.removeDeadStructural input4097 value2051 value1 value2 = (output4097, value5, value1) := by
  rw [input4097_def, output4097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4093_eq]
  dsimp only
  rw [node4096_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4097 input4092)).val
theorem input4098_def : input4098 = (.seq input4097 input4092) := by
  unfold input4098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4097 output4092)).val
theorem output4098_def : output4098 = (.seq output4097 output4092) := by
  unfold output4098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4098_skip : Flapjack.WordAlloc.isSkip output4098 = false := by
  rw [output4098_def]
  conv => lhs; cbv
  try rfl
theorem node4098_eq : Flapjack.WordAlloc.removeDeadStructural input4098 value2050 value1 value2 = (output4098, value5, value1) := by
  rw [input4098_def, output4098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4092_eq]
  dsimp only
  rw [node4097_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4098 input4091)).val
theorem input4099_def : input4099 = (.seq input4098 input4091) := by
  unfold input4099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4098 output4091)).val
theorem output4099_def : output4099 = (.seq output4098 output4091) := by
  unfold output4099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4099_skip : Flapjack.WordAlloc.isSkip output4099 = false := by
  rw [output4099_def]
  conv => lhs; cbv
  try rfl
theorem node4099_eq : Flapjack.WordAlloc.removeDeadStructural input4099 value2048 value1 value2 = (output4099, value5, value1) := by
  rw [input4099_def, output4099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4091_eq]
  dsimp only
  rw [node4098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2054 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21993 (Flapjack.WordLangAddr.addr 21997 0#64)))).val
theorem input4100_def : input4100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21993 (Flapjack.WordLangAddr.addr 21997 0#64))) := by
  unfold input4100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21993 (Flapjack.WordLangAddr.addr 21997 0#64)))).val
theorem output4100_def : output4100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21993 (Flapjack.WordLangAddr.addr 21997 0#64))) := by
  unfold output4100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4100_skip : Flapjack.WordAlloc.isSkip output4100 = false := by
  rw [output4100_def]
  conv => lhs; cbv
  try rfl
theorem node4100_eq : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value2054, value1) := by
  rw [input4100_def, output4100_def]
  try (conv => lhs; cbv)
  try rfl

def value2055 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21997, 21985)])).val
theorem input4101_def : input4101 = (Flapjack.WordLangProgHOL.move 0 [(21997, 21985)]) := by
  unfold input4101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21997, 21985)])).val
theorem output4101_def : output4101 = (Flapjack.WordLangProgHOL.move 0 [(21997, 21985)]) := by
  unfold output4101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4101_skip : Flapjack.WordAlloc.isSkip output4101 = false := by
  rw [output4101_def]
  conv => lhs; cbv
  try rfl
theorem node4101_eq : Flapjack.WordAlloc.removeDeadStructural input4101 value2054 value1 value2 = (output4101, value2055, value1) := by
  rw [input4101_def, output4101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4101 input4100)).val
theorem input4102_def : input4102 = (.seq input4101 input4100) := by
  unfold input4102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4101 output4100)).val
theorem output4102_def : output4102 = (.seq output4101 output4100) := by
  unfold output4102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4102_skip : Flapjack.WordAlloc.isSkip output4102 = false := by
  rw [output4102_def]
  conv => lhs; cbv
  try rfl
theorem node4102_eq : Flapjack.WordAlloc.removeDeadStructural input4102 value5 value1 value2 = (output4102, value2055, value1) := by
  rw [input4102_def, output4102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4100_eq]
  dsimp only
  rw [node4101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2056 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21993 495239923557547522#64))).val
theorem input4103_def : input4103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21993 495239923557547522#64)) := by
  unfold input4103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21993 495239923557547522#64))).val
theorem output4103_def : output4103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21993 495239923557547522#64)) := by
  unfold output4103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4103_skip : Flapjack.WordAlloc.isSkip output4103 = false := by
  rw [output4103_def]
  conv => lhs; cbv
  try rfl
theorem node4103_eq : Flapjack.WordAlloc.removeDeadStructural input4103 value2055 value1 value2 = (output4103, value2056, value1) := by
  rw [input4103_def, output4103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21989 495239923557547522#64))).val
theorem input4104_def : input4104 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21989 495239923557547522#64)) := by
  unfold input4104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4104_def : output4104 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4104_skip : Flapjack.WordAlloc.isSkip output4104 = true := by
  rw [output4104_def]
  conv => lhs; cbv
  try rfl
theorem node4104_eq : Flapjack.WordAlloc.removeDeadStructural input4104 value2056 value1 value2 = (output4104, value2056, value1) := by
  rw [input4104_def, output4104_def]
  try (conv => lhs; cbv)
  try rfl

def value2057 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21985 21977 (Flapjack.WordRegImm.reg 21981))))).val
theorem input4105_def : input4105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21985 21977 (Flapjack.WordRegImm.reg 21981)))) := by
  unfold input4105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21985 21977 (Flapjack.WordRegImm.reg 21981))))).val
theorem output4105_def : output4105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21985 21977 (Flapjack.WordRegImm.reg 21981)))) := by
  unfold output4105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4105_skip : Flapjack.WordAlloc.isSkip output4105 = false := by
  rw [output4105_def]
  conv => lhs; cbv
  try rfl
theorem node4105_eq : Flapjack.WordAlloc.removeDeadStructural input4105 value2056 value1 value2 = (output4105, value2057, value1) := by
  rw [input4105_def, output4105_def]
  try (conv => lhs; cbv)
  try rfl

def value2058 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21981 5080#64))).val
theorem input4106_def : input4106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21981 5080#64)) := by
  unfold input4106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21981 5080#64))).val
theorem output4106_def : output4106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21981 5080#64)) := by
  unfold output4106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4106_skip : Flapjack.WordAlloc.isSkip output4106 = false := by
  rw [output4106_def]
  conv => lhs; cbv
  try rfl
theorem node4106_eq : Flapjack.WordAlloc.removeDeadStructural input4106 value2057 value1 value2 = (output4106, value2058, value1) := by
  rw [input4106_def, output4106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4106 input4105)).val
theorem input4107_def : input4107 = (.seq input4106 input4105) := by
  unfold input4107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4106 output4105)).val
theorem output4107_def : output4107 = (.seq output4106 output4105) := by
  unfold output4107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4107_skip : Flapjack.WordAlloc.isSkip output4107 = false := by
  rw [output4107_def]
  conv => lhs; cbv
  try rfl
theorem node4107_eq : Flapjack.WordAlloc.removeDeadStructural input4107 value2056 value1 value2 = (output4107, value2058, value1) := by
  rw [input4107_def, output4107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4105_eq]
  dsimp only
  rw [node4106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2059 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21977 (Flapjack.WordLangAddr.addr 21973 18446744073709551104#64)))).val
theorem input4108_def : input4108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21977 (Flapjack.WordLangAddr.addr 21973 18446744073709551104#64))) := by
  unfold input4108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21977 (Flapjack.WordLangAddr.addr 21973 18446744073709551104#64)))).val
theorem output4108_def : output4108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21977 (Flapjack.WordLangAddr.addr 21973 18446744073709551104#64))) := by
  unfold output4108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4108_skip : Flapjack.WordAlloc.isSkip output4108 = false := by
  rw [output4108_def]
  conv => lhs; cbv
  try rfl
theorem node4108_eq : Flapjack.WordAlloc.removeDeadStructural input4108 value2058 value1 value2 = (output4108, value2059, value1) := by
  rw [input4108_def, output4108_def]
  try (conv => lhs; cbv)
  try rfl

def value2060 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21973 21969)).val
theorem input4109_def : input4109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21973 21969) := by
  unfold input4109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21973 21969)).val
theorem output4109_def : output4109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21973 21969) := by
  unfold output4109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4109_skip : Flapjack.WordAlloc.isSkip output4109 = false := by
  rw [output4109_def]
  conv => lhs; cbv
  try rfl
theorem node4109_eq : Flapjack.WordAlloc.removeDeadStructural input4109 value2059 value1 value2 = (output4109, value2060, value1) := by
  rw [input4109_def, output4109_def]
  try (conv => lhs; cbv)
  try rfl

def value2061 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21969 21965 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4110_def : input4110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21969 21965 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21969 21965 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4110_def : output4110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21969 21965 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4110_skip : Flapjack.WordAlloc.isSkip output4110 = false := by
  rw [output4110_def]
  conv => lhs; cbv
  try rfl
theorem node4110_eq : Flapjack.WordAlloc.removeDeadStructural input4110 value2060 value1 value2 = (output4110, value2061, value1) := by
  rw [input4110_def, output4110_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21965 Flapjack.WordStore.heapLength)).val
theorem input4111_def : input4111 = (Flapjack.WordLangProgHOL.get 21965 Flapjack.WordStore.heapLength) := by
  unfold input4111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21965 Flapjack.WordStore.heapLength)).val
theorem output4111_def : output4111 = (Flapjack.WordLangProgHOL.get 21965 Flapjack.WordStore.heapLength) := by
  unfold output4111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4111_skip : Flapjack.WordAlloc.isSkip output4111 = false := by
  rw [output4111_def]
  conv => lhs; cbv
  try rfl
theorem node4111_eq : Flapjack.WordAlloc.removeDeadStructural input4111 value2061 value1 value2 = (output4111, value5, value1) := by
  rw [input4111_def, output4111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4111 input4110)).val
theorem input4112_def : input4112 = (.seq input4111 input4110) := by
  unfold input4112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4111 output4110)).val
theorem output4112_def : output4112 = (.seq output4111 output4110) := by
  unfold output4112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4112_skip : Flapjack.WordAlloc.isSkip output4112 = false := by
  rw [output4112_def]
  conv => lhs; cbv
  try rfl
theorem node4112_eq : Flapjack.WordAlloc.removeDeadStructural input4112 value2060 value1 value2 = (output4112, value5, value1) := by
  rw [input4112_def, output4112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4110_eq]
  dsimp only
  rw [node4111_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4112 input4109)).val
theorem input4113_def : input4113 = (.seq input4112 input4109) := by
  unfold input4113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4112 output4109)).val
theorem output4113_def : output4113 = (.seq output4112 output4109) := by
  unfold output4113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4113_skip : Flapjack.WordAlloc.isSkip output4113 = false := by
  rw [output4113_def]
  conv => lhs; cbv
  try rfl
theorem node4113_eq : Flapjack.WordAlloc.removeDeadStructural input4113 value2059 value1 value2 = (output4113, value5, value1) := by
  rw [input4113_def, output4113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4109_eq]
  dsimp only
  rw [node4112_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4113 input4108)).val
theorem input4114_def : input4114 = (.seq input4113 input4108) := by
  unfold input4114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4113 output4108)).val
theorem output4114_def : output4114 = (.seq output4113 output4108) := by
  unfold output4114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4114_skip : Flapjack.WordAlloc.isSkip output4114 = false := by
  rw [output4114_def]
  conv => lhs; cbv
  try rfl
theorem node4114_eq : Flapjack.WordAlloc.removeDeadStructural input4114 value2058 value1 value2 = (output4114, value5, value1) := by
  rw [input4114_def, output4114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4108_eq]
  dsimp only
  rw [node4113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4114 input4107)).val
theorem input4115_def : input4115 = (.seq input4114 input4107) := by
  unfold input4115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4114 output4107)).val
theorem output4115_def : output4115 = (.seq output4114 output4107) := by
  unfold output4115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4115_skip : Flapjack.WordAlloc.isSkip output4115 = false := by
  rw [output4115_def]
  conv => lhs; cbv
  try rfl
theorem node4115_eq : Flapjack.WordAlloc.removeDeadStructural input4115 value2056 value1 value2 = (output4115, value5, value1) := by
  rw [input4115_def, output4115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4107_eq]
  dsimp only
  rw [node4114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2062 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21957 (Flapjack.WordLangAddr.addr 21961 0#64)))).val
theorem input4116_def : input4116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21957 (Flapjack.WordLangAddr.addr 21961 0#64))) := by
  unfold input4116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21957 (Flapjack.WordLangAddr.addr 21961 0#64)))).val
theorem output4116_def : output4116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21957 (Flapjack.WordLangAddr.addr 21961 0#64))) := by
  unfold output4116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4116_skip : Flapjack.WordAlloc.isSkip output4116 = false := by
  rw [output4116_def]
  conv => lhs; cbv
  try rfl
theorem node4116_eq : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value2062, value1) := by
  rw [input4116_def, output4116_def]
  try (conv => lhs; cbv)
  try rfl

def value2063 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21961, 21949)])).val
theorem input4117_def : input4117 = (Flapjack.WordLangProgHOL.move 0 [(21961, 21949)]) := by
  unfold input4117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21961, 21949)])).val
theorem output4117_def : output4117 = (Flapjack.WordLangProgHOL.move 0 [(21961, 21949)]) := by
  unfold output4117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4117_skip : Flapjack.WordAlloc.isSkip output4117 = false := by
  rw [output4117_def]
  conv => lhs; cbv
  try rfl
theorem node4117_eq : Flapjack.WordAlloc.removeDeadStructural input4117 value2062 value1 value2 = (output4117, value2063, value1) := by
  rw [input4117_def, output4117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4117 input4116)).val
theorem input4118_def : input4118 = (.seq input4117 input4116) := by
  unfold input4118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4117 output4116)).val
theorem output4118_def : output4118 = (.seq output4117 output4116) := by
  unfold output4118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4118_skip : Flapjack.WordAlloc.isSkip output4118 = false := by
  rw [output4118_def]
  conv => lhs; cbv
  try rfl
theorem node4118_eq : Flapjack.WordAlloc.removeDeadStructural input4118 value5 value1 value2 = (output4118, value2063, value1) := by
  rw [input4118_def, output4118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4116_eq]
  dsimp only
  rw [node4117_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2064 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21957 9781635320880533441#64))).val
theorem input4119_def : input4119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21957 9781635320880533441#64)) := by
  unfold input4119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21957 9781635320880533441#64))).val
theorem output4119_def : output4119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21957 9781635320880533441#64)) := by
  unfold output4119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4119_skip : Flapjack.WordAlloc.isSkip output4119 = false := by
  rw [output4119_def]
  conv => lhs; cbv
  try rfl
theorem node4119_eq : Flapjack.WordAlloc.removeDeadStructural input4119 value2063 value1 value2 = (output4119, value2064, value1) := by
  rw [input4119_def, output4119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21953 9781635320880533441#64))).val
theorem input4120_def : input4120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21953 9781635320880533441#64)) := by
  unfold input4120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4120_def : output4120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4120_skip : Flapjack.WordAlloc.isSkip output4120 = true := by
  rw [output4120_def]
  conv => lhs; cbv
  try rfl
theorem node4120_eq : Flapjack.WordAlloc.removeDeadStructural input4120 value2064 value1 value2 = (output4120, value2064, value1) := by
  rw [input4120_def, output4120_def]
  try (conv => lhs; cbv)
  try rfl

def value2065 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21949 21941 (Flapjack.WordRegImm.reg 21945))))).val
theorem input4121_def : input4121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21949 21941 (Flapjack.WordRegImm.reg 21945)))) := by
  unfold input4121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21949 21941 (Flapjack.WordRegImm.reg 21945))))).val
theorem output4121_def : output4121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21949 21941 (Flapjack.WordRegImm.reg 21945)))) := by
  unfold output4121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4121_skip : Flapjack.WordAlloc.isSkip output4121 = false := by
  rw [output4121_def]
  conv => lhs; cbv
  try rfl
theorem node4121_eq : Flapjack.WordAlloc.removeDeadStructural input4121 value2064 value1 value2 = (output4121, value2065, value1) := by
  rw [input4121_def, output4121_def]
  try (conv => lhs; cbv)
  try rfl

def value2066 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21945 5072#64))).val
theorem input4122_def : input4122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21945 5072#64)) := by
  unfold input4122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21945 5072#64))).val
theorem output4122_def : output4122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21945 5072#64)) := by
  unfold output4122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4122_skip : Flapjack.WordAlloc.isSkip output4122 = false := by
  rw [output4122_def]
  conv => lhs; cbv
  try rfl
theorem node4122_eq : Flapjack.WordAlloc.removeDeadStructural input4122 value2065 value1 value2 = (output4122, value2066, value1) := by
  rw [input4122_def, output4122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4122 input4121)).val
theorem input4123_def : input4123 = (.seq input4122 input4121) := by
  unfold input4123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4122 output4121)).val
theorem output4123_def : output4123 = (.seq output4122 output4121) := by
  unfold output4123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4123_skip : Flapjack.WordAlloc.isSkip output4123 = false := by
  rw [output4123_def]
  conv => lhs; cbv
  try rfl
theorem node4123_eq : Flapjack.WordAlloc.removeDeadStructural input4123 value2064 value1 value2 = (output4123, value2066, value1) := by
  rw [input4123_def, output4123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4121_eq]
  dsimp only
  rw [node4122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2067 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21941 (Flapjack.WordLangAddr.addr 21937 18446744073709551104#64)))).val
theorem input4124_def : input4124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21941 (Flapjack.WordLangAddr.addr 21937 18446744073709551104#64))) := by
  unfold input4124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21941 (Flapjack.WordLangAddr.addr 21937 18446744073709551104#64)))).val
theorem output4124_def : output4124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21941 (Flapjack.WordLangAddr.addr 21937 18446744073709551104#64))) := by
  unfold output4124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4124_skip : Flapjack.WordAlloc.isSkip output4124 = false := by
  rw [output4124_def]
  conv => lhs; cbv
  try rfl
theorem node4124_eq : Flapjack.WordAlloc.removeDeadStructural input4124 value2066 value1 value2 = (output4124, value2067, value1) := by
  rw [input4124_def, output4124_def]
  try (conv => lhs; cbv)
  try rfl

def value2068 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21937 21933)).val
theorem input4125_def : input4125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21937 21933) := by
  unfold input4125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21937 21933)).val
theorem output4125_def : output4125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21937 21933) := by
  unfold output4125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4125_skip : Flapjack.WordAlloc.isSkip output4125 = false := by
  rw [output4125_def]
  conv => lhs; cbv
  try rfl
theorem node4125_eq : Flapjack.WordAlloc.removeDeadStructural input4125 value2067 value1 value2 = (output4125, value2068, value1) := by
  rw [input4125_def, output4125_def]
  try (conv => lhs; cbv)
  try rfl

def value2069 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21933 21929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4126_def : input4126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21933 21929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21933 21929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4126_def : output4126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21933 21929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4126_skip : Flapjack.WordAlloc.isSkip output4126 = false := by
  rw [output4126_def]
  conv => lhs; cbv
  try rfl
theorem node4126_eq : Flapjack.WordAlloc.removeDeadStructural input4126 value2068 value1 value2 = (output4126, value2069, value1) := by
  rw [input4126_def, output4126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21929 Flapjack.WordStore.heapLength)).val
theorem input4127_def : input4127 = (Flapjack.WordLangProgHOL.get 21929 Flapjack.WordStore.heapLength) := by
  unfold input4127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21929 Flapjack.WordStore.heapLength)).val
theorem output4127_def : output4127 = (Flapjack.WordLangProgHOL.get 21929 Flapjack.WordStore.heapLength) := by
  unfold output4127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4127_skip : Flapjack.WordAlloc.isSkip output4127 = false := by
  rw [output4127_def]
  conv => lhs; cbv
  try rfl
theorem node4127_eq : Flapjack.WordAlloc.removeDeadStructural input4127 value2069 value1 value2 = (output4127, value5, value1) := by
  rw [input4127_def, output4127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4127 input4126)).val
theorem input4128_def : input4128 = (.seq input4127 input4126) := by
  unfold input4128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4127 output4126)).val
theorem output4128_def : output4128 = (.seq output4127 output4126) := by
  unfold output4128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4128_skip : Flapjack.WordAlloc.isSkip output4128 = false := by
  rw [output4128_def]
  conv => lhs; cbv
  try rfl
theorem node4128_eq : Flapjack.WordAlloc.removeDeadStructural input4128 value2068 value1 value2 = (output4128, value5, value1) := by
  rw [input4128_def, output4128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4126_eq]
  dsimp only
  rw [node4127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4128 input4125)).val
theorem input4129_def : input4129 = (.seq input4128 input4125) := by
  unfold input4129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4128 output4125)).val
theorem output4129_def : output4129 = (.seq output4128 output4125) := by
  unfold output4129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4129_skip : Flapjack.WordAlloc.isSkip output4129 = false := by
  rw [output4129_def]
  conv => lhs; cbv
  try rfl
theorem node4129_eq : Flapjack.WordAlloc.removeDeadStructural input4129 value2067 value1 value2 = (output4129, value5, value1) := by
  rw [input4129_def, output4129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4125_eq]
  dsimp only
  rw [node4128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4129 input4124)).val
theorem input4130_def : input4130 = (.seq input4129 input4124) := by
  unfold input4130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4129 output4124)).val
theorem output4130_def : output4130 = (.seq output4129 output4124) := by
  unfold output4130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4130_skip : Flapjack.WordAlloc.isSkip output4130 = false := by
  rw [output4130_def]
  conv => lhs; cbv
  try rfl
theorem node4130_eq : Flapjack.WordAlloc.removeDeadStructural input4130 value2066 value1 value2 = (output4130, value5, value1) := by
  rw [input4130_def, output4130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4124_eq]
  dsimp only
  rw [node4129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4130 input4123)).val
theorem input4131_def : input4131 = (.seq input4130 input4123) := by
  unfold input4131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4130 output4123)).val
theorem output4131_def : output4131 = (.seq output4130 output4123) := by
  unfold output4131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4131_skip : Flapjack.WordAlloc.isSkip output4131 = false := by
  rw [output4131_def]
  conv => lhs; cbv
  try rfl
theorem node4131_eq : Flapjack.WordAlloc.removeDeadStructural input4131 value2064 value1 value2 = (output4131, value5, value1) := by
  rw [input4131_def, output4131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4123_eq]
  dsimp only
  rw [node4130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2070 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21921 (Flapjack.WordLangAddr.addr 21925 0#64)))).val
theorem input4132_def : input4132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21921 (Flapjack.WordLangAddr.addr 21925 0#64))) := by
  unfold input4132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21921 (Flapjack.WordLangAddr.addr 21925 0#64)))).val
theorem output4132_def : output4132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21921 (Flapjack.WordLangAddr.addr 21925 0#64))) := by
  unfold output4132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4132_skip : Flapjack.WordAlloc.isSkip output4132 = false := by
  rw [output4132_def]
  conv => lhs; cbv
  try rfl
theorem node4132_eq : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value2070, value1) := by
  rw [input4132_def, output4132_def]
  try (conv => lhs; cbv)
  try rfl

def value2071 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21925, 21913)])).val
theorem input4133_def : input4133 = (Flapjack.WordLangProgHOL.move 0 [(21925, 21913)]) := by
  unfold input4133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21925, 21913)])).val
theorem output4133_def : output4133 = (Flapjack.WordLangProgHOL.move 0 [(21925, 21913)]) := by
  unfold output4133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4133_skip : Flapjack.WordAlloc.isSkip output4133 = false := by
  rw [output4133_def]
  conv => lhs; cbv
  try rfl
theorem node4133_eq : Flapjack.WordAlloc.removeDeadStructural input4133 value2070 value1 value2 = (output4133, value2071, value1) := by
  rw [input4133_def, output4133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4133 input4132)).val
theorem input4134_def : input4134 = (.seq input4133 input4132) := by
  unfold input4134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4133 output4132)).val
theorem output4134_def : output4134 = (.seq output4133 output4132) := by
  unfold output4134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4134_skip : Flapjack.WordAlloc.isSkip output4134 = false := by
  rw [output4134_def]
  conv => lhs; cbv
  try rfl
theorem node4134_eq : Flapjack.WordAlloc.removeDeadStructural input4134 value5 value1 value2 = (output4134, value2071, value1) := by
  rw [input4134_def, output4134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4132_eq]
  dsimp only
  rw [node4133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2072 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21921 770611415444366652#64))).val
theorem input4135_def : input4135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21921 770611415444366652#64)) := by
  unfold input4135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21921 770611415444366652#64))).val
theorem output4135_def : output4135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21921 770611415444366652#64)) := by
  unfold output4135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4135_skip : Flapjack.WordAlloc.isSkip output4135 = false := by
  rw [output4135_def]
  conv => lhs; cbv
  try rfl
theorem node4135_eq : Flapjack.WordAlloc.removeDeadStructural input4135 value2071 value1 value2 = (output4135, value2072, value1) := by
  rw [input4135_def, output4135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21917 770611415444366652#64))).val
theorem input4136_def : input4136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21917 770611415444366652#64)) := by
  unfold input4136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4136_def : output4136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4136_skip : Flapjack.WordAlloc.isSkip output4136 = true := by
  rw [output4136_def]
  conv => lhs; cbv
  try rfl
theorem node4136_eq : Flapjack.WordAlloc.removeDeadStructural input4136 value2072 value1 value2 = (output4136, value2072, value1) := by
  rw [input4136_def, output4136_def]
  try (conv => lhs; cbv)
  try rfl

def value2073 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21913 21905 (Flapjack.WordRegImm.reg 21909))))).val
theorem input4137_def : input4137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21913 21905 (Flapjack.WordRegImm.reg 21909)))) := by
  unfold input4137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21913 21905 (Flapjack.WordRegImm.reg 21909))))).val
theorem output4137_def : output4137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21913 21905 (Flapjack.WordRegImm.reg 21909)))) := by
  unfold output4137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4137_skip : Flapjack.WordAlloc.isSkip output4137 = false := by
  rw [output4137_def]
  conv => lhs; cbv
  try rfl
theorem node4137_eq : Flapjack.WordAlloc.removeDeadStructural input4137 value2072 value1 value2 = (output4137, value2073, value1) := by
  rw [input4137_def, output4137_def]
  try (conv => lhs; cbv)
  try rfl

def value2074 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21909 5064#64))).val
theorem input4138_def : input4138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21909 5064#64)) := by
  unfold input4138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21909 5064#64))).val
theorem output4138_def : output4138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21909 5064#64)) := by
  unfold output4138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4138_skip : Flapjack.WordAlloc.isSkip output4138 = false := by
  rw [output4138_def]
  conv => lhs; cbv
  try rfl
theorem node4138_eq : Flapjack.WordAlloc.removeDeadStructural input4138 value2073 value1 value2 = (output4138, value2074, value1) := by
  rw [input4138_def, output4138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4138 input4137)).val
theorem input4139_def : input4139 = (.seq input4138 input4137) := by
  unfold input4139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4138 output4137)).val
theorem output4139_def : output4139 = (.seq output4138 output4137) := by
  unfold output4139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4139_skip : Flapjack.WordAlloc.isSkip output4139 = false := by
  rw [output4139_def]
  conv => lhs; cbv
  try rfl
theorem node4139_eq : Flapjack.WordAlloc.removeDeadStructural input4139 value2072 value1 value2 = (output4139, value2074, value1) := by
  rw [input4139_def, output4139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4137_eq]
  dsimp only
  rw [node4138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2075 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21905 (Flapjack.WordLangAddr.addr 21901 18446744073709551104#64)))).val
theorem input4140_def : input4140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21905 (Flapjack.WordLangAddr.addr 21901 18446744073709551104#64))) := by
  unfold input4140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21905 (Flapjack.WordLangAddr.addr 21901 18446744073709551104#64)))).val
theorem output4140_def : output4140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21905 (Flapjack.WordLangAddr.addr 21901 18446744073709551104#64))) := by
  unfold output4140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4140_skip : Flapjack.WordAlloc.isSkip output4140 = false := by
  rw [output4140_def]
  conv => lhs; cbv
  try rfl
theorem node4140_eq : Flapjack.WordAlloc.removeDeadStructural input4140 value2074 value1 value2 = (output4140, value2075, value1) := by
  rw [input4140_def, output4140_def]
  try (conv => lhs; cbv)
  try rfl

def value2076 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21901 21897)).val
theorem input4141_def : input4141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21901 21897) := by
  unfold input4141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21901 21897)).val
theorem output4141_def : output4141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21901 21897) := by
  unfold output4141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4141_skip : Flapjack.WordAlloc.isSkip output4141 = false := by
  rw [output4141_def]
  conv => lhs; cbv
  try rfl
theorem node4141_eq : Flapjack.WordAlloc.removeDeadStructural input4141 value2075 value1 value2 = (output4141, value2076, value1) := by
  rw [input4141_def, output4141_def]
  try (conv => lhs; cbv)
  try rfl

def value2077 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21897 21893 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4142_def : input4142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21897 21893 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21897 21893 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4142_def : output4142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21897 21893 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4142_skip : Flapjack.WordAlloc.isSkip output4142 = false := by
  rw [output4142_def]
  conv => lhs; cbv
  try rfl
theorem node4142_eq : Flapjack.WordAlloc.removeDeadStructural input4142 value2076 value1 value2 = (output4142, value2077, value1) := by
  rw [input4142_def, output4142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21893 Flapjack.WordStore.heapLength)).val
theorem input4143_def : input4143 = (Flapjack.WordLangProgHOL.get 21893 Flapjack.WordStore.heapLength) := by
  unfold input4143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21893 Flapjack.WordStore.heapLength)).val
theorem output4143_def : output4143 = (Flapjack.WordLangProgHOL.get 21893 Flapjack.WordStore.heapLength) := by
  unfold output4143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4143_skip : Flapjack.WordAlloc.isSkip output4143 = false := by
  rw [output4143_def]
  conv => lhs; cbv
  try rfl
theorem node4143_eq : Flapjack.WordAlloc.removeDeadStructural input4143 value2077 value1 value2 = (output4143, value5, value1) := by
  rw [input4143_def, output4143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4143 input4142)).val
theorem input4144_def : input4144 = (.seq input4143 input4142) := by
  unfold input4144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4143 output4142)).val
theorem output4144_def : output4144 = (.seq output4143 output4142) := by
  unfold output4144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4144_skip : Flapjack.WordAlloc.isSkip output4144 = false := by
  rw [output4144_def]
  conv => lhs; cbv
  try rfl
theorem node4144_eq : Flapjack.WordAlloc.removeDeadStructural input4144 value2076 value1 value2 = (output4144, value5, value1) := by
  rw [input4144_def, output4144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4142_eq]
  dsimp only
  rw [node4143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4144 input4141)).val
theorem input4145_def : input4145 = (.seq input4144 input4141) := by
  unfold input4145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4144 output4141)).val
theorem output4145_def : output4145 = (.seq output4144 output4141) := by
  unfold output4145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4145_skip : Flapjack.WordAlloc.isSkip output4145 = false := by
  rw [output4145_def]
  conv => lhs; cbv
  try rfl
theorem node4145_eq : Flapjack.WordAlloc.removeDeadStructural input4145 value2075 value1 value2 = (output4145, value5, value1) := by
  rw [input4145_def, output4145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4141_eq]
  dsimp only
  rw [node4144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4145 input4140)).val
theorem input4146_def : input4146 = (.seq input4145 input4140) := by
  unfold input4146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4145 output4140)).val
theorem output4146_def : output4146 = (.seq output4145 output4140) := by
  unfold output4146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4146_skip : Flapjack.WordAlloc.isSkip output4146 = false := by
  rw [output4146_def]
  conv => lhs; cbv
  try rfl
theorem node4146_eq : Flapjack.WordAlloc.removeDeadStructural input4146 value2074 value1 value2 = (output4146, value5, value1) := by
  rw [input4146_def, output4146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4140_eq]
  dsimp only
  rw [node4145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4146 input4139)).val
theorem input4147_def : input4147 = (.seq input4146 input4139) := by
  unfold input4147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4146 output4139)).val
theorem output4147_def : output4147 = (.seq output4146 output4139) := by
  unfold output4147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4147_skip : Flapjack.WordAlloc.isSkip output4147 = false := by
  rw [output4147_def]
  conv => lhs; cbv
  try rfl
theorem node4147_eq : Flapjack.WordAlloc.removeDeadStructural input4147 value2072 value1 value2 = (output4147, value5, value1) := by
  rw [input4147_def, output4147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4139_eq]
  dsimp only
  rw [node4146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2078 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21885 (Flapjack.WordLangAddr.addr 21889 0#64)))).val
theorem input4148_def : input4148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21885 (Flapjack.WordLangAddr.addr 21889 0#64))) := by
  unfold input4148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21885 (Flapjack.WordLangAddr.addr 21889 0#64)))).val
theorem output4148_def : output4148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21885 (Flapjack.WordLangAddr.addr 21889 0#64))) := by
  unfold output4148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4148_skip : Flapjack.WordAlloc.isSkip output4148 = false := by
  rw [output4148_def]
  conv => lhs; cbv
  try rfl
theorem node4148_eq : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value2078, value1) := by
  rw [input4148_def, output4148_def]
  try (conv => lhs; cbv)
  try rfl

def value2079 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21889, 21877)])).val
theorem input4149_def : input4149 = (Flapjack.WordLangProgHOL.move 0 [(21889, 21877)]) := by
  unfold input4149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21889, 21877)])).val
theorem output4149_def : output4149 = (Flapjack.WordLangProgHOL.move 0 [(21889, 21877)]) := by
  unfold output4149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4149_skip : Flapjack.WordAlloc.isSkip output4149 = false := by
  rw [output4149_def]
  conv => lhs; cbv
  try rfl
theorem node4149_eq : Flapjack.WordAlloc.removeDeadStructural input4149 value2078 value1 value2 = (output4149, value2079, value1) := by
  rw [input4149_def, output4149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4149 input4148)).val
theorem input4150_def : input4150 = (.seq input4149 input4148) := by
  unfold input4150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4149 output4148)).val
theorem output4150_def : output4150 = (.seq output4149 output4148) := by
  unfold output4150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4150_skip : Flapjack.WordAlloc.isSkip output4150 = false := by
  rw [output4150_def]
  conv => lhs; cbv
  try rfl
theorem node4150_eq : Flapjack.WordAlloc.removeDeadStructural input4150 value5 value1 value2 = (output4150, value2079, value1) := by
  rw [input4150_def, output4150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4148_eq]
  dsimp only
  rw [node4149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2080 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21885 11625236627901062048#64))).val
theorem input4151_def : input4151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21885 11625236627901062048#64)) := by
  unfold input4151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21885 11625236627901062048#64))).val
theorem output4151_def : output4151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21885 11625236627901062048#64)) := by
  unfold output4151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4151_skip : Flapjack.WordAlloc.isSkip output4151 = false := by
  rw [output4151_def]
  conv => lhs; cbv
  try rfl
theorem node4151_eq : Flapjack.WordAlloc.removeDeadStructural input4151 value2079 value1 value2 = (output4151, value2080, value1) := by
  rw [input4151_def, output4151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21881 11625236627901062048#64))).val
theorem input4152_def : input4152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21881 11625236627901062048#64)) := by
  unfold input4152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4152_def : output4152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4152_skip : Flapjack.WordAlloc.isSkip output4152 = true := by
  rw [output4152_def]
  conv => lhs; cbv
  try rfl
theorem node4152_eq : Flapjack.WordAlloc.removeDeadStructural input4152 value2080 value1 value2 = (output4152, value2080, value1) := by
  rw [input4152_def, output4152_def]
  try (conv => lhs; cbv)
  try rfl

def value2081 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21877 21869 (Flapjack.WordRegImm.reg 21873))))).val
theorem input4153_def : input4153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21877 21869 (Flapjack.WordRegImm.reg 21873)))) := by
  unfold input4153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21877 21869 (Flapjack.WordRegImm.reg 21873))))).val
theorem output4153_def : output4153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21877 21869 (Flapjack.WordRegImm.reg 21873)))) := by
  unfold output4153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4153_skip : Flapjack.WordAlloc.isSkip output4153 = false := by
  rw [output4153_def]
  conv => lhs; cbv
  try rfl
theorem node4153_eq : Flapjack.WordAlloc.removeDeadStructural input4153 value2080 value1 value2 = (output4153, value2081, value1) := by
  rw [input4153_def, output4153_def]
  try (conv => lhs; cbv)
  try rfl

def value2082 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21873 5056#64))).val
theorem input4154_def : input4154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21873 5056#64)) := by
  unfold input4154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21873 5056#64))).val
theorem output4154_def : output4154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21873 5056#64)) := by
  unfold output4154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4154_skip : Flapjack.WordAlloc.isSkip output4154 = false := by
  rw [output4154_def]
  conv => lhs; cbv
  try rfl
theorem node4154_eq : Flapjack.WordAlloc.removeDeadStructural input4154 value2081 value1 value2 = (output4154, value2082, value1) := by
  rw [input4154_def, output4154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4154 input4153)).val
theorem input4155_def : input4155 = (.seq input4154 input4153) := by
  unfold input4155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4154 output4153)).val
theorem output4155_def : output4155 = (.seq output4154 output4153) := by
  unfold output4155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4155_skip : Flapjack.WordAlloc.isSkip output4155 = false := by
  rw [output4155_def]
  conv => lhs; cbv
  try rfl
theorem node4155_eq : Flapjack.WordAlloc.removeDeadStructural input4155 value2080 value1 value2 = (output4155, value2082, value1) := by
  rw [input4155_def, output4155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4153_eq]
  dsimp only
  rw [node4154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2083 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21869 (Flapjack.WordLangAddr.addr 21865 18446744073709551104#64)))).val
theorem input4156_def : input4156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21869 (Flapjack.WordLangAddr.addr 21865 18446744073709551104#64))) := by
  unfold input4156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21869 (Flapjack.WordLangAddr.addr 21865 18446744073709551104#64)))).val
theorem output4156_def : output4156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21869 (Flapjack.WordLangAddr.addr 21865 18446744073709551104#64))) := by
  unfold output4156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4156_skip : Flapjack.WordAlloc.isSkip output4156 = false := by
  rw [output4156_def]
  conv => lhs; cbv
  try rfl
theorem node4156_eq : Flapjack.WordAlloc.removeDeadStructural input4156 value2082 value1 value2 = (output4156, value2083, value1) := by
  rw [input4156_def, output4156_def]
  try (conv => lhs; cbv)
  try rfl

def value2084 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21865 21861)).val
theorem input4157_def : input4157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21865 21861) := by
  unfold input4157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21865 21861)).val
theorem output4157_def : output4157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21865 21861) := by
  unfold output4157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4157_skip : Flapjack.WordAlloc.isSkip output4157 = false := by
  rw [output4157_def]
  conv => lhs; cbv
  try rfl
theorem node4157_eq : Flapjack.WordAlloc.removeDeadStructural input4157 value2083 value1 value2 = (output4157, value2084, value1) := by
  rw [input4157_def, output4157_def]
  try (conv => lhs; cbv)
  try rfl

def value2085 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21861 21857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4158_def : input4158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21861 21857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21861 21857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4158_def : output4158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21861 21857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4158_skip : Flapjack.WordAlloc.isSkip output4158 = false := by
  rw [output4158_def]
  conv => lhs; cbv
  try rfl
theorem node4158_eq : Flapjack.WordAlloc.removeDeadStructural input4158 value2084 value1 value2 = (output4158, value2085, value1) := by
  rw [input4158_def, output4158_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21857 Flapjack.WordStore.heapLength)).val
theorem input4159_def : input4159 = (Flapjack.WordLangProgHOL.get 21857 Flapjack.WordStore.heapLength) := by
  unfold input4159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21857 Flapjack.WordStore.heapLength)).val
theorem output4159_def : output4159 = (Flapjack.WordLangProgHOL.get 21857 Flapjack.WordStore.heapLength) := by
  unfold output4159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4159_skip : Flapjack.WordAlloc.isSkip output4159 = false := by
  rw [output4159_def]
  conv => lhs; cbv
  try rfl
theorem node4159_eq : Flapjack.WordAlloc.removeDeadStructural input4159 value2085 value1 value2 = (output4159, value5, value1) := by
  rw [input4159_def, output4159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4159 input4158)).val
theorem input4160_def : input4160 = (.seq input4159 input4158) := by
  unfold input4160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4159 output4158)).val
theorem output4160_def : output4160 = (.seq output4159 output4158) := by
  unfold output4160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4160_skip : Flapjack.WordAlloc.isSkip output4160 = false := by
  rw [output4160_def]
  conv => lhs; cbv
  try rfl
theorem node4160_eq : Flapjack.WordAlloc.removeDeadStructural input4160 value2084 value1 value2 = (output4160, value5, value1) := by
  rw [input4160_def, output4160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4158_eq]
  dsimp only
  rw [node4159_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4160 input4157)).val
theorem input4161_def : input4161 = (.seq input4160 input4157) := by
  unfold input4161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4160 output4157)).val
theorem output4161_def : output4161 = (.seq output4160 output4157) := by
  unfold output4161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4161_skip : Flapjack.WordAlloc.isSkip output4161 = false := by
  rw [output4161_def]
  conv => lhs; cbv
  try rfl
theorem node4161_eq : Flapjack.WordAlloc.removeDeadStructural input4161 value2083 value1 value2 = (output4161, value5, value1) := by
  rw [input4161_def, output4161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4157_eq]
  dsimp only
  rw [node4160_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4161 input4156)).val
theorem input4162_def : input4162 = (.seq input4161 input4156) := by
  unfold input4162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4161 output4156)).val
theorem output4162_def : output4162 = (.seq output4161 output4156) := by
  unfold output4162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4162_skip : Flapjack.WordAlloc.isSkip output4162 = false := by
  rw [output4162_def]
  conv => lhs; cbv
  try rfl
theorem node4162_eq : Flapjack.WordAlloc.removeDeadStructural input4162 value2082 value1 value2 = (output4162, value5, value1) := by
  rw [input4162_def, output4162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4156_eq]
  dsimp only
  rw [node4161_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4162 input4155)).val
theorem input4163_def : input4163 = (.seq input4162 input4155) := by
  unfold input4163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4162 output4155)).val
theorem output4163_def : output4163 = (.seq output4162 output4155) := by
  unfold output4163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4163_skip : Flapjack.WordAlloc.isSkip output4163 = false := by
  rw [output4163_def]
  conv => lhs; cbv
  try rfl
theorem node4163_eq : Flapjack.WordAlloc.removeDeadStructural input4163 value2080 value1 value2 = (output4163, value5, value1) := by
  rw [input4163_def, output4163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4155_eq]
  dsimp only
  rw [node4162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2086 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21849 (Flapjack.WordLangAddr.addr 21853 0#64)))).val
theorem input4164_def : input4164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21849 (Flapjack.WordLangAddr.addr 21853 0#64))) := by
  unfold input4164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21849 (Flapjack.WordLangAddr.addr 21853 0#64)))).val
theorem output4164_def : output4164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21849 (Flapjack.WordLangAddr.addr 21853 0#64))) := by
  unfold output4164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4164_skip : Flapjack.WordAlloc.isSkip output4164 = false := by
  rw [output4164_def]
  conv => lhs; cbv
  try rfl
theorem node4164_eq : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value2086, value1) := by
  rw [input4164_def, output4164_def]
  try (conv => lhs; cbv)
  try rfl

def value2087 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21853, 21841)])).val
theorem input4165_def : input4165 = (Flapjack.WordLangProgHOL.move 0 [(21853, 21841)]) := by
  unfold input4165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21853, 21841)])).val
theorem output4165_def : output4165 = (Flapjack.WordLangProgHOL.move 0 [(21853, 21841)]) := by
  unfold output4165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4165_skip : Flapjack.WordAlloc.isSkip output4165 = false := by
  rw [output4165_def]
  conv => lhs; cbv
  try rfl
theorem node4165_eq : Flapjack.WordAlloc.removeDeadStructural input4165 value2086 value1 value2 = (output4165, value2087, value1) := by
  rw [input4165_def, output4165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4165 input4164)).val
theorem input4166_def : input4166 = (.seq input4165 input4164) := by
  unfold input4166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4165 output4164)).val
theorem output4166_def : output4166 = (.seq output4165 output4164) := by
  unfold output4166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4166_skip : Flapjack.WordAlloc.isSkip output4166 = false := by
  rw [output4166_def]
  conv => lhs; cbv
  try rfl
theorem node4166_eq : Flapjack.WordAlloc.removeDeadStructural input4166 value5 value1 value2 = (output4166, value2087, value1) := by
  rw [input4166_def, output4166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4164_eq]
  dsimp only
  rw [node4165_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2088 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21849 4971224325420137563#64))).val
theorem input4167_def : input4167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21849 4971224325420137563#64)) := by
  unfold input4167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21849 4971224325420137563#64))).val
theorem output4167_def : output4167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21849 4971224325420137563#64)) := by
  unfold output4167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4167_skip : Flapjack.WordAlloc.isSkip output4167 = false := by
  rw [output4167_def]
  conv => lhs; cbv
  try rfl
theorem node4167_eq : Flapjack.WordAlloc.removeDeadStructural input4167 value2087 value1 value2 = (output4167, value2088, value1) := by
  rw [input4167_def, output4167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21845 4971224325420137563#64))).val
theorem input4168_def : input4168 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21845 4971224325420137563#64)) := by
  unfold input4168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4168_def : output4168 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4168_skip : Flapjack.WordAlloc.isSkip output4168 = true := by
  rw [output4168_def]
  conv => lhs; cbv
  try rfl
theorem node4168_eq : Flapjack.WordAlloc.removeDeadStructural input4168 value2088 value1 value2 = (output4168, value2088, value1) := by
  rw [input4168_def, output4168_def]
  try (conv => lhs; cbv)
  try rfl

def value2089 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21841 21833 (Flapjack.WordRegImm.reg 21837))))).val
theorem input4169_def : input4169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21841 21833 (Flapjack.WordRegImm.reg 21837)))) := by
  unfold input4169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21841 21833 (Flapjack.WordRegImm.reg 21837))))).val
theorem output4169_def : output4169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21841 21833 (Flapjack.WordRegImm.reg 21837)))) := by
  unfold output4169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4169_skip : Flapjack.WordAlloc.isSkip output4169 = false := by
  rw [output4169_def]
  conv => lhs; cbv
  try rfl
theorem node4169_eq : Flapjack.WordAlloc.removeDeadStructural input4169 value2088 value1 value2 = (output4169, value2089, value1) := by
  rw [input4169_def, output4169_def]
  try (conv => lhs; cbv)
  try rfl

def value2090 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21837 5048#64))).val
theorem input4170_def : input4170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21837 5048#64)) := by
  unfold input4170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21837 5048#64))).val
theorem output4170_def : output4170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21837 5048#64)) := by
  unfold output4170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4170_skip : Flapjack.WordAlloc.isSkip output4170 = false := by
  rw [output4170_def]
  conv => lhs; cbv
  try rfl
theorem node4170_eq : Flapjack.WordAlloc.removeDeadStructural input4170 value2089 value1 value2 = (output4170, value2090, value1) := by
  rw [input4170_def, output4170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4170 input4169)).val
theorem input4171_def : input4171 = (.seq input4170 input4169) := by
  unfold input4171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4170 output4169)).val
theorem output4171_def : output4171 = (.seq output4170 output4169) := by
  unfold output4171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4171_skip : Flapjack.WordAlloc.isSkip output4171 = false := by
  rw [output4171_def]
  conv => lhs; cbv
  try rfl
theorem node4171_eq : Flapjack.WordAlloc.removeDeadStructural input4171 value2088 value1 value2 = (output4171, value2090, value1) := by
  rw [input4171_def, output4171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4169_eq]
  dsimp only
  rw [node4170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2091 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21833 (Flapjack.WordLangAddr.addr 21829 18446744073709551104#64)))).val
theorem input4172_def : input4172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21833 (Flapjack.WordLangAddr.addr 21829 18446744073709551104#64))) := by
  unfold input4172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21833 (Flapjack.WordLangAddr.addr 21829 18446744073709551104#64)))).val
theorem output4172_def : output4172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21833 (Flapjack.WordLangAddr.addr 21829 18446744073709551104#64))) := by
  unfold output4172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4172_skip : Flapjack.WordAlloc.isSkip output4172 = false := by
  rw [output4172_def]
  conv => lhs; cbv
  try rfl
theorem node4172_eq : Flapjack.WordAlloc.removeDeadStructural input4172 value2090 value1 value2 = (output4172, value2091, value1) := by
  rw [input4172_def, output4172_def]
  try (conv => lhs; cbv)
  try rfl

def value2092 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21829 21825)).val
theorem input4173_def : input4173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21829 21825) := by
  unfold input4173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21829 21825)).val
theorem output4173_def : output4173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21829 21825) := by
  unfold output4173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4173_skip : Flapjack.WordAlloc.isSkip output4173 = false := by
  rw [output4173_def]
  conv => lhs; cbv
  try rfl
theorem node4173_eq : Flapjack.WordAlloc.removeDeadStructural input4173 value2091 value1 value2 = (output4173, value2092, value1) := by
  rw [input4173_def, output4173_def]
  try (conv => lhs; cbv)
  try rfl

def value2093 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21825 21821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4174_def : input4174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21825 21821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21825 21821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4174_def : output4174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21825 21821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4174_skip : Flapjack.WordAlloc.isSkip output4174 = false := by
  rw [output4174_def]
  conv => lhs; cbv
  try rfl
theorem node4174_eq : Flapjack.WordAlloc.removeDeadStructural input4174 value2092 value1 value2 = (output4174, value2093, value1) := by
  rw [input4174_def, output4174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21821 Flapjack.WordStore.heapLength)).val
theorem input4175_def : input4175 = (Flapjack.WordLangProgHOL.get 21821 Flapjack.WordStore.heapLength) := by
  unfold input4175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21821 Flapjack.WordStore.heapLength)).val
theorem output4175_def : output4175 = (Flapjack.WordLangProgHOL.get 21821 Flapjack.WordStore.heapLength) := by
  unfold output4175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4175_skip : Flapjack.WordAlloc.isSkip output4175 = false := by
  rw [output4175_def]
  conv => lhs; cbv
  try rfl
theorem node4175_eq : Flapjack.WordAlloc.removeDeadStructural input4175 value2093 value1 value2 = (output4175, value5, value1) := by
  rw [input4175_def, output4175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4175 input4174)).val
theorem input4176_def : input4176 = (.seq input4175 input4174) := by
  unfold input4176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4175 output4174)).val
theorem output4176_def : output4176 = (.seq output4175 output4174) := by
  unfold output4176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4176_skip : Flapjack.WordAlloc.isSkip output4176 = false := by
  rw [output4176_def]
  conv => lhs; cbv
  try rfl
theorem node4176_eq : Flapjack.WordAlloc.removeDeadStructural input4176 value2092 value1 value2 = (output4176, value5, value1) := by
  rw [input4176_def, output4176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4174_eq]
  dsimp only
  rw [node4175_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4176 input4173)).val
theorem input4177_def : input4177 = (.seq input4176 input4173) := by
  unfold input4177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4176 output4173)).val
theorem output4177_def : output4177 = (.seq output4176 output4173) := by
  unfold output4177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4177_skip : Flapjack.WordAlloc.isSkip output4177 = false := by
  rw [output4177_def]
  conv => lhs; cbv
  try rfl
theorem node4177_eq : Flapjack.WordAlloc.removeDeadStructural input4177 value2091 value1 value2 = (output4177, value5, value1) := by
  rw [input4177_def, output4177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4173_eq]
  dsimp only
  rw [node4176_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4177 input4172)).val
theorem input4178_def : input4178 = (.seq input4177 input4172) := by
  unfold input4178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4177 output4172)).val
theorem output4178_def : output4178 = (.seq output4177 output4172) := by
  unfold output4178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4178_skip : Flapjack.WordAlloc.isSkip output4178 = false := by
  rw [output4178_def]
  conv => lhs; cbv
  try rfl
theorem node4178_eq : Flapjack.WordAlloc.removeDeadStructural input4178 value2090 value1 value2 = (output4178, value5, value1) := by
  rw [input4178_def, output4178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4172_eq]
  dsimp only
  rw [node4177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4178 input4171)).val
theorem input4179_def : input4179 = (.seq input4178 input4171) := by
  unfold input4179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4178 output4171)).val
theorem output4179_def : output4179 = (.seq output4178 output4171) := by
  unfold output4179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4179_skip : Flapjack.WordAlloc.isSkip output4179 = false := by
  rw [output4179_def]
  conv => lhs; cbv
  try rfl
theorem node4179_eq : Flapjack.WordAlloc.removeDeadStructural input4179 value2088 value1 value2 = (output4179, value5, value1) := by
  rw [input4179_def, output4179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4171_eq]
  dsimp only
  rw [node4178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2094 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21813 (Flapjack.WordLangAddr.addr 21817 0#64)))).val
theorem input4180_def : input4180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21813 (Flapjack.WordLangAddr.addr 21817 0#64))) := by
  unfold input4180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21813 (Flapjack.WordLangAddr.addr 21817 0#64)))).val
theorem output4180_def : output4180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21813 (Flapjack.WordLangAddr.addr 21817 0#64))) := by
  unfold output4180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4180_skip : Flapjack.WordAlloc.isSkip output4180 = false := by
  rw [output4180_def]
  conv => lhs; cbv
  try rfl
theorem node4180_eq : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value2094, value1) := by
  rw [input4180_def, output4180_def]
  try (conv => lhs; cbv)
  try rfl

def value2095 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21817, 21805)])).val
theorem input4181_def : input4181 = (Flapjack.WordLangProgHOL.move 0 [(21817, 21805)]) := by
  unfold input4181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21817, 21805)])).val
theorem output4181_def : output4181 = (Flapjack.WordLangProgHOL.move 0 [(21817, 21805)]) := by
  unfold output4181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4181_skip : Flapjack.WordAlloc.isSkip output4181 = false := by
  rw [output4181_def]
  conv => lhs; cbv
  try rfl
theorem node4181_eq : Flapjack.WordAlloc.removeDeadStructural input4181 value2094 value1 value2 = (output4181, value2095, value1) := by
  rw [input4181_def, output4181_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4181 input4180)).val
theorem input4182_def : input4182 = (.seq input4181 input4180) := by
  unfold input4182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4181 output4180)).val
theorem output4182_def : output4182 = (.seq output4181 output4180) := by
  unfold output4182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4182_skip : Flapjack.WordAlloc.isSkip output4182 = false := by
  rw [output4182_def]
  conv => lhs; cbv
  try rfl
theorem node4182_eq : Flapjack.WordAlloc.removeDeadStructural input4182 value5 value1 value2 = (output4182, value2095, value1) := by
  rw [input4182_def, output4182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4180_eq]
  dsimp only
  rw [node4181_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2096 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21813 12492638376110471938#64))).val
theorem input4183_def : input4183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21813 12492638376110471938#64)) := by
  unfold input4183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21813 12492638376110471938#64))).val
theorem output4183_def : output4183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21813 12492638376110471938#64)) := by
  unfold output4183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4183_skip : Flapjack.WordAlloc.isSkip output4183 = false := by
  rw [output4183_def]
  conv => lhs; cbv
  try rfl
theorem node4183_eq : Flapjack.WordAlloc.removeDeadStructural input4183 value2095 value1 value2 = (output4183, value2096, value1) := by
  rw [input4183_def, output4183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21809 12492638376110471938#64))).val
theorem input4184_def : input4184 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21809 12492638376110471938#64)) := by
  unfold input4184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4184_def : output4184 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4184_skip : Flapjack.WordAlloc.isSkip output4184 = true := by
  rw [output4184_def]
  conv => lhs; cbv
  try rfl
theorem node4184_eq : Flapjack.WordAlloc.removeDeadStructural input4184 value2096 value1 value2 = (output4184, value2096, value1) := by
  rw [input4184_def, output4184_def]
  try (conv => lhs; cbv)
  try rfl

def value2097 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21805 21797 (Flapjack.WordRegImm.reg 21801))))).val
theorem input4185_def : input4185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21805 21797 (Flapjack.WordRegImm.reg 21801)))) := by
  unfold input4185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21805 21797 (Flapjack.WordRegImm.reg 21801))))).val
theorem output4185_def : output4185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21805 21797 (Flapjack.WordRegImm.reg 21801)))) := by
  unfold output4185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4185_skip : Flapjack.WordAlloc.isSkip output4185 = false := by
  rw [output4185_def]
  conv => lhs; cbv
  try rfl
theorem node4185_eq : Flapjack.WordAlloc.removeDeadStructural input4185 value2096 value1 value2 = (output4185, value2097, value1) := by
  rw [input4185_def, output4185_def]
  try (conv => lhs; cbv)
  try rfl

def value2098 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21801 5040#64))).val
theorem input4186_def : input4186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21801 5040#64)) := by
  unfold input4186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21801 5040#64))).val
theorem output4186_def : output4186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21801 5040#64)) := by
  unfold output4186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4186_skip : Flapjack.WordAlloc.isSkip output4186 = false := by
  rw [output4186_def]
  conv => lhs; cbv
  try rfl
theorem node4186_eq : Flapjack.WordAlloc.removeDeadStructural input4186 value2097 value1 value2 = (output4186, value2098, value1) := by
  rw [input4186_def, output4186_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4186 input4185)).val
theorem input4187_def : input4187 = (.seq input4186 input4185) := by
  unfold input4187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4186 output4185)).val
theorem output4187_def : output4187 = (.seq output4186 output4185) := by
  unfold output4187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4187_skip : Flapjack.WordAlloc.isSkip output4187 = false := by
  rw [output4187_def]
  conv => lhs; cbv
  try rfl
theorem node4187_eq : Flapjack.WordAlloc.removeDeadStructural input4187 value2096 value1 value2 = (output4187, value2098, value1) := by
  rw [input4187_def, output4187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4185_eq]
  dsimp only
  rw [node4186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2099 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21797 (Flapjack.WordLangAddr.addr 21793 18446744073709551104#64)))).val
theorem input4188_def : input4188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21797 (Flapjack.WordLangAddr.addr 21793 18446744073709551104#64))) := by
  unfold input4188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21797 (Flapjack.WordLangAddr.addr 21793 18446744073709551104#64)))).val
theorem output4188_def : output4188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21797 (Flapjack.WordLangAddr.addr 21793 18446744073709551104#64))) := by
  unfold output4188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4188_skip : Flapjack.WordAlloc.isSkip output4188 = false := by
  rw [output4188_def]
  conv => lhs; cbv
  try rfl
theorem node4188_eq : Flapjack.WordAlloc.removeDeadStructural input4188 value2098 value1 value2 = (output4188, value2099, value1) := by
  rw [input4188_def, output4188_def]
  try (conv => lhs; cbv)
  try rfl

def value2100 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21793 21789)).val
theorem input4189_def : input4189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21793 21789) := by
  unfold input4189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21793 21789)).val
theorem output4189_def : output4189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21793 21789) := by
  unfold output4189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4189_skip : Flapjack.WordAlloc.isSkip output4189 = false := by
  rw [output4189_def]
  conv => lhs; cbv
  try rfl
theorem node4189_eq : Flapjack.WordAlloc.removeDeadStructural input4189 value2099 value1 value2 = (output4189, value2100, value1) := by
  rw [input4189_def, output4189_def]
  try (conv => lhs; cbv)
  try rfl

def value2101 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21789 21785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4190_def : input4190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21789 21785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21789 21785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4190_def : output4190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21789 21785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4190_skip : Flapjack.WordAlloc.isSkip output4190 = false := by
  rw [output4190_def]
  conv => lhs; cbv
  try rfl
theorem node4190_eq : Flapjack.WordAlloc.removeDeadStructural input4190 value2100 value1 value2 = (output4190, value2101, value1) := by
  rw [input4190_def, output4190_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21785 Flapjack.WordStore.heapLength)).val
theorem input4191_def : input4191 = (Flapjack.WordLangProgHOL.get 21785 Flapjack.WordStore.heapLength) := by
  unfold input4191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21785 Flapjack.WordStore.heapLength)).val
theorem output4191_def : output4191 = (Flapjack.WordLangProgHOL.get 21785 Flapjack.WordStore.heapLength) := by
  unfold output4191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4191_skip : Flapjack.WordAlloc.isSkip output4191 = false := by
  rw [output4191_def]
  conv => lhs; cbv
  try rfl
theorem node4191_eq : Flapjack.WordAlloc.removeDeadStructural input4191 value2101 value1 value2 = (output4191, value5, value1) := by
  rw [input4191_def, output4191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4191 input4190)).val
theorem input4192_def : input4192 = (.seq input4191 input4190) := by
  unfold input4192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4191 output4190)).val
theorem output4192_def : output4192 = (.seq output4191 output4190) := by
  unfold output4192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4192_skip : Flapjack.WordAlloc.isSkip output4192 = false := by
  rw [output4192_def]
  conv => lhs; cbv
  try rfl
theorem node4192_eq : Flapjack.WordAlloc.removeDeadStructural input4192 value2100 value1 value2 = (output4192, value5, value1) := by
  rw [input4192_def, output4192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4190_eq]
  dsimp only
  rw [node4191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4192 input4189)).val
theorem input4193_def : input4193 = (.seq input4192 input4189) := by
  unfold input4193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4192 output4189)).val
theorem output4193_def : output4193 = (.seq output4192 output4189) := by
  unfold output4193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4193_skip : Flapjack.WordAlloc.isSkip output4193 = false := by
  rw [output4193_def]
  conv => lhs; cbv
  try rfl
theorem node4193_eq : Flapjack.WordAlloc.removeDeadStructural input4193 value2099 value1 value2 = (output4193, value5, value1) := by
  rw [input4193_def, output4193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4189_eq]
  dsimp only
  rw [node4192_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4193 input4188)).val
theorem input4194_def : input4194 = (.seq input4193 input4188) := by
  unfold input4194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4193 output4188)).val
theorem output4194_def : output4194 = (.seq output4193 output4188) := by
  unfold output4194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4194_skip : Flapjack.WordAlloc.isSkip output4194 = false := by
  rw [output4194_def]
  conv => lhs; cbv
  try rfl
theorem node4194_eq : Flapjack.WordAlloc.removeDeadStructural input4194 value2098 value1 value2 = (output4194, value5, value1) := by
  rw [input4194_def, output4194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4188_eq]
  dsimp only
  rw [node4193_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4194 input4187)).val
theorem input4195_def : input4195 = (.seq input4194 input4187) := by
  unfold input4195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4194 output4187)).val
theorem output4195_def : output4195 = (.seq output4194 output4187) := by
  unfold output4195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4195_skip : Flapjack.WordAlloc.isSkip output4195 = false := by
  rw [output4195_def]
  conv => lhs; cbv
  try rfl
theorem node4195_eq : Flapjack.WordAlloc.removeDeadStructural input4195 value2096 value1 value2 = (output4195, value5, value1) := by
  rw [input4195_def, output4195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4187_eq]
  dsimp only
  rw [node4194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2102 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21777 (Flapjack.WordLangAddr.addr 21781 0#64)))).val
theorem input4196_def : input4196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21777 (Flapjack.WordLangAddr.addr 21781 0#64))) := by
  unfold input4196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21777 (Flapjack.WordLangAddr.addr 21781 0#64)))).val
theorem output4196_def : output4196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21777 (Flapjack.WordLangAddr.addr 21781 0#64))) := by
  unfold output4196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4196_skip : Flapjack.WordAlloc.isSkip output4196 = false := by
  rw [output4196_def]
  conv => lhs; cbv
  try rfl
theorem node4196_eq : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value2102, value1) := by
  rw [input4196_def, output4196_def]
  try (conv => lhs; cbv)
  try rfl

def value2103 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21781, 21769)])).val
theorem input4197_def : input4197 = (Flapjack.WordLangProgHOL.move 0 [(21781, 21769)]) := by
  unfold input4197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21781, 21769)])).val
theorem output4197_def : output4197 = (Flapjack.WordLangProgHOL.move 0 [(21781, 21769)]) := by
  unfold output4197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4197_skip : Flapjack.WordAlloc.isSkip output4197 = false := by
  rw [output4197_def]
  conv => lhs; cbv
  try rfl
theorem node4197_eq : Flapjack.WordAlloc.removeDeadStructural input4197 value2102 value1 value2 = (output4197, value2103, value1) := by
  rw [input4197_def, output4197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4197 input4196)).val
theorem input4198_def : input4198 = (.seq input4197 input4196) := by
  unfold input4198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4197 output4196)).val
theorem output4198_def : output4198 = (.seq output4197 output4196) := by
  unfold output4198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4198_skip : Flapjack.WordAlloc.isSkip output4198 = false := by
  rw [output4198_def]
  conv => lhs; cbv
  try rfl
theorem node4198_eq : Flapjack.WordAlloc.removeDeadStructural input4198 value5 value1 value2 = (output4198, value2103, value1) := by
  rw [input4198_def, output4198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4196_eq]
  dsimp only
  rw [node4197_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2104 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21777 5174364179546707956#64))).val
theorem input4199_def : input4199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21777 5174364179546707956#64)) := by
  unfold input4199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21777 5174364179546707956#64))).val
theorem output4199_def : output4199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21777 5174364179546707956#64)) := by
  unfold output4199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4199_skip : Flapjack.WordAlloc.isSkip output4199 = false := by
  rw [output4199_def]
  conv => lhs; cbv
  try rfl
theorem node4199_eq : Flapjack.WordAlloc.removeDeadStructural input4199 value2103 value1 value2 = (output4199, value2104, value1) := by
  rw [input4199_def, output4199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21773 5174364179546707956#64))).val
theorem input4200_def : input4200 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21773 5174364179546707956#64)) := by
  unfold input4200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4200_def : output4200 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4200_skip : Flapjack.WordAlloc.isSkip output4200 = true := by
  rw [output4200_def]
  conv => lhs; cbv
  try rfl
theorem node4200_eq : Flapjack.WordAlloc.removeDeadStructural input4200 value2104 value1 value2 = (output4200, value2104, value1) := by
  rw [input4200_def, output4200_def]
  try (conv => lhs; cbv)
  try rfl

def value2105 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21769 21761 (Flapjack.WordRegImm.reg 21765))))).val
theorem input4201_def : input4201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21769 21761 (Flapjack.WordRegImm.reg 21765)))) := by
  unfold input4201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21769 21761 (Flapjack.WordRegImm.reg 21765))))).val
theorem output4201_def : output4201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21769 21761 (Flapjack.WordRegImm.reg 21765)))) := by
  unfold output4201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4201_skip : Flapjack.WordAlloc.isSkip output4201 = false := by
  rw [output4201_def]
  conv => lhs; cbv
  try rfl
theorem node4201_eq : Flapjack.WordAlloc.removeDeadStructural input4201 value2104 value1 value2 = (output4201, value2105, value1) := by
  rw [input4201_def, output4201_def]
  try (conv => lhs; cbv)
  try rfl

def value2106 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21765 5032#64))).val
theorem input4202_def : input4202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21765 5032#64)) := by
  unfold input4202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21765 5032#64))).val
theorem output4202_def : output4202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21765 5032#64)) := by
  unfold output4202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4202_skip : Flapjack.WordAlloc.isSkip output4202 = false := by
  rw [output4202_def]
  conv => lhs; cbv
  try rfl
theorem node4202_eq : Flapjack.WordAlloc.removeDeadStructural input4202 value2105 value1 value2 = (output4202, value2106, value1) := by
  rw [input4202_def, output4202_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4202 input4201)).val
theorem input4203_def : input4203 = (.seq input4202 input4201) := by
  unfold input4203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4202 output4201)).val
theorem output4203_def : output4203 = (.seq output4202 output4201) := by
  unfold output4203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4203_skip : Flapjack.WordAlloc.isSkip output4203 = false := by
  rw [output4203_def]
  conv => lhs; cbv
  try rfl
theorem node4203_eq : Flapjack.WordAlloc.removeDeadStructural input4203 value2104 value1 value2 = (output4203, value2106, value1) := by
  rw [input4203_def, output4203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4201_eq]
  dsimp only
  rw [node4202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2107 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21761 (Flapjack.WordLangAddr.addr 21757 18446744073709551104#64)))).val
theorem input4204_def : input4204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21761 (Flapjack.WordLangAddr.addr 21757 18446744073709551104#64))) := by
  unfold input4204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21761 (Flapjack.WordLangAddr.addr 21757 18446744073709551104#64)))).val
theorem output4204_def : output4204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21761 (Flapjack.WordLangAddr.addr 21757 18446744073709551104#64))) := by
  unfold output4204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4204_skip : Flapjack.WordAlloc.isSkip output4204 = false := by
  rw [output4204_def]
  conv => lhs; cbv
  try rfl
theorem node4204_eq : Flapjack.WordAlloc.removeDeadStructural input4204 value2106 value1 value2 = (output4204, value2107, value1) := by
  rw [input4204_def, output4204_def]
  try (conv => lhs; cbv)
  try rfl

def value2108 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21757 21753)).val
theorem input4205_def : input4205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21757 21753) := by
  unfold input4205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21757 21753)).val
theorem output4205_def : output4205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21757 21753) := by
  unfold output4205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4205_skip : Flapjack.WordAlloc.isSkip output4205 = false := by
  rw [output4205_def]
  conv => lhs; cbv
  try rfl
theorem node4205_eq : Flapjack.WordAlloc.removeDeadStructural input4205 value2107 value1 value2 = (output4205, value2108, value1) := by
  rw [input4205_def, output4205_def]
  try (conv => lhs; cbv)
  try rfl

def value2109 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21753 21749 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4206_def : input4206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21753 21749 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21753 21749 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4206_def : output4206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21753 21749 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4206_skip : Flapjack.WordAlloc.isSkip output4206 = false := by
  rw [output4206_def]
  conv => lhs; cbv
  try rfl
theorem node4206_eq : Flapjack.WordAlloc.removeDeadStructural input4206 value2108 value1 value2 = (output4206, value2109, value1) := by
  rw [input4206_def, output4206_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21749 Flapjack.WordStore.heapLength)).val
theorem input4207_def : input4207 = (Flapjack.WordLangProgHOL.get 21749 Flapjack.WordStore.heapLength) := by
  unfold input4207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21749 Flapjack.WordStore.heapLength)).val
theorem output4207_def : output4207 = (Flapjack.WordLangProgHOL.get 21749 Flapjack.WordStore.heapLength) := by
  unfold output4207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4207_skip : Flapjack.WordAlloc.isSkip output4207 = false := by
  rw [output4207_def]
  conv => lhs; cbv
  try rfl
theorem node4207_eq : Flapjack.WordAlloc.removeDeadStructural input4207 value2109 value1 value2 = (output4207, value5, value1) := by
  rw [input4207_def, output4207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4207 input4206)).val
theorem input4208_def : input4208 = (.seq input4207 input4206) := by
  unfold input4208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4207 output4206)).val
theorem output4208_def : output4208 = (.seq output4207 output4206) := by
  unfold output4208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4208_skip : Flapjack.WordAlloc.isSkip output4208 = false := by
  rw [output4208_def]
  conv => lhs; cbv
  try rfl
theorem node4208_eq : Flapjack.WordAlloc.removeDeadStructural input4208 value2108 value1 value2 = (output4208, value5, value1) := by
  rw [input4208_def, output4208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4206_eq]
  dsimp only
  rw [node4207_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4208 input4205)).val
theorem input4209_def : input4209 = (.seq input4208 input4205) := by
  unfold input4209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4208 output4205)).val
theorem output4209_def : output4209 = (.seq output4208 output4205) := by
  unfold output4209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4209_skip : Flapjack.WordAlloc.isSkip output4209 = false := by
  rw [output4209_def]
  conv => lhs; cbv
  try rfl
theorem node4209_eq : Flapjack.WordAlloc.removeDeadStructural input4209 value2107 value1 value2 = (output4209, value5, value1) := by
  rw [input4209_def, output4209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4205_eq]
  dsimp only
  rw [node4208_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4209 input4204)).val
theorem input4210_def : input4210 = (.seq input4209 input4204) := by
  unfold input4210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4209 output4204)).val
theorem output4210_def : output4210 = (.seq output4209 output4204) := by
  unfold output4210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4210_skip : Flapjack.WordAlloc.isSkip output4210 = false := by
  rw [output4210_def]
  conv => lhs; cbv
  try rfl
theorem node4210_eq : Flapjack.WordAlloc.removeDeadStructural input4210 value2106 value1 value2 = (output4210, value5, value1) := by
  rw [input4210_def, output4210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4204_eq]
  dsimp only
  rw [node4209_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4210 input4203)).val
theorem input4211_def : input4211 = (.seq input4210 input4203) := by
  unfold input4211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4210 output4203)).val
theorem output4211_def : output4211 = (.seq output4210 output4203) := by
  unfold output4211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4211_skip : Flapjack.WordAlloc.isSkip output4211 = false := by
  rw [output4211_def]
  conv => lhs; cbv
  try rfl
theorem node4211_eq : Flapjack.WordAlloc.removeDeadStructural input4211 value2104 value1 value2 = (output4211, value5, value1) := by
  rw [input4211_def, output4211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4203_eq]
  dsimp only
  rw [node4210_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2110 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21741 (Flapjack.WordLangAddr.addr 21745 0#64)))).val
theorem input4212_def : input4212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21741 (Flapjack.WordLangAddr.addr 21745 0#64))) := by
  unfold input4212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21741 (Flapjack.WordLangAddr.addr 21745 0#64)))).val
theorem output4212_def : output4212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21741 (Flapjack.WordLangAddr.addr 21745 0#64))) := by
  unfold output4212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4212_skip : Flapjack.WordAlloc.isSkip output4212 = false := by
  rw [output4212_def]
  conv => lhs; cbv
  try rfl
theorem node4212_eq : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value2110, value1) := by
  rw [input4212_def, output4212_def]
  try (conv => lhs; cbv)
  try rfl

def value2111 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21745, 21733)])).val
theorem input4213_def : input4213 = (Flapjack.WordLangProgHOL.move 0 [(21745, 21733)]) := by
  unfold input4213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21745, 21733)])).val
theorem output4213_def : output4213 = (Flapjack.WordLangProgHOL.move 0 [(21745, 21733)]) := by
  unfold output4213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4213_skip : Flapjack.WordAlloc.isSkip output4213 = false := by
  rw [output4213_def]
  conv => lhs; cbv
  try rfl
theorem node4213_eq : Flapjack.WordAlloc.removeDeadStructural input4213 value2110 value1 value2 = (output4213, value2111, value1) := by
  rw [input4213_def, output4213_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4213 input4212)).val
theorem input4214_def : input4214 = (.seq input4213 input4212) := by
  unfold input4214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4213 output4212)).val
theorem output4214_def : output4214 = (.seq output4213 output4212) := by
  unfold output4214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4214_skip : Flapjack.WordAlloc.isSkip output4214 = false := by
  rw [output4214_def]
  conv => lhs; cbv
  try rfl
theorem node4214_eq : Flapjack.WordAlloc.removeDeadStructural input4214 value5 value1 value2 = (output4214, value2111, value1) := by
  rw [input4214_def, output4214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4212_eq]
  dsimp only
  rw [node4213_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2112 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21741 1070667399020015127#64))).val
theorem input4215_def : input4215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21741 1070667399020015127#64)) := by
  unfold input4215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21741 1070667399020015127#64))).val
theorem output4215_def : output4215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21741 1070667399020015127#64)) := by
  unfold output4215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4215_skip : Flapjack.WordAlloc.isSkip output4215 = false := by
  rw [output4215_def]
  conv => lhs; cbv
  try rfl
theorem node4215_eq : Flapjack.WordAlloc.removeDeadStructural input4215 value2111 value1 value2 = (output4215, value2112, value1) := by
  rw [input4215_def, output4215_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21737 1070667399020015127#64))).val
theorem input4216_def : input4216 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21737 1070667399020015127#64)) := by
  unfold input4216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4216_def : output4216 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4216_skip : Flapjack.WordAlloc.isSkip output4216 = true := by
  rw [output4216_def]
  conv => lhs; cbv
  try rfl
theorem node4216_eq : Flapjack.WordAlloc.removeDeadStructural input4216 value2112 value1 value2 = (output4216, value2112, value1) := by
  rw [input4216_def, output4216_def]
  try (conv => lhs; cbv)
  try rfl

def value2113 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21733 21725 (Flapjack.WordRegImm.reg 21729))))).val
theorem input4217_def : input4217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21733 21725 (Flapjack.WordRegImm.reg 21729)))) := by
  unfold input4217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21733 21725 (Flapjack.WordRegImm.reg 21729))))).val
theorem output4217_def : output4217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21733 21725 (Flapjack.WordRegImm.reg 21729)))) := by
  unfold output4217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4217_skip : Flapjack.WordAlloc.isSkip output4217 = false := by
  rw [output4217_def]
  conv => lhs; cbv
  try rfl
theorem node4217_eq : Flapjack.WordAlloc.removeDeadStructural input4217 value2112 value1 value2 = (output4217, value2113, value1) := by
  rw [input4217_def, output4217_def]
  try (conv => lhs; cbv)
  try rfl

def value2114 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21729 5024#64))).val
theorem input4218_def : input4218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21729 5024#64)) := by
  unfold input4218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21729 5024#64))).val
theorem output4218_def : output4218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21729 5024#64)) := by
  unfold output4218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4218_skip : Flapjack.WordAlloc.isSkip output4218 = false := by
  rw [output4218_def]
  conv => lhs; cbv
  try rfl
theorem node4218_eq : Flapjack.WordAlloc.removeDeadStructural input4218 value2113 value1 value2 = (output4218, value2114, value1) := by
  rw [input4218_def, output4218_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4218 input4217)).val
theorem input4219_def : input4219 = (.seq input4218 input4217) := by
  unfold input4219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4218 output4217)).val
theorem output4219_def : output4219 = (.seq output4218 output4217) := by
  unfold output4219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4219_skip : Flapjack.WordAlloc.isSkip output4219 = false := by
  rw [output4219_def]
  conv => lhs; cbv
  try rfl
theorem node4219_eq : Flapjack.WordAlloc.removeDeadStructural input4219 value2112 value1 value2 = (output4219, value2114, value1) := by
  rw [input4219_def, output4219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4217_eq]
  dsimp only
  rw [node4218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2115 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21725 (Flapjack.WordLangAddr.addr 21721 18446744073709551104#64)))).val
theorem input4220_def : input4220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21725 (Flapjack.WordLangAddr.addr 21721 18446744073709551104#64))) := by
  unfold input4220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21725 (Flapjack.WordLangAddr.addr 21721 18446744073709551104#64)))).val
theorem output4220_def : output4220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21725 (Flapjack.WordLangAddr.addr 21721 18446744073709551104#64))) := by
  unfold output4220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4220_skip : Flapjack.WordAlloc.isSkip output4220 = false := by
  rw [output4220_def]
  conv => lhs; cbv
  try rfl
theorem node4220_eq : Flapjack.WordAlloc.removeDeadStructural input4220 value2114 value1 value2 = (output4220, value2115, value1) := by
  rw [input4220_def, output4220_def]
  try (conv => lhs; cbv)
  try rfl

def value2116 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21721 21717)).val
theorem input4221_def : input4221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21721 21717) := by
  unfold input4221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21721 21717)).val
theorem output4221_def : output4221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21721 21717) := by
  unfold output4221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4221_skip : Flapjack.WordAlloc.isSkip output4221 = false := by
  rw [output4221_def]
  conv => lhs; cbv
  try rfl
theorem node4221_eq : Flapjack.WordAlloc.removeDeadStructural input4221 value2115 value1 value2 = (output4221, value2116, value1) := by
  rw [input4221_def, output4221_def]
  try (conv => lhs; cbv)
  try rfl

def value2117 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21717 21713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4222_def : input4222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21717 21713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21717 21713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4222_def : output4222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21717 21713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4222_skip : Flapjack.WordAlloc.isSkip output4222 = false := by
  rw [output4222_def]
  conv => lhs; cbv
  try rfl
theorem node4222_eq : Flapjack.WordAlloc.removeDeadStructural input4222 value2116 value1 value2 = (output4222, value2117, value1) := by
  rw [input4222_def, output4222_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21713 Flapjack.WordStore.heapLength)).val
theorem input4223_def : input4223 = (Flapjack.WordLangProgHOL.get 21713 Flapjack.WordStore.heapLength) := by
  unfold input4223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21713 Flapjack.WordStore.heapLength)).val
theorem output4223_def : output4223 = (Flapjack.WordLangProgHOL.get 21713 Flapjack.WordStore.heapLength) := by
  unfold output4223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4223_skip : Flapjack.WordAlloc.isSkip output4223 = false := by
  rw [output4223_def]
  conv => lhs; cbv
  try rfl
theorem node4223_eq : Flapjack.WordAlloc.removeDeadStructural input4223 value2117 value1 value2 = (output4223, value5, value1) := by
  rw [input4223_def, output4223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4223 input4222)).val
theorem input4224_def : input4224 = (.seq input4223 input4222) := by
  unfold input4224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4223 output4222)).val
theorem output4224_def : output4224 = (.seq output4223 output4222) := by
  unfold output4224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4224_skip : Flapjack.WordAlloc.isSkip output4224 = false := by
  rw [output4224_def]
  conv => lhs; cbv
  try rfl
theorem node4224_eq : Flapjack.WordAlloc.removeDeadStructural input4224 value2116 value1 value2 = (output4224, value5, value1) := by
  rw [input4224_def, output4224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4222_eq]
  dsimp only
  rw [node4223_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4224 input4221)).val
theorem input4225_def : input4225 = (.seq input4224 input4221) := by
  unfold input4225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4224 output4221)).val
theorem output4225_def : output4225 = (.seq output4224 output4221) := by
  unfold output4225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4225_skip : Flapjack.WordAlloc.isSkip output4225 = false := by
  rw [output4225_def]
  conv => lhs; cbv
  try rfl
theorem node4225_eq : Flapjack.WordAlloc.removeDeadStructural input4225 value2115 value1 value2 = (output4225, value5, value1) := by
  rw [input4225_def, output4225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4221_eq]
  dsimp only
  rw [node4224_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4225 input4220)).val
theorem input4226_def : input4226 = (.seq input4225 input4220) := by
  unfold input4226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4225 output4220)).val
theorem output4226_def : output4226 = (.seq output4225 output4220) := by
  unfold output4226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4226_skip : Flapjack.WordAlloc.isSkip output4226 = false := by
  rw [output4226_def]
  conv => lhs; cbv
  try rfl
theorem node4226_eq : Flapjack.WordAlloc.removeDeadStructural input4226 value2114 value1 value2 = (output4226, value5, value1) := by
  rw [input4226_def, output4226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4220_eq]
  dsimp only
  rw [node4225_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4226 input4219)).val
theorem input4227_def : input4227 = (.seq input4226 input4219) := by
  unfold input4227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4226 output4219)).val
theorem output4227_def : output4227 = (.seq output4226 output4219) := by
  unfold output4227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4227_skip : Flapjack.WordAlloc.isSkip output4227 = false := by
  rw [output4227_def]
  conv => lhs; cbv
  try rfl
theorem node4227_eq : Flapjack.WordAlloc.removeDeadStructural input4227 value2112 value1 value2 = (output4227, value5, value1) := by
  rw [input4227_def, output4227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4219_eq]
  dsimp only
  rw [node4226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2118 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21705 (Flapjack.WordLangAddr.addr 21709 0#64)))).val
theorem input4228_def : input4228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21705 (Flapjack.WordLangAddr.addr 21709 0#64))) := by
  unfold input4228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21705 (Flapjack.WordLangAddr.addr 21709 0#64)))).val
theorem output4228_def : output4228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21705 (Flapjack.WordLangAddr.addr 21709 0#64))) := by
  unfold output4228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4228_skip : Flapjack.WordAlloc.isSkip output4228 = false := by
  rw [output4228_def]
  conv => lhs; cbv
  try rfl
theorem node4228_eq : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value2118, value1) := by
  rw [input4228_def, output4228_def]
  try (conv => lhs; cbv)
  try rfl

def value2119 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21709, 21697)])).val
theorem input4229_def : input4229 = (Flapjack.WordLangProgHOL.move 0 [(21709, 21697)]) := by
  unfold input4229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21709, 21697)])).val
theorem output4229_def : output4229 = (Flapjack.WordLangProgHOL.move 0 [(21709, 21697)]) := by
  unfold output4229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4229_skip : Flapjack.WordAlloc.isSkip output4229 = false := by
  rw [output4229_def]
  conv => lhs; cbv
  try rfl
theorem node4229_eq : Flapjack.WordAlloc.removeDeadStructural input4229 value2118 value1 value2 = (output4229, value2119, value1) := by
  rw [input4229_def, output4229_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4229 input4228)).val
theorem input4230_def : input4230 = (.seq input4229 input4228) := by
  unfold input4230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4229 output4228)).val
theorem output4230_def : output4230 = (.seq output4229 output4228) := by
  unfold output4230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4230_skip : Flapjack.WordAlloc.isSkip output4230 = false := by
  rw [output4230_def]
  conv => lhs; cbv
  try rfl
theorem node4230_eq : Flapjack.WordAlloc.removeDeadStructural input4230 value5 value1 value2 = (output4230, value2119, value1) := by
  rw [input4230_def, output4230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4228_eq]
  dsimp only
  rw [node4229_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2120 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21705 475620398632300694#64))).val
theorem input4231_def : input4231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21705 475620398632300694#64)) := by
  unfold input4231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21705 475620398632300694#64))).val
theorem output4231_def : output4231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21705 475620398632300694#64)) := by
  unfold output4231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4231_skip : Flapjack.WordAlloc.isSkip output4231 = false := by
  rw [output4231_def]
  conv => lhs; cbv
  try rfl
theorem node4231_eq : Flapjack.WordAlloc.removeDeadStructural input4231 value2119 value1 value2 = (output4231, value2120, value1) := by
  rw [input4231_def, output4231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21701 475620398632300694#64))).val
theorem input4232_def : input4232 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21701 475620398632300694#64)) := by
  unfold input4232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4232_def : output4232 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4232_skip : Flapjack.WordAlloc.isSkip output4232 = true := by
  rw [output4232_def]
  conv => lhs; cbv
  try rfl
theorem node4232_eq : Flapjack.WordAlloc.removeDeadStructural input4232 value2120 value1 value2 = (output4232, value2120, value1) := by
  rw [input4232_def, output4232_def]
  try (conv => lhs; cbv)
  try rfl

def value2121 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21697 21689 (Flapjack.WordRegImm.reg 21693))))).val
theorem input4233_def : input4233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21697 21689 (Flapjack.WordRegImm.reg 21693)))) := by
  unfold input4233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21697 21689 (Flapjack.WordRegImm.reg 21693))))).val
theorem output4233_def : output4233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21697 21689 (Flapjack.WordRegImm.reg 21693)))) := by
  unfold output4233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4233_skip : Flapjack.WordAlloc.isSkip output4233 = false := by
  rw [output4233_def]
  conv => lhs; cbv
  try rfl
theorem node4233_eq : Flapjack.WordAlloc.removeDeadStructural input4233 value2120 value1 value2 = (output4233, value2121, value1) := by
  rw [input4233_def, output4233_def]
  try (conv => lhs; cbv)
  try rfl

def value2122 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21693 5016#64))).val
theorem input4234_def : input4234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21693 5016#64)) := by
  unfold input4234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21693 5016#64))).val
theorem output4234_def : output4234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21693 5016#64)) := by
  unfold output4234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4234_skip : Flapjack.WordAlloc.isSkip output4234 = false := by
  rw [output4234_def]
  conv => lhs; cbv
  try rfl
theorem node4234_eq : Flapjack.WordAlloc.removeDeadStructural input4234 value2121 value1 value2 = (output4234, value2122, value1) := by
  rw [input4234_def, output4234_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4234 input4233)).val
theorem input4235_def : input4235 = (.seq input4234 input4233) := by
  unfold input4235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4234 output4233)).val
theorem output4235_def : output4235 = (.seq output4234 output4233) := by
  unfold output4235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4235_skip : Flapjack.WordAlloc.isSkip output4235 = false := by
  rw [output4235_def]
  conv => lhs; cbv
  try rfl
theorem node4235_eq : Flapjack.WordAlloc.removeDeadStructural input4235 value2120 value1 value2 = (output4235, value2122, value1) := by
  rw [input4235_def, output4235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4233_eq]
  dsimp only
  rw [node4234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2123 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21689 (Flapjack.WordLangAddr.addr 21685 18446744073709551104#64)))).val
theorem input4236_def : input4236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21689 (Flapjack.WordLangAddr.addr 21685 18446744073709551104#64))) := by
  unfold input4236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21689 (Flapjack.WordLangAddr.addr 21685 18446744073709551104#64)))).val
theorem output4236_def : output4236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21689 (Flapjack.WordLangAddr.addr 21685 18446744073709551104#64))) := by
  unfold output4236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4236_skip : Flapjack.WordAlloc.isSkip output4236 = false := by
  rw [output4236_def]
  conv => lhs; cbv
  try rfl
theorem node4236_eq : Flapjack.WordAlloc.removeDeadStructural input4236 value2122 value1 value2 = (output4236, value2123, value1) := by
  rw [input4236_def, output4236_def]
  try (conv => lhs; cbv)
  try rfl

def value2124 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21685 21681)).val
theorem input4237_def : input4237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21685 21681) := by
  unfold input4237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21685 21681)).val
theorem output4237_def : output4237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21685 21681) := by
  unfold output4237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4237_skip : Flapjack.WordAlloc.isSkip output4237 = false := by
  rw [output4237_def]
  conv => lhs; cbv
  try rfl
theorem node4237_eq : Flapjack.WordAlloc.removeDeadStructural input4237 value2123 value1 value2 = (output4237, value2124, value1) := by
  rw [input4237_def, output4237_def]
  try (conv => lhs; cbv)
  try rfl

def value2125 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21681 21677 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4238_def : input4238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21681 21677 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21681 21677 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4238_def : output4238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21681 21677 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4238_skip : Flapjack.WordAlloc.isSkip output4238 = false := by
  rw [output4238_def]
  conv => lhs; cbv
  try rfl
theorem node4238_eq : Flapjack.WordAlloc.removeDeadStructural input4238 value2124 value1 value2 = (output4238, value2125, value1) := by
  rw [input4238_def, output4238_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21677 Flapjack.WordStore.heapLength)).val
theorem input4239_def : input4239 = (Flapjack.WordLangProgHOL.get 21677 Flapjack.WordStore.heapLength) := by
  unfold input4239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21677 Flapjack.WordStore.heapLength)).val
theorem output4239_def : output4239 = (Flapjack.WordLangProgHOL.get 21677 Flapjack.WordStore.heapLength) := by
  unfold output4239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4239_skip : Flapjack.WordAlloc.isSkip output4239 = false := by
  rw [output4239_def]
  conv => lhs; cbv
  try rfl
theorem node4239_eq : Flapjack.WordAlloc.removeDeadStructural input4239 value2125 value1 value2 = (output4239, value5, value1) := by
  rw [input4239_def, output4239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4239 input4238)).val
theorem input4240_def : input4240 = (.seq input4239 input4238) := by
  unfold input4240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4239 output4238)).val
theorem output4240_def : output4240 = (.seq output4239 output4238) := by
  unfold output4240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4240_skip : Flapjack.WordAlloc.isSkip output4240 = false := by
  rw [output4240_def]
  conv => lhs; cbv
  try rfl
theorem node4240_eq : Flapjack.WordAlloc.removeDeadStructural input4240 value2124 value1 value2 = (output4240, value5, value1) := by
  rw [input4240_def, output4240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4238_eq]
  dsimp only
  rw [node4239_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4240 input4237)).val
theorem input4241_def : input4241 = (.seq input4240 input4237) := by
  unfold input4241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4240 output4237)).val
theorem output4241_def : output4241 = (.seq output4240 output4237) := by
  unfold output4241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4241_skip : Flapjack.WordAlloc.isSkip output4241 = false := by
  rw [output4241_def]
  conv => lhs; cbv
  try rfl
theorem node4241_eq : Flapjack.WordAlloc.removeDeadStructural input4241 value2123 value1 value2 = (output4241, value5, value1) := by
  rw [input4241_def, output4241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4237_eq]
  dsimp only
  rw [node4240_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4241 input4236)).val
theorem input4242_def : input4242 = (.seq input4241 input4236) := by
  unfold input4242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4241 output4236)).val
theorem output4242_def : output4242 = (.seq output4241 output4236) := by
  unfold output4242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4242_skip : Flapjack.WordAlloc.isSkip output4242 = false := by
  rw [output4242_def]
  conv => lhs; cbv
  try rfl
theorem node4242_eq : Flapjack.WordAlloc.removeDeadStructural input4242 value2122 value1 value2 = (output4242, value5, value1) := by
  rw [input4242_def, output4242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4236_eq]
  dsimp only
  rw [node4241_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4242 input4235)).val
theorem input4243_def : input4243 = (.seq input4242 input4235) := by
  unfold input4243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4242 output4235)).val
theorem output4243_def : output4243 = (.seq output4242 output4235) := by
  unfold output4243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4243_skip : Flapjack.WordAlloc.isSkip output4243 = false := by
  rw [output4243_def]
  conv => lhs; cbv
  try rfl
theorem node4243_eq : Flapjack.WordAlloc.removeDeadStructural input4243 value2120 value1 value2 = (output4243, value5, value1) := by
  rw [input4243_def, output4243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4235_eq]
  dsimp only
  rw [node4242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2126 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21669 (Flapjack.WordLangAddr.addr 21673 0#64)))).val
theorem input4244_def : input4244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21669 (Flapjack.WordLangAddr.addr 21673 0#64))) := by
  unfold input4244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21669 (Flapjack.WordLangAddr.addr 21673 0#64)))).val
theorem output4244_def : output4244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21669 (Flapjack.WordLangAddr.addr 21673 0#64))) := by
  unfold output4244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4244_skip : Flapjack.WordAlloc.isSkip output4244 = false := by
  rw [output4244_def]
  conv => lhs; cbv
  try rfl
theorem node4244_eq : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value2126, value1) := by
  rw [input4244_def, output4244_def]
  try (conv => lhs; cbv)
  try rfl

def value2127 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21673, 21661)])).val
theorem input4245_def : input4245 = (Flapjack.WordLangProgHOL.move 0 [(21673, 21661)]) := by
  unfold input4245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21673, 21661)])).val
theorem output4245_def : output4245 = (Flapjack.WordLangProgHOL.move 0 [(21673, 21661)]) := by
  unfold output4245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4245_skip : Flapjack.WordAlloc.isSkip output4245 = false := by
  rw [output4245_def]
  conv => lhs; cbv
  try rfl
theorem node4245_eq : Flapjack.WordAlloc.removeDeadStructural input4245 value2126 value1 value2 = (output4245, value2127, value1) := by
  rw [input4245_def, output4245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4245 input4244)).val
theorem input4246_def : input4246 = (.seq input4245 input4244) := by
  unfold input4246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4245 output4244)).val
theorem output4246_def : output4246 = (.seq output4245 output4244) := by
  unfold output4246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4246_skip : Flapjack.WordAlloc.isSkip output4246 = false := by
  rw [output4246_def]
  conv => lhs; cbv
  try rfl
theorem node4246_eq : Flapjack.WordAlloc.removeDeadStructural input4246 value5 value1 value2 = (output4246, value2127, value1) := by
  rw [input4246_def, output4246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4244_eq]
  dsimp only
  rw [node4245_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2128 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21669 6799301371303374023#64))).val
theorem input4247_def : input4247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21669 6799301371303374023#64)) := by
  unfold input4247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21669 6799301371303374023#64))).val
theorem output4247_def : output4247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21669 6799301371303374023#64)) := by
  unfold output4247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4247_skip : Flapjack.WordAlloc.isSkip output4247 = false := by
  rw [output4247_def]
  conv => lhs; cbv
  try rfl
theorem node4247_eq : Flapjack.WordAlloc.removeDeadStructural input4247 value2127 value1 value2 = (output4247, value2128, value1) := by
  rw [input4247_def, output4247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21665 6799301371303374023#64))).val
theorem input4248_def : input4248 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21665 6799301371303374023#64)) := by
  unfold input4248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4248_def : output4248 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4248_skip : Flapjack.WordAlloc.isSkip output4248 = true := by
  rw [output4248_def]
  conv => lhs; cbv
  try rfl
theorem node4248_eq : Flapjack.WordAlloc.removeDeadStructural input4248 value2128 value1 value2 = (output4248, value2128, value1) := by
  rw [input4248_def, output4248_def]
  try (conv => lhs; cbv)
  try rfl

def value2129 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21661 21653 (Flapjack.WordRegImm.reg 21657))))).val
theorem input4249_def : input4249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21661 21653 (Flapjack.WordRegImm.reg 21657)))) := by
  unfold input4249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21661 21653 (Flapjack.WordRegImm.reg 21657))))).val
theorem output4249_def : output4249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21661 21653 (Flapjack.WordRegImm.reg 21657)))) := by
  unfold output4249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4249_skip : Flapjack.WordAlloc.isSkip output4249 = false := by
  rw [output4249_def]
  conv => lhs; cbv
  try rfl
theorem node4249_eq : Flapjack.WordAlloc.removeDeadStructural input4249 value2128 value1 value2 = (output4249, value2129, value1) := by
  rw [input4249_def, output4249_def]
  try (conv => lhs; cbv)
  try rfl

def value2130 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21657 5008#64))).val
theorem input4250_def : input4250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21657 5008#64)) := by
  unfold input4250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21657 5008#64))).val
theorem output4250_def : output4250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21657 5008#64)) := by
  unfold output4250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4250_skip : Flapjack.WordAlloc.isSkip output4250 = false := by
  rw [output4250_def]
  conv => lhs; cbv
  try rfl
theorem node4250_eq : Flapjack.WordAlloc.removeDeadStructural input4250 value2129 value1 value2 = (output4250, value2130, value1) := by
  rw [input4250_def, output4250_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4250 input4249)).val
theorem input4251_def : input4251 = (.seq input4250 input4249) := by
  unfold input4251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4250 output4249)).val
theorem output4251_def : output4251 = (.seq output4250 output4249) := by
  unfold output4251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4251_skip : Flapjack.WordAlloc.isSkip output4251 = false := by
  rw [output4251_def]
  conv => lhs; cbv
  try rfl
theorem node4251_eq : Flapjack.WordAlloc.removeDeadStructural input4251 value2128 value1 value2 = (output4251, value2130, value1) := by
  rw [input4251_def, output4251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4249_eq]
  dsimp only
  rw [node4250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2131 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21653 (Flapjack.WordLangAddr.addr 21649 18446744073709551104#64)))).val
theorem input4252_def : input4252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21653 (Flapjack.WordLangAddr.addr 21649 18446744073709551104#64))) := by
  unfold input4252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21653 (Flapjack.WordLangAddr.addr 21649 18446744073709551104#64)))).val
theorem output4252_def : output4252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21653 (Flapjack.WordLangAddr.addr 21649 18446744073709551104#64))) := by
  unfold output4252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4252_skip : Flapjack.WordAlloc.isSkip output4252 = false := by
  rw [output4252_def]
  conv => lhs; cbv
  try rfl
theorem node4252_eq : Flapjack.WordAlloc.removeDeadStructural input4252 value2130 value1 value2 = (output4252, value2131, value1) := by
  rw [input4252_def, output4252_def]
  try (conv => lhs; cbv)
  try rfl

def value2132 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21649 21645)).val
theorem input4253_def : input4253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21649 21645) := by
  unfold input4253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21649 21645)).val
theorem output4253_def : output4253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21649 21645) := by
  unfold output4253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4253_skip : Flapjack.WordAlloc.isSkip output4253 = false := by
  rw [output4253_def]
  conv => lhs; cbv
  try rfl
theorem node4253_eq : Flapjack.WordAlloc.removeDeadStructural input4253 value2131 value1 value2 = (output4253, value2132, value1) := by
  rw [input4253_def, output4253_def]
  try (conv => lhs; cbv)
  try rfl

def value2133 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21645 21641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4254_def : input4254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21645 21641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21645 21641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4254_def : output4254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21645 21641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4254_skip : Flapjack.WordAlloc.isSkip output4254 = false := by
  rw [output4254_def]
  conv => lhs; cbv
  try rfl
theorem node4254_eq : Flapjack.WordAlloc.removeDeadStructural input4254 value2132 value1 value2 = (output4254, value2133, value1) := by
  rw [input4254_def, output4254_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21641 Flapjack.WordStore.heapLength)).val
theorem input4255_def : input4255 = (Flapjack.WordLangProgHOL.get 21641 Flapjack.WordStore.heapLength) := by
  unfold input4255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21641 Flapjack.WordStore.heapLength)).val
theorem output4255_def : output4255 = (Flapjack.WordLangProgHOL.get 21641 Flapjack.WordStore.heapLength) := by
  unfold output4255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4255_skip : Flapjack.WordAlloc.isSkip output4255 = false := by
  rw [output4255_def]
  conv => lhs; cbv
  try rfl
theorem node4255_eq : Flapjack.WordAlloc.removeDeadStructural input4255 value2133 value1 value2 = (output4255, value5, value1) := by
  rw [input4255_def, output4255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4255 input4254)).val
theorem input4256_def : input4256 = (.seq input4255 input4254) := by
  unfold input4256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4255 output4254)).val
theorem output4256_def : output4256 = (.seq output4255 output4254) := by
  unfold output4256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4256_skip : Flapjack.WordAlloc.isSkip output4256 = false := by
  rw [output4256_def]
  conv => lhs; cbv
  try rfl
theorem node4256_eq : Flapjack.WordAlloc.removeDeadStructural input4256 value2132 value1 value2 = (output4256, value5, value1) := by
  rw [input4256_def, output4256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4254_eq]
  dsimp only
  rw [node4255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4256 input4253)).val
theorem input4257_def : input4257 = (.seq input4256 input4253) := by
  unfold input4257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4256 output4253)).val
theorem output4257_def : output4257 = (.seq output4256 output4253) := by
  unfold output4257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4257_skip : Flapjack.WordAlloc.isSkip output4257 = false := by
  rw [output4257_def]
  conv => lhs; cbv
  try rfl
theorem node4257_eq : Flapjack.WordAlloc.removeDeadStructural input4257 value2131 value1 value2 = (output4257, value5, value1) := by
  rw [input4257_def, output4257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4253_eq]
  dsimp only
  rw [node4256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4257 input4252)).val
theorem input4258_def : input4258 = (.seq input4257 input4252) := by
  unfold input4258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4257 output4252)).val
theorem output4258_def : output4258 = (.seq output4257 output4252) := by
  unfold output4258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4258_skip : Flapjack.WordAlloc.isSkip output4258 = false := by
  rw [output4258_def]
  conv => lhs; cbv
  try rfl
theorem node4258_eq : Flapjack.WordAlloc.removeDeadStructural input4258 value2130 value1 value2 = (output4258, value5, value1) := by
  rw [input4258_def, output4258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4252_eq]
  dsimp only
  rw [node4257_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4258 input4251)).val
theorem input4259_def : input4259 = (.seq input4258 input4251) := by
  unfold input4259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4258 output4251)).val
theorem output4259_def : output4259 = (.seq output4258 output4251) := by
  unfold output4259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4259_skip : Flapjack.WordAlloc.isSkip output4259 = false := by
  rw [output4259_def]
  conv => lhs; cbv
  try rfl
theorem node4259_eq : Flapjack.WordAlloc.removeDeadStructural input4259 value2128 value1 value2 = (output4259, value5, value1) := by
  rw [input4259_def, output4259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4251_eq]
  dsimp only
  rw [node4258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2134 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21633 (Flapjack.WordLangAddr.addr 21637 0#64)))).val
theorem input4260_def : input4260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21633 (Flapjack.WordLangAddr.addr 21637 0#64))) := by
  unfold input4260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21633 (Flapjack.WordLangAddr.addr 21637 0#64)))).val
theorem output4260_def : output4260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21633 (Flapjack.WordLangAddr.addr 21637 0#64))) := by
  unfold output4260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4260_skip : Flapjack.WordAlloc.isSkip output4260 = false := by
  rw [output4260_def]
  conv => lhs; cbv
  try rfl
theorem node4260_eq : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value2134, value1) := by
  rw [input4260_def, output4260_def]
  try (conv => lhs; cbv)
  try rfl

def value2135 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21637, 21625)])).val
theorem input4261_def : input4261 = (Flapjack.WordLangProgHOL.move 0 [(21637, 21625)]) := by
  unfold input4261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21637, 21625)])).val
theorem output4261_def : output4261 = (Flapjack.WordLangProgHOL.move 0 [(21637, 21625)]) := by
  unfold output4261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4261_skip : Flapjack.WordAlloc.isSkip output4261 = false := by
  rw [output4261_def]
  conv => lhs; cbv
  try rfl
theorem node4261_eq : Flapjack.WordAlloc.removeDeadStructural input4261 value2134 value1 value2 = (output4261, value2135, value1) := by
  rw [input4261_def, output4261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4261 input4260)).val
theorem input4262_def : input4262 = (.seq input4261 input4260) := by
  unfold input4262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4261 output4260)).val
theorem output4262_def : output4262 = (.seq output4261 output4260) := by
  unfold output4262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4262_skip : Flapjack.WordAlloc.isSkip output4262 = false := by
  rw [output4262_def]
  conv => lhs; cbv
  try rfl
theorem node4262_eq : Flapjack.WordAlloc.removeDeadStructural input4262 value5 value1 value2 = (output4262, value2135, value1) := by
  rw [input4262_def, output4262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4260_eq]
  dsimp only
  rw [node4261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2136 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21633 12747537776279478232#64))).val
theorem input4263_def : input4263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21633 12747537776279478232#64)) := by
  unfold input4263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21633 12747537776279478232#64))).val
theorem output4263_def : output4263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21633 12747537776279478232#64)) := by
  unfold output4263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4263_skip : Flapjack.WordAlloc.isSkip output4263 = false := by
  rw [output4263_def]
  conv => lhs; cbv
  try rfl
theorem node4263_eq : Flapjack.WordAlloc.removeDeadStructural input4263 value2135 value1 value2 = (output4263, value2136, value1) := by
  rw [input4263_def, output4263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21629 12747537776279478232#64))).val
theorem input4264_def : input4264 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21629 12747537776279478232#64)) := by
  unfold input4264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4264_def : output4264 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4264_skip : Flapjack.WordAlloc.isSkip output4264 = true := by
  rw [output4264_def]
  conv => lhs; cbv
  try rfl
theorem node4264_eq : Flapjack.WordAlloc.removeDeadStructural input4264 value2136 value1 value2 = (output4264, value2136, value1) := by
  rw [input4264_def, output4264_def]
  try (conv => lhs; cbv)
  try rfl

def value2137 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21625 21617 (Flapjack.WordRegImm.reg 21621))))).val
theorem input4265_def : input4265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21625 21617 (Flapjack.WordRegImm.reg 21621)))) := by
  unfold input4265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21625 21617 (Flapjack.WordRegImm.reg 21621))))).val
theorem output4265_def : output4265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21625 21617 (Flapjack.WordRegImm.reg 21621)))) := by
  unfold output4265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4265_skip : Flapjack.WordAlloc.isSkip output4265 = false := by
  rw [output4265_def]
  conv => lhs; cbv
  try rfl
theorem node4265_eq : Flapjack.WordAlloc.removeDeadStructural input4265 value2136 value1 value2 = (output4265, value2137, value1) := by
  rw [input4265_def, output4265_def]
  try (conv => lhs; cbv)
  try rfl

def value2138 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21621 5000#64))).val
theorem input4266_def : input4266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21621 5000#64)) := by
  unfold input4266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21621 5000#64))).val
theorem output4266_def : output4266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21621 5000#64)) := by
  unfold output4266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4266_skip : Flapjack.WordAlloc.isSkip output4266 = false := by
  rw [output4266_def]
  conv => lhs; cbv
  try rfl
theorem node4266_eq : Flapjack.WordAlloc.removeDeadStructural input4266 value2137 value1 value2 = (output4266, value2138, value1) := by
  rw [input4266_def, output4266_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4266 input4265)).val
theorem input4267_def : input4267 = (.seq input4266 input4265) := by
  unfold input4267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4266 output4265)).val
theorem output4267_def : output4267 = (.seq output4266 output4265) := by
  unfold output4267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4267_skip : Flapjack.WordAlloc.isSkip output4267 = false := by
  rw [output4267_def]
  conv => lhs; cbv
  try rfl
theorem node4267_eq : Flapjack.WordAlloc.removeDeadStructural input4267 value2136 value1 value2 = (output4267, value2138, value1) := by
  rw [input4267_def, output4267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4265_eq]
  dsimp only
  rw [node4266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2139 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21617 (Flapjack.WordLangAddr.addr 21613 18446744073709551104#64)))).val
theorem input4268_def : input4268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21617 (Flapjack.WordLangAddr.addr 21613 18446744073709551104#64))) := by
  unfold input4268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21617 (Flapjack.WordLangAddr.addr 21613 18446744073709551104#64)))).val
theorem output4268_def : output4268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21617 (Flapjack.WordLangAddr.addr 21613 18446744073709551104#64))) := by
  unfold output4268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4268_skip : Flapjack.WordAlloc.isSkip output4268 = false := by
  rw [output4268_def]
  conv => lhs; cbv
  try rfl
theorem node4268_eq : Flapjack.WordAlloc.removeDeadStructural input4268 value2138 value1 value2 = (output4268, value2139, value1) := by
  rw [input4268_def, output4268_def]
  try (conv => lhs; cbv)
  try rfl

def value2140 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21613 21609)).val
theorem input4269_def : input4269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21613 21609) := by
  unfold input4269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21613 21609)).val
theorem output4269_def : output4269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21613 21609) := by
  unfold output4269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4269_skip : Flapjack.WordAlloc.isSkip output4269 = false := by
  rw [output4269_def]
  conv => lhs; cbv
  try rfl
theorem node4269_eq : Flapjack.WordAlloc.removeDeadStructural input4269 value2139 value1 value2 = (output4269, value2140, value1) := by
  rw [input4269_def, output4269_def]
  try (conv => lhs; cbv)
  try rfl

def value2141 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21609 21605 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4270_def : input4270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21609 21605 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21609 21605 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4270_def : output4270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21609 21605 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4270_skip : Flapjack.WordAlloc.isSkip output4270 = false := by
  rw [output4270_def]
  conv => lhs; cbv
  try rfl
theorem node4270_eq : Flapjack.WordAlloc.removeDeadStructural input4270 value2140 value1 value2 = (output4270, value2141, value1) := by
  rw [input4270_def, output4270_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21605 Flapjack.WordStore.heapLength)).val
theorem input4271_def : input4271 = (Flapjack.WordLangProgHOL.get 21605 Flapjack.WordStore.heapLength) := by
  unfold input4271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21605 Flapjack.WordStore.heapLength)).val
theorem output4271_def : output4271 = (Flapjack.WordLangProgHOL.get 21605 Flapjack.WordStore.heapLength) := by
  unfold output4271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4271_skip : Flapjack.WordAlloc.isSkip output4271 = false := by
  rw [output4271_def]
  conv => lhs; cbv
  try rfl
theorem node4271_eq : Flapjack.WordAlloc.removeDeadStructural input4271 value2141 value1 value2 = (output4271, value5, value1) := by
  rw [input4271_def, output4271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4271 input4270)).val
theorem input4272_def : input4272 = (.seq input4271 input4270) := by
  unfold input4272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4271 output4270)).val
theorem output4272_def : output4272 = (.seq output4271 output4270) := by
  unfold output4272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4272_skip : Flapjack.WordAlloc.isSkip output4272 = false := by
  rw [output4272_def]
  conv => lhs; cbv
  try rfl
theorem node4272_eq : Flapjack.WordAlloc.removeDeadStructural input4272 value2140 value1 value2 = (output4272, value5, value1) := by
  rw [input4272_def, output4272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4270_eq]
  dsimp only
  rw [node4271_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4272 input4269)).val
theorem input4273_def : input4273 = (.seq input4272 input4269) := by
  unfold input4273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4272 output4269)).val
theorem output4273_def : output4273 = (.seq output4272 output4269) := by
  unfold output4273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4273_skip : Flapjack.WordAlloc.isSkip output4273 = false := by
  rw [output4273_def]
  conv => lhs; cbv
  try rfl
theorem node4273_eq : Flapjack.WordAlloc.removeDeadStructural input4273 value2139 value1 value2 = (output4273, value5, value1) := by
  rw [input4273_def, output4273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4269_eq]
  dsimp only
  rw [node4272_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4273 input4268)).val
theorem input4274_def : input4274 = (.seq input4273 input4268) := by
  unfold input4274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4273 output4268)).val
theorem output4274_def : output4274 = (.seq output4273 output4268) := by
  unfold output4274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4274_skip : Flapjack.WordAlloc.isSkip output4274 = false := by
  rw [output4274_def]
  conv => lhs; cbv
  try rfl
theorem node4274_eq : Flapjack.WordAlloc.removeDeadStructural input4274 value2138 value1 value2 = (output4274, value5, value1) := by
  rw [input4274_def, output4274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4268_eq]
  dsimp only
  rw [node4273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4274 input4267)).val
theorem input4275_def : input4275 = (.seq input4274 input4267) := by
  unfold input4275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4274 output4267)).val
theorem output4275_def : output4275 = (.seq output4274 output4267) := by
  unfold output4275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4275_skip : Flapjack.WordAlloc.isSkip output4275 = false := by
  rw [output4275_def]
  conv => lhs; cbv
  try rfl
theorem node4275_eq : Flapjack.WordAlloc.removeDeadStructural input4275 value2136 value1 value2 = (output4275, value5, value1) := by
  rw [input4275_def, output4275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4267_eq]
  dsimp only
  rw [node4274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2142 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21597 (Flapjack.WordLangAddr.addr 21601 0#64)))).val
theorem input4276_def : input4276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21597 (Flapjack.WordLangAddr.addr 21601 0#64))) := by
  unfold input4276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21597 (Flapjack.WordLangAddr.addr 21601 0#64)))).val
theorem output4276_def : output4276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21597 (Flapjack.WordLangAddr.addr 21601 0#64))) := by
  unfold output4276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4276_skip : Flapjack.WordAlloc.isSkip output4276 = false := by
  rw [output4276_def]
  conv => lhs; cbv
  try rfl
theorem node4276_eq : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value2142, value1) := by
  rw [input4276_def, output4276_def]
  try (conv => lhs; cbv)
  try rfl

def value2143 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21601, 21589)])).val
theorem input4277_def : input4277 = (Flapjack.WordLangProgHOL.move 0 [(21601, 21589)]) := by
  unfold input4277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21601, 21589)])).val
theorem output4277_def : output4277 = (Flapjack.WordLangProgHOL.move 0 [(21601, 21589)]) := by
  unfold output4277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4277_skip : Flapjack.WordAlloc.isSkip output4277 = false := by
  rw [output4277_def]
  conv => lhs; cbv
  try rfl
theorem node4277_eq : Flapjack.WordAlloc.removeDeadStructural input4277 value2142 value1 value2 = (output4277, value2143, value1) := by
  rw [input4277_def, output4277_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4277 input4276)).val
theorem input4278_def : input4278 = (.seq input4277 input4276) := by
  unfold input4278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4277 output4276)).val
theorem output4278_def : output4278 = (.seq output4277 output4276) := by
  unfold output4278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4278_skip : Flapjack.WordAlloc.isSkip output4278 = false := by
  rw [output4278_def]
  conv => lhs; cbv
  try rfl
theorem node4278_eq : Flapjack.WordAlloc.removeDeadStructural input4278 value5 value1 value2 = (output4278, value2143, value1) := by
  rw [input4278_def, output4278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4276_eq]
  dsimp only
  rw [node4277_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2144 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21597 4287227371909732728#64))).val
theorem input4279_def : input4279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21597 4287227371909732728#64)) := by
  unfold input4279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21597 4287227371909732728#64))).val
theorem output4279_def : output4279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21597 4287227371909732728#64)) := by
  unfold output4279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4279_skip : Flapjack.WordAlloc.isSkip output4279 = false := by
  rw [output4279_def]
  conv => lhs; cbv
  try rfl
theorem node4279_eq : Flapjack.WordAlloc.removeDeadStructural input4279 value2143 value1 value2 = (output4279, value2144, value1) := by
  rw [input4279_def, output4279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21593 4287227371909732728#64))).val
theorem input4280_def : input4280 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21593 4287227371909732728#64)) := by
  unfold input4280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4280_def : output4280 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4280_skip : Flapjack.WordAlloc.isSkip output4280 = true := by
  rw [output4280_def]
  conv => lhs; cbv
  try rfl
theorem node4280_eq : Flapjack.WordAlloc.removeDeadStructural input4280 value2144 value1 value2 = (output4280, value2144, value1) := by
  rw [input4280_def, output4280_def]
  try (conv => lhs; cbv)
  try rfl

def value2145 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21589 21581 (Flapjack.WordRegImm.reg 21585))))).val
theorem input4281_def : input4281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21589 21581 (Flapjack.WordRegImm.reg 21585)))) := by
  unfold input4281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21589 21581 (Flapjack.WordRegImm.reg 21585))))).val
theorem output4281_def : output4281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21589 21581 (Flapjack.WordRegImm.reg 21585)))) := by
  unfold output4281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4281_skip : Flapjack.WordAlloc.isSkip output4281 = false := by
  rw [output4281_def]
  conv => lhs; cbv
  try rfl
theorem node4281_eq : Flapjack.WordAlloc.removeDeadStructural input4281 value2144 value1 value2 = (output4281, value2145, value1) := by
  rw [input4281_def, output4281_def]
  try (conv => lhs; cbv)
  try rfl

def value2146 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21585 4992#64))).val
theorem input4282_def : input4282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21585 4992#64)) := by
  unfold input4282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21585 4992#64))).val
theorem output4282_def : output4282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21585 4992#64)) := by
  unfold output4282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4282_skip : Flapjack.WordAlloc.isSkip output4282 = false := by
  rw [output4282_def]
  conv => lhs; cbv
  try rfl
theorem node4282_eq : Flapjack.WordAlloc.removeDeadStructural input4282 value2145 value1 value2 = (output4282, value2146, value1) := by
  rw [input4282_def, output4282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4282 input4281)).val
theorem input4283_def : input4283 = (.seq input4282 input4281) := by
  unfold input4283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4282 output4281)).val
theorem output4283_def : output4283 = (.seq output4282 output4281) := by
  unfold output4283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4283_skip : Flapjack.WordAlloc.isSkip output4283 = false := by
  rw [output4283_def]
  conv => lhs; cbv
  try rfl
theorem node4283_eq : Flapjack.WordAlloc.removeDeadStructural input4283 value2144 value1 value2 = (output4283, value2146, value1) := by
  rw [input4283_def, output4283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4281_eq]
  dsimp only
  rw [node4282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2147 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21581 (Flapjack.WordLangAddr.addr 21577 18446744073709551104#64)))).val
theorem input4284_def : input4284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21581 (Flapjack.WordLangAddr.addr 21577 18446744073709551104#64))) := by
  unfold input4284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21581 (Flapjack.WordLangAddr.addr 21577 18446744073709551104#64)))).val
theorem output4284_def : output4284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21581 (Flapjack.WordLangAddr.addr 21577 18446744073709551104#64))) := by
  unfold output4284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4284_skip : Flapjack.WordAlloc.isSkip output4284 = false := by
  rw [output4284_def]
  conv => lhs; cbv
  try rfl
theorem node4284_eq : Flapjack.WordAlloc.removeDeadStructural input4284 value2146 value1 value2 = (output4284, value2147, value1) := by
  rw [input4284_def, output4284_def]
  try (conv => lhs; cbv)
  try rfl

def value2148 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21577 21573)).val
theorem input4285_def : input4285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21577 21573) := by
  unfold input4285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21577 21573)).val
theorem output4285_def : output4285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21577 21573) := by
  unfold output4285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4285_skip : Flapjack.WordAlloc.isSkip output4285 = false := by
  rw [output4285_def]
  conv => lhs; cbv
  try rfl
theorem node4285_eq : Flapjack.WordAlloc.removeDeadStructural input4285 value2147 value1 value2 = (output4285, value2148, value1) := by
  rw [input4285_def, output4285_def]
  try (conv => lhs; cbv)
  try rfl

def value2149 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21573 21569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4286_def : input4286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21573 21569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21573 21569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4286_def : output4286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21573 21569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4286_skip : Flapjack.WordAlloc.isSkip output4286 = false := by
  rw [output4286_def]
  conv => lhs; cbv
  try rfl
theorem node4286_eq : Flapjack.WordAlloc.removeDeadStructural input4286 value2148 value1 value2 = (output4286, value2149, value1) := by
  rw [input4286_def, output4286_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21569 Flapjack.WordStore.heapLength)).val
theorem input4287_def : input4287 = (Flapjack.WordLangProgHOL.get 21569 Flapjack.WordStore.heapLength) := by
  unfold input4287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21569 Flapjack.WordStore.heapLength)).val
theorem output4287_def : output4287 = (Flapjack.WordLangProgHOL.get 21569 Flapjack.WordStore.heapLength) := by
  unfold output4287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4287_skip : Flapjack.WordAlloc.isSkip output4287 = false := by
  rw [output4287_def]
  conv => lhs; cbv
  try rfl
theorem node4287_eq : Flapjack.WordAlloc.removeDeadStructural input4287 value2149 value1 value2 = (output4287, value5, value1) := by
  rw [input4287_def, output4287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4287 input4286)).val
theorem input4288_def : input4288 = (.seq input4287 input4286) := by
  unfold input4288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4287 output4286)).val
theorem output4288_def : output4288 = (.seq output4287 output4286) := by
  unfold output4288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4288_skip : Flapjack.WordAlloc.isSkip output4288 = false := by
  rw [output4288_def]
  conv => lhs; cbv
  try rfl
theorem node4288_eq : Flapjack.WordAlloc.removeDeadStructural input4288 value2148 value1 value2 = (output4288, value5, value1) := by
  rw [input4288_def, output4288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4286_eq]
  dsimp only
  rw [node4287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4288 input4285)).val
theorem input4289_def : input4289 = (.seq input4288 input4285) := by
  unfold input4289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4288 output4285)).val
theorem output4289_def : output4289 = (.seq output4288 output4285) := by
  unfold output4289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4289_skip : Flapjack.WordAlloc.isSkip output4289 = false := by
  rw [output4289_def]
  conv => lhs; cbv
  try rfl
theorem node4289_eq : Flapjack.WordAlloc.removeDeadStructural input4289 value2147 value1 value2 = (output4289, value5, value1) := by
  rw [input4289_def, output4289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4285_eq]
  dsimp only
  rw [node4288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4289 input4284)).val
theorem input4290_def : input4290 = (.seq input4289 input4284) := by
  unfold input4290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4289 output4284)).val
theorem output4290_def : output4290 = (.seq output4289 output4284) := by
  unfold output4290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4290_skip : Flapjack.WordAlloc.isSkip output4290 = false := by
  rw [output4290_def]
  conv => lhs; cbv
  try rfl
theorem node4290_eq : Flapjack.WordAlloc.removeDeadStructural input4290 value2146 value1 value2 = (output4290, value5, value1) := by
  rw [input4290_def, output4290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4284_eq]
  dsimp only
  rw [node4289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4290 input4283)).val
theorem input4291_def : input4291 = (.seq input4290 input4283) := by
  unfold input4291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4290 output4283)).val
theorem output4291_def : output4291 = (.seq output4290 output4283) := by
  unfold output4291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4291_skip : Flapjack.WordAlloc.isSkip output4291 = false := by
  rw [output4291_def]
  conv => lhs; cbv
  try rfl
theorem node4291_eq : Flapjack.WordAlloc.removeDeadStructural input4291 value2144 value1 value2 = (output4291, value5, value1) := by
  rw [input4291_def, output4291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4283_eq]
  dsimp only
  rw [node4290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2150 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21561 (Flapjack.WordLangAddr.addr 21565 0#64)))).val
theorem input4292_def : input4292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21561 (Flapjack.WordLangAddr.addr 21565 0#64))) := by
  unfold input4292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21561 (Flapjack.WordLangAddr.addr 21565 0#64)))).val
theorem output4292_def : output4292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21561 (Flapjack.WordLangAddr.addr 21565 0#64))) := by
  unfold output4292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4292_skip : Flapjack.WordAlloc.isSkip output4292 = false := by
  rw [output4292_def]
  conv => lhs; cbv
  try rfl
theorem node4292_eq : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value2150, value1) := by
  rw [input4292_def, output4292_def]
  try (conv => lhs; cbv)
  try rfl

def value2151 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21565, 21553)])).val
theorem input4293_def : input4293 = (Flapjack.WordLangProgHOL.move 0 [(21565, 21553)]) := by
  unfold input4293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21565, 21553)])).val
theorem output4293_def : output4293 = (Flapjack.WordLangProgHOL.move 0 [(21565, 21553)]) := by
  unfold output4293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4293_skip : Flapjack.WordAlloc.isSkip output4293 = false := by
  rw [output4293_def]
  conv => lhs; cbv
  try rfl
theorem node4293_eq : Flapjack.WordAlloc.removeDeadStructural input4293 value2150 value1 value2 = (output4293, value2151, value1) := by
  rw [input4293_def, output4293_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4293 input4292)).val
theorem input4294_def : input4294 = (.seq input4293 input4292) := by
  unfold input4294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4293 output4292)).val
theorem output4294_def : output4294 = (.seq output4293 output4292) := by
  unfold output4294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4294_skip : Flapjack.WordAlloc.isSkip output4294 = false := by
  rw [output4294_def]
  conv => lhs; cbv
  try rfl
theorem node4294_eq : Flapjack.WordAlloc.removeDeadStructural input4294 value5 value1 value2 = (output4294, value2151, value1) := by
  rw [input4294_def, output4294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4292_eq]
  dsimp only
  rw [node4293_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2152 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21561 5296890268881783494#64))).val
theorem input4295_def : input4295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21561 5296890268881783494#64)) := by
  unfold input4295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21561 5296890268881783494#64))).val
theorem output4295_def : output4295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21561 5296890268881783494#64)) := by
  unfold output4295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4295_skip : Flapjack.WordAlloc.isSkip output4295 = false := by
  rw [output4295_def]
  conv => lhs; cbv
  try rfl
theorem node4295_eq : Flapjack.WordAlloc.removeDeadStructural input4295 value2151 value1 value2 = (output4295, value2152, value1) := by
  rw [input4295_def, output4295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21557 5296890268881783494#64))).val
theorem input4296_def : input4296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21557 5296890268881783494#64)) := by
  unfold input4296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4296_def : output4296 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4296_skip : Flapjack.WordAlloc.isSkip output4296 = true := by
  rw [output4296_def]
  conv => lhs; cbv
  try rfl
theorem node4296_eq : Flapjack.WordAlloc.removeDeadStructural input4296 value2152 value1 value2 = (output4296, value2152, value1) := by
  rw [input4296_def, output4296_def]
  try (conv => lhs; cbv)
  try rfl

def value2153 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21553 21545 (Flapjack.WordRegImm.reg 21549))))).val
theorem input4297_def : input4297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21553 21545 (Flapjack.WordRegImm.reg 21549)))) := by
  unfold input4297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21553 21545 (Flapjack.WordRegImm.reg 21549))))).val
theorem output4297_def : output4297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21553 21545 (Flapjack.WordRegImm.reg 21549)))) := by
  unfold output4297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4297_skip : Flapjack.WordAlloc.isSkip output4297 = false := by
  rw [output4297_def]
  conv => lhs; cbv
  try rfl
theorem node4297_eq : Flapjack.WordAlloc.removeDeadStructural input4297 value2152 value1 value2 = (output4297, value2153, value1) := by
  rw [input4297_def, output4297_def]
  try (conv => lhs; cbv)
  try rfl

def value2154 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21549 4984#64))).val
theorem input4298_def : input4298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21549 4984#64)) := by
  unfold input4298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21549 4984#64))).val
theorem output4298_def : output4298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21549 4984#64)) := by
  unfold output4298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4298_skip : Flapjack.WordAlloc.isSkip output4298 = false := by
  rw [output4298_def]
  conv => lhs; cbv
  try rfl
theorem node4298_eq : Flapjack.WordAlloc.removeDeadStructural input4298 value2153 value1 value2 = (output4298, value2154, value1) := by
  rw [input4298_def, output4298_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4298 input4297)).val
theorem input4299_def : input4299 = (.seq input4298 input4297) := by
  unfold input4299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4298 output4297)).val
theorem output4299_def : output4299 = (.seq output4298 output4297) := by
  unfold output4299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4299_skip : Flapjack.WordAlloc.isSkip output4299 = false := by
  rw [output4299_def]
  conv => lhs; cbv
  try rfl
theorem node4299_eq : Flapjack.WordAlloc.removeDeadStructural input4299 value2152 value1 value2 = (output4299, value2154, value1) := by
  rw [input4299_def, output4299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4297_eq]
  dsimp only
  rw [node4298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2155 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21545 (Flapjack.WordLangAddr.addr 21541 18446744073709551104#64)))).val
theorem input4300_def : input4300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21545 (Flapjack.WordLangAddr.addr 21541 18446744073709551104#64))) := by
  unfold input4300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21545 (Flapjack.WordLangAddr.addr 21541 18446744073709551104#64)))).val
theorem output4300_def : output4300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21545 (Flapjack.WordLangAddr.addr 21541 18446744073709551104#64))) := by
  unfold output4300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4300_skip : Flapjack.WordAlloc.isSkip output4300 = false := by
  rw [output4300_def]
  conv => lhs; cbv
  try rfl
theorem node4300_eq : Flapjack.WordAlloc.removeDeadStructural input4300 value2154 value1 value2 = (output4300, value2155, value1) := by
  rw [input4300_def, output4300_def]
  try (conv => lhs; cbv)
  try rfl

def value2156 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21541 21537)).val
theorem input4301_def : input4301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21541 21537) := by
  unfold input4301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21541 21537)).val
theorem output4301_def : output4301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21541 21537) := by
  unfold output4301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4301_skip : Flapjack.WordAlloc.isSkip output4301 = false := by
  rw [output4301_def]
  conv => lhs; cbv
  try rfl
theorem node4301_eq : Flapjack.WordAlloc.removeDeadStructural input4301 value2155 value1 value2 = (output4301, value2156, value1) := by
  rw [input4301_def, output4301_def]
  try (conv => lhs; cbv)
  try rfl

def value2157 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21537 21533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4302_def : input4302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21537 21533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21537 21533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4302_def : output4302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21537 21533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4302_skip : Flapjack.WordAlloc.isSkip output4302 = false := by
  rw [output4302_def]
  conv => lhs; cbv
  try rfl
theorem node4302_eq : Flapjack.WordAlloc.removeDeadStructural input4302 value2156 value1 value2 = (output4302, value2157, value1) := by
  rw [input4302_def, output4302_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21533 Flapjack.WordStore.heapLength)).val
theorem input4303_def : input4303 = (Flapjack.WordLangProgHOL.get 21533 Flapjack.WordStore.heapLength) := by
  unfold input4303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21533 Flapjack.WordStore.heapLength)).val
theorem output4303_def : output4303 = (Flapjack.WordLangProgHOL.get 21533 Flapjack.WordStore.heapLength) := by
  unfold output4303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4303_skip : Flapjack.WordAlloc.isSkip output4303 = false := by
  rw [output4303_def]
  conv => lhs; cbv
  try rfl
theorem node4303_eq : Flapjack.WordAlloc.removeDeadStructural input4303 value2157 value1 value2 = (output4303, value5, value1) := by
  rw [input4303_def, output4303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4303 input4302)).val
theorem input4304_def : input4304 = (.seq input4303 input4302) := by
  unfold input4304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4303 output4302)).val
theorem output4304_def : output4304 = (.seq output4303 output4302) := by
  unfold output4304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4304_skip : Flapjack.WordAlloc.isSkip output4304 = false := by
  rw [output4304_def]
  conv => lhs; cbv
  try rfl
theorem node4304_eq : Flapjack.WordAlloc.removeDeadStructural input4304 value2156 value1 value2 = (output4304, value5, value1) := by
  rw [input4304_def, output4304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4302_eq]
  dsimp only
  rw [node4303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4304 input4301)).val
theorem input4305_def : input4305 = (.seq input4304 input4301) := by
  unfold input4305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4304 output4301)).val
theorem output4305_def : output4305 = (.seq output4304 output4301) := by
  unfold output4305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4305_skip : Flapjack.WordAlloc.isSkip output4305 = false := by
  rw [output4305_def]
  conv => lhs; cbv
  try rfl
theorem node4305_eq : Flapjack.WordAlloc.removeDeadStructural input4305 value2155 value1 value2 = (output4305, value5, value1) := by
  rw [input4305_def, output4305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4301_eq]
  dsimp only
  rw [node4304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4305 input4300)).val
theorem input4306_def : input4306 = (.seq input4305 input4300) := by
  unfold input4306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4305 output4300)).val
theorem output4306_def : output4306 = (.seq output4305 output4300) := by
  unfold output4306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4306_skip : Flapjack.WordAlloc.isSkip output4306 = false := by
  rw [output4306_def]
  conv => lhs; cbv
  try rfl
theorem node4306_eq : Flapjack.WordAlloc.removeDeadStructural input4306 value2154 value1 value2 = (output4306, value5, value1) := by
  rw [input4306_def, output4306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4300_eq]
  dsimp only
  rw [node4305_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4306 input4299)).val
theorem input4307_def : input4307 = (.seq input4306 input4299) := by
  unfold input4307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4306 output4299)).val
theorem output4307_def : output4307 = (.seq output4306 output4299) := by
  unfold output4307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4307_skip : Flapjack.WordAlloc.isSkip output4307 = false := by
  rw [output4307_def]
  conv => lhs; cbv
  try rfl
theorem node4307_eq : Flapjack.WordAlloc.removeDeadStructural input4307 value2152 value1 value2 = (output4307, value5, value1) := by
  rw [input4307_def, output4307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4299_eq]
  dsimp only
  rw [node4306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2158 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21525 (Flapjack.WordLangAddr.addr 21529 0#64)))).val
theorem input4308_def : input4308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21525 (Flapjack.WordLangAddr.addr 21529 0#64))) := by
  unfold input4308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21525 (Flapjack.WordLangAddr.addr 21529 0#64)))).val
theorem output4308_def : output4308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21525 (Flapjack.WordLangAddr.addr 21529 0#64))) := by
  unfold output4308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4308_skip : Flapjack.WordAlloc.isSkip output4308 = false := by
  rw [output4308_def]
  conv => lhs; cbv
  try rfl
theorem node4308_eq : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value2158, value1) := by
  rw [input4308_def, output4308_def]
  try (conv => lhs; cbv)
  try rfl

def value2159 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21529, 21517)])).val
theorem input4309_def : input4309 = (Flapjack.WordLangProgHOL.move 0 [(21529, 21517)]) := by
  unfold input4309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21529, 21517)])).val
theorem output4309_def : output4309 = (Flapjack.WordLangProgHOL.move 0 [(21529, 21517)]) := by
  unfold output4309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4309_skip : Flapjack.WordAlloc.isSkip output4309 = false := by
  rw [output4309_def]
  conv => lhs; cbv
  try rfl
theorem node4309_eq : Flapjack.WordAlloc.removeDeadStructural input4309 value2158 value1 value2 = (output4309, value2159, value1) := by
  rw [input4309_def, output4309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4309 input4308)).val
theorem input4310_def : input4310 = (.seq input4309 input4308) := by
  unfold input4310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4309 output4308)).val
theorem output4310_def : output4310 = (.seq output4309 output4308) := by
  unfold output4310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4310_skip : Flapjack.WordAlloc.isSkip output4310 = false := by
  rw [output4310_def]
  conv => lhs; cbv
  try rfl
theorem node4310_eq : Flapjack.WordAlloc.removeDeadStructural input4310 value5 value1 value2 = (output4310, value2159, value1) := by
  rw [input4310_def, output4310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4308_eq]
  dsimp only
  rw [node4309_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2160 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21525 2861386368603331728#64))).val
theorem input4311_def : input4311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21525 2861386368603331728#64)) := by
  unfold input4311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21525 2861386368603331728#64))).val
theorem output4311_def : output4311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21525 2861386368603331728#64)) := by
  unfold output4311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4311_skip : Flapjack.WordAlloc.isSkip output4311 = false := by
  rw [output4311_def]
  conv => lhs; cbv
  try rfl
theorem node4311_eq : Flapjack.WordAlloc.removeDeadStructural input4311 value2159 value1 value2 = (output4311, value2160, value1) := by
  rw [input4311_def, output4311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21521 2861386368603331728#64))).val
theorem input4312_def : input4312 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21521 2861386368603331728#64)) := by
  unfold input4312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4312_def : output4312 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4312_skip : Flapjack.WordAlloc.isSkip output4312 = true := by
  rw [output4312_def]
  conv => lhs; cbv
  try rfl
theorem node4312_eq : Flapjack.WordAlloc.removeDeadStructural input4312 value2160 value1 value2 = (output4312, value2160, value1) := by
  rw [input4312_def, output4312_def]
  try (conv => lhs; cbv)
  try rfl

def value2161 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21517 21509 (Flapjack.WordRegImm.reg 21513))))).val
theorem input4313_def : input4313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21517 21509 (Flapjack.WordRegImm.reg 21513)))) := by
  unfold input4313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21517 21509 (Flapjack.WordRegImm.reg 21513))))).val
theorem output4313_def : output4313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21517 21509 (Flapjack.WordRegImm.reg 21513)))) := by
  unfold output4313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4313_skip : Flapjack.WordAlloc.isSkip output4313 = false := by
  rw [output4313_def]
  conv => lhs; cbv
  try rfl
theorem node4313_eq : Flapjack.WordAlloc.removeDeadStructural input4313 value2160 value1 value2 = (output4313, value2161, value1) := by
  rw [input4313_def, output4313_def]
  try (conv => lhs; cbv)
  try rfl

def value2162 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21513 4976#64))).val
theorem input4314_def : input4314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21513 4976#64)) := by
  unfold input4314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21513 4976#64))).val
theorem output4314_def : output4314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21513 4976#64)) := by
  unfold output4314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4314_skip : Flapjack.WordAlloc.isSkip output4314 = false := by
  rw [output4314_def]
  conv => lhs; cbv
  try rfl
theorem node4314_eq : Flapjack.WordAlloc.removeDeadStructural input4314 value2161 value1 value2 = (output4314, value2162, value1) := by
  rw [input4314_def, output4314_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4314 input4313)).val
theorem input4315_def : input4315 = (.seq input4314 input4313) := by
  unfold input4315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4314 output4313)).val
theorem output4315_def : output4315 = (.seq output4314 output4313) := by
  unfold output4315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4315_skip : Flapjack.WordAlloc.isSkip output4315 = false := by
  rw [output4315_def]
  conv => lhs; cbv
  try rfl
theorem node4315_eq : Flapjack.WordAlloc.removeDeadStructural input4315 value2160 value1 value2 = (output4315, value2162, value1) := by
  rw [input4315_def, output4315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4313_eq]
  dsimp only
  rw [node4314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2163 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21509 (Flapjack.WordLangAddr.addr 21505 18446744073709551104#64)))).val
theorem input4316_def : input4316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21509 (Flapjack.WordLangAddr.addr 21505 18446744073709551104#64))) := by
  unfold input4316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21509 (Flapjack.WordLangAddr.addr 21505 18446744073709551104#64)))).val
theorem output4316_def : output4316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21509 (Flapjack.WordLangAddr.addr 21505 18446744073709551104#64))) := by
  unfold output4316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4316_skip : Flapjack.WordAlloc.isSkip output4316 = false := by
  rw [output4316_def]
  conv => lhs; cbv
  try rfl
theorem node4316_eq : Flapjack.WordAlloc.removeDeadStructural input4316 value2162 value1 value2 = (output4316, value2163, value1) := by
  rw [input4316_def, output4316_def]
  try (conv => lhs; cbv)
  try rfl

def value2164 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21505 21501)).val
theorem input4317_def : input4317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21505 21501) := by
  unfold input4317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21505 21501)).val
theorem output4317_def : output4317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21505 21501) := by
  unfold output4317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4317_skip : Flapjack.WordAlloc.isSkip output4317 = false := by
  rw [output4317_def]
  conv => lhs; cbv
  try rfl
theorem node4317_eq : Flapjack.WordAlloc.removeDeadStructural input4317 value2163 value1 value2 = (output4317, value2164, value1) := by
  rw [input4317_def, output4317_def]
  try (conv => lhs; cbv)
  try rfl

def value2165 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21501 21497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4318_def : input4318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21501 21497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21501 21497 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4318_def : output4318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21501 21497 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4318_skip : Flapjack.WordAlloc.isSkip output4318 = false := by
  rw [output4318_def]
  conv => lhs; cbv
  try rfl
theorem node4318_eq : Flapjack.WordAlloc.removeDeadStructural input4318 value2164 value1 value2 = (output4318, value2165, value1) := by
  rw [input4318_def, output4318_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21497 Flapjack.WordStore.heapLength)).val
theorem input4319_def : input4319 = (Flapjack.WordLangProgHOL.get 21497 Flapjack.WordStore.heapLength) := by
  unfold input4319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21497 Flapjack.WordStore.heapLength)).val
theorem output4319_def : output4319 = (Flapjack.WordLangProgHOL.get 21497 Flapjack.WordStore.heapLength) := by
  unfold output4319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4319_skip : Flapjack.WordAlloc.isSkip output4319 = false := by
  rw [output4319_def]
  conv => lhs; cbv
  try rfl
theorem node4319_eq : Flapjack.WordAlloc.removeDeadStructural input4319 value2165 value1 value2 = (output4319, value5, value1) := by
  rw [input4319_def, output4319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4319 input4318)).val
theorem input4320_def : input4320 = (.seq input4319 input4318) := by
  unfold input4320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4319 output4318)).val
theorem output4320_def : output4320 = (.seq output4319 output4318) := by
  unfold output4320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4320_skip : Flapjack.WordAlloc.isSkip output4320 = false := by
  rw [output4320_def]
  conv => lhs; cbv
  try rfl
theorem node4320_eq : Flapjack.WordAlloc.removeDeadStructural input4320 value2164 value1 value2 = (output4320, value5, value1) := by
  rw [input4320_def, output4320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4318_eq]
  dsimp only
  rw [node4319_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4320 input4317)).val
theorem input4321_def : input4321 = (.seq input4320 input4317) := by
  unfold input4321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4320 output4317)).val
theorem output4321_def : output4321 = (.seq output4320 output4317) := by
  unfold output4321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4321_skip : Flapjack.WordAlloc.isSkip output4321 = false := by
  rw [output4321_def]
  conv => lhs; cbv
  try rfl
theorem node4321_eq : Flapjack.WordAlloc.removeDeadStructural input4321 value2163 value1 value2 = (output4321, value5, value1) := by
  rw [input4321_def, output4321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4317_eq]
  dsimp only
  rw [node4320_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4321 input4316)).val
theorem input4322_def : input4322 = (.seq input4321 input4316) := by
  unfold input4322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4321 output4316)).val
theorem output4322_def : output4322 = (.seq output4321 output4316) := by
  unfold output4322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4322_skip : Flapjack.WordAlloc.isSkip output4322 = false := by
  rw [output4322_def]
  conv => lhs; cbv
  try rfl
theorem node4322_eq : Flapjack.WordAlloc.removeDeadStructural input4322 value2162 value1 value2 = (output4322, value5, value1) := by
  rw [input4322_def, output4322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4316_eq]
  dsimp only
  rw [node4321_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4322 input4315)).val
theorem input4323_def : input4323 = (.seq input4322 input4315) := by
  unfold input4323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4322 output4315)).val
theorem output4323_def : output4323 = (.seq output4322 output4315) := by
  unfold output4323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4323_skip : Flapjack.WordAlloc.isSkip output4323 = false := by
  rw [output4323_def]
  conv => lhs; cbv
  try rfl
theorem node4323_eq : Flapjack.WordAlloc.removeDeadStructural input4323 value2160 value1 value2 = (output4323, value5, value1) := by
  rw [input4323_def, output4323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4315_eq]
  dsimp only
  rw [node4322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2166 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21489 (Flapjack.WordLangAddr.addr 21493 0#64)))).val
theorem input4324_def : input4324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21489 (Flapjack.WordLangAddr.addr 21493 0#64))) := by
  unfold input4324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21489 (Flapjack.WordLangAddr.addr 21493 0#64)))).val
theorem output4324_def : output4324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21489 (Flapjack.WordLangAddr.addr 21493 0#64))) := by
  unfold output4324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4324_skip : Flapjack.WordAlloc.isSkip output4324 = false := by
  rw [output4324_def]
  conv => lhs; cbv
  try rfl
theorem node4324_eq : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value2166, value1) := by
  rw [input4324_def, output4324_def]
  try (conv => lhs; cbv)
  try rfl

def value2167 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21493, 21481)])).val
theorem input4325_def : input4325 = (Flapjack.WordLangProgHOL.move 0 [(21493, 21481)]) := by
  unfold input4325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21493, 21481)])).val
theorem output4325_def : output4325 = (Flapjack.WordLangProgHOL.move 0 [(21493, 21481)]) := by
  unfold output4325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4325_skip : Flapjack.WordAlloc.isSkip output4325 = false := by
  rw [output4325_def]
  conv => lhs; cbv
  try rfl
theorem node4325_eq : Flapjack.WordAlloc.removeDeadStructural input4325 value2166 value1 value2 = (output4325, value2167, value1) := by
  rw [input4325_def, output4325_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4325 input4324)).val
theorem input4326_def : input4326 = (.seq input4325 input4324) := by
  unfold input4326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4325 output4324)).val
theorem output4326_def : output4326 = (.seq output4325 output4324) := by
  unfold output4326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4326_skip : Flapjack.WordAlloc.isSkip output4326 = false := by
  rw [output4326_def]
  conv => lhs; cbv
  try rfl
theorem node4326_eq : Flapjack.WordAlloc.removeDeadStructural input4326 value5 value1 value2 = (output4326, value2167, value1) := by
  rw [input4326_def, output4326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4324_eq]
  dsimp only
  rw [node4325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2168 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21489 1291289622868500826#64))).val
theorem input4327_def : input4327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21489 1291289622868500826#64)) := by
  unfold input4327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21489 1291289622868500826#64))).val
theorem output4327_def : output4327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21489 1291289622868500826#64)) := by
  unfold output4327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4327_skip : Flapjack.WordAlloc.isSkip output4327 = false := by
  rw [output4327_def]
  conv => lhs; cbv
  try rfl
theorem node4327_eq : Flapjack.WordAlloc.removeDeadStructural input4327 value2167 value1 value2 = (output4327, value2168, value1) := by
  rw [input4327_def, output4327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21485 1291289622868500826#64))).val
theorem input4328_def : input4328 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21485 1291289622868500826#64)) := by
  unfold input4328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4328_def : output4328 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4328_skip : Flapjack.WordAlloc.isSkip output4328 = true := by
  rw [output4328_def]
  conv => lhs; cbv
  try rfl
theorem node4328_eq : Flapjack.WordAlloc.removeDeadStructural input4328 value2168 value1 value2 = (output4328, value2168, value1) := by
  rw [input4328_def, output4328_def]
  try (conv => lhs; cbv)
  try rfl

def value2169 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21481 21473 (Flapjack.WordRegImm.reg 21477))))).val
theorem input4329_def : input4329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21481 21473 (Flapjack.WordRegImm.reg 21477)))) := by
  unfold input4329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21481 21473 (Flapjack.WordRegImm.reg 21477))))).val
theorem output4329_def : output4329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21481 21473 (Flapjack.WordRegImm.reg 21477)))) := by
  unfold output4329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4329_skip : Flapjack.WordAlloc.isSkip output4329 = false := by
  rw [output4329_def]
  conv => lhs; cbv
  try rfl
theorem node4329_eq : Flapjack.WordAlloc.removeDeadStructural input4329 value2168 value1 value2 = (output4329, value2169, value1) := by
  rw [input4329_def, output4329_def]
  try (conv => lhs; cbv)
  try rfl

def value2170 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21477 4968#64))).val
theorem input4330_def : input4330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21477 4968#64)) := by
  unfold input4330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21477 4968#64))).val
theorem output4330_def : output4330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21477 4968#64)) := by
  unfold output4330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4330_skip : Flapjack.WordAlloc.isSkip output4330 = false := by
  rw [output4330_def]
  conv => lhs; cbv
  try rfl
theorem node4330_eq : Flapjack.WordAlloc.removeDeadStructural input4330 value2169 value1 value2 = (output4330, value2170, value1) := by
  rw [input4330_def, output4330_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4330 input4329)).val
theorem input4331_def : input4331 = (.seq input4330 input4329) := by
  unfold input4331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4330 output4329)).val
theorem output4331_def : output4331 = (.seq output4330 output4329) := by
  unfold output4331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4331_skip : Flapjack.WordAlloc.isSkip output4331 = false := by
  rw [output4331_def]
  conv => lhs; cbv
  try rfl
theorem node4331_eq : Flapjack.WordAlloc.removeDeadStructural input4331 value2168 value1 value2 = (output4331, value2170, value1) := by
  rw [input4331_def, output4331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4329_eq]
  dsimp only
  rw [node4330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2171 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21473 (Flapjack.WordLangAddr.addr 21469 18446744073709551104#64)))).val
theorem input4332_def : input4332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21473 (Flapjack.WordLangAddr.addr 21469 18446744073709551104#64))) := by
  unfold input4332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21473 (Flapjack.WordLangAddr.addr 21469 18446744073709551104#64)))).val
theorem output4332_def : output4332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21473 (Flapjack.WordLangAddr.addr 21469 18446744073709551104#64))) := by
  unfold output4332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4332_skip : Flapjack.WordAlloc.isSkip output4332 = false := by
  rw [output4332_def]
  conv => lhs; cbv
  try rfl
theorem node4332_eq : Flapjack.WordAlloc.removeDeadStructural input4332 value2170 value1 value2 = (output4332, value2171, value1) := by
  rw [input4332_def, output4332_def]
  try (conv => lhs; cbv)
  try rfl

def value2172 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21469 21465)).val
theorem input4333_def : input4333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21469 21465) := by
  unfold input4333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21469 21465)).val
theorem output4333_def : output4333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21469 21465) := by
  unfold output4333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4333_skip : Flapjack.WordAlloc.isSkip output4333 = false := by
  rw [output4333_def]
  conv => lhs; cbv
  try rfl
theorem node4333_eq : Flapjack.WordAlloc.removeDeadStructural input4333 value2171 value1 value2 = (output4333, value2172, value1) := by
  rw [input4333_def, output4333_def]
  try (conv => lhs; cbv)
  try rfl

def value2173 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21465 21461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4334_def : input4334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21465 21461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21465 21461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4334_def : output4334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21465 21461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4334_skip : Flapjack.WordAlloc.isSkip output4334 = false := by
  rw [output4334_def]
  conv => lhs; cbv
  try rfl
theorem node4334_eq : Flapjack.WordAlloc.removeDeadStructural input4334 value2172 value1 value2 = (output4334, value2173, value1) := by
  rw [input4334_def, output4334_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21461 Flapjack.WordStore.heapLength)).val
theorem input4335_def : input4335 = (Flapjack.WordLangProgHOL.get 21461 Flapjack.WordStore.heapLength) := by
  unfold input4335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21461 Flapjack.WordStore.heapLength)).val
theorem output4335_def : output4335 = (Flapjack.WordLangProgHOL.get 21461 Flapjack.WordStore.heapLength) := by
  unfold output4335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4335_skip : Flapjack.WordAlloc.isSkip output4335 = false := by
  rw [output4335_def]
  conv => lhs; cbv
  try rfl
theorem node4335_eq : Flapjack.WordAlloc.removeDeadStructural input4335 value2173 value1 value2 = (output4335, value5, value1) := by
  rw [input4335_def, output4335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4335 input4334)).val
theorem input4336_def : input4336 = (.seq input4335 input4334) := by
  unfold input4336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4335 output4334)).val
theorem output4336_def : output4336 = (.seq output4335 output4334) := by
  unfold output4336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4336_skip : Flapjack.WordAlloc.isSkip output4336 = false := by
  rw [output4336_def]
  conv => lhs; cbv
  try rfl
theorem node4336_eq : Flapjack.WordAlloc.removeDeadStructural input4336 value2172 value1 value2 = (output4336, value5, value1) := by
  rw [input4336_def, output4336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4334_eq]
  dsimp only
  rw [node4335_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4336 input4333)).val
theorem input4337_def : input4337 = (.seq input4336 input4333) := by
  unfold input4337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4336 output4333)).val
theorem output4337_def : output4337 = (.seq output4336 output4333) := by
  unfold output4337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4337_skip : Flapjack.WordAlloc.isSkip output4337 = false := by
  rw [output4337_def]
  conv => lhs; cbv
  try rfl
theorem node4337_eq : Flapjack.WordAlloc.removeDeadStructural input4337 value2171 value1 value2 = (output4337, value5, value1) := by
  rw [input4337_def, output4337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4333_eq]
  dsimp only
  rw [node4336_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4337 input4332)).val
theorem input4338_def : input4338 = (.seq input4337 input4332) := by
  unfold input4338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4337 output4332)).val
theorem output4338_def : output4338 = (.seq output4337 output4332) := by
  unfold output4338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4338_skip : Flapjack.WordAlloc.isSkip output4338 = false := by
  rw [output4338_def]
  conv => lhs; cbv
  try rfl
theorem node4338_eq : Flapjack.WordAlloc.removeDeadStructural input4338 value2170 value1 value2 = (output4338, value5, value1) := by
  rw [input4338_def, output4338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4332_eq]
  dsimp only
  rw [node4337_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4338 input4331)).val
theorem input4339_def : input4339 = (.seq input4338 input4331) := by
  unfold input4339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4338 output4331)).val
theorem output4339_def : output4339 = (.seq output4338 output4331) := by
  unfold output4339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4339_skip : Flapjack.WordAlloc.isSkip output4339 = false := by
  rw [output4339_def]
  conv => lhs; cbv
  try rfl
theorem node4339_eq : Flapjack.WordAlloc.removeDeadStructural input4339 value2168 value1 value2 = (output4339, value5, value1) := by
  rw [input4339_def, output4339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4331_eq]
  dsimp only
  rw [node4338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2174 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21453 (Flapjack.WordLangAddr.addr 21457 0#64)))).val
theorem input4340_def : input4340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21453 (Flapjack.WordLangAddr.addr 21457 0#64))) := by
  unfold input4340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21453 (Flapjack.WordLangAddr.addr 21457 0#64)))).val
theorem output4340_def : output4340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21453 (Flapjack.WordLangAddr.addr 21457 0#64))) := by
  unfold output4340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4340_skip : Flapjack.WordAlloc.isSkip output4340 = false := by
  rw [output4340_def]
  conv => lhs; cbv
  try rfl
theorem node4340_eq : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value2174, value1) := by
  rw [input4340_def, output4340_def]
  try (conv => lhs; cbv)
  try rfl

def value2175 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21457, 21445)])).val
theorem input4341_def : input4341 = (Flapjack.WordLangProgHOL.move 0 [(21457, 21445)]) := by
  unfold input4341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21457, 21445)])).val
theorem output4341_def : output4341 = (Flapjack.WordLangProgHOL.move 0 [(21457, 21445)]) := by
  unfold output4341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4341_skip : Flapjack.WordAlloc.isSkip output4341 = false := by
  rw [output4341_def]
  conv => lhs; cbv
  try rfl
theorem node4341_eq : Flapjack.WordAlloc.removeDeadStructural input4341 value2174 value1 value2 = (output4341, value2175, value1) := by
  rw [input4341_def, output4341_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4341 input4340)).val
theorem input4342_def : input4342 = (.seq input4341 input4340) := by
  unfold input4342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4341 output4340)).val
theorem output4342_def : output4342 = (.seq output4341 output4340) := by
  unfold output4342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4342_skip : Flapjack.WordAlloc.isSkip output4342 = false := by
  rw [output4342_def]
  conv => lhs; cbv
  try rfl
theorem node4342_eq : Flapjack.WordAlloc.removeDeadStructural input4342 value5 value1 value2 = (output4342, value2175, value1) := by
  rw [input4342_def, output4342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4340_eq]
  dsimp only
  rw [node4341_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2176 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21453 17098778598708503283#64))).val
theorem input4343_def : input4343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21453 17098778598708503283#64)) := by
  unfold input4343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21453 17098778598708503283#64))).val
theorem output4343_def : output4343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21453 17098778598708503283#64)) := by
  unfold output4343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4343_skip : Flapjack.WordAlloc.isSkip output4343 = false := by
  rw [output4343_def]
  conv => lhs; cbv
  try rfl
theorem node4343_eq : Flapjack.WordAlloc.removeDeadStructural input4343 value2175 value1 value2 = (output4343, value2176, value1) := by
  rw [input4343_def, output4343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21449 17098778598708503283#64))).val
theorem input4344_def : input4344 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21449 17098778598708503283#64)) := by
  unfold input4344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4344_def : output4344 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4344_skip : Flapjack.WordAlloc.isSkip output4344 = true := by
  rw [output4344_def]
  conv => lhs; cbv
  try rfl
theorem node4344_eq : Flapjack.WordAlloc.removeDeadStructural input4344 value2176 value1 value2 = (output4344, value2176, value1) := by
  rw [input4344_def, output4344_def]
  try (conv => lhs; cbv)
  try rfl

def value2177 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21445 21437 (Flapjack.WordRegImm.reg 21441))))).val
theorem input4345_def : input4345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21445 21437 (Flapjack.WordRegImm.reg 21441)))) := by
  unfold input4345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21445 21437 (Flapjack.WordRegImm.reg 21441))))).val
theorem output4345_def : output4345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21445 21437 (Flapjack.WordRegImm.reg 21441)))) := by
  unfold output4345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4345_skip : Flapjack.WordAlloc.isSkip output4345 = false := by
  rw [output4345_def]
  conv => lhs; cbv
  try rfl
theorem node4345_eq : Flapjack.WordAlloc.removeDeadStructural input4345 value2176 value1 value2 = (output4345, value2177, value1) := by
  rw [input4345_def, output4345_def]
  try (conv => lhs; cbv)
  try rfl

def value2178 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21441 4960#64))).val
theorem input4346_def : input4346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21441 4960#64)) := by
  unfold input4346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21441 4960#64))).val
theorem output4346_def : output4346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21441 4960#64)) := by
  unfold output4346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4346_skip : Flapjack.WordAlloc.isSkip output4346 = false := by
  rw [output4346_def]
  conv => lhs; cbv
  try rfl
theorem node4346_eq : Flapjack.WordAlloc.removeDeadStructural input4346 value2177 value1 value2 = (output4346, value2178, value1) := by
  rw [input4346_def, output4346_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4346 input4345)).val
theorem input4347_def : input4347 = (.seq input4346 input4345) := by
  unfold input4347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4346 output4345)).val
theorem output4347_def : output4347 = (.seq output4346 output4345) := by
  unfold output4347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4347_skip : Flapjack.WordAlloc.isSkip output4347 = false := by
  rw [output4347_def]
  conv => lhs; cbv
  try rfl
theorem node4347_eq : Flapjack.WordAlloc.removeDeadStructural input4347 value2176 value1 value2 = (output4347, value2178, value1) := by
  rw [input4347_def, output4347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4345_eq]
  dsimp only
  rw [node4346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2179 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21437 (Flapjack.WordLangAddr.addr 21433 18446744073709551104#64)))).val
theorem input4348_def : input4348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21437 (Flapjack.WordLangAddr.addr 21433 18446744073709551104#64))) := by
  unfold input4348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21437 (Flapjack.WordLangAddr.addr 21433 18446744073709551104#64)))).val
theorem output4348_def : output4348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21437 (Flapjack.WordLangAddr.addr 21433 18446744073709551104#64))) := by
  unfold output4348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4348_skip : Flapjack.WordAlloc.isSkip output4348 = false := by
  rw [output4348_def]
  conv => lhs; cbv
  try rfl
theorem node4348_eq : Flapjack.WordAlloc.removeDeadStructural input4348 value2178 value1 value2 = (output4348, value2179, value1) := by
  rw [input4348_def, output4348_def]
  try (conv => lhs; cbv)
  try rfl

def value2180 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21433 21429)).val
theorem input4349_def : input4349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21433 21429) := by
  unfold input4349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21433 21429)).val
theorem output4349_def : output4349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21433 21429) := by
  unfold output4349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4349_skip : Flapjack.WordAlloc.isSkip output4349 = false := by
  rw [output4349_def]
  conv => lhs; cbv
  try rfl
theorem node4349_eq : Flapjack.WordAlloc.removeDeadStructural input4349 value2179 value1 value2 = (output4349, value2180, value1) := by
  rw [input4349_def, output4349_def]
  try (conv => lhs; cbv)
  try rfl

def value2181 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21429 21425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4350_def : input4350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21429 21425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21429 21425 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4350_def : output4350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21429 21425 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4350_skip : Flapjack.WordAlloc.isSkip output4350 = false := by
  rw [output4350_def]
  conv => lhs; cbv
  try rfl
theorem node4350_eq : Flapjack.WordAlloc.removeDeadStructural input4350 value2180 value1 value2 = (output4350, value2181, value1) := by
  rw [input4350_def, output4350_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21425 Flapjack.WordStore.heapLength)).val
theorem input4351_def : input4351 = (Flapjack.WordLangProgHOL.get 21425 Flapjack.WordStore.heapLength) := by
  unfold input4351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21425 Flapjack.WordStore.heapLength)).val
theorem output4351_def : output4351 = (Flapjack.WordLangProgHOL.get 21425 Flapjack.WordStore.heapLength) := by
  unfold output4351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4351_skip : Flapjack.WordAlloc.isSkip output4351 = false := by
  rw [output4351_def]
  conv => lhs; cbv
  try rfl
theorem node4351_eq : Flapjack.WordAlloc.removeDeadStructural input4351 value2181 value1 value2 = (output4351, value5, value1) := by
  rw [input4351_def, output4351_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4351_eq
end InitECandidate.Proofs.DeadStages713
